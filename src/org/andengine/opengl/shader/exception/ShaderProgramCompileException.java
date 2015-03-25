// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.shader.exception;


// Referenced classes of package org.andengine.opengl.shader.exception:
//            ShaderProgramException

public class ShaderProgramCompileException extends ShaderProgramException
{

    private static final long serialVersionUID = 0x72f7e96bd702bdf7L;

    public ShaderProgramCompileException(String s, String s1)
    {
        super((new StringBuilder("Reason: ")).append(s).append("\nSource:\n##########################\n").append(s1).append("\n##########################").toString());
    }
}
