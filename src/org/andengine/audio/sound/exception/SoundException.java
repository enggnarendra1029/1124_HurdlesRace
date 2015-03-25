// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.audio.sound.exception;

import org.andengine.util.exception.AndEngineRuntimeException;

public class SoundException extends AndEngineRuntimeException
{

    private static final long serialVersionUID = 0x24be06eacfe0aa13L;

    public SoundException()
    {
    }

    public SoundException(String s)
    {
        super(s);
    }

    public SoundException(String s, Throwable throwable)
    {
        super(s, throwable);
    }

    public SoundException(Throwable throwable)
    {
        super(throwable);
    }
}
