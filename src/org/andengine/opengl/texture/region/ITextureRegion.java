// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture.region;

import org.andengine.opengl.texture.ITexture;

public interface ITextureRegion
{

    public abstract ITextureRegion deepCopy();

    public abstract float getHeight();

    public abstract float getScale();

    public abstract ITexture getTexture();

    public abstract float getTextureX();

    public abstract float getTextureY();

    public abstract float getU();

    public abstract float getU2();

    public abstract float getV();

    public abstract float getV2();

    public abstract float getWidth();

    public abstract boolean isRotated();

    public abstract boolean isScaled();

    public abstract void set(float f, float f1, float f2, float f3);

    public abstract void setTextureHeight(float f);

    public abstract void setTexturePosition(float f, float f1);

    public abstract void setTextureSize(float f, float f1);

    public abstract void setTextureWidth(float f);

    public abstract void setTextureX(float f);

    public abstract void setTextureY(float f);
}
