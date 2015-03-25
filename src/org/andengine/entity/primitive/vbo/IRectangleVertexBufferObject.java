// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.primitive.vbo;

import org.andengine.entity.primitive.Rectangle;
import org.andengine.opengl.vbo.IVertexBufferObject;

public interface IRectangleVertexBufferObject
    extends IVertexBufferObject
{

    public abstract void onUpdateColor(Rectangle rectangle);

    public abstract void onUpdateVertices(Rectangle rectangle);
}
