// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture.compressed.pvr.pixelbufferstrategy;

import android.opengl.GLES20;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import org.andengine.opengl.texture.PixelFormat;
import org.andengine.opengl.texture.compressed.pvr.PVRTexture;
import org.andengine.util.StreamUtils;
import org.andengine.util.exception.AndEngineRuntimeException;

// Referenced classes of package org.andengine.opengl.texture.compressed.pvr.pixelbufferstrategy:
//            IPVRTexturePixelBufferStrategy

public class SmartPVRTexturePixelBufferStrategy
    implements IPVRTexturePixelBufferStrategy
{
    public static class SmartPVRTexturePixelBufferStrategyBufferManager
        implements IPVRTexturePixelBufferStrategy.IPVRTexturePixelBufferStrategyBufferManager
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

        public SmartPVRTexturePixelBufferStrategyBufferManager(PVRTexture pvrtexture)
            throws IOException
        {
            mInputStream = pvrtexture.getInputStream();
        }
    }


    private final int mAllocationSizeMaximum;

    public SmartPVRTexturePixelBufferStrategy(int i)
    {
        mAllocationSizeMaximum = i;
    }

    public void loadPVRTextureData(IPVRTexturePixelBufferStrategy.IPVRTexturePixelBufferStrategyBufferManager ipvrtexturepixelbufferstrategybuffermanager, int i, int j, int k, PixelFormat pixelformat, int l, int i1, 
            int j1)
        throws IOException
    {
        int k1 = pixelformat.getGLFormat();
        int l1 = pixelformat.getGLType();
        GLES20.glTexImage2D(3553, l, pixelformat.getGLInternalFormat(), i, j, 0, k1, l1, null);
        int i2 = i * k;
        int j2 = Math.max(1, mAllocationSizeMaximum / i2);
        int k2 = i1;
        int l2 = 0;
        do
        {
            if (l2 >= j)
            {
                return;
            }
            int i3 = Math.min(j - l2, j2);
            int j3 = i3 * i2;
            GLES20.glTexSubImage2D(3553, l, 0, l2, i, i3, k1, l1, ipvrtexturepixelbufferstrategybuffermanager.getPixelBuffer(k2 + 52, j3));
            k2 += j3;
            l2 += i3;
        } while (true);
    }

    public IPVRTexturePixelBufferStrategy.IPVRTexturePixelBufferStrategyBufferManager newPVRTexturePixelBufferStrategyManager(PVRTexture pvrtexture)
        throws IOException
    {
        return new SmartPVRTexturePixelBufferStrategyBufferManager(pvrtexture);
    }
}
