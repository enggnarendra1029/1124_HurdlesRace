// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture.compressed.etc1;

import android.opengl.ETC1;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

// Referenced classes of package org.andengine.opengl.texture.compressed.etc1:
//            ETC1Texture

public static class mDataByteBuffer
{

    private final ByteBuffer mDataByteBuffer = ByteBuffer.allocateDirect(16).order(ByteOrder.nativeOrder());
    private final int mHeight;
    private final int mWidth;

    public int getHeight()
    {
        return mHeight;
    }

    public int getWidth()
    {
        return mWidth;
    }

    public (byte abyte0[])
    {
        if (abyte0.length != 16)
        {
            throw new IllegalArgumentException((new StringBuilder("Invalid ")).append(getClass().getSimpleName()).append("!").toString());
        }
        mDataByteBuffer.put(abyte0, 0, 16);
        mDataByteBuffer.position(0);
        if (!ETC1.isValid(mDataByteBuffer))
        {
            throw new IllegalArgumentException((new StringBuilder("Invalid ")).append(getClass().getSimpleName()).append("!").toString());
        } else
        {
            mWidth = ETC1.getWidth(mDataByteBuffer);
            mHeight = ETC1.getHeight(mDataByteBuffer);
            return;
        }
    }
}
