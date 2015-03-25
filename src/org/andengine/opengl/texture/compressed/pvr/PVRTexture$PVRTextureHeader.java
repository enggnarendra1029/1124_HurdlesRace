// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture.compressed.pvr;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import org.andengine.util.adt.array.ArrayUtils;

// Referenced classes of package org.andengine.opengl.texture.compressed.pvr:
//            PVRTexture

public static class getFlags
{

    private static final int FORMAT_FLAG_MASK = 255;
    static final byte MAGIC_IDENTIFIER[] = {
        80, 86, 82, 33
    };
    public static final int SIZE = 52;
    private final ByteBuffer mDataByteBuffer;
    private final mDataByteBuffer mPVRTextureFormat;

    public int getBitmaskAlpha()
    {
        return mDataByteBuffer.getInt(40);
    }

    public int getBitmaskBlue()
    {
        return mDataByteBuffer.getInt(36);
    }

    public int getBitmaskGreen()
    {
        return mDataByteBuffer.getInt(32);
    }

    public int getBitmaskRed()
    {
        return mDataByteBuffer.getInt(28);
    }

    public int getBitsPerPixel()
    {
        return mDataByteBuffer.getInt(24);
    }

    public int getDataLength()
    {
        return mDataByteBuffer.getInt(20);
    }

    public int getFlags()
    {
        return mDataByteBuffer.getInt(16);
    }

    public int getHeight()
    {
        return mDataByteBuffer.getInt(4);
    }

    public int getNumMipmaps()
    {
        return mDataByteBuffer.getInt(12);
    }

    public int getPVRTag()
    {
        return mDataByteBuffer.getInt(44);
    }

    public mDataByteBuffer getPVRTextureFormat()
    {
        return mPVRTextureFormat;
    }

    public int getWidth()
    {
        return mDataByteBuffer.getInt(8);
    }

    public boolean hasAlpha()
    {
        return getBitmaskAlpha() != 0;
    }

    public int headerLength()
    {
        return mDataByteBuffer.getInt(0);
    }

    public int numSurfs()
    {
        return mDataByteBuffer.getInt(48);
    }


    public (byte abyte0[])
    {
        mDataByteBuffer = ByteBuffer.wrap(abyte0);
        mDataByteBuffer.rewind();
        mDataByteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        if (!ArrayUtils.equals(abyte0, 44, MAGIC_IDENTIFIER, 0, MAGIC_IDENTIFIER.length))
        {
            throw new IllegalArgumentException((new StringBuilder("Invalid ")).append(getClass().getSimpleName()).append("!").toString());
        } else
        {
            mPVRTextureFormat = fromID(0xff & getFlags());
            return;
        }
    }
}
