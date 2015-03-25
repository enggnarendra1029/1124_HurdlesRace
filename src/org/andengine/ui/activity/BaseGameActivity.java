// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.ui.activity;

import android.os.Bundle;
import android.os.PowerManager;
import org.andengine.audio.music.MusicManager;
import org.andengine.audio.sound.SoundManager;
import org.andengine.engine.Engine;
import org.andengine.engine.options.AudioOptions;
import org.andengine.engine.options.EngineOptions;
import org.andengine.engine.options.ScreenOrientation;
import org.andengine.engine.options.WakeLockOptions;
import org.andengine.entity.scene.Scene;
import org.andengine.input.sensor.acceleration.AccelerationSensorOptions;
import org.andengine.input.sensor.acceleration.IAccelerationListener;
import org.andengine.input.sensor.location.ILocationListener;
import org.andengine.input.sensor.location.LocationSensorOptions;
import org.andengine.input.sensor.orientation.IOrientationListener;
import org.andengine.input.sensor.orientation.OrientationSensorOptions;
import org.andengine.opengl.font.FontManager;
import org.andengine.opengl.shader.ShaderProgramManager;
import org.andengine.opengl.texture.TextureManager;
import org.andengine.opengl.util.GLState;
import org.andengine.opengl.vbo.VertexBufferObjectManager;
import org.andengine.opengl.view.IRendererListener;
import org.andengine.opengl.view.RenderSurfaceView;
import org.andengine.ui.IGameInterface;
import org.andengine.util.ActivityUtils;
import org.andengine.util.debug.Debug;
import org.andengine.util.system.SystemUtils;

// Referenced classes of package org.andengine.ui.activity:
//            BaseActivity

