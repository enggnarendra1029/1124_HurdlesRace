// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture.compressed.pvr.pixelbufferstrategy;

import java.io.IOException;
import java.nio.ByteBuffer;
import org.andengine.opengl.texture.compressed.pvr.PVRTexture;

// Referenced classes of package org.andengine.opengl.texture.compressed.pvr.pixelbufferstrategy:
//            GreedyPVRTexturePixelBufferStrategy

public static class mByteBuffer
    implements mByteBuffer
{

    private final ByteBuffer mByteBuffer;

    public ByteBuffer getPixelBuffer(int i, int j)
    {
        mByteBuffer.position(i);
        mByteBuffer.limit(i + j);
        return mByteBuffer.slice();
    }

    public (PVRTexture pvrtexture)
        throws IOException
    {
        mByteBuffer = pvrtexture.getPVRTextureBuffer();
    }
}
