// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.scene.menu.item;

import org.andengine.entity.sprite.AnimatedSprite;
import org.andengine.entity.sprite.vbo.ITiledSpriteVertexBufferObject;
import org.andengine.opengl.shader.ShaderProgram;
import org.andengine.opengl.texture.region.ITiledTextureRegion;
import org.andengine.opengl.vbo.DrawType;
import org.andengine.opengl.vbo.VertexBufferObjectManager;

// Referenced classes of package org.andengine.entity.scene.menu.item:
//            IMenuItem

public class AnimatedSpriteMenuItem extends AnimatedSprite
    implements IMenuItem
{

    private final int mID;

    public AnimatedSpriteMenuItem(int i, float f, float f1, ITiledTextureRegion itiledtextureregion, ITiledSpriteVertexBufferObject itiledspritevertexbufferobject)
    {
        super(0.0F, 0.0F, f, f1, itiledtextureregion, itiledspritevertexbufferobject);
        mID = i;
    }

    public AnimatedSpriteMenuItem(int i, float f, float f1, ITiledTextureRegion itiledtextureregion, ITiledSpriteVertexBufferObject itiledspritevertexbufferobject, ShaderProgram shaderprogram)
    {
        super(0.0F, 0.0F, f, f1, itiledtextureregion, itiledspritevertexbufferobject, shaderprogram);
        mID = i;
    }

    public AnimatedSpriteMenuItem(int i, float f, float f1, ITiledTextureRegion itiledtextureregion, VertexBufferObjectManager vertexbufferobjectmanager)
    {
        super(0.0F, 0.0F, f, f1, itiledtextureregion, vertexbufferobjectmanager);
        mID = i;
    }

    public AnimatedSpriteMenuItem(int i, float f, float f1, ITiledTextureRegion itiledtextureregion, VertexBufferObjectManager vertexbufferobjectmanager, ShaderProgram shaderprogram)
    {
        super(0.0F, 0.0F, f, f1, itiledtextureregion, vertexbufferobjectmanager, shaderprogram);
        mID = i;
    }

    public AnimatedSpriteMenuItem(int i, float f, float f1, ITiledTextureRegion itiledtextureregion, VertexBufferObjectManager vertexbufferobjectmanager, DrawType drawtype)
    {
        super(0.0F, 0.0F, f, f1, itiledtextureregion, vertexbufferobjectmanager, drawtype);
        mID = i;
    }

    public AnimatedSpriteMenuItem(int i, float f, float f1, ITiledTextureRegion itiledtextureregion, VertexBufferObjectManager vertexbufferobjectmanager, DrawType drawtype, ShaderProgram shaderprogram)
    {
        super(0.0F, 0.0F, f, f1, itiledtextureregion, vertexbufferobjectmanager, drawtype, shaderprogram);
        mID = i;
    }

    public AnimatedSpriteMenuItem(int i, ITiledTextureRegion itiledtextureregion, ITiledSpriteVertexBufferObject itiledspritevertexbufferobject)
    {
        super(0.0F, 0.0F, itiledtextureregion, itiledspritevertexbufferobject);
        mID = i;
    }

    public AnimatedSpriteMenuItem(int i, ITiledTextureRegion itiledtextureregion, ITiledSpriteVertexBufferObject itiledspritevertexbufferobject, ShaderProgram shaderprogram)
    {
        super(0.0F, 0.0F, itiledtextureregion, itiledspritevertexbufferobject, shaderprogram);
        mID = i;
    }

    public AnimatedSpriteMenuItem(int i, ITiledTextureRegion itiledtextureregion, VertexBufferObjectManager vertexbufferobjectmanager)
    {
        super(0.0F, 0.0F, itiledtextureregion, vertexbufferobjectmanager);
        mID = i;
    }

    public AnimatedSpriteMenuItem(int i, ITiledTextureRegion itiledtextureregion, VertexBufferObjectManager vertexbufferobjectmanager, ShaderProgram shaderprogram)
    {
        super(0.0F, 0.0F, itiledtextureregion, vertexbufferobjectmanager, shaderprogram);
        mID = i;
    }

    public AnimatedSpriteMenuItem(int i, ITiledTextureRegion itiledtextureregion, VertexBufferObjectManager vertexbufferobjectmanager, DrawType drawtype)
    {
        super(0.0F, 0.0F, itiledtextureregion, vertexbufferobjectmanager, drawtype);
        mID = i;
    }

    public AnimatedSpriteMenuItem(int i, ITiledTextureRegion itiledtextureregion, VertexBufferObjectManager vertexbufferobjectmanager, DrawType drawtype, ShaderProgram shaderprogram)
    {
        super(0.0F, 0.0F, itiledtextureregion, vertexbufferobjectmanager, drawtype, shaderprogram);
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
