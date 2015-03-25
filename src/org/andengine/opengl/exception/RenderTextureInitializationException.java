// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.exception;

import org.andengine.util.exception.AndEngineRuntimeException;

public class RenderTextureInitializationException extends AndEngineRuntimeException
{

    private static final long serialVersionUID = 0x9bcfe1e72caf0954L;

    public RenderTextureInitializationException()
    {
    }

    public RenderTextureInitializationException(String s)
    {
        super(s);
    }

    public RenderTextureInitializationException(String s, Throwable throwable)
    {
        super(s, throwable);
    }

    public RenderTextureInitializationException(Throwable throwable)
    {
        super(throwable);
    }
}
