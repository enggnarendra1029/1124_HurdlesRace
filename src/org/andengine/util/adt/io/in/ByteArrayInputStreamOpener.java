// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.adt.io.in;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;

// Referenced classes of package org.andengine.util.adt.io.in:
//            IInputStreamOpener

public class ByteArrayInputStreamOpener
    implements IInputStreamOpener
{

    private final byte mBytes[];
    private final int mLength;
    private final int mOffset;

    public ByteArrayInputStreamOpener(byte abyte0[])
    {
        this(abyte0, 0, abyte0.length);
    }

    public ByteArrayInputStreamOpener(byte abyte0[], int i, int j)
    {
        mBytes = abyte0;
        mOffset = i;
        mLength = j;
    }

    public InputStream open()
        throws IOException
    {
        return new ByteArrayInputStream(mBytes, mOffset, mLength);
    }
}
