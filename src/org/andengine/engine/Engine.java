// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.engine;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Process;
import android.os.Vibrator;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import org.andengine.audio.music.MusicFactory;
import org.andengine.audio.music.MusicManager;
import org.andengine.audio.sound.SoundFactory;
import org.andengine.audio.sound.SoundManager;
import org.andengine.engine.camera.Camera;
import org.andengine.engine.camera.hud.HUD;
import org.andengine.engine.handler.DrawHandlerList;
import org.andengine.engine.handler.IDrawHandler;
import org.andengine.engine.handler.IUpdateHandler;
import org.andengine.engine.handler.UpdateHandlerList;
import org.andengine.engine.handler.runnable.RunnableHandler;
import org.andengine.engine.options.AudioOptions;
import org.andengine.engine.options.EngineOptions;
import org.andengine.engine.options.SoundOptions;
import org.andengine.engine.options.TouchOptions;
import org.andengine.entity.scene.Scene;
import org.andengine.input.sensor.SensorDelay;
import org.andengine.input.sensor.acceleration.AccelerationData;
import org.andengine.input.sensor.acceleration.AccelerationSensorOptions;
import org.andengine.input.sensor.acceleration.IAccelerationListener;
import org.andengine.input.sensor.location.ILocationListener;
import org.andengine.input.sensor.location.LocationProviderStatus;
import org.andengine.input.sensor.location.LocationSensorOptions;
import org.andengine.input.sensor.orientation.IOrientationListener;
import org.andengine.input.sensor.orientation.OrientationData;
import org.andengine.input.sensor.orientation.OrientationSensorOptions;
import org.andengine.input.touch.TouchEvent;
import org.andengine.input.touch.controller.ITouchController;
import org.andengine.input.touch.controller.ITouchEventCallback;
import org.andengine.input.touch.controller.MultiTouchController;
import org.andengine.input.touch.controller.SingleTouchController;
import org.andengine.opengl.font.FontFactory;
import org.andengine.opengl.font.FontManager;
import org.andengine.opengl.shader.ShaderProgramManager;
import org.andengine.opengl.texture.TextureManager;
import org.andengine.opengl.texture.atlas.bitmap.BitmapTextureAtlasTextureRegionFactory;
import org.andengine.opengl.util.GLState;
import org.andengine.opengl.vbo.VertexBufferObjectManager;
import org.andengine.util.debug.Debug;

