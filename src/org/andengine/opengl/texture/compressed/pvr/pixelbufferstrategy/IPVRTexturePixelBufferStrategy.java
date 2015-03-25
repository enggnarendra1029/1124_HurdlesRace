// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture.compressed.pvr.pixelbufferstrategy;

import java.io.IOException;
import java.nio.ByteBuffer;
import org.andengine.opengl.texture.PixelFormat;
import org.andengine.opengl.texture.compressed.pvr.PVRTexture;

public interface IPVRTexturePixelBufferStrategy
{
    public static interface IPVRTexturePixelBufferStrategyBufferManager
    {

        public abstract ByteBuffer getPixelBuffer(int i, int j)
            throws IOException;
    }


    public abstract void loadPVRTextureData(IPVRTexturePixelBufferStrategyBufferManager ipvrtexturepixelbufferstrategybuffermanager, int i, int j, int k, PixelFormat pixelformat, int l, int i1, 
            int j1)
        throws IOException;

    public abstract IPVRTexturePixelBufferStrategyBufferManager newPVRTexturePixelBufferStrategyManager(PVRTexture pvrtexture)
        throws IOException;
}
