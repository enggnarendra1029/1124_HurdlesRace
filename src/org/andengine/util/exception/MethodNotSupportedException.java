// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.exception;


// Referenced classes of package org.andengine.util.exception:
//            AndEngineRuntimeException

public class MethodNotSupportedException extends AndEngineRuntimeException
{

    private static final long serialVersionUID = 0x1153fe529c6c5b8fL;

    public MethodNotSupportedException()
    {
    }

    public MethodNotSupportedException(String s)
    {
        super(s);
    }

    public MethodNotSupportedException(String s, Throwable throwable)
    {
        super(s, throwable);
    }

    public MethodNotSupportedException(Throwable throwable)
    {
        super(throwable);
    }
}
