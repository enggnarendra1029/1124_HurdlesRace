// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.scene.background;

import android.opengl.GLES20;
import org.andengine.engine.camera.Camera;
import org.andengine.opengl.util.GLState;
import org.andengine.util.color.Color;
import org.andengine.util.modifier.IModifier;
import org.andengine.util.modifier.ModifierList;

// Referenced classes of package org.andengine.entity.scene.background:
//            IBackground

public class Background
    implements IBackground
{

    private static final int BACKGROUNDMODIFIERS_CAPACITY_DEFAULT = 4;
    private ModifierList mBackgroundModifiers;
    private final Color mColor;
    private boolean mColorEnabled;

    protected Background()
    {
        mBackgroundModifiers = null;
        mColor = new Color(0.0F, 0.0F, 0.0F, 1.0F);
        mColorEnabled = true;
    }

    public Background(float f, float f1, float f2)
    {
        mBackgroundModifiers = null;
        mColor = new Color(0.0F, 0.0F, 0.0F, 1.0F);
        mColorEnabled = true;
        mColor.set(f, f1, f2);
    }

    public Background(float f, float f1, float f2, float f3)
    {
        mBackgroundModifiers = null;
        mColor = new Color(0.0F, 0.0F, 0.0F, 1.0F);
        mColorEnabled = true;
        mColor.set(f, f1, f2, f3);
    }

    public Background(Color color)
    {
        mBackgroundModifiers = null;
        mColor = new Color(0.0F, 0.0F, 0.0F, 1.0F);
        mColorEnabled = true;
        mColor.set(color);
    }

    private void allocateBackgroundModifiers()
    {
        mBackgroundModifiers = new ModifierList(this, 4);
    }

    public void clearBackgroundModifiers()
    {
        if (mBackgroundModifiers != null)
        {
            mBackgroundModifiers.clear();
        }
    }

    public boolean isColorEnabled()
    {
        return mColorEnabled;
    }

    public void onDraw(GLState glstate, Camera camera)
    {
        if (mColorEnabled)
        {
            GLES20.glClearColor(mColor.getRed(), mColor.getGreen(), mColor.getBlue(), mColor.getAlpha());
            GLES20.glClear(16384);
        }
    }

    public void onUpdate(float f)
    {
        if (mBackgroundModifiers != null)
        {
            mBackgroundModifiers.onUpdate(f);
        }
    }

    public void registerBackgroundModifier(IModifier imodifier)
    {
        if (mBackgroundModifiers == null)
        {
            allocateBackgroundModifiers();
        }
        mBackgroundModifiers.add(imodifier);
    }

    public void reset()
    {
        mBackgroundModifiers.reset();
    }

    public void setColor(float f, float f1, float f2)
    {
        mColor.set(f, f1, f2);
    }

    public void setColor(float f, float f1, float f2, float f3)
    {
        mColor.set(f, f1, f2, f3);
    }

    public void setColor(Color color)
    {
        mColor.set(color);
    }

    public void setColorEnabled(boolean flag)
    {
        mColorEnabled = flag;
    }

    public boolean unregisterBackgroundModifier(IModifier imodifier)
    {
        if (mBackgroundModifiers != null)
        {
            return mBackgroundModifiers.remove(imodifier);
        } else
        {
            return false;
        }
    }
}