public class Engine
    implements SensorEventListener, android.view.View.OnTouchListener, ITouchEventCallback, LocationListener
{
    public class EngineDestroyedException extends InterruptedException
    {

        private static final long serialVersionUID = 0xbee548483d8d88f0L;
        final Engine this$0;

        public EngineDestroyedException()
        {
            this$0 = Engine.this;
            super();
        }
    }

    public static class EngineLock extends ReentrantLock
    {

        private static final long serialVersionUID = 0x950a7e3cc23e81eL;
        final AtomicBoolean mDrawing = new AtomicBoolean(false);
        final Condition mDrawingCondition = newCondition();

        void notifyCanDraw()
        {
            mDrawing.set(true);
            mDrawingCondition.signalAll();
        }

        void notifyCanUpdate()
        {
            mDrawing.set(false);
            mDrawingCondition.signalAll();
        }

        void waitUntilCanDraw()
            throws InterruptedException
        {
            do
            {
                if (mDrawing.get())
                {
                    return;
                }
                mDrawingCondition.await();
            } while (true);
        }

        void waitUntilCanUpdate()
            throws InterruptedException
        {
            do
            {
                if (!mDrawing.get())
                {
                    return;
                }
                mDrawingCondition.await();
            } while (true);
        }

        public EngineLock(boolean flag)
        {
            super(flag);
        }
    }

    public static class UpdateThread extends Thread
    {

        private Engine mEngine;
        private final RunnableHandler mRunnableHandler = new RunnableHandler();

        public void postRunnable(Runnable runnable)
        {
            mRunnableHandler.postRunnable(runnable);
        }

        public void run()
        {
            Process.setThreadPriority(mEngine.getEngineOptions().getUpdateThreadPriority());
            try
            {
                do
                {
                    mRunnableHandler.onUpdate(0.0F);
                    mEngine.onTickUpdate();
                } while (true);
            }
            catch (InterruptedException interruptedexception)
            {
                Debug.d((new StringBuilder(String.valueOf(getClass().getSimpleName()))).append(" interrupted. Don't worry - this ").append(interruptedexception.getClass().getSimpleName()).append(" is most likely expected!").toString(), interruptedexception);
            }
            interrupt();
        }

        public void setEngine(Engine engine)
        {
            mEngine = engine;
        }

        public UpdateThread()
        {
            super(org/andengine/engine/Engine$UpdateThread.getSimpleName());
        }
    }


    private static final int DRAWHANDLERS_CAPACITY_DEFAULT = 4;
    private static final SensorDelay SENSORDELAY_DEFAULT;
    private static final int UPDATEHANDLERS_CAPACITY_DEFAULT = 8;
    private AccelerationData mAccelerationData;
    private IAccelerationListener mAccelerationListener;
    protected final Camera mCamera;
    private boolean mDestroyed;
    private final DrawHandlerList mDrawHandlers = new DrawHandlerList(4);
    private final EngineLock mEngineLock;
    private final EngineOptions mEngineOptions;
    private final FontManager mFontManager = new FontManager();
    private long mLastTick;
    private Location mLocation;
    private ILocationListener mLocationListener;
    private final MusicManager mMusicManager;
    private OrientationData mOrientationData;
    private IOrientationListener mOrientationListener;
    private boolean mRunning;
    protected Scene mScene;
    private float mSecondsElapsedTotal;
    private final ShaderProgramManager mShaderProgramManager = new ShaderProgramManager();
    private final SoundManager mSoundManager;
    protected int mSurfaceHeight;
    protected int mSurfaceWidth;
    private final TextureManager mTextureManager = new TextureManager();
    private ITouchController mTouchController;
    private final UpdateHandlerList mUpdateHandlers = new UpdateHandlerList(8);
    private final UpdateThread mUpdateThread;
    private final RunnableHandler mUpdateThreadRunnableHandler = new RunnableHandler();
    private final VertexBufferObjectManager mVertexBufferObjectManager = new VertexBufferObjectManager();
    private Vibrator mVibrator;

    public Engine(EngineOptions engineoptions)
    {
        mSurfaceWidth = 1;
        mSurfaceHeight = 1;
        BitmapTextureAtlasTextureRegionFactory.reset();
        SoundFactory.onCreate();
        MusicFactory.onCreate();
        FontFactory.onCreate();
        mVertexBufferObjectManager.onCreate();
        mTextureManager.onCreate();
        mFontManager.onCreate();
        mShaderProgramManager.onCreate();
        mEngineOptions = engineoptions;
        if (mEngineOptions.hasEngineLock())
        {
            mEngineLock = engineoptions.getEngineLock();
        } else
        {
            mEngineLock = new EngineLock(false);
        }
        mCamera = engineoptions.getCamera();
        if (mEngineOptions.getTouchOptions().needsMultiTouch())
        {
            setTouchController(new MultiTouchController());
        } else
        {
            setTouchController(new SingleTouchController());
        }
        if (mEngineOptions.getAudioOptions().needsSound())
        {
            mSoundManager = new SoundManager(mEngineOptions.getAudioOptions().getSoundOptions().getMaxSimultaneousStreams());
        } else
        {
            mSoundManager = null;
        }
        if (mEngineOptions.getAudioOptions().needsMusic())
        {
            mMusicManager = new MusicManager();
        } else
        {
            mMusicManager = null;
        }
        if (mEngineOptions.hasUpdateThread())
        {
            mUpdateThread = mEngineOptions.getUpdateThread();
        } else
        {
            mUpdateThread = new UpdateThread();
        }
        mUpdateThread.setEngine(this);
    }

    private long getNanosecondsElapsed()
    {
        return System.nanoTime() - mLastTick;
    }

    private static boolean isSensorSupported(SensorManager sensormanager, int i)
    {
        return sensormanager.getSensorList(i).size() > 0;
    }

    private void registerSelfAsSensorListener(SensorManager sensormanager, int i, SensorDelay sensordelay)
    {
        sensormanager.registerListener(this, (Sensor)sensormanager.getSensorList(i).get(0), sensordelay.getDelay());
    }

    private void throwOnDestroyed()
        throws EngineDestroyedException
    {
        if (mDestroyed)
        {
            throw new EngineDestroyedException();
        } else
        {
            return;
        }
    }

    private void unregisterSelfAsSensorListener(SensorManager sensormanager, int i)
    {
        sensormanager.unregisterListener(this, (Sensor)sensormanager.getSensorList(i).get(0));
    }

    public void clearDrawHandlers()
    {
        mDrawHandlers.clear();
    }

    public void clearUpdateHandlers()
    {
        mUpdateHandlers.clear();
    }

    protected void convertSceneToSurfaceTouchEvent(Camera camera, TouchEvent touchevent)
    {
        camera.convertSceneToSurfaceTouchEvent(touchevent, mSurfaceWidth, mSurfaceHeight);
    }

    protected void convertSurfaceToSceneTouchEvent(Camera camera, TouchEvent touchevent)
    {
        camera.convertSurfaceToSceneTouchEvent(touchevent, mSurfaceWidth, mSurfaceHeight);
    }

    public boolean disableAccelerationSensor(Context context)
    {
        SensorManager sensormanager = (SensorManager)context.getSystemService("sensor");
        if (isSensorSupported(sensormanager, 1))
        {
            unregisterSelfAsSensorListener(sensormanager, 1);
            return true;
        } else
        {
            return false;
        }
    }

    public void disableLocationSensor(Context context)
    {
        ((LocationManager)context.getSystemService("location")).removeUpdates(this);
    }

    public boolean disableOrientationSensor(Context context)
    {
        SensorManager sensormanager = (SensorManager)context.getSystemService("sensor");
        if (isSensorSupported(sensormanager, 1) && isSensorSupported(sensormanager, 2))
        {
            unregisterSelfAsSensorListener(sensormanager, 1);
            unregisterSelfAsSensorListener(sensormanager, 2);
            return true;
        } else
        {
            return false;
        }
    }

    public boolean enableAccelerationSensor(Context context, IAccelerationListener iaccelerationlistener)
    {
        return enableAccelerationSensor(context, iaccelerationlistener, new AccelerationSensorOptions(SENSORDELAY_DEFAULT));
    }

    public boolean enableAccelerationSensor(Context context, IAccelerationListener iaccelerationlistener, AccelerationSensorOptions accelerationsensoroptions)
    {
        SensorManager sensormanager = (SensorManager)context.getSystemService("sensor");
        if (isSensorSupported(sensormanager, 1))
        {
            mAccelerationListener = iaccelerationlistener;
            if (mAccelerationData == null)
            {
                mAccelerationData = new AccelerationData(((WindowManager)context.getSystemService("window")).getDefaultDisplay().getOrientation());
            }
            registerSelfAsSensorListener(sensormanager, 1, accelerationsensoroptions.getSensorDelay());
            return true;
        } else
        {
            return false;
        }
    }

    public void enableLocationSensor(Context context, ILocationListener ilocationlistener, LocationSensorOptions locationsensoroptions)
    {
        mLocationListener = ilocationlistener;
        LocationManager locationmanager = (LocationManager)context.getSystemService("location");
        String s = locationmanager.getBestProvider(locationsensoroptions, locationsensoroptions.isEnabledOnly());
        locationmanager.requestLocationUpdates(s, locationsensoroptions.getMinimumTriggerTime(), locationsensoroptions.getMinimumTriggerDistance(), this);
        onLocationChanged(locationmanager.getLastKnownLocation(s));
    }

    public boolean enableOrientationSensor(Context context, IOrientationListener iorientationlistener)
    {
        return enableOrientationSensor(context, iorientationlistener, new OrientationSensorOptions(SENSORDELAY_DEFAULT));
    }

    public boolean enableOrientationSensor(Context context, IOrientationListener iorientationlistener, OrientationSensorOptions orientationsensoroptions)
    {
        SensorManager sensormanager = (SensorManager)context.getSystemService("sensor");
        if (isSensorSupported(sensormanager, 1) && isSensorSupported(sensormanager, 2))
        {
            mOrientationListener = iorientationlistener;
            if (mOrientationData == null)
            {
                mOrientationData = new OrientationData(((WindowManager)context.getSystemService("window")).getDefaultDisplay().getOrientation());
            }
            registerSelfAsSensorListener(sensormanager, 1, orientationsensoroptions.getSensorDelay());
            registerSelfAsSensorListener(sensormanager, 2, orientationsensoroptions.getSensorDelay());
            return true;
        } else
        {
            return false;
        }
    }

    public boolean enableVibrator(Context context)
    {
        mVibrator = (Vibrator)context.getSystemService("vibrator");
        return mVibrator != null;
    }

    public AccelerationData getAccelerationData()
    {
        return mAccelerationData;
    }

    public Camera getCamera()
    {
        return mCamera;
    }

    protected Camera getCameraFromSurfaceTouchEvent(TouchEvent touchevent)
    {
        return getCamera();
    }

    public EngineLock getEngineLock()
    {
        return mEngineLock;
    }

    public EngineOptions getEngineOptions()
    {
        return mEngineOptions;
    }

    public FontManager getFontManager()
    {
        return mFontManager;
    }

    public MusicManager getMusicManager()
        throws IllegalStateException
    {
        if (mMusicManager != null)
        {
            return mMusicManager;
        } else
        {
            throw new IllegalStateException("To enable the MusicManager, check the EngineOptions!");
        }
    }

    public OrientationData getOrientationData()
    {
        return mOrientationData;
    }

    public Scene getScene()
    {
        return mScene;
    }

    protected Scene getSceneFromSurfaceTouchEvent(TouchEvent touchevent)
    {
        return mScene;
    }

    public float getSecondsElapsedTotal()
    {
        return mSecondsElapsedTotal;
    }

    public ShaderProgramManager getShaderProgramManager()
    {
        return mShaderProgramManager;
    }

    public SoundManager getSoundManager()
        throws IllegalStateException
    {
        if (mSoundManager != null)
        {
            return mSoundManager;
        } else
        {
            throw new IllegalStateException("To enable the SoundManager, check the EngineOptions!");
        }
    }

    public int getSurfaceHeight()
    {
        return mSurfaceHeight;
    }

    public int getSurfaceWidth()
    {
        return mSurfaceWidth;
    }

    public TextureManager getTextureManager()
    {
        return mTextureManager;
    }

    public ITouchController getTouchController()
    {
        return mTouchController;
    }

    public VertexBufferObjectManager getVertexBufferObjectManager()
    {
        return mVertexBufferObjectManager;
    }

    public boolean isRunning()
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = mRunning;
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    public void onAccuracyChanged(Sensor sensor, int i)
    {
        if (!mRunning) goto _L2; else goto _L1
_L1:
        sensor.getType();
        JVM INSTR tableswitch 1 2: default 32
    //                   1 33
    //                   2 91;
           goto _L2 _L3 _L4
_L2:
        return;
_L3:
        if (mAccelerationData != null)
        {
            mAccelerationData.setAccuracy(i);
            mAccelerationListener.onAccelerationAccuracyChanged(mAccelerationData);
            return;
        }
        if (mOrientationData != null)
        {
            mOrientationData.setAccelerationAccuracy(i);
            mOrientationListener.onOrientationAccuracyChanged(mOrientationData);
            return;
        }
        if (true) goto _L2; else goto _L4
_L4:
        mOrientationData.setMagneticFieldAccuracy(i);
        mOrientationListener.onOrientationAccuracyChanged(mOrientationData);
        return;
    }

    public void onDestroy()
    {
        mEngineLock.lock();
        mDestroyed = true;
        mEngineLock.notifyCanUpdate();
        mEngineLock.unlock();
        Exception exception;
        try
        {
            mUpdateThread.join();
        }
        catch (InterruptedException interruptedexception)
        {
            Debug.e("Could not join UpdateThread.", interruptedexception);
            Debug.w("Trying to manually interrupt UpdateThread.");
            mUpdateThread.interrupt();
        }
        mVertexBufferObjectManager.onDestroy();
        mTextureManager.onDestroy();
        mFontManager.onDestroy();
        mShaderProgramManager.onDestroy();
        return;
        exception;
        mEngineLock.unlock();
        throw exception;
    }

    public void onDrawFrame(GLState glstate)
        throws InterruptedException
    {
        EngineLock enginelock;
        enginelock = mEngineLock;
        enginelock.lock();
        enginelock.waitUntilCanDraw();
        mVertexBufferObjectManager.updateVertexBufferObjects(glstate);
        mTextureManager.updateTextures(glstate);
        mFontManager.updateFonts(glstate);
        onUpdateDrawHandlers(glstate, mCamera);
        onDrawScene(glstate, mCamera);
        enginelock.notifyCanUpdate();
        enginelock.unlock();
        return;
        Exception exception;
        exception;
        enginelock.unlock();
        throw exception;
    }

    protected void onDrawScene(GLState glstate, Camera camera)
    {
        if (mScene != null)
        {
            mScene.onDraw(glstate, camera);
        }
        camera.onDrawHUD(glstate);
    }

    public void onLocationChanged(Location location)
    {
        if (mLocation == null)
        {
            mLocation = location;
            return;
        }
        if (location == null)
        {
            mLocationListener.onLocationLost();
            return;
        } else
        {
            mLocation = location;
            mLocationListener.onLocationChanged(location);
            return;
        }
    }

    public void onProviderDisabled(String s)
    {
        mLocationListener.onLocationProviderDisabled();
    }

    public void onProviderEnabled(String s)
    {
        mLocationListener.onLocationProviderEnabled();
    }

    public void onReloadResources()
    {
        mVertexBufferObjectManager.onReload();
        mTextureManager.onReload();
        mFontManager.onReload();
        mShaderProgramManager.onReload();
    }

    public void onSensorChanged(SensorEvent sensorevent)
    {
        if (!mRunning) goto _L2; else goto _L1
_L1:
        sensorevent.sensor.getType();
        JVM INSTR tableswitch 1 2: default 36
    //                   1 37
    //                   2 101;
           goto _L2 _L3 _L4
_L2:
        return;
_L3:
        if (mAccelerationData != null)
        {
            mAccelerationData.setValues(sensorevent.values);
            mAccelerationListener.onAccelerationChanged(mAccelerationData);
            return;
        }
        if (mOrientationData != null)
        {
            mOrientationData.setAccelerationValues(sensorevent.values);
            mOrientationListener.onOrientationChanged(mOrientationData);
            return;
        }
        if (true) goto _L2; else goto _L4
_L4:
        mOrientationData.setMagneticFieldValues(sensorevent.values);
        mOrientationListener.onOrientationChanged(mOrientationData);
        return;
    }

    public void onStatusChanged(String s, int i, Bundle bundle)
    {
        switch (i)
        {
        default:
            return;

        case 2: // '\002'
            mLocationListener.onLocationProviderStatusChanged(LocationProviderStatus.AVAILABLE, bundle);
            return;

        case 0: // '\0'
            mLocationListener.onLocationProviderStatusChanged(LocationProviderStatus.OUT_OF_SERVICE, bundle);
            return;

        case 1: // '\001'
            mLocationListener.onLocationProviderStatusChanged(LocationProviderStatus.TEMPORARILY_UNAVAILABLE, bundle);
            return;
        }
    }

    void onTickUpdate()
        throws InterruptedException
    {
        long l;
        if (!mRunning)
        {
            break MISSING_BLOCK_LABEL_66;
        }
        l = getNanosecondsElapsed();
        mEngineLock.lock();
        throwOnDestroyed();
        onUpdate(l);
        throwOnDestroyed();
        mEngineLock.notifyCanDraw();
        mEngineLock.waitUntilCanUpdate();
        mEngineLock.unlock();
        return;
        Exception exception1;
        exception1;
        mEngineLock.unlock();
        throw exception1;
        mEngineLock.lock();
        throwOnDestroyed();
        mEngineLock.notifyCanDraw();
        mEngineLock.waitUntilCanUpdate();
        mEngineLock.unlock();
        Thread.sleep(16L);
        return;
        Exception exception;
        exception;
        mEngineLock.unlock();
        throw exception;
    }

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        if (mRunning)
        {
            mTouchController.onHandleMotionEvent(motionevent);
            try
            {
                Thread.sleep(mEngineOptions.getTouchOptions().getTouchEventIntervalMilliseconds());
            }
            catch (InterruptedException interruptedexception)
            {
                Debug.e(interruptedexception);
            }
            return true;
        } else
        {
            return false;
        }
    }

    public boolean onTouchEvent(TouchEvent touchevent)
    {
        Scene scene = getSceneFromSurfaceTouchEvent(touchevent);
        Camera camera = getCameraFromSurfaceTouchEvent(touchevent);
        convertSurfaceToSceneTouchEvent(camera, touchevent);
        if (onTouchHUD(camera, touchevent))
        {
            return true;
        } else
        {
            return onTouchScene(scene, touchevent);
        }
    }

    protected boolean onTouchHUD(Camera camera, TouchEvent touchevent)
    {
        if (camera.hasHUD())
        {
            return camera.getHUD().onSceneTouchEvent(touchevent);
        } else
        {
            return false;
        }
    }

    protected boolean onTouchScene(Scene scene, TouchEvent touchevent)
    {
        if (scene != null)
        {
            return scene.onSceneTouchEvent(touchevent);
        } else
        {
            return false;
        }
    }

    public void onUpdate(long l)
        throws InterruptedException
    {
        float f = 1E-09F * (float)l;
        mSecondsElapsedTotal = f + mSecondsElapsedTotal;
        mLastTick = l + mLastTick;
        mTouchController.onUpdate(f);
        onUpdateUpdateHandlers(f);
        onUpdateScene(f);
    }

    protected void onUpdateCameraSurface()
    {
        mCamera.setSurfaceSize(0, 0, mSurfaceWidth, mSurfaceHeight);
    }

    protected void onUpdateDrawHandlers(GLState glstate, Camera camera)
    {
        mDrawHandlers.onDraw(glstate, camera);
    }

    protected void onUpdateScene(float f)
    {
        if (mScene != null)
        {
            mScene.onUpdate(f);
        }
    }

    protected void onUpdateUpdateHandlers(float f)
    {
        mUpdateThreadRunnableHandler.onUpdate(f);
        mUpdateHandlers.onUpdate(f);
        getCamera().onUpdate(f);
    }

    public void registerDrawHandler(IDrawHandler idrawhandler)
    {
        mDrawHandlers.add(idrawhandler);
    }

    public void registerUpdateHandler(IUpdateHandler iupdatehandler)
    {
        mUpdateHandlers.add(iupdatehandler);
    }

    public void runOnUpdateThread(Runnable runnable)
    {
        runOnUpdateThread(runnable, true);
    }

    public void runOnUpdateThread(Runnable runnable, boolean flag)
    {
        if (flag)
        {
            mUpdateThreadRunnableHandler.postRunnable(runnable);
            return;
        } else
        {
            mUpdateThread.postRunnable(runnable);
            return;
        }
    }

    public void runSafely(Runnable runnable)
    {
        mEngineLock.lock();
        runnable.run();
        mEngineLock.unlock();
        return;
        Exception exception;
        exception;
        mEngineLock.unlock();
        throw exception;
    }

    public void setScene(Scene scene)
    {
        mScene = scene;
    }

    public void setSurfaceSize(int i, int j)
    {
        mSurfaceWidth = i;
        mSurfaceHeight = j;
        onUpdateCameraSurface();
    }

    public void setTouchController(ITouchController itouchcontroller)
    {
        mTouchController = itouchcontroller;
        mTouchController.setTouchEventCallback(this);
    }

    public void start()
    {
        this;
        JVM INSTR monitorenter ;
        if (!mRunning)
        {
            mLastTick = System.nanoTime();
            mRunning = true;
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void startUpdateThread()
        throws IllegalThreadStateException
    {
        mUpdateThread.start();
    }

    public void stop()
    {
        this;
        JVM INSTR monitorenter ;
        if (mRunning)
        {
            mRunning = false;
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void unregisterDrawHandler(IDrawHandler idrawhandler)
    {
        mDrawHandlers.remove(idrawhandler);
    }

    public void unregisterUpdateHandler(IUpdateHandler iupdatehandler)
    {
        mUpdateHandlers.remove(iupdatehandler);
    }

    public void vibrate(long l)
        throws IllegalStateException
    {
        if (mVibrator != null)
        {
            mVibrator.vibrate(l);
            return;
        } else
        {
            throw new IllegalStateException("You need to enable the Vibrator before you can use it!");
        }
    }

    public void vibrate(long al[], int i)
        throws IllegalStateException
    {
        if (mVibrator != null)
        {
            mVibrator.vibrate(al, i);
            return;
        } else
        {
            throw new IllegalStateException("You need to enable the Vibrator before you can use it!");
        }
    }

    static 
    {
        SENSORDELAY_DEFAULT = SensorDelay.GAME;
    }
}
