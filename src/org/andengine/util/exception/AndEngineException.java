// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.exception;


public class AndEngineException extends Exception
{

    private static final long serialVersionUID = 0x5b4768305d6011a2L;

    public AndEngineException()
    {
    }

    public AndEngineException(String s)
    {
        super(s);
    }

    public AndEngineException(String s, Throwable throwable)
    {
        super(s, throwable);
    }

    public AndEngineException(Throwable throwable)
    {
        super(throwable);
    }
}
