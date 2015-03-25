// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.engine.camera.hud.controls;

import org.andengine.engine.camera.Camera;
import org.andengine.engine.camera.hud.HUD;
import org.andengine.engine.handler.timer.ITimerCallback;
import org.andengine.engine.handler.timer.TimerHandler;
import org.andengine.entity.scene.IOnSceneTouchListener;
import org.andengine.entity.scene.Scene;
import org.andengine.entity.sprite.Sprite;
import org.andengine.input.touch.TouchEvent;
import org.andengine.opengl.texture.region.ITextureRegion;
import org.andengine.opengl.vbo.VertexBufferObjectManager;
import org.andengine.util.math.MathUtils;

public abstract class BaseOnScreenControl extends HUD
    implements IOnSceneTouchListener
{
    public static interface IOnScreenControlListener
    {

        public abstract void onControlChange(BaseOnScreenControl baseonscreencontrol, float f, float f1);
    }


    private static final int INVALID_POINTER_ID = -1;
    private int mActivePointerID;
    private final Sprite mControlBase;
    private final Sprite mControlKnob;
    private float mControlValueX;
    private float mControlValueY;
    private final IOnScreenControlListener mOnScreenControlListener;

    public BaseOnScreenControl(float f, float f1, Camera camera, ITextureRegion itextureregion, ITextureRegion itextureregion1, float f2, VertexBufferObjectManager vertexbufferobjectmanager, 
            IOnScreenControlListener ionscreencontrollistener)
    {
        mActivePointerID = -1;
        setCamera(camera);
        mOnScreenControlListener = ionscreencontrollistener;
        mControlBase = new Sprite(f, f1, itextureregion, vertexbufferobjectmanager) {

            final BaseOnScreenControl this$0;

            public boolean onAreaTouched(TouchEvent touchevent, float f3, float f4)
            {
                return onHandleControlBaseTouched(touchevent, f3, f4);
            }

            
            {
                this$0 = BaseOnScreenControl.this;
                super(f, f1, itextureregion, vertexbufferobjectmanager);
            }
        };
        mControlKnob = new Sprite(0.0F, 0.0F, itextureregion1, vertexbufferobjectmanager);
        onHandleControlKnobReleased();
        setOnSceneTouchListener(this);
        registerTouchArea(mControlBase);
        registerUpdateHandler(new TimerHandler(f2, true, new ITimerCallback() {

            final BaseOnScreenControl this$0;

            public void onTimePassed(TimerHandler timerhandler)
            {
                mOnScreenControlListener.onControlChange(BaseOnScreenControl.this, mControlValueX, mControlValueY);
            }

            
            {
                this$0 = BaseOnScreenControl.this;
                super();
            }
        }));
        attachChild(mControlBase);
        attachChild(mControlKnob);
        setTouchAreaBindingOnActionDownEnabled(true);
    }

    private void updateControlKnob(float f, float f1)
    {
        Sprite sprite = mControlBase;
        onUpdateControlKnob(MathUtils.bringToBounds(0.0F, sprite.getWidth(), f) / sprite.getWidth() - 0.5F, MathUtils.bringToBounds(0.0F, sprite.getHeight(), f1) / sprite.getHeight() - 0.5F);
    }

    public Sprite getControlBase()
    {
        return mControlBase;
    }

    public Sprite getControlKnob()
    {
        return mControlKnob;
    }

    public IOnScreenControlListener getOnScreenControlListener()
    {
        return mOnScreenControlListener;
    }

    protected void onHandleControlBaseLeft()
    {
        onUpdateControlKnob(0.0F, 0.0F);
    }

    protected boolean onHandleControlBaseTouched(TouchEvent touchevent, float f, float f1)
    {
        int i = touchevent.getPointerID();
        touchevent.getAction();
        JVM INSTR tableswitch 0 3: default 40
    //                   0 57
    //                   1 79
    //                   2 40
    //                   3 79;
           goto _L1 _L2 _L3 _L1 _L3
_L1:
        if (mActivePointerID == i)
        {
            updateControlKnob(f, f1);
        }
_L5:
        return true;
_L2:
        if (mActivePointerID == -1)
        {
            mActivePointerID = i;
            updateControlKnob(f, f1);
            return true;
        }
        continue; /* Loop/switch isn't completed */
_L3:
        if (mActivePointerID == i)
        {
            mActivePointerID = -1;
            onHandleControlKnobReleased();
            return true;
        }
        if (true) goto _L5; else goto _L4
_L4:
    }

    protected void onHandleControlKnobReleased()
    {
        onUpdateControlKnob(0.0F, 0.0F);
    }

    public boolean onSceneTouchEvent(Scene scene, TouchEvent touchevent)
    {
        if (touchevent.getPointerID() != mActivePointerID) goto _L2; else goto _L1
_L1:
        onHandleControlBaseLeft();
        touchevent.getAction();
        JVM INSTR tableswitch 1 3: default 44
    //                   1 46
    //                   2 44
    //                   3 46;
           goto _L2 _L3 _L2 _L3
_L2:
        return false;
_L3:
        mActivePointerID = -1;
        if (true) goto _L2; else goto _L4
_L4:
    }

    protected void onUpdateControlKnob(float f, float f1)
    {
        Sprite sprite = mControlBase;
        Sprite sprite1 = mControlKnob;
        mControlValueX = 2.0F * f;
        mControlValueY = 2.0F * f1;
        float af[] = sprite.getSceneCenterCoordinates();
        sprite1.setPosition((af[0] - 0.5F * sprite1.getWidth()) + f * sprite.getWidthScaled(), (af[1] - 0.5F * sprite1.getHeight()) + f1 * sprite.getHeightScaled());
    }

    public void refreshControlKnobPosition()
    {
        onUpdateControlKnob(0.5F * mControlValueX, 0.5F * mControlValueY);
    }



}
