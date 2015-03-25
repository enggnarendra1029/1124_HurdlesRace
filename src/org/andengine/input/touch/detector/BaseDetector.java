// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.input.touch.detector;

import org.andengine.entity.scene.IOnSceneTouchListener;
import org.andengine.entity.scene.Scene;
import org.andengine.input.touch.TouchEvent;

public abstract class BaseDetector
    implements IOnSceneTouchListener
{

    private boolean mEnabled;

    public BaseDetector()
    {
        mEnabled = true;
    }

    public boolean isEnabled()
    {
        return mEnabled;
    }

    protected abstract boolean onManagedTouchEvent(TouchEvent touchevent);

    public boolean onSceneTouchEvent(Scene scene, TouchEvent touchevent)
    {
        return onTouchEvent(touchevent);
    }

    public final boolean onTouchEvent(TouchEvent touchevent)
    {
        if (mEnabled)
        {
            return onManagedTouchEvent(touchevent);
        } else
        {
            return false;
        }
    }

    public abstract void reset();

    public void setEnabled(boolean flag)
    {
        mEnabled = flag;
    }
}
