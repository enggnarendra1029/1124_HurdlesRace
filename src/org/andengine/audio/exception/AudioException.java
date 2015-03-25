// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.audio.exception;

import org.andengine.util.exception.AndEngineRuntimeException;

public class AudioException extends AndEngineRuntimeException
{

    private static final long serialVersionUID = 0x24be06eacfe0aa13L;

    public AudioException()
    {
    }

    public AudioException(String s)
    {
        super(s);
    }

    public AudioException(String s, Throwable throwable)
    {
        super(s, throwable);
    }

    public AudioException(Throwable throwable)
    {
        super(throwable);
    }
}
