// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture.region;

import org.andengine.opengl.texture.ITexture;

// Referenced classes of package org.andengine.opengl.texture.region:
//            BaseTextureRegion, ITiledTextureRegion, ITextureRegion, TextureRegion

public class TiledTextureRegion extends BaseTextureRegion
    implements ITiledTextureRegion
{

    protected int mCurrentTileIndex;
    protected final ITextureRegion mTextureRegions[];
    protected final int mTileCount;

    public transient TiledTextureRegion(ITexture itexture, boolean flag, ITextureRegion aitextureregion[])
    {
        super(itexture);
        mTextureRegions = aitextureregion;
        mTileCount = mTextureRegions.length;
        if (!flag) goto _L2; else goto _L1
_L1:
        int i = -1 + mTileCount;
_L5:
        if (i >= 0) goto _L3; else goto _L2
_L2:
        return;
_L3:
        if (aitextureregion[i].getTexture() != itexture)
        {
            throw new IllegalArgumentException((new StringBuilder("The ")).append(org/andengine/opengl/texture/region/ITextureRegion.getSimpleName()).append(": '").append(aitextureregion[i].toString()).append("' at index: '").append(i).append("' is not on the same ").append(org/andengine/opengl/texture/ITexture.getSimpleName()).append(": '").append(aitextureregion[i].getTexture().toString()).append("' as the supplied ").append(org/andengine/opengl/texture/ITexture.getSimpleName()).append(": '").append(itexture.toString()).append("'.").toString());
        }
        i--;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public transient TiledTextureRegion(ITexture itexture, ITextureRegion aitextureregion[])
    {
        this(itexture, true, aitextureregion);
    }

    public static TiledTextureRegion create(ITexture itexture, int i, int j, int k, int l, int i1, int j1)
    {
        return create(itexture, i, j, k, l, i1, j1, false);
    }

    public static TiledTextureRegion create(ITexture itexture, int i, int j, int k, int l, int i1, int j1, boolean flag)
    {
        ITextureRegion aitextureregion[];
        int k1;
        int l1;
        int i2;
        aitextureregion = new ITextureRegion[i1 * j1];
        k1 = k / i1;
        l1 = l / j1;
        i2 = 0;
_L2:
        if (i2 >= i1)
        {
            return new TiledTextureRegion(itexture, false, aitextureregion);
        }
        int j2 = 0;
        do
        {
label0:
            {
                if (j2 < j1)
                {
                    break label0;
                }
                i2++;
            }
            if (true)
            {
                continue;
            }
            int k2 = i2 + j2 * i1;
            int l2 = i + i2 * k1;
            int i3 = j + j2 * l1;
            aitextureregion[k2] = new TextureRegion(itexture, l2, i3, k1, l1, flag);
            j2++;
        } while (true);
        if (true) goto _L2; else goto _L1
_L1:
    }

    public volatile ITextureRegion deepCopy()
    {
        return deepCopy();
    }

    public volatile ITiledTextureRegion deepCopy()
    {
        return deepCopy();
    }

    public TiledTextureRegion deepCopy()
    {
        int i = mTileCount;
        ITextureRegion aitextureregion[] = new ITextureRegion[i];
        int j = 0;
        do
        {
            if (j >= i)
            {
                return new TiledTextureRegion(mTexture, false, aitextureregion);
            }
            aitextureregion[j] = mTextureRegions[j].deepCopy();
            j++;
        } while (true);
    }

    public int getCurrentTileIndex()
    {
        return mCurrentTileIndex;
    }

    public float getHeight()
    {
        return mTextureRegions[mCurrentTileIndex].getHeight();
    }

    public float getHeight(int i)
    {
        return mTextureRegions[i].getHeight();
    }

    public float getScale()
    {
        return mTextureRegions[mCurrentTileIndex].getScale();
    }

    public float getScale(int i)
    {
        return mTextureRegions[i].getScale();
    }

    public ITextureRegion getTextureRegion(int i)
    {
        return mTextureRegions[i];
    }

    public float getTextureX()
    {
        return mTextureRegions[mCurrentTileIndex].getTextureX();
    }

    public float getTextureX(int i)
    {
        return mTextureRegions[i].getTextureX();
    }

    public float getTextureY()
    {
        return mTextureRegions[mCurrentTileIndex].getTextureY();
    }

    public float getTextureY(int i)
    {
        return mTextureRegions[i].getTextureY();
    }

    public int getTileCount()
    {
        return mTileCount;
    }

    public float getU()
    {
        return mTextureRegions[mCurrentTileIndex].getU();
    }

    public float getU(int i)
    {
        return mTextureRegions[i].getU();
    }

    public float getU2()
    {
        return mTextureRegions[mCurrentTileIndex].getU2();
    }

    public float getU2(int i)
    {
        return mTextureRegions[i].getU2();
    }

    public float getV()
    {
        return mTextureRegions[mCurrentTileIndex].getV();
    }

    public float getV(int i)
    {
        return mTextureRegions[i].getV();
    }

    public float getV2()
    {
        return mTextureRegions[mCurrentTileIndex].getV2();
    }

    public float getV2(int i)
    {
        return mTextureRegions[i].getV2();
    }

    public float getWidth()
    {
        return mTextureRegions[mCurrentTileIndex].getWidth();
    }

    public float getWidth(int i)
    {
        return mTextureRegions[i].getWidth();
    }

    public boolean isRotated()
    {
        return mTextureRegions[mCurrentTileIndex].isRotated();
    }

    public boolean isRotated(int i)
    {
        return mTextureRegions[i].isRotated();
    }

    public boolean isScaled()
    {
        return mTextureRegions[mCurrentTileIndex].isScaled();
    }

    public boolean isScaled(int i)
    {
        return mTextureRegions[i].isScaled();
    }

    public void nextTile()
    {
        mCurrentTileIndex = 1 + mCurrentTileIndex;
        if (mCurrentTileIndex >= mTileCount)
        {
            mCurrentTileIndex = mCurrentTileIndex % mTileCount;
        }
    }

    public void set(float f, float f1, float f2, float f3)
    {
        mTextureRegions[mCurrentTileIndex].set(f, f1, f2, f3);
    }

    public void set(int i, float f, float f1, float f2, float f3)
    {
        mTextureRegions[i].set(f, f1, f2, f3);
    }

    public void setCurrentTileIndex(int i)
    {
        mCurrentTileIndex = i;
    }

    public void setTextureHeight(float f)
    {
        mTextureRegions[mCurrentTileIndex].setTextureHeight(f);
    }

    public void setTextureHeight(int i, float f)
    {
        mTextureRegions[i].setTextureHeight(f);
    }

    public void setTexturePosition(float f, float f1)
    {
        mTextureRegions[mCurrentTileIndex].setTexturePosition(f, f1);
    }

    public void setTexturePosition(int i, float f, float f1)
    {
        mTextureRegions[i].setTexturePosition(f, f1);
    }

    public void setTextureSize(float f, float f1)
    {
        mTextureRegions[mCurrentTileIndex].setTextureSize(f, f1);
    }

    public void setTextureSize(int i, float f, float f1)
    {
        mTextureRegions[i].setTextureSize(f, f1);
    }

    public void setTextureWidth(float f)
    {
        mTextureRegions[mCurrentTileIndex].setTextureWidth(f);
    }

    public void setTextureWidth(int i, float f)
    {
        mTextureRegions[i].setTextureWidth(f);
    }

    public void setTextureX(float f)
    {
        mTextureRegions[mCurrentTileIndex].setTextureX(f);
    }

    public void setTextureX(int i, float f)
    {
        mTextureRegions[i].setTextureX(f);
    }

    public void setTextureY(float f)
    {
        mTextureRegions[mCurrentTileIndex].setTextureY(f);
    }

    public void setTextureY(int i, float f)
    {
        mTextureRegions[i].setTextureY(f);
    }
}
