// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.primitive.vbo;

import org.andengine.entity.primitive.Line;
import org.andengine.opengl.vbo.IVertexBufferObject;

public interface ILineVertexBufferObject
    extends IVertexBufferObject
{

    public abstract void onUpdateColor(Line line);

    public abstract void onUpdateVertices(Line line);
}
