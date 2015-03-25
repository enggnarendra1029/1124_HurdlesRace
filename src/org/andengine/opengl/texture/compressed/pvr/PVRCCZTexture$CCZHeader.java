// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture.compressed.pvr;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import org.andengine.util.adt.array.ArrayUtils;

// Referenced classes of package org.andengine.opengl.texture.compressed.pvr:
//            PVRCCZTexture

public static class getCCZCompressionFormatID
{

    static final byte MAGIC_IDENTIFIER[] = {
        67, 67, 90, 33
    };
    public static final int SIZE = 16;
    private final sionFormat mCCZCompressionFormat;
    private final ByteBuffer mDataByteBuffer;

    private short getCCZCompressionFormatID()
    {
        return mDataByteBuffer.getShort(4);
    }

    public sionFormat getCCZCompressionFormat()
    {
        return mCCZCompressionFormat;
    }

    public int getUncompressedSize()
    {
        return mDataByteBuffer.getInt(12);
    }

    public int getUserdata()
    {
        return mDataByteBuffer.getInt(8);
    }

    public short getVersion()
    {
        return mDataByteBuffer.getShort(6);
    }


    public sionFormat(byte abyte0[])
    {
        mDataByteBuffer = ByteBuffer.wrap(abyte0);
        mDataByteBuffer.rewind();
        mDataByteBuffer.order(ByteOrder.BIG_ENDIAN);
        if (!ArrayUtils.equals(abyte0, 0, MAGIC_IDENTIFIER, 0, MAGIC_IDENTIFIER.length))
        {
            throw new IllegalArgumentException((new StringBuilder("Invalid ")).append(getClass().getSimpleName()).append("!").toString());
        } else
        {
            mCCZCompressionFormat = sionFormat.fromID(getCCZCompressionFormatID());
            return;
        }
    }
}
