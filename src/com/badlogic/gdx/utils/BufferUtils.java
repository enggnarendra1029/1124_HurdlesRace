// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.badlogic.gdx.utils;

import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.CharBuffer;
import java.nio.DoubleBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.LongBuffer;
import java.nio.ShortBuffer;

// Referenced classes of package com.badlogic.gdx.utils:
//            Array, GdxRuntimeException

public class BufferUtils
{

    static int allocatedUnsafe = 0;
    static Array unsafeBuffers = new Array();

    public BufferUtils()
    {
    }

    private static int bytesToElements(Buffer buffer, int i)
    {
        if (buffer instanceof ByteBuffer)
        {
            return i;
        }
        if (buffer instanceof ShortBuffer)
        {
            return i >>> 1;
        }
        if (buffer instanceof CharBuffer)
        {
            return i >>> 1;
        }
        if (buffer instanceof IntBuffer)
        {
            return i >>> 2;
        }
        if (buffer instanceof LongBuffer)
        {
            return i >>> 3;
        }
        if (buffer instanceof FloatBuffer)
        {
            return i >>> 2;
        }
        if (buffer instanceof DoubleBuffer)
        {
            return i >>> 3;
        } else
        {
            throw new GdxRuntimeException((new StringBuilder("Can't copy to a ")).append(buffer.getClass().getName()).append(" instance").toString());
        }
    }

    public static native void clear(ByteBuffer bytebuffer, int i);

    public static void copy(Buffer buffer, Buffer buffer1, int i)
    {
        int j = elementsToBytes(buffer, i);
        copyJni(buffer, positionInBytes(buffer), buffer1, positionInBytes(buffer1), j);
        buffer1.limit(buffer1.position() + bytesToElements(buffer1, j));
    }

    public static void copy(byte abyte0[], int i, Buffer buffer, int j)
    {
        copyJni(abyte0, i, buffer, positionInBytes(buffer), j);
        buffer.limit(buffer.position() + bytesToElements(buffer, j));
    }

    public static void copy(char ac[], int i, Buffer buffer, int j)
    {
        copyJni(ac, i << 1, buffer, positionInBytes(buffer), j << 1);
        buffer.limit(buffer.position() + bytesToElements(buffer, j << 1));
    }

    public static void copy(double ad[], int i, Buffer buffer, int j)
    {
        copyJni(ad, i << 3, buffer, positionInBytes(buffer), j << 3);
        buffer.limit(buffer.position() + bytesToElements(buffer, j << 3));
    }

    public static void copy(float af[], int i, Buffer buffer, int j)
    {
        copyJni(af, i << 2, buffer, positionInBytes(buffer), j << 2);
        buffer.limit(buffer.position() + bytesToElements(buffer, j << 2));
    }

    public static void copy(float af[], Buffer buffer, int i, int j)
    {
        copyJni(af, buffer, i, j);
        buffer.position(0);
        if (buffer instanceof ByteBuffer)
        {
            buffer.limit(i << 2);
        } else
        if (buffer instanceof FloatBuffer)
        {
            buffer.limit(i);
            return;
        }
    }

    public static void copy(int ai[], int i, Buffer buffer, int j)
    {
        copyJni(ai, i << 2, buffer, positionInBytes(buffer), j << 2);
        buffer.limit(buffer.position() + bytesToElements(buffer, j << 2));
    }

    public static void copy(long al[], int i, Buffer buffer, int j)
    {
        copyJni(al, i << 3, buffer, positionInBytes(buffer), j << 3);
        buffer.limit(buffer.position() + bytesToElements(buffer, j << 3));
    }

    public static void copy(short aword0[], int i, Buffer buffer, int j)
    {
        copyJni(aword0, i << 1, buffer, positionInBytes(buffer), j << 1);
        buffer.limit(buffer.position() + bytesToElements(buffer, j << 1));
    }

    private static native void copyJni(Buffer buffer, int i, Buffer buffer1, int j, int k);

    private static native void copyJni(byte abyte0[], int i, Buffer buffer, int j, int k);

    private static native void copyJni(char ac[], int i, Buffer buffer, int j, int k);

    private static native void copyJni(double ad[], int i, Buffer buffer, int j, int k);

    private static native void copyJni(float af[], int i, Buffer buffer, int j, int k);

    private static native void copyJni(float af[], Buffer buffer, int i, int j);

    private static native void copyJni(int ai[], int i, Buffer buffer, int j, int k);

    private static native void copyJni(long al[], int i, Buffer buffer, int j, int k);

    private static native void copyJni(short aword0[], int i, Buffer buffer, int j, int k);

