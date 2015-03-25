// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.scene.menu.item;

import org.andengine.entity.sprite.Sprite;
import org.andengine.entity.sprite.vbo.ISpriteVertexBufferObject;
import org.andengine.opengl.shader.ShaderProgram;
import org.andengine.opengl.texture.region.ITextureRegion;
import org.andengine.opengl.vbo.DrawType;
import org.andengine.opengl.vbo.VertexBufferObjectManager;

// Referenced classes of package org.andengine.entity.scene.menu.item:
//            IMenuItem

public class SpriteMenuItem extends Sprite
    implements IMenuItem
{

    private final int mID;

    public SpriteMenuItem(int i, float f, float f1, ITextureRegion itextureregion, ISpriteVertexBufferObject ispritevertexbufferobject)
    {
        super(0.0F, 0.0F, f, f1, itextureregion, ispritevertexbufferobject);
        mID = i;
    }

    public SpriteMenuItem(int i, float f, float f1, ITextureRegion itextureregion, ISpriteVertexBufferObject ispritevertexbufferobject, ShaderProgram shaderprogram)
    {
        super(0.0F, 0.0F, f, f1, itextureregion, ispritevertexbufferobject, shaderprogram);
        mID = i;
    }

    public SpriteMenuItem(int i, float f, float f1, ITextureRegion itextureregion, VertexBufferObjectManager vertexbufferobjectmanager)
    {
        super(0.0F, 0.0F, f, f1, itextureregion, vertexbufferobjectmanager);
        mID = i;
    }

    public SpriteMenuItem(int i, float f, float f1, ITextureRegion itextureregion, VertexBufferObjectManager vertexbufferobjectmanager, ShaderProgram shaderprogram)
    {
        super(0.0F, 0.0F, f, f1, itextureregion, vertexbufferobjectmanager, shaderprogram);
        mID = i;
    }

    public SpriteMenuItem(int i, float f, float f1, ITextureRegion itextureregion, VertexBufferObjectManager vertexbufferobjectmanager, DrawType drawtype)
    {
        super(0.0F, 0.0F, f, f1, itextureregion, vertexbufferobjectmanager, drawtype);
        mID = i;
    }

    public SpriteMenuItem(int i, float f, float f1, ITextureRegion itextureregion, VertexBufferObjectManager vertexbufferobjectmanager, DrawType drawtype, ShaderProgram shaderprogram)
    {
        super(0.0F, 0.0F, f, f1, itextureregion, vertexbufferobjectmanager, drawtype, shaderprogram);
        mID = i;
    }

    public SpriteMenuItem(int i, ITextureRegion itextureregion, ISpriteVertexBufferObject ispritevertexbufferobject)
    {
        super(0.0F, 0.0F, itextureregion, ispritevertexbufferobject);
        mID = i;
    }

    public SpriteMenuItem(int i, ITextureRegion itextureregion, ISpriteVertexBufferObject ispritevertexbufferobject, ShaderProgram shaderprogram)
    {
        super(0.0F, 0.0F, itextureregion, ispritevertexbufferobject, shaderprogram);
        mID = i;
    }

    public SpriteMenuItem(int i, ITextureRegion itextureregion, VertexBufferObjectManager vertexbufferobjectmanager)
    {
        super(0.0F, 0.0F, itextureregion, vertexbufferobjectmanager);
        mID = i;
    }

    public SpriteMenuItem(int i, ITextureRegion itextureregion, VertexBufferObjectManager vertexbufferobjectmanager, ShaderProgram shaderprogram)
    {
        super(0.0F, 0.0F, itextureregion, vertexbufferobjectmanager, shaderprogram);
        mID = i;
    }

    public SpriteMenuItem(int i, ITextureRegion itextureregion, VertexBufferObjectManager vertexbufferobjectmanager, DrawType drawtype)
    {
        super(0.0F, 0.0F, itextureregion, vertexbufferobjectmanager, drawtype);
        mID = i;
    }

    public SpriteMenuItem(int i, ITextureRegion itextureregion, VertexBufferObjectManager vertexbufferobjectmanager, DrawType drawtype, ShaderProgram shaderprogram)
    {
        super(0.0F, 0.0F, itextureregion, vertexbufferobjectmanager, drawtype, shaderprogram);
        mID = i;
    }

    public int getID()
    {
        return mID;
    }

    public void onSelected()
    {
    }

    public void onUnselected()
    {
    }
}