public abstract class BaseGameActivity extends BaseActivity
    implements IGameInterface, IRendererListener
{

    private static int $SWITCH_TABLE$org$andengine$engine$options$ScreenOrientation[];
    private boolean mCreateGameCalled;
    protected Engine mEngine;
    private boolean mGameCreated;
    private boolean mGamePaused;
    private boolean mOnReloadResourcesScheduled;
    protected RenderSurfaceView mRenderSurfaceView;
    private android.os.PowerManager.WakeLock mWakeLock;

    static int[] $SWITCH_TABLE$org$andengine$engine$options$ScreenOrientation()
    {
        int ai[] = $SWITCH_TABLE$org$andengine$engine$options$ScreenOrientation;
        if (ai != null)
        {
            return ai;
        }
        int ai1[] = new int[ScreenOrientation.values().length];
        try
        {
            ai1[ScreenOrientation.LANDSCAPE_FIXED.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            ai1[ScreenOrientation.LANDSCAPE_SENSOR.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            ai1[ScreenOrientation.PORTRAIT_FIXED.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            ai1[ScreenOrientation.PORTRAIT_SENSOR.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        $SWITCH_TABLE$org$andengine$engine$options$ScreenOrientation = ai1;
        return ai1;
    }

    public BaseGameActivity()
    {
    }

    private void acquireWakeLock()
    {
        acquireWakeLock(mEngine.getEngineOptions().getWakeLockOptions());
    }

    private void acquireWakeLock(WakeLockOptions wakelockoptions)
    {
        if (wakelockoptions == WakeLockOptions.SCREEN_ON)
        {
            ActivityUtils.keepScreenOn(this);
            return;
        }
        mWakeLock = ((PowerManager)getSystemService("power")).newWakeLock(0x20000000 | wakelockoptions.getFlag(), "AndEngine");
        try
        {
            mWakeLock.acquire();
            return;
        }
        catch (SecurityException securityexception)
        {
            Debug.e("You have to add\n\t<uses-permission android:name=\"android.permission.WAKE_LOCK\"/>\nto your AndroidManifest.xml !", securityexception);
        }
    }

    private void applyEngineOptions()
    {
        EngineOptions engineoptions = mEngine.getEngineOptions();
        if (engineoptions.isFullscreen())
        {
            ActivityUtils.requestFullscreen(this);
        }
        if (engineoptions.getAudioOptions().needsMusic() || engineoptions.getAudioOptions().needsSound())
        {
            setVolumeControlStream(3);
        }
        switch ($SWITCH_TABLE$org$andengine$engine$options$ScreenOrientation()[engineoptions.getScreenOrientation().ordinal()])
        {
        default:
            return;

        case 1: // '\001'
            setRequestedOrientation(0);
            return;

        case 2: // '\002'
            if (SystemUtils.SDK_VERSION_GINGERBREAD_OR_LATER)
            {
                setRequestedOrientation(6);
                return;
            } else
            {
                Debug.w((new StringBuilder(String.valueOf(org/andengine/engine/options/ScreenOrientation.getSimpleName()))).append(".").append(ScreenOrientation.LANDSCAPE_SENSOR).append(" is not supported on this device. Falling back to ").append(org/andengine/engine/options/ScreenOrientation.getSimpleName()).append(".").append(ScreenOrientation.LANDSCAPE_FIXED).toString());
                setRequestedOrientation(0);
                return;
            }

        case 3: // '\003'
            setRequestedOrientation(1);
            return;

        case 4: // '\004'
            break;
        }
        if (SystemUtils.SDK_VERSION_GINGERBREAD_OR_LATER)
        {
            setRequestedOrientation(7);
            return;
        } else
        {
            Debug.w((new StringBuilder(String.valueOf(org/andengine/engine/options/ScreenOrientation.getSimpleName()))).append(".").append(ScreenOrientation.PORTRAIT_SENSOR).append(" is not supported on this device. Falling back to ").append(org/andengine/engine/options/ScreenOrientation.getSimpleName()).append(".").append(ScreenOrientation.PORTRAIT_FIXED).toString());
            setRequestedOrientation(1);
            return;
        }
    }

    private void callGameResumedOnUIThread()
    {
        runOnUiThread(new Runnable() {

            final BaseGameActivity this$0;

            public void run()
            {
                onResumeGame();
            }

            
            {
                this$0 = BaseGameActivity.this;
                super();
            }
        });
    }

    protected static android.widget.FrameLayout.LayoutParams createSurfaceViewLayoutParams()
    {
        android.widget.FrameLayout.LayoutParams layoutparams = new android.widget.FrameLayout.LayoutParams(-1, -1);
        layoutparams.gravity = 17;
        return layoutparams;
    }

    private void releaseWakeLock()
    {
        if (mWakeLock != null && mWakeLock.isHeld())
        {
            mWakeLock.release();
        }
    }

    protected boolean disableAccelerationSensor()
    {
        return mEngine.disableAccelerationSensor(this);
    }

    protected void disableLocationSensor()
    {
        mEngine.disableLocationSensor(this);
    }

    protected boolean disableOrientationSensor()
    {
        return mEngine.disableOrientationSensor(this);
    }

    protected boolean enableAccelerationSensor(IAccelerationListener iaccelerationlistener)
    {
        return mEngine.enableAccelerationSensor(this, iaccelerationlistener);
    }

    protected boolean enableAccelerationSensor(IAccelerationListener iaccelerationlistener, AccelerationSensorOptions accelerationsensoroptions)
    {
        return mEngine.enableAccelerationSensor(this, iaccelerationlistener, accelerationsensoroptions);
    }

    protected void enableLocationSensor(ILocationListener ilocationlistener, LocationSensorOptions locationsensoroptions)
    {
        mEngine.enableLocationSensor(this, ilocationlistener, locationsensoroptions);
    }

    protected boolean enableOrientationSensor(IOrientationListener iorientationlistener)
    {
        return mEngine.enableOrientationSensor(this, iorientationlistener);
    }

    protected boolean enableOrientationSensor(IOrientationListener iorientationlistener, OrientationSensorOptions orientationsensoroptions)
    {
        return mEngine.enableOrientationSensor(this, iorientationlistener, orientationsensoroptions);
    }

    protected void enableVibrator()
    {
        mEngine.enableVibrator(this);
    }

    public Engine getEngine()
    {
        return mEngine;
    }

    public FontManager getFontManager()
    {
        return mEngine.getFontManager();
    }

    public MusicManager getMusicManager()
    {
        return mEngine.getMusicManager();
    }

    public ShaderProgramManager getShaderProgramManager()
    {
        return mEngine.getShaderProgramManager();
    }

    public SoundManager getSoundManager()
    {
        return mEngine.getSoundManager();
    }

    public TextureManager getTextureManager()
    {
        return mEngine.getTextureManager();
    }

    public VertexBufferObjectManager getVertexBufferObjectManager()
    {
        return mEngine.getVertexBufferObjectManager();
    }

    public boolean isGameLoaded()
    {
        return mGameCreated;
    }

    public boolean isGamePaused()
    {
        return mGamePaused;
    }

    public boolean isGameRunning()
    {
        return !mGamePaused;
    }

    protected void onCreate(Bundle bundle)
    {
        Debug.d((new StringBuilder(String.valueOf(getClass().getSimpleName()))).append(".onCreate").append(" @(Thread: '").append(Thread.currentThread().getName()).append("')").toString());
        super.onCreate(bundle);
        mGamePaused = true;
        mEngine = onCreateEngine(onCreateEngineOptions());
        mEngine.startUpdateThread();
        applyEngineOptions();
        onSetContentView();
    }

    public Engine onCreateEngine(EngineOptions engineoptions)
    {
        return new Engine(engineoptions);
    }

    protected void onCreateGame()
    {
        this;
        JVM INSTR monitorenter ;
        org.andengine.ui.IGameInterface.OnCreateResourcesCallback oncreateresourcescallback;
        Debug.d((new StringBuilder(String.valueOf(getClass().getSimpleName()))).append(".onCreateGame").append(" @(Thread: '").append(Thread.currentThread().getName()).append("')").toString());
        oncreateresourcescallback = new org.andengine.ui.IGameInterface.OnCreateResourcesCallback() {

            final BaseGameActivity this$0;
            private final org.andengine.ui.IGameInterface.OnCreateSceneCallback val$onCreateSceneCallback;

            public void onCreateResourcesFinished()
            {
                try
                {
                    Debug.d((new StringBuilder(String.valueOf(getClass().getSimpleName()))).append(".onCreateScene").append(" @(Thread: '").append(Thread.currentThread().getName()).append("')").toString());
                    onCreateScene(onCreateSceneCallback);
                    return;
                }
                catch (Throwable throwable1)
                {
                    Debug.e((new StringBuilder(String.valueOf(getClass().getSimpleName()))).append(".onCreateScene failed.").append(" @(Thread: '").append(Thread.currentThread().getName()).append("')").toString(), throwable1);
                }
            }

            
            {
                this$0 = BaseGameActivity.this;
                onCreateSceneCallback = oncreatescenecallback;
                super();
            }
        };
        Debug.d((new StringBuilder(String.valueOf(getClass().getSimpleName()))).append(".onCreateResources").append(" @(Thread: '").append(Thread.currentThread().getName()).append("')").toString());
        onCreateResources(oncreateresourcescallback);
_L2:
        this;
        JVM INSTR monitorexit ;
        return;
        Throwable throwable;
        throwable;
        Debug.e((new StringBuilder(String.valueOf(getClass().getSimpleName()))).append(".onCreateGame failed.").append(" @(Thread: '").append(Thread.currentThread().getName()).append("')").toString(), throwable);
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        throw exception;
    }

    protected void onDestroy()
    {
        Debug.d((new StringBuilder(String.valueOf(getClass().getSimpleName()))).append(".onDestroy").append(" @(Thread: '").append(Thread.currentThread().getName()).append("')").toString());
        super.onDestroy();
        mEngine.onDestroy();
        try
        {
            onDestroyResources();
        }
        catch (Throwable throwable)
        {
            Debug.e((new StringBuilder(String.valueOf(getClass().getSimpleName()))).append(".onDestroyResources failed.").append(" @(Thread: '").append(Thread.currentThread().getName()).append("')").toString(), throwable);
        }
        onGameDestroyed();
        mEngine = null;
    }

    public void onDestroyResources()
        throws Exception
    {
        Debug.d((new StringBuilder(String.valueOf(getClass().getSimpleName()))).append(".onDestroyResources").append(" @(Thread: '").append(Thread.currentThread().getName()).append("')").toString());
        if (mEngine.getEngineOptions().getAudioOptions().needsMusic())
        {
            getMusicManager().releaseAll();
        }
        if (mEngine.getEngineOptions().getAudioOptions().needsSound())
        {
            getSoundManager().releaseAll();
        }
    }

    public void onGameCreated()
    {
        this;
        JVM INSTR monitorenter ;
        mGameCreated = true;
        if (!mOnReloadResourcesScheduled)
        {
            break MISSING_BLOCK_LABEL_23;
        }
        mOnReloadResourcesScheduled = false;
        onReloadResources();
_L2:
        this;
        JVM INSTR monitorexit ;
        return;
        Throwable throwable;
        throwable;
        Debug.e((new StringBuilder(String.valueOf(getClass().getSimpleName()))).append(".onReloadResources failed.").append(" @(Thread: '").append(Thread.currentThread().getName()).append("')").toString(), throwable);
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        throw exception;
    }

    public void onGameDestroyed()
    {
        this;
        JVM INSTR monitorenter ;
        Debug.d((new StringBuilder(String.valueOf(getClass().getSimpleName()))).append(".onGameDestroyed").append(" @(Thread: '").append(Thread.currentThread().getName()).append("')").toString());
        mGameCreated = false;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    protected void onPause()
    {
        Debug.d((new StringBuilder(String.valueOf(getClass().getSimpleName()))).append(".onPause").append(" @(Thread: '").append(Thread.currentThread().getName()).append("')").toString());
        super.onPause();
        mRenderSurfaceView.onPause();
        releaseWakeLock();
        if (!mGamePaused)
        {
            onPauseGame();
        }
    }

    public void onPauseGame()
    {
        this;
        JVM INSTR monitorenter ;
        Debug.d((new StringBuilder(String.valueOf(getClass().getSimpleName()))).append(".onPauseGame").append(" @(Thread: '").append(Thread.currentThread().getName()).append("')").toString());
        mGamePaused = true;
        mEngine.stop();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void onReloadResources()
    {
        Debug.d((new StringBuilder(String.valueOf(getClass().getSimpleName()))).append(".onReloadResources").append(" @(Thread: '").append(Thread.currentThread().getName()).append("')").toString());
        mEngine.onReloadResources();
    }

    protected void onResume()
    {
        this;
        JVM INSTR monitorenter ;
        Debug.d((new StringBuilder(String.valueOf(getClass().getSimpleName()))).append(".onResume").append(" @(Thread: '").append(Thread.currentThread().getName()).append("')").toString());
        super.onResume();
        acquireWakeLock();
        mRenderSurfaceView.onResume();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void onResumeGame()
    {
        this;
        JVM INSTR monitorenter ;
        Debug.d((new StringBuilder(String.valueOf(getClass().getSimpleName()))).append(".onResumeGame").append(" @(Thread: '").append(Thread.currentThread().getName()).append("')").toString());
        mEngine.start();
        mGamePaused = false;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    protected void onSetContentView()
    {
        mRenderSurfaceView = new RenderSurfaceView(this);
        mRenderSurfaceView.setRenderer(mEngine, this);
        setContentView(mRenderSurfaceView, createSurfaceViewLayoutParams());
    }

    public void onSurfaceChanged(GLState glstate, int i, int j)
    {
        this;
        JVM INSTR monitorenter ;
        Debug.d((new StringBuilder(String.valueOf(getClass().getSimpleName()))).append(".onSurfaceChanged(Width=").append(i).append(",  Height=").append(j).append(")").append(" @(Thread: '").append(Thread.currentThread().getName()).append("')").toString());
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void onSurfaceCreated(GLState glstate)
    {
        this;
        JVM INSTR monitorenter ;
        Debug.d((new StringBuilder(String.valueOf(getClass().getSimpleName()))).append(".onSurfaceCreated").append(" @(Thread: '").append(Thread.currentThread().getName()).append("')").toString());
        if (!mGameCreated) goto _L2; else goto _L1
_L1:
        onReloadResources();
        if (mGamePaused && mGameCreated)
        {
            onResumeGame();
        }
_L3:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        if (!mCreateGameCalled)
        {
            break MISSING_BLOCK_LABEL_104;
        }
        mOnReloadResourcesScheduled = true;
          goto _L3
        Exception exception;
        exception;
        throw exception;
        mCreateGameCalled = true;
        onCreateGame();
          goto _L3
    }

    public void onWindowFocusChanged(boolean flag)
    {
        this;
        JVM INSTR monitorenter ;
        super.onWindowFocusChanged(flag);
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_29;
        }
        if (mGamePaused && mGameCreated)
        {
            onResumeGame();
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void runOnUpdateThread(Runnable runnable)
    {
        mEngine.runOnUpdateThread(runnable);
    }

    public void runOnUpdateThread(Runnable runnable, boolean flag)
    {
        mEngine.runOnUpdateThread(runnable, flag);
    }


    // Unreferenced inner class org/andengine/ui/activity/BaseGameActivity$1

/* anonymous class */
    class _cls1
        implements org.andengine.ui.IGameInterface.OnPopulateSceneCallback
    {

        final BaseGameActivity this$0;

        public void onPopulateSceneFinished()
        {
            try
            {
                Debug.d((new StringBuilder(String.valueOf(getClass().getSimpleName()))).append(".onGameCreated").append(" @(Thread: '").append(Thread.currentThread().getName()).append("')").toString());
                onGameCreated();
            }
            catch (Throwable throwable)
            {
                Debug.e((new StringBuilder(String.valueOf(getClass().getSimpleName()))).append(".onGameCreated failed.").append(" @(Thread: '").append(Thread.currentThread().getName()).append("')").toString(), throwable);
            }
            callGameResumedOnUIThread();
        }

            
            {
                this$0 = BaseGameActivity.this;
                super();
            }
    }


    // Unreferenced inner class org/andengine/ui/activity/BaseGameActivity$2

/* anonymous class */
    class _cls2
        implements org.andengine.ui.IGameInterface.OnCreateSceneCallback
    {

        final BaseGameActivity this$0;
        private final org.andengine.ui.IGameInterface.OnPopulateSceneCallback val$onPopulateSceneCallback;

        public void onCreateSceneFinished(Scene scene)
        {
            mEngine.setScene(scene);
            try
            {
                Debug.d((new StringBuilder(String.valueOf(getClass().getSimpleName()))).append(".onPopulateScene").append(" @(Thread: '").append(Thread.currentThread().getName()).append("')").toString());
                onPopulateScene(scene, onPopulateSceneCallback);
                return;
            }
            catch (Throwable throwable)
            {
                Debug.e((new StringBuilder(String.valueOf(getClass().getSimpleName()))).append(".onPopulateScene failed.").append(" @(Thread: '").append(Thread.currentThread().getName()).append("')").toString(), throwable);
            }
        }

            
            {
                this$0 = BaseGameActivity.this;
                onPopulateSceneCallback = onpopulatescenecallback;
                super();
            }
    }

}
