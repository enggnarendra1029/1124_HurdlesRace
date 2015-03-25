// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture.atlas.buildable.builder;

import org.andengine.opengl.texture.atlas.source.ITextureAtlasSource;

// Referenced classes of package org.andengine.opengl.texture.atlas.buildable.builder:
//            BlackPawnTextureAtlasBuilder

protected static class mRect
{

    private createChildren mChildA;
    private createChildren mChildB;
    private final createChildren mRect;
    private ITextureAtlasSource mTextureAtlasSource;

    private mRect createChildren(ITextureAtlasSource itextureatlassource, int i, int j, int k, int l, int i1, int j1)
    {
        mRect mrect = mRect;
        if (i1 >= j1)
        {
            mChildA = new <init>(mrect.getLeft(), mrect.getTop(), k + itextureatlassource.getTextureWidth() + l * 2, mrect.getHeight());
            mChildB = new <init>(mrect.getLeft() + (k + itextureatlassource.getTextureWidth() + l * 2), mrect.getTop(), mrect.getWidth() - (k + itextureatlassource.getTextureWidth() + l * 2), mrect.getHeight());
        } else
        {
            mChildA = new <init>(mrect.getLeft(), mrect.getTop(), mrect.getWidth(), k + itextureatlassource.getTextureHeight() + l * 2);
            mChildB = new <init>(mrect.getLeft(), mrect.getTop() + (k + itextureatlassource.getTextureHeight() + l * 2), mrect.getWidth(), mrect.getHeight() - (k + itextureatlassource.getTextureHeight() + l * 2));
        }
        return mChildA.insert(itextureatlassource, i, j, k, l);
    }

    public insert getChildA()
    {
        return mChildA;
    }

    public mChildA getChildB()
    {
        return mChildB;
    }

    public mChildB getRect()
    {
        return mRect;
    }

    public mRect insert(ITextureAtlasSource itextureatlassource, int i, int j, int k, int l)
        throws IllegalArgumentException
    {
        if (mChildA != null && mChildB != null)
        {
            mRect mrect = mChildA.insert(itextureatlassource, i, j, k, l);
            if (mrect != null)
            {
                return mrect;
            } else
            {
                return mChildB.insert(itextureatlassource, i, j, k, l);
            }
        }
        if (mTextureAtlasSource != null)
        {
            return null;
        }
        int i1 = itextureatlassource.getTextureWidth() + l * 2;
        int j1 = itextureatlassource.getTextureHeight() + l * 2;
        int k1 = mRect.getWidth();
        int l1 = mRect.getHeight();
        if (i1 > k1 || j1 > l1)
        {
            return null;
        }
        int i2 = i1 + k;
        int j2 = j1 + k;
        int k2 = mRect.getLeft();
        int l2 = mRect.getTop();
        boolean flag;
        boolean flag1;
        if (j1 == l1 && l2 + j1 == j)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (i1 == k1 && k2 + i1 == i)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (i2 == k1)
        {
            if (j2 == l1)
            {
                mTextureAtlasSource = itextureatlassource;
                return this;
            }
            if (flag)
            {
                mTextureAtlasSource = itextureatlassource;
                return this;
            }
        }
        if (flag1)
        {
            if (j2 == l1)
            {
                mTextureAtlasSource = itextureatlassource;
                return this;
            }
            if (flag)
            {
                mTextureAtlasSource = itextureatlassource;
                return this;
            }
            if (j2 > l1)
            {
                return null;
            } else
            {
                return createChildren(itextureatlassource, i, j, k, l, k1 - i1, l1 - j2);
            }
        }
        if (flag)
        {
            if (i2 == k1)
            {
                mTextureAtlasSource = itextureatlassource;
                return this;
            }
            if (i2 > k1)
            {
                return null;
            } else
            {
                return createChildren(itextureatlassource, i, j, k, l, k1 - i2, l1 - j1);
            }
        }
        if (i2 > k1 || j2 > l1)
        {
            return null;
        } else
        {
            return createChildren(itextureatlassource, i, j, k, l, k1 - i2, l1 - j2);
        }
    }


    public (int i, int j, int k, int l)
    {
        this(new <init>(i, j, k, l));
    }

    public <init>(<init> <init>1)
    {
        mRect = <init>1;
    }
}
