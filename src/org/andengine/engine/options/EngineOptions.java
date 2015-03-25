// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.engine.options;

import org.andengine.engine.camera.Camera;
import org.andengine.engine.options.resolutionpolicy.IResolutionPolicy;

// Referenced classes of package org.andengine.engine.options:
//            TouchOptions, AudioOptions, RenderOptions, WakeLockOptions, 
//            ScreenOrientation

public class EngineOptions
{

    private final AudioOptions mAudioOptions = new AudioOptions();
    private final Camera mCamera;
    private org.andengine.engine.Engine.EngineLock mEngineLock;
    private final boolean mFullscreen;
    private final RenderOptions mRenderOptions = new RenderOptions();
    private final IResolutionPolicy mResolutionPolicy;
    private final ScreenOrientation mScreenOrientation;
    private final TouchOptions mTouchOptions = new TouchOptions();
    private org.andengine.engine.Engine.UpdateThread mUpdateThread;
    private int mUpdateThreadPriority;
    private WakeLockOptions mWakeLockOptions;

    public EngineOptions(boolean flag, ScreenOrientation screenorientation, IResolutionPolicy iresolutionpolicy, Camera camera)
    {
        mWakeLockOptions = WakeLockOptions.SCREEN_ON;
        mUpdateThreadPriority = 0;
        mFullscreen = flag;
        mScreenOrientation = screenorientation;
        mResolutionPolicy = iresolutionpolicy;
        mCamera = camera;
    }

    public AudioOptions getAudioOptions()
    {
        return mAudioOptions;
    }

    public Camera getCamera()
    {
        return mCamera;
    }

    public org.andengine.engine.Engine.EngineLock getEngineLock()
    {
        return mEngineLock;
    }

    public RenderOptions getRenderOptions()
    {
        return mRenderOptions;
    }

    public IResolutionPolicy getResolutionPolicy()
    {
        return mResolutionPolicy;
    }

    public ScreenOrientation getScreenOrientation()
    {
        return mScreenOrientation;
    }

    public TouchOptions getTouchOptions()
    {
        return mTouchOptions;
    }

    public org.andengine.engine.Engine.UpdateThread getUpdateThread()
    {
        return mUpdateThread;
    }

    public int getUpdateThreadPriority()
    {
        return mUpdateThreadPriority;
    }

    public WakeLockOptions getWakeLockOptions()
    {
        return mWakeLockOptions;
    }

    public boolean hasEngineLock()
    {
        return mEngineLock != null;
    }

    public boolean hasUpdateThread()
    {
        return mUpdateThread != null;
    }

    public boolean isFullscreen()
    {
        return mFullscreen;
    }

    public void setEngineLock(org.andengine.engine.Engine.EngineLock enginelock)
    {
        mEngineLock = enginelock;
    }

    public void setUpdateThread(org.andengine.engine.Engine.UpdateThread updatethread)
    {
        mUpdateThread = updatethread;
    }

    public void setUpdateThreadPriority(int i)
    {
        mUpdateThreadPriority = i;
    }

    public EngineOptions setWakeLockOptions(WakeLockOptions wakelockoptions)
    {
        mWakeLockOptions = wakelockoptions;
        return this;
    }
}
