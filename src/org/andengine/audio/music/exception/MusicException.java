// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.audio.music.exception;

import org.andengine.util.exception.AndEngineRuntimeException;

public class MusicException extends AndEngineRuntimeException
{

    private static final long serialVersionUID = 0xd20194f580dabf01L;

    public MusicException()
    {
    }

    public MusicException(String s)
    {
        super(s);
    }

    public MusicException(String s, Throwable throwable)
    {
        super(s, throwable);
    }

    public MusicException(Throwable throwable)
    {
        super(throwable);
    }
}
