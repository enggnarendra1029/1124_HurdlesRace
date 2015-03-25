// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.text.exception;

import org.andengine.util.exception.AndEngineRuntimeException;

public class TextException extends AndEngineRuntimeException
{

    private static final long serialVersionUID = 0xfa4747dd1aed1a62L;

    public TextException()
    {
    }

    public TextException(String s)
    {
        super(s);
    }

    public TextException(String s, Throwable throwable)
    {
        super(s, throwable);
    }

    public TextException(Throwable throwable)
    {
        super(throwable);
    }
}
