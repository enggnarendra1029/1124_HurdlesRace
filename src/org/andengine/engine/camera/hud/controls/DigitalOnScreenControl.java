// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.engine.camera.hud.controls;

import org.andengine.engine.camera.Camera;
import org.andengine.opengl.texture.region.ITextureRegion;
import org.andengine.opengl.vbo.VertexBufferObjectManager;
import org.andengine.util.math.MathUtils;

// Referenced classes of package org.andengine.engine.camera.hud.controls:
//            BaseOnScreenControl

public class DigitalOnScreenControl extends BaseOnScreenControl
{

    private static final float ANGLE_DELTA = 22.5F;
    private static final float EXTENT_DIAGONAL = 0.354F;
    private static final float EXTENT_SIDE = 0.5F;
    private boolean mAllowDiagonal;

    public DigitalOnScreenControl(float f, float f1, Camera camera, ITextureRegion itextureregion, ITextureRegion itextureregion1, float f2, VertexBufferObjectManager vertexbufferobjectmanager, 
            BaseOnScreenControl.IOnScreenControlListener ionscreencontrollistener)
    {
        this(f, f1, camera, itextureregion, itextureregion1, f2, false, vertexbufferobjectmanager, ionscreencontrollistener);
    }

    public DigitalOnScreenControl(float f, float f1, Camera camera, ITextureRegion itextureregion, ITextureRegion itextureregion1, float f2, boolean flag, 
            VertexBufferObjectManager vertexbufferobjectmanager, BaseOnScreenControl.IOnScreenControlListener ionscreencontrollistener)
    {
        super(f, f1, camera, itextureregion, itextureregion1, f2, vertexbufferobjectmanager, ionscreencontrollistener);
        mAllowDiagonal = flag;
    }

    private static boolean testDiagonalAngle(float f, float f1)
    {
        return f1 > f - 22.5F && f1 < f + 22.5F;
    }

    public boolean isAllowDiagonal()
    {
        return mAllowDiagonal;
    }

    protected void onUpdateControlKnob(float f, float f1)
    {
        if (f != 0.0F || f1 != 0.0F) goto _L2; else goto _L1
_L1:
        super.onUpdateControlKnob(0.0F, 0.0F);
_L4:
        return;
_L2:
        if (mAllowDiagonal)
        {
            float f2 = 180F + MathUtils.radToDeg(MathUtils.atan2(f1, f));
            if (testDiagonalAngle(0.0F, f2) || testDiagonalAngle(360F, f2))
            {
                super.onUpdateControlKnob(-0.5F, 0.0F);
                return;
            }
            if (testDiagonalAngle(45F, f2))
            {
                super.onUpdateControlKnob(-0.354F, -0.354F);
                return;
            }
            if (testDiagonalAngle(90F, f2))
            {
                super.onUpdateControlKnob(0.0F, -0.5F);
                return;
            }
            if (testDiagonalAngle(135F, f2))
            {
                super.onUpdateControlKnob(0.354F, -0.354F);
                return;
            }
            if (testDiagonalAngle(180F, f2))
            {
                super.onUpdateControlKnob(0.5F, 0.0F);
                return;
            }
            if (testDiagonalAngle(225F, f2))
            {
                super.onUpdateControlKnob(0.354F, 0.354F);
                return;
            }
            if (testDiagonalAngle(270F, f2))
            {
                super.onUpdateControlKnob(0.0F, 0.5F);
                return;
            }
            if (testDiagonalAngle(315F, f2))
            {
                super.onUpdateControlKnob(-0.354F, 0.354F);
                return;
            } else
            {
                super.onUpdateControlKnob(0.0F, 0.0F);
                return;
            }
        }
        if (Math.abs(f) <= Math.abs(f1))
        {
            break; /* Loop/switch isn't completed */
        }
        if (f > 0.0F)
        {
            super.onUpdateControlKnob(0.5F, 0.0F);
            return;
        }
        if (f < 0.0F)
        {
            super.onUpdateControlKnob(-0.5F, 0.0F);
            return;
        }
        if (f == 0.0F)
        {
            super.onUpdateControlKnob(0.0F, 0.0F);
            return;
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (f1 > 0.0F)
        {
            super.onUpdateControlKnob(0.0F, 0.5F);
            return;
        }
        if (f1 < 0.0F)
        {
            super.onUpdateControlKnob(0.0F, -0.5F);
            return;
        }
        if (f1 == 0.0F)
        {
            super.onUpdateControlKnob(0.0F, 0.0F);
            return;
        }
        if (true) goto _L4; else goto _L5
_L5:
    }

    public void setAllowDiagonal(boolean flag)
    {
        mAllowDiagonal = flag;
    }
}
