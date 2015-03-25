// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.vbo;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.concurrent.locks.ReentrantLock;
import org.andengine.opengl.util.BufferUtils;
import org.andengine.opengl.vbo.attribute.VertexBufferObjectAttributes;

// Referenced classes of package org.andengine.opengl.vbo:
//            ZeroMemoryVertexBufferObject, VertexBufferObjectManager, DrawType

public abstract class SharedMemoryVertexBufferObject extends ZeroMemoryVertexBufferObject
{

    private static ByteBuffer sSharedByteBuffer;
    private static ReentrantLock sSharedByteBufferLock = new ReentrantLock(true);

    public SharedMemoryVertexBufferObject(VertexBufferObjectManager vertexbufferobjectmanager, int i, DrawType drawtype, VertexBufferObjectAttributes vertexbufferobjectattributes)
    {
        super(vertexbufferobjectmanager, i, drawtype, false, vertexbufferobjectattributes);
    }

    public static int getSharedByteBufferByteCapacity()
    {
        ByteBuffer bytebuffer;
        sSharedByteBufferLock.lock();
        bytebuffer = sSharedByteBuffer;
        if (bytebuffer != null) goto _L2; else goto _L1
_L1:
        int j = 0;
_L4:
        sSharedByteBufferLock.unlock();
        return j;
_L2:
        int i = bytebuffer.capacity();
        j = i;
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        sSharedByteBufferLock.unlock();
        throw exception;
    }

    protected ByteBuffer aquireByteBuffer()
    {
        sSharedByteBufferLock.lock();
        int i = getByteCapacity();
        if (sSharedByteBuffer == null || sSharedByteBuffer.capacity() < i)
        {
            if (sSharedByteBuffer != null)
            {
                BufferUtils.freeDirectByteBuffer(sSharedByteBuffer);
            }
            sSharedByteBuffer = BufferUtils.allocateDirectByteBuffer(i);
            sSharedByteBuffer.order(ByteOrder.nativeOrder());
        }
        sSharedByteBuffer.limit(i);
        return sSharedByteBuffer;
    }

    public void dispose()
    {
        super.dispose();
        sSharedByteBufferLock.lock();
        if (sSharedByteBuffer != null)
        {
            BufferUtils.freeDirectByteBuffer(sSharedByteBuffer);
            sSharedByteBuffer = null;
        }
        sSharedByteBufferLock.unlock();
        return;
        Exception exception;
        exception;
        sSharedByteBufferLock.unlock();
        throw exception;
    }

    protected void releaseByteBuffer(ByteBuffer bytebuffer)
    {
        sSharedByteBufferLock.unlock();
    }

}
