// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture.compressed.pvr.pixelbufferstrategy;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import org.andengine.opengl.texture.compressed.pvr.PVRTexture;
import org.andengine.util.StreamUtils;
import org.andengine.util.exception.AndEngineRuntimeException;

// Referenced classes of package org.andengine.opengl.texture.compressed.pvr.pixelbufferstrategy:
//            SmartPVRTexturePixelBufferStrategy

public static class mInputStream
    implements mInputStream
{

    private byte mData[];
    private final InputStream mInputStream;
    private int mInputStreamPosition;

    public ByteBuffer getPixelBuffer(int i, int j)
        throws IOException
    {
        if (i < mInputStreamPosition)
        {
            throw new AndEngineRuntimeException((new StringBuilder("Cannot read data that has been read already. (pStart: '")).append(i).append("', this.mInputStreamPosition: '").append(mInputStreamPosition).append("')").toString());
        }
        if (mData == null || mData.length < j)
        {
            mData = new byte[j];
        }
        if (mInputStreamPosition < i)
        {
            int l = i - mInputStreamPosition;
            long l1 = mInputStream.skip(l);
            mInputStreamPosition = (int)(l1 + (long)mInputStreamPosition);
            if ((long)l != l1)
            {
                throw new AndEngineRuntimeException((new StringBuilder("Skipped: '")).append(l1).append("' instead of '").append(l).append("'.").toString());
            }
        }
        int k = (i + j) - mInputStreamPosition;
        StreamUtils.streamToBytes(mInputStream, k, mData);
        mInputStreamPosition = k + mInputStreamPosition;
        return ByteBuffer.wrap(mData, 0, j);
    }

    public (PVRTexture pvrtexture)
        throws IOException
    {
        mInputStream = pvrtexture.getInputStream();
    }
}
