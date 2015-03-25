// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture.region;


// Referenced classes of package org.andengine.opengl.texture.region:
//            ITextureRegion

public interface ITiledTextureRegion
    extends ITextureRegion
{

    public abstract ITiledTextureRegion deepCopy();

    public abstract int getCurrentTileIndex();

    public abstract float getHeight(int i);

    public abstract float getScale(int i);

    public abstract ITextureRegion getTextureRegion(int i);

    public abstract float getTextureX(int i);

    public abstract float getTextureY(int i);

    public abstract int getTileCount();

    public abstract float getU(int i);

    public abstract float getU2(int i);

    public abstract float getV(int i);

    public abstract float getV2(int i);

    public abstract float getWidth(int i);

    public abstract boolean isRotated(int i);

    public abstract boolean isScaled(int i);

    public abstract void nextTile();

    public abstract void set(int i, float f, float f1, float f2, float f3);

    public abstract void setCurrentTileIndex(int i);

    public abstract void setTextureHeight(int i, float f);

    public abstract void setTexturePosition(int i, float f, float f1);

    public abstract void setTextureSize(int i, float f, float f1);

    public abstract void setTextureWidth(int i, float f);

    public abstract void setTextureX(int i, float f);

    public abstract void setTextureY(int i, float f);
}
