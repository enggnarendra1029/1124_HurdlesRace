// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.sprite.vbo;

import org.andengine.entity.sprite.Sprite;
import org.andengine.opengl.vbo.IVertexBufferObject;

public interface ISpriteVertexBufferObject
    extends IVertexBufferObject
{

    public abstract void onUpdateColor(Sprite sprite);

    public abstract void onUpdateTextureCoordinates(Sprite sprite);

    public abstract void onUpdateVertices(Sprite sprite);
}
