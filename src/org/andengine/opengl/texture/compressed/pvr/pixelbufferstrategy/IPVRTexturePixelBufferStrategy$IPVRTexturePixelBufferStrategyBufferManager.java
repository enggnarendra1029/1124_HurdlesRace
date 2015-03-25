// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture.compressed.pvr.pixelbufferstrategy;

import java.io.IOException;
import java.nio.ByteBuffer;

// Referenced classes of package org.andengine.opengl.texture.compressed.pvr.pixelbufferstrategy:
//            IPVRTexturePixelBufferStrategy

public static interface 
{

    public abstract ByteBuffer getPixelBuffer(int i, int j)
        throws IOException;
}
