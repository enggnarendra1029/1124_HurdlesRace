// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.exception;


public class AndEngineRuntimeException extends RuntimeException
{

    public static final long serialVersionUID = 0xc3f9c6b599af1242L;

    public AndEngineRuntimeException()
    {
    }

    public AndEngineRuntimeException(String s)
    {
        super(s);
    }

    public AndEngineRuntimeException(String s, Throwable throwable)
    {
        super(s, throwable);
    }

    public AndEngineRuntimeException(Throwable throwable)
    {
        super(throwable);
    }
}