    public static void disposeUnsafeByteBuffer(ByteBuffer bytebuffer)
    {
        int i = bytebuffer.capacity();
        Array array = unsafeBuffers;
        array;
        JVM INSTR monitorenter ;
        if (!unsafeBuffers.removeValue(bytebuffer, true))
        {
            throw new IllegalArgumentException("buffer not allocated with newUnsafeByteBuffer or already disposed");
        }
        break MISSING_BLOCK_LABEL_37;
        Exception exception;
        exception;
        array;
        JVM INSTR monitorexit ;
        throw exception;
        array;
        JVM INSTR monitorexit ;
        allocatedUnsafe -= i;
        freeMemory(bytebuffer);
        return;
    }

    private static int elementsToBytes(Buffer buffer, int i)
    {
        if (buffer instanceof ByteBuffer)
        {
            return i;
        }
        if (buffer instanceof ShortBuffer)
        {
            return i << 1;
        }
        if (buffer instanceof CharBuffer)
        {
            return i << 1;
        }
        if (buffer instanceof IntBuffer)
        {
            return i << 2;
        }
        if (buffer instanceof LongBuffer)
        {
            return i << 3;
        }
        if (buffer instanceof FloatBuffer)
        {
            return i << 2;
        }
        if (buffer instanceof DoubleBuffer)
        {
            return i << 3;
        } else
        {
            throw new GdxRuntimeException((new StringBuilder("Can't copy to a ")).append(buffer.getClass().getName()).append(" instance").toString());
        }
    }

    private static native void freeMemory(ByteBuffer bytebuffer);

    public static int getAllocatedBytesUnsafe()
    {
        return allocatedUnsafe;
    }

    public static ByteBuffer newByteBuffer(int i)
    {
        ByteBuffer bytebuffer = ByteBuffer.allocateDirect(i);
        bytebuffer.order(ByteOrder.nativeOrder());
        return bytebuffer;
    }

    public static CharBuffer newCharBuffer(int i)
    {
        ByteBuffer bytebuffer = ByteBuffer.allocateDirect(i * 2);
        bytebuffer.order(ByteOrder.nativeOrder());
        return bytebuffer.asCharBuffer();
    }

    private static native ByteBuffer newDisposableByteBuffer(int i);

    public static DoubleBuffer newDoubleBuffer(int i)
    {
        ByteBuffer bytebuffer = ByteBuffer.allocateDirect(i * 8);
        bytebuffer.order(ByteOrder.nativeOrder());
        return bytebuffer.asDoubleBuffer();
    }

    public static FloatBuffer newFloatBuffer(int i)
    {
        ByteBuffer bytebuffer = ByteBuffer.allocateDirect(i * 4);
        bytebuffer.order(ByteOrder.nativeOrder());
        return bytebuffer.asFloatBuffer();
    }

    public static IntBuffer newIntBuffer(int i)
    {
        ByteBuffer bytebuffer = ByteBuffer.allocateDirect(i * 4);
        bytebuffer.order(ByteOrder.nativeOrder());
        return bytebuffer.asIntBuffer();
    }

    public static LongBuffer newLongBuffer(int i)
    {
        ByteBuffer bytebuffer = ByteBuffer.allocateDirect(i * 8);
        bytebuffer.order(ByteOrder.nativeOrder());
        return bytebuffer.asLongBuffer();
    }

    public static ShortBuffer newShortBuffer(int i)
    {
        ByteBuffer bytebuffer = ByteBuffer.allocateDirect(i * 2);
        bytebuffer.order(ByteOrder.nativeOrder());
        return bytebuffer.asShortBuffer();
    }

    public static ByteBuffer newUnsafeByteBuffer(int i)
    {
        ByteBuffer bytebuffer = newDisposableByteBuffer(i);
        bytebuffer.order(ByteOrder.nativeOrder());
        allocatedUnsafe = i + allocatedUnsafe;
        synchronized (unsafeBuffers)
        {
            unsafeBuffers.add(bytebuffer);
        }
        return bytebuffer;
        exception;
        array;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public static ByteBuffer newUnsafeByteBuffer(ByteBuffer bytebuffer)
    {
        allocatedUnsafe += bytebuffer.capacity();
        synchronized (unsafeBuffers)
        {
            unsafeBuffers.add(bytebuffer);
        }
        return bytebuffer;
        exception;
        array;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private static int positionInBytes(Buffer buffer)
    {
        if (buffer instanceof ByteBuffer)
        {
            return buffer.position();
        }
        if (buffer instanceof ShortBuffer)
        {
            return buffer.position() << 1;
        }
        if (buffer instanceof CharBuffer)
        {
            return buffer.position() << 1;
        }
        if (buffer instanceof IntBuffer)
        {
            return buffer.position() << 2;
        }
        if (buffer instanceof LongBuffer)
        {
            return buffer.position() << 3;
        }
        if (buffer instanceof FloatBuffer)
        {
            return buffer.position() << 2;
        }
        if (buffer instanceof DoubleBuffer)
        {
            return buffer.position() << 3;
        } else
        {
            throw new GdxRuntimeException((new StringBuilder("Can't copy to a ")).append(buffer.getClass().getName()).append(" instance").toString());
        }
    }

}
