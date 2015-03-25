// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.util;

import java.nio.ByteBuffer;
import org.andengine.util.debug.Debug;
import org.andengine.util.system.SystemUtils;

public class BufferUtils
{

    private static final boolean NATIVE_LIB_LOADED;
    private static final boolean WORKAROUND_BYTEBUFFER_ALLOCATE_DIRECT;
    private static final boolean WORKAROUND_BYTEBUFFER_PUT_FLOATARRAY;

    public BufferUtils()
    {
    }

    public static ByteBuffer allocateDirectByteBuffer(int i)
    {
        if (WORKAROUND_BYTEBUFFER_ALLOCATE_DIRECT)
        {
            return jniAllocateDirect(i);
        } else
        {
            return ByteBuffer.allocateDirect(i);
        }
    }

    public static void freeDirectByteBuffer(ByteBuffer bytebuffer)
    {
        if (WORKAROUND_BYTEBUFFER_ALLOCATE_DIRECT)
        {
            jniFreeDirect(bytebuffer);
        }
    }

    public static short getUnsignedByte(ByteBuffer bytebuffer)
    {
        return (short)(0xff & bytebuffer.get());
    }

    public static short getUnsignedByte(ByteBuffer bytebuffer, int i)
    {
        return (short)(0xff & bytebuffer.get(i));
    }

    public static long getUnsignedInt(ByteBuffer bytebuffer)
    {
        return 0xffffffffL & (long)bytebuffer.getInt();
    }

    public static long getUnsignedInt(ByteBuffer bytebuffer, int i)
    {
        return 0xffffffffL & (long)bytebuffer.getInt(i);
    }

    public static int getUnsignedShort(ByteBuffer bytebuffer)
    {
        return 0xffff & bytebuffer.getShort();
    }

    public static int getUnsignedShort(ByteBuffer bytebuffer, int i)
    {
        return 0xffff & bytebuffer.getShort(i);
    }

    private static native ByteBuffer jniAllocateDirect(int i);

    private static native void jniFreeDirect(ByteBuffer bytebuffer);

    private static native void jniPut(ByteBuffer bytebuffer, float af[], int i, int j);

    public static void put(ByteBuffer bytebuffer, float af[], int i, int j)
    {
        if (WORKAROUND_BYTEBUFFER_PUT_FLOATARRAY)
        {
            jniPut(bytebuffer, af, i, j);
        } else
        {
            int k = j;
            while (k < j + i) 
            {
                bytebuffer.putFloat(af[k]);
                k++;
            }
        }
        bytebuffer.position(0);
        bytebuffer.limit(i << 2);
    }

    public static void putUnsignedByte(ByteBuffer bytebuffer, int i)
    {
        bytebuffer.put((byte)(i & 0xff));
    }

    public static void putUnsignedByte(ByteBuffer bytebuffer, int i, int j)
    {
        bytebuffer.put(i, (byte)(j & 0xff));
    }

    public static void putUnsignedInt(ByteBuffer bytebuffer, int i, long l)
    {
        bytebuffer.putInt(i, (short)(int)(0xffffffffL & l));
    }

    public static void putUnsignedInt(ByteBuffer bytebuffer, long l)
    {
        bytebuffer.putInt((int)(0xffffffffL & l));
    }

    public static void putUnsignedShort(ByteBuffer bytebuffer, int i)
    {
        bytebuffer.putShort((short)(0xffff & i));
    }

    public static void putUnsignedShort(ByteBuffer bytebuffer, int i, int j)
    {
        bytebuffer.putShort(i, (short)(0xffff & j));
    }

    static 
    {
        System.loadLibrary("andengine");
        boolean flag = true;
_L2:
        NATIVE_LIB_LOADED = flag;
        if (!NATIVE_LIB_LOADED)
        {
            break; /* Loop/switch isn't completed */
        }
        UnsatisfiedLinkError unsatisfiedlinkerror;
        if (SystemUtils.isAndroidVersion(11, 13))
        {
            WORKAROUND_BYTEBUFFER_ALLOCATE_DIRECT = true;
        } else
        {
            WORKAROUND_BYTEBUFFER_ALLOCATE_DIRECT = false;
        }
        if (SystemUtils.isAndroidVersionOrLower(8))
        {
            WORKAROUND_BYTEBUFFER_PUT_FLOATARRAY = true;
        } else
        {
            WORKAROUND_BYTEBUFFER_PUT_FLOATARRAY = false;
        }
        break MISSING_BLOCK_LABEL_108;
        unsatisfiedlinkerror;
        flag = false;
        if (true) goto _L2; else goto _L1
_L1:
        WORKAROUND_BYTEBUFFER_ALLOCATE_DIRECT = false;
        if (SystemUtils.isAndroidVersion(11, 13))
        {
            Debug.w((new StringBuilder("Creating a ")).append(java/nio/ByteBuffer.getSimpleName()).append(" will actually allocate 4x the memory than requested!").toString());
        }
        WORKAROUND_BYTEBUFFER_PUT_FLOATARRAY = false;
    }
}
