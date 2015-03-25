// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.font.exception;

import org.andengine.util.exception.AndEngineRuntimeException;

public class FontException extends AndEngineRuntimeException
{

    private static final long serialVersionUID = 0x2664d13311be3f0eL;

    public FontException()
    {
    }

    public FontException(String s)
    {
        super(s);
    }

    public FontException(String s, Throwable throwable)
    {
        super(s, throwable);
    }

    public FontException(Throwable throwable)
    {
        super(throwable);
    }
}
