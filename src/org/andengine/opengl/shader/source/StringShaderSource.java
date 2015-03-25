// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.shader.source;

import org.andengine.opengl.util.GLState;

// Referenced classes of package org.andengine.opengl.shader.source:
//            IShaderSource

public class StringShaderSource
    implements IShaderSource
{

    private final String mShaderSource;

    public StringShaderSource(String s)
    {
        mShaderSource = s;
    }

    public String getShaderSource(GLState glstate)
    {
        return mShaderSource;
    }
}
