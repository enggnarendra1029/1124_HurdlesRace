// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.vbo.attribute;

import org.andengine.opengl.GLES20Fix;

// Referenced classes of package org.andengine.opengl.vbo.attribute:
//            VertexBufferObjectAttribute

public class VertexBufferObjectAttributeFix extends VertexBufferObjectAttribute
{

    public VertexBufferObjectAttributeFix(int i, String s, int j, int k, boolean flag, int l)
    {
        super(i, s, j, k, flag, l);
    }

    public void glVertexAttribPointer(int i)
    {
        GLES20Fix.glVertexAttribPointer(mLocation, mSize, mType, mNormalized, i, mOffset);
    }
}
