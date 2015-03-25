// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.shader.exception;

import org.andengine.util.exception.AndEngineRuntimeException;

public class ShaderProgramException extends AndEngineRuntimeException
{

    private static final long serialVersionUID = 0x20fd5d6d42767f94L;

    public ShaderProgramException(String s)
    {
        super(s);
    }

    public ShaderProgramException(String s, ShaderProgramException shaderprogramexception)
    {
        super(s, shaderprogramexception);
    }
}
