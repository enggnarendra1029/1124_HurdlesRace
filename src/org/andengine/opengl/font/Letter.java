// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.font;

import android.util.SparseIntArray;

public class Letter
{

    public final float mAdvance;
    public final char mCharacter;
    public final int mHeight;
    private SparseIntArray mKernings;
    public final float mOffsetX;
    public final float mOffsetY;
    public final int mTextureX;
    public final int mTextureY;
    public final float mU;
    public final float mU2;
    public final float mV;
    public final float mV2;
    private final boolean mWhitespace;
    public final int mWidth;

    Letter(char c, float f)
    {
        this(c, true, 0, 0, 0, 0, 0.0F, 0.0F, f, 0.0F, 0.0F, 0.0F, 0.0F);
    }

    Letter(char c, int i, int j, int k, int l, float f, float f1, 
            float f2, float f3, float f4, float f5, float f6)
    {
        this(c, false, i, j, k, l, f, f1, f2, f3, f4, f5, f6);
    }

    private Letter(char c, boolean flag, int i, int j, int k, int l, float f, 
            float f1, float f2, float f3, float f4, float f5, float f6)
    {
        mCharacter = c;
        mWhitespace = flag;
        mWidth = k;
        mHeight = l;
        mTextureX = i;
        mTextureY = j;
        mOffsetX = f;
        mOffsetY = f1;
        mAdvance = f2;
        mU = f3;
        mV = f4;
        mU2 = f5;
        mV2 = f6;
    }

    void addKerning(int i, int j)
    {
        if (mKernings == null)
        {
            mKernings = new SparseIntArray();
        }
        mKernings.put(i, j);
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null)
            {
                return false;
            }
            if (getClass() != obj.getClass())
            {
                return false;
            }
            Letter letter = (Letter)obj;
            if (mCharacter != letter.mCharacter)
            {
                return false;
            }
        }
        return true;
    }

    public int getKerning(int i)
    {
        if (mKernings == null)
        {
            return 0;
        } else
        {
            return mKernings.get(i, 0);
        }
    }

    public int hashCode()
    {
        return 31 + mCharacter;
    }

    public boolean isWhitespace()
    {
        return mWhitespace;
    }

    public String toString()
    {
        return (new StringBuilder(String.valueOf(getClass().getSimpleName()))).append("[Character=").append(mCharacter).append(", Whitespace=").append(mWhitespace).append(", TextureX=").append(mTextureX).append(", TextureY=").append(mTextureY).append(", Width=").append(mWidth).append(", Height=").append(mHeight).append(", OffsetX=").append(mOffsetX).append(", OffsetY=").append(mOffsetY).append(", Advance=").append(mAdvance).append(", U=").append(mU).append(", V=").append(mV).append(", U2=").append(mU2).append(", V2=").append(mV2).append(", Kernings=").append(mKernings).append("]").toString();
    }
}
