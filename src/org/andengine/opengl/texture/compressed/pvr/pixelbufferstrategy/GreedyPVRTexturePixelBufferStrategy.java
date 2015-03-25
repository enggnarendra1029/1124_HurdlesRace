// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture.compressed.pvr.pixelbufferstrategy;

import android.opengl.GLES20;
import java.io.IOException;
import java.nio.ByteBuffer;
import org.andengine.opengl.texture.PixelFormat;
import org.andengine.opengl.texture.compressed.pvr.PVRTexture;

// Referenced classes of package org.andengine.opengl.texture.compressed.pvr.pixelbufferstrategy:
//            IPVRTexturePixelBufferStrategy

public class GreedyPVRTexturePixelBufferStrategy
    implements IPVRTexturePixelBufferStrategy
{
    public static class GreedyPVRTexturePixelBufferStrategyBufferManager
        implements IPVRTexturePixelBufferStrategy.IPVRTexturePixelBufferStrategyBufferManager
    {

        private final ByteBuffer mByteBuffer;

        public ByteBuffer getPixelBuffer(int i, int j)
        {
            mByteBuffer.position(i);
            mByteBuffer.limit(i + j);
            return mByteBuffer.slice();
        }

        public GreedyPVRTexturePixelBufferStrategyBufferManager(PVRTexture pvrtexture)
            throws IOException
        {
            mByteBuffer = pvrtexture.getPVRTextureBuffer();
        }
    }


    public GreedyPVRTexturePixelBufferStrategy()
    {
    }

    public void loadPVRTextureData(IPVRTexturePixelBufferStrategy.IPVRTexturePixelBufferStrategyBufferManager ipvrtexturepixelbufferstrategybuffermanager, int i, int j, int k, PixelFormat pixelformat, int l, int i1, 
            int j1)
        throws IOException
    {
        ByteBuffer bytebuffer = ipvrtexturepixelbufferstrategybuffermanager.getPixelBuffer(i1 + 52, j1);
        GLES20.glTexImage2D(3553, l, pixelformat.getGLInternalFormat(), i, j, 0, pixelformat.getGLFormat(), pixelformat.getGLType(), bytebuffer);
    }

    public IPVRTexturePixelBufferStrategy.IPVRTexturePixelBufferStrategyBufferManager newPVRTexturePixelBufferStrategyManager(PVRTexture pvrtexture)
        throws IOException
    {
        return new GreedyPVRTexturePixelBufferStrategyBufferManager(pvrtexture);
    }
}
