// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.exception;


// Referenced classes of package org.andengine.util.exception:
//            AndEngineRuntimeException

public class MethodNotYetImplementedException extends AndEngineRuntimeException
{

    private static final long serialVersionUID = 0xc43560fe23ffc6fdL;

    public MethodNotYetImplementedException()
    {
    }

    public MethodNotYetImplementedException(String s)
    {
        super(s);
    }

    public MethodNotYetImplementedException(String s, Throwable throwable)
    {
        super(s, throwable);
    }

    public MethodNotYetImplementedException(Throwable throwable)
    {
        super(throwable);
    }
}
