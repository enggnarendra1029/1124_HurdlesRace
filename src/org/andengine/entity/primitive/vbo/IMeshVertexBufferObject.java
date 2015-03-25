// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.primitive.vbo;

import org.andengine.entity.primitive.Mesh;
import org.andengine.opengl.vbo.IVertexBufferObject;

public interface IMeshVertexBufferObject
    extends IVertexBufferObject
{

    public abstract float[] getBufferData();

    public abstract void onUpdateColor(Mesh mesh);

    public abstract void onUpdateVertices(Mesh mesh);
}
