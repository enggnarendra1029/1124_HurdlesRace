// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util;

import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.Reader;
import java.io.StringWriter;
import java.io.Writer;
import java.nio.ByteBuffer;

public final class StreamUtils
{

    private static final int END_OF_STREAM = -1;
    public static final int IO_BUFFER_SIZE = 8192;

    public StreamUtils()
    {
    }

    public static final void close(Closeable closeable)
    {
        if (closeable == null)
        {
            break MISSING_BLOCK_LABEL_10;
        }
        closeable.close();
        return;
        IOException ioexception;
        ioexception;
        ioexception.printStackTrace();
        return;
    }

    public static final void copy(InputStream inputstream, OutputStream outputstream)
        throws IOException
    {
        copy(inputstream, outputstream, -1);
    }

    public static final void copy(InputStream inputstream, OutputStream outputstream, int i)
        throws IOException
    {
        if (i != -1) goto _L2; else goto _L1
_L1:
        byte abyte1[] = new byte[8192];
_L5:
        int i1 = inputstream.read(abyte1);
        if (i1 != -1) goto _L4; else goto _L3
_L3:
        outputstream.flush();
        return;
_L4:
        outputstream.write(abyte1, 0, i1);
          goto _L5
_L2:
        byte abyte0[];
        int j;
        long l;
        abyte0 = new byte[8192];
        j = Math.min(i, 8192);
        l = i;
_L7:
        int k = inputstream.read(abyte0, 0, j);
        if (k == -1) goto _L3; else goto _L6
_L6:
label0:
        {
            if (l <= (long)k)
            {
                break label0;
            }
            outputstream.write(abyte0, 0, k);
            l -= k;
        }
          goto _L7
        outputstream.write(abyte0, 0, (int)l);
          goto _L3
    }

    public static final void copy(InputStream inputstream, ByteBuffer bytebuffer)
        throws IOException
    {
        byte abyte0[] = new byte[8192];
        do
        {
            int i = inputstream.read(abyte0);
            if (i == -1)
            {
                return;
            }
            bytebuffer.put(abyte0, 0, i);
        } while (true);
    }

    public static final void copy(InputStream inputstream, byte abyte0[])
        throws IOException
    {
        int i = 0;
        byte abyte1[] = new byte[8192];
        do
        {
            int j = inputstream.read(abyte1);
            if (j == -1)
            {
                return;
            }
            System.arraycopy(abyte1, 0, abyte0, i, j);
            i += j;
        } while (true);
    }

    public static final boolean copyAndClose(InputStream inputstream, OutputStream outputstream)
    {
        Exception exception;
        try
        {
            copy(inputstream, outputstream, -1);
        }
        catch (IOException ioexception)
        {
            close(inputstream);
            close(outputstream);
            return false;
        }
        finally
        {
            close(inputstream);
        }
        close(inputstream);
        close(outputstream);
        return true;
        close(outputstream);
        throw exception;
    }

    public static final void flushCloseStream(OutputStream outputstream)
    {
        if (outputstream == null)
        {
            break MISSING_BLOCK_LABEL_12;
        }
        outputstream.flush();
        close(outputstream);
        return;
        IOException ioexception;
        ioexception;
        ioexception.printStackTrace();
        close(outputstream);
        return;
        Exception exception;
        exception;
        close(outputstream);
        throw exception;
    }

    public static final void flushCloseWriter(Writer writer)
    {
        if (writer == null)
        {
            break MISSING_BLOCK_LABEL_12;
        }
        writer.flush();
        close(writer);
        return;
        IOException ioexception;
        ioexception;
        ioexception.printStackTrace();
        close(writer);
        return;
        Exception exception;
        exception;
        close(writer);
        throw exception;
    }

    public static final String readFully(InputStream inputstream)
        throws IOException
    {
        StringWriter stringwriter;
        char ac[];
        stringwriter = new StringWriter();
        ac = new char[8192];
        BufferedReader bufferedreader = new BufferedReader(new InputStreamReader(inputstream, "UTF-8"));
_L1:
        int i = bufferedreader.read(ac);
        if (i == -1)
        {
            close(inputstream);
            return stringwriter.toString();
        }
        stringwriter.write(ac, 0, i);
          goto _L1
        Exception exception;
        exception;
        close(inputstream);
        throw exception;
    }

    public static final void streamToBytes(InputStream inputstream, int i, byte abyte0[])
        throws IOException
    {
        streamToBytes(inputstream, i, abyte0, 0);
    }

    public static final void streamToBytes(InputStream inputstream, int i, byte abyte0[], int j)
        throws IOException
    {
        int k;
        int l;
        if (i > abyte0.length - j)
        {
            throw new IOException("pData is not big enough.");
        }
        k = i;
        l = 0;
_L5:
        int i1 = inputstream.read(abyte0, j + l, k);
        if (i1 != -1) goto _L2; else goto _L1
_L1:
        if (l != i)
        {
            throw new IOException((new StringBuilder("ReadLimit: '")).append(i).append("', Read: '").append(l).append("'.").toString());
        } else
        {
            return;
        }
_L2:
        l += i1;
        if (k <= i1) goto _L1; else goto _L3
_L3:
        k -= i1;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public static final byte[] streamToBytes(InputStream inputstream)
        throws IOException
    {
        return streamToBytes(inputstream, -1);
    }

    public static final byte[] streamToBytes(InputStream inputstream, int i)
        throws IOException
    {
        int j;
        ByteArrayOutputStream bytearrayoutputstream;
        if (i == -1)
        {
            j = 8192;
        } else
        {
            j = i;
        }
        bytearrayoutputstream = new ByteArrayOutputStream(j);
        copy(inputstream, bytearrayoutputstream, i);
        return bytearrayoutputstream.toByteArray();
    }
}
