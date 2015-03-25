// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.vbo.attribute;

import android.opengl.GLES20;

public class VertexBufferObjectAttribute
{

    final int mLocation;
    final String mName;
    final boolean mNormalized;
    final int mOffset;
    final int mSize;
    final int mType;

    public VertexBufferObjectAttribute(int i, String s, int j, int k, boolean flag, int l)
    {
        mLocation = i;
        mName = s;
        mSize = j;
        mType = k;
        mNormalized = flag;
        mOffset = l;
    }

    public int getLocation()
    {
        return mLocation;
    }

    public String getName()
    {
        return mName;
    }

    public int getOffset()
    {
        return mOffset;
    }

    public int getSize()
    {
        return mSize;
    }

    public int getType()
    {
        return mType;
    }

    public void glVertexAttribPointer(int i)
    {
        GLES20.glVertexAttribPointer(mLocation, mSize, mType, mNormalized, i, mOffset);
    }

    public boolean isNormalized()
    {
        return mNormalized;
    }
}
