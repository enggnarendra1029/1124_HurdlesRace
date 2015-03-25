// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.exception;


// Referenced classes of package org.andengine.util.exception:
//            AndEngineRuntimeException

public class NullBitmapException extends AndEngineRuntimeException
{

    private static final long serialVersionUID = 0xe1b218c7fe327f9bL;

    public NullBitmapException()
    {
    }

    public NullBitmapException(String s)
    {
        super(s);
    }

    public NullBitmapException(String s, Throwable throwable)
    {
        super(s, throwable);
    }

    public NullBitmapException(Throwable throwable)
    {
        super(throwable);
    }
}
