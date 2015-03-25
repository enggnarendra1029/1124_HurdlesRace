// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.engine.camera.hud.controls;

import android.util.FloatMath;
import org.andengine.engine.camera.Camera;
import org.andengine.input.touch.TouchEvent;
import org.andengine.input.touch.detector.ClickDetector;
import org.andengine.opengl.texture.region.ITextureRegion;
import org.andengine.opengl.vbo.VertexBufferObjectManager;
import org.andengine.util.math.MathUtils;

// Referenced classes of package org.andengine.engine.camera.hud.controls:
//            BaseOnScreenControl

public class AnalogOnScreenControl extends BaseOnScreenControl
    implements org.andengine.input.touch.detector.ClickDetector.IClickDetectorListener
{
    public static interface IAnalogOnScreenControlListener
        extends BaseOnScreenControl.IOnScreenControlListener
    {

        public abstract void onControlClick(AnalogOnScreenControl analogonscreencontrol);
    }


    private final ClickDetector mClickDetector;

    public AnalogOnScreenControl(float f, float f1, Camera camera, ITextureRegion itextureregion, ITextureRegion itextureregion1, float f2, long l, VertexBufferObjectManager vertexbufferobjectmanager, IAnalogOnScreenControlListener ianalogonscreencontrollistener)
    {
        super(f, f1, camera, itextureregion, itextureregion1, f2, vertexbufferobjectmanager, ianalogonscreencontrollistener);
        mClickDetector = new ClickDetector(this);
        mClickDetector.setTriggerClickMaximumMilliseconds(l);
    }

    public AnalogOnScreenControl(float f, float f1, Camera camera, ITextureRegion itextureregion, ITextureRegion itextureregion1, float f2, VertexBufferObjectManager vertexbufferobjectmanager, 
            IAnalogOnScreenControlListener ianalogonscreencontrollistener)
    {
        super(f, f1, camera, itextureregion, itextureregion1, f2, vertexbufferobjectmanager, ianalogonscreencontrollistener);
        mClickDetector = new ClickDetector(this);
        mClickDetector.setEnabled(false);
    }

    public IAnalogOnScreenControlListener getOnScreenControlListener()
    {
        return (IAnalogOnScreenControlListener)super.getOnScreenControlListener();
    }

    public volatile BaseOnScreenControl.IOnScreenControlListener getOnScreenControlListener()
    {
        return getOnScreenControlListener();
    }

    public void onClick(ClickDetector clickdetector, int i, float f, float f1)
    {
        getOnScreenControlListener().onControlClick(this);
    }

    protected boolean onHandleControlBaseTouched(TouchEvent touchevent, float f, float f1)
    {
        mClickDetector.onSceneTouchEvent(null, touchevent);
        return super.onHandleControlBaseTouched(touchevent, f, f1);
    }

    protected void onUpdateControlKnob(float f, float f1)
    {
        if (f * f + f1 * f1 <= 0.25F)
        {
            super.onUpdateControlKnob(f, f1);
            return;
        } else
        {
            float f2 = MathUtils.atan2(f1, f);
            super.onUpdateControlKnob(0.5F * FloatMath.cos(f2), 0.5F * FloatMath.sin(f2));
            return;
        }
    }

    public void setOnControlClickEnabled(boolean flag)
    {
        mClickDetector.setEnabled(flag);
    }

    public void setOnControlClickMaximumMilliseconds(long l)
    {
        mClickDetector.setTriggerClickMaximumMilliseconds(l);
    }
}
