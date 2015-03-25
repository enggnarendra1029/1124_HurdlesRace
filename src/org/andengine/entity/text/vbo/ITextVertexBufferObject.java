// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.text.vbo;

import org.andengine.entity.text.Text;
import org.andengine.opengl.vbo.IVertexBufferObject;

public interface ITextVertexBufferObject
    extends IVertexBufferObject
{

    public abstract void onUpdateColor(Text text);

    public abstract void onUpdateVertices(Text text);
}
