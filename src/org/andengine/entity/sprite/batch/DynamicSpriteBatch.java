// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.sprite.batch;

import org.andengine.entity.sprite.batch.vbo.ISpriteBatchVertexBufferObject;
import org.andengine.opengl.shader.ShaderProgram;
import org.andengine.opengl.texture.ITexture;
import org.andengine.opengl.vbo.DrawType;
import org.andengine.opengl.vbo.VertexBufferObjectManager;

// Referenced classes of package org.andengine.entity.sprite.batch:
//            SpriteBatch

public abstract class DynamicSpriteBatch extends SpriteBatch
{

    public DynamicSpriteBatch(float f, float f1, ITexture itexture, int i, ISpriteBatchVertexBufferObject ispritebatchvertexbufferobject)
    {
        super(f, f1, itexture, i, ispritebatchvertexbufferobject);
    }

    public DynamicSpriteBatch(float f, float f1, ITexture itexture, int i, ISpriteBatchVertexBufferObject ispritebatchvertexbufferobject, ShaderProgram shaderprogram)
    {
        super(f, f1, itexture, i, ispritebatchvertexbufferobject, shaderprogram);
    }

    public DynamicSpriteBatch(float f, float f1, ITexture itexture, int i, VertexBufferObjectManager vertexbufferobjectmanager)
    {
        super(f, f1, itexture, i, vertexbufferobjectmanager, DrawType.DYNAMIC);
    }

    public DynamicSpriteBatch(float f, float f1, ITexture itexture, int i, VertexBufferObjectManager vertexbufferobjectmanager, ShaderProgram shaderprogram)
    {
        super(f, f1, itexture, i, vertexbufferobjectmanager, DrawType.DYNAMIC, shaderprogram);
    }

    public DynamicSpriteBatch(float f, float f1, ITexture itexture, int i, VertexBufferObjectManager vertexbufferobjectmanager, DrawType drawtype)
    {
        super(f, f1, itexture, i, vertexbufferobjectmanager, drawtype);
    }

    public DynamicSpriteBatch(float f, float f1, ITexture itexture, int i, VertexBufferObjectManager vertexbufferobjectmanager, DrawType drawtype, ShaderProgram shaderprogram)
    {
        super(f, f1, itexture, i, vertexbufferobjectmanager, drawtype, shaderprogram);
    }

    public DynamicSpriteBatch(ITexture itexture, int i, ISpriteBatchVertexBufferObject ispritebatchvertexbufferobject)
    {
        super(itexture, i, ispritebatchvertexbufferobject);
    }

    public DynamicSpriteBatch(ITexture itexture, int i, ISpriteBatchVertexBufferObject ispritebatchvertexbufferobject, ShaderProgram shaderprogram)
    {
        super(itexture, i, ispritebatchvertexbufferobject, shaderprogram);
    }

    public DynamicSpriteBatch(ITexture itexture, int i, VertexBufferObjectManager vertexbufferobjectmanager)
    {
        super(itexture, i, vertexbufferobjectmanager, DrawType.DYNAMIC);
    }

    public DynamicSpriteBatch(ITexture itexture, int i, VertexBufferObjectManager vertexbufferobjectmanager, ShaderProgram shaderprogram)
    {
        super(itexture, i, vertexbufferobjectmanager, DrawType.DYNAMIC, shaderprogram);
    }

    public DynamicSpriteBatch(ITexture itexture, int i, VertexBufferObjectManager vertexbufferobjectmanager, DrawType drawtype)
    {
        super(itexture, i, vertexbufferobjectmanager, drawtype);
    }

    public DynamicSpriteBatch(ITexture itexture, int i, VertexBufferObjectManager vertexbufferobjectmanager, DrawType drawtype, ShaderProgram shaderprogram)
    {
        super(itexture, i, vertexbufferobjectmanager, drawtype, shaderprogram);
    }

    protected void begin()
    {
        super.begin();
        if (onUpdateSpriteBatch())
        {
            submit();
        }
    }

    protected abstract boolean onUpdateSpriteBatch();
}
