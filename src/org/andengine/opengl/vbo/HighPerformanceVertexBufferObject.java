// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.vbo;

import android.opengl.GLES20;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import org.andengine.opengl.util.BufferUtils;
import org.andengine.opengl.vbo.attribute.VertexBufferObjectAttributes;
import org.andengine.util.system.SystemUtils;

// Referenced classes of package org.andengine.opengl.vbo:
//            VertexBufferObject, VertexBufferObjectManager, DrawType

public class HighPerformanceVertexBufferObject extends VertexBufferObject
{

    protected final float mBufferData[];
    protected final FloatBuffer mFloatBuffer;

    public HighPerformanceVertexBufferObject(VertexBufferObjectManager vertexbufferobjectmanager, int i, DrawType drawtype, boolean flag, VertexBufferObjectAttributes vertexbufferobjectattributes)
    {
        super(vertexbufferobjectmanager, i, drawtype, flag, vertexbufferobjectattributes);
        mBufferData = new float[i];
        if (SystemUtils.SDK_VERSION_HONEYCOMB_OR_LATER)
        {
            mFloatBuffer = mByteBuffer.asFloatBuffer();
            return;
        } else
        {
            mFloatBuffer = null;
            return;
        }
    }

    public HighPerformanceVertexBufferObject(VertexBufferObjectManager vertexbufferobjectmanager, float af[], DrawType drawtype, boolean flag, VertexBufferObjectAttributes vertexbufferobjectattributes)
    {
        super(vertexbufferobjectmanager, af.length, drawtype, flag, vertexbufferobjectattributes);
        mBufferData = af;
        if (SystemUtils.SDK_VERSION_HONEYCOMB_OR_LATER)
        {
            mFloatBuffer = mByteBuffer.asFloatBuffer();
            return;
        } else
        {
            mFloatBuffer = null;
            return;
        }
    }

    public float[] getBufferData()
    {
        return mBufferData;
    }

    public int getHeapMemoryByteSize()
    {
        return getByteCapacity();
    }

    public int getNativeHeapMemoryByteSize()
    {
        return getByteCapacity();
    }

    protected void onBufferData()
    {
        if (SystemUtils.SDK_VERSION_HONEYCOMB_OR_LATER)
        {
            mFloatBuffer.position(0);
            mFloatBuffer.put(mBufferData);
            GLES20.glBufferData(34962, mByteBuffer.capacity(), mByteBuffer, mUsage);
            return;
        } else
        {
            BufferUtils.put(mByteBuffer, mBufferData, mBufferData.length, 0);
            GLES20.glBufferData(34962, mByteBuffer.limit(), mByteBuffer, mUsage);
            return;
        }
    }
}
