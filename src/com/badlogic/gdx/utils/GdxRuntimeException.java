// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.badlogic.gdx.utils;


public class GdxRuntimeException extends RuntimeException
{

    private static final long serialVersionUID = 0x5d7a8fe415d6341dL;

    public GdxRuntimeException(String s)
    {
        super(s);
    }

    public GdxRuntimeException(String s, Throwable throwable)
    {
        super(s, throwable);
    }

    public GdxRuntimeException(Throwable throwable)
    {
        super(throwable);
    }
}
