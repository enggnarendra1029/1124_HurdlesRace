// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.sprite;

import org.andengine.entity.sprite.vbo.HighPerformanceDiamondSpriteVertexBufferObject;
import org.andengine.entity.sprite.vbo.IDiamondSpriteVertexBufferObject;
import org.andengine.opengl.shader.ShaderProgram;
import org.andengine.opengl.texture.region.ITextureRegion;
import org.andengine.opengl.vbo.DrawType;
import org.andengine.opengl.vbo.VertexBufferObjectManager;

// Referenced classes of package org.andengine.entity.sprite:
//            Sprite

public class DiamondSprite extends Sprite
{

    public DiamondSprite(float f, float f1, float f2, float f3, ITextureRegion itextureregion, IDiamondSpriteVertexBufferObject idiamondspritevertexbufferobject)
    {
        super(f, f1, f2, f3, itextureregion, idiamondspritevertexbufferobject);
    }

    public DiamondSprite(float f, float f1, float f2, float f3, ITextureRegion itextureregion, IDiamondSpriteVertexBufferObject idiamondspritevertexbufferobject, ShaderProgram shaderprogram)
    {
        super(f, f1, f2, f3, itextureregion, idiamondspritevertexbufferobject, shaderprogram);
    }

    public DiamondSprite(float f, float f1, float f2, float f3, ITextureRegion itextureregion, VertexBufferObjectManager vertexbufferobjectmanager)
    {
        this(f, f1, f2, f3, itextureregion, vertexbufferobjectmanager, DrawType.STATIC);
    }

    public DiamondSprite(float f, float f1, float f2, float f3, ITextureRegion itextureregion, VertexBufferObjectManager vertexbufferobjectmanager, ShaderProgram shaderprogram)
    {
        this(f, f1, f2, f3, itextureregion, vertexbufferobjectmanager, DrawType.STATIC, shaderprogram);
    }

    public DiamondSprite(float f, float f1, float f2, float f3, ITextureRegion itextureregion, VertexBufferObjectManager vertexbufferobjectmanager, DrawType drawtype)
    {
        this(f, f1, f2, f3, itextureregion, ((IDiamondSpriteVertexBufferObject) (new HighPerformanceDiamondSpriteVertexBufferObject(vertexbufferobjectmanager, 20, drawtype, true, Sprite.VERTEXBUFFEROBJECTATTRIBUTES_DEFAULT))));
    }

    public DiamondSprite(float f, float f1, float f2, float f3, ITextureRegion itextureregion, VertexBufferObjectManager vertexbufferobjectmanager, DrawType drawtype, 
            ShaderProgram shaderprogram)
    {
        this(f, f1, f2, f3, itextureregion, ((IDiamondSpriteVertexBufferObject) (new HighPerformanceDiamondSpriteVertexBufferObject(vertexbufferobjectmanager, 20, drawtype, true, Sprite.VERTEXBUFFEROBJECTATTRIBUTES_DEFAULT))), shaderprogram);
    }

    public DiamondSprite(float f, float f1, ITextureRegion itextureregion, IDiamondSpriteVertexBufferObject idiamondspritevertexbufferobject)
    {
        this(f, f1, itextureregion.getWidth(), itextureregion.getHeight(), itextureregion, idiamondspritevertexbufferobject);
    }

    public DiamondSprite(float f, float f1, ITextureRegion itextureregion, IDiamondSpriteVertexBufferObject idiamondspritevertexbufferobject, ShaderProgram shaderprogram)
    {
        this(f, f1, itextureregion.getWidth(), itextureregion.getHeight(), itextureregion, idiamondspritevertexbufferobject, shaderprogram);
    }

    public DiamondSprite(float f, float f1, ITextureRegion itextureregion, VertexBufferObjectManager vertexbufferobjectmanager)
    {
        this(f, f1, itextureregion.getWidth(), itextureregion.getHeight(), itextureregion, vertexbufferobjectmanager, DrawType.STATIC);
    }

    public DiamondSprite(float f, float f1, ITextureRegion itextureregion, VertexBufferObjectManager vertexbufferobjectmanager, ShaderProgram shaderprogram)
    {
        this(f, f1, itextureregion.getWidth(), itextureregion.getHeight(), itextureregion, vertexbufferobjectmanager, DrawType.STATIC, shaderprogram);
    }

    public DiamondSprite(float f, float f1, ITextureRegion itextureregion, VertexBufferObjectManager vertexbufferobjectmanager, DrawType drawtype)
    {
        this(f, f1, itextureregion.getWidth(), itextureregion.getHeight(), itextureregion, vertexbufferobjectmanager, drawtype);
    }

    public DiamondSprite(float f, float f1, ITextureRegion itextureregion, VertexBufferObjectManager vertexbufferobjectmanager, DrawType drawtype, ShaderProgram shaderprogram)
    {
        this(f, f1, itextureregion.getWidth(), itextureregion.getHeight(), itextureregion, vertexbufferobjectmanager, drawtype, shaderprogram);
    }
}
