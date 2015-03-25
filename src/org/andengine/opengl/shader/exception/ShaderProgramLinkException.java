// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.shader.exception;


// Referenced classes of package org.andengine.opengl.shader.exception:
//            ShaderProgramException

public class ShaderProgramLinkException extends ShaderProgramException
{

    private static final long serialVersionUID = 0x4b3274fcdadeca68L;

    public ShaderProgramLinkException(String s)
    {
        super(s);
    }

    public ShaderProgramLinkException(String s, ShaderProgramException shaderprogramexception)
    {
        super(s, shaderprogramexception);
    }
}
