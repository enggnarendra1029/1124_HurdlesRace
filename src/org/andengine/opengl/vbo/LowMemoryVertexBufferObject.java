// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.vbo;

import android.opengl.GLES20;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import org.andengine.opengl.vbo.attribute.VertexBufferObjectAttributes;

// Referenced classes of package org.andengine.opengl.vbo:
//            VertexBufferObject, VertexBufferObjectManager, DrawType

public class LowMemoryVertexBufferObject extends VertexBufferObject
{

    protected final FloatBuffer mFloatBuffer;

    public LowMemoryVertexBufferObject(VertexBufferObjectManager vertexbufferobjectmanager, int i, DrawType drawtype, boolean flag, VertexBufferObjectAttributes vertexbufferobjectattributes)
    {
        super(vertexbufferobjectmanager, i, drawtype, flag, vertexbufferobjectattributes);
        mFloatBuffer = mByteBuffer.asFloatBuffer();
    }

    public FloatBuffer getFloatBuffer()
    {
        return mFloatBuffer;
    }

    public int getHeapMemoryByteSize()
    {
        return 0;
    }

    public int getNativeHeapMemoryByteSize()
    {
        return getByteCapacity();
    }

    protected void onBufferData()
    {
        GLES20.glBufferData(34962, mByteBuffer.limit(), mByteBuffer, mUsage);
    }
}
