// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.sprite;

import org.andengine.entity.sprite.vbo.HighPerformanceUncoloredSpriteVertexBufferObject;
import org.andengine.entity.sprite.vbo.IUncoloredSpriteVertexBufferObject;
import org.andengine.opengl.shader.PositionTextureCoordinatesShaderProgram;
import org.andengine.opengl.shader.ShaderProgram;
import org.andengine.opengl.texture.region.ITextureRegion;
import org.andengine.opengl.vbo.DrawType;
import org.andengine.opengl.vbo.VertexBufferObjectManager;
import org.andengine.opengl.vbo.attribute.VertexBufferObjectAttributes;
import org.andengine.opengl.vbo.attribute.VertexBufferObjectAttributesBuilder;

// Referenced classes of package org.andengine.entity.sprite:
//            Sprite

public class UncoloredSprite extends Sprite
{

    public static final int SPRITE_SIZE = 16;
    public static final int TEXTURECOORDINATES_INDEX_U = 2;
    public static final int TEXTURECOORDINATES_INDEX_V = 3;
    public static final VertexBufferObjectAttributes VERTEXBUFFEROBJECTATTRIBUTES_DEFAULT = (new VertexBufferObjectAttributesBuilder(2)).add(0, "a_position", 2, 5126, false).add(3, "a_textureCoordinates", 2, 5126, false).build();
    public static final int VERTEX_INDEX_X = 0;
    public static final int VERTEX_INDEX_Y = 1;
    public static final int VERTEX_SIZE = 4;
    public static final int VERTICES_PER_SPRITE = 4;

    public UncoloredSprite(float f, float f1, float f2, float f3, ITextureRegion itextureregion, IUncoloredSpriteVertexBufferObject iuncoloredspritevertexbufferobject)
    {
        this(f, f1, f2, f3, itextureregion, iuncoloredspritevertexbufferobject, ((ShaderProgram) (PositionTextureCoordinatesShaderProgram.getInstance())));
    }

    public UncoloredSprite(float f, float f1, float f2, float f3, ITextureRegion itextureregion, IUncoloredSpriteVertexBufferObject iuncoloredspritevertexbufferobject, ShaderProgram shaderprogram)
    {
        super(f, f1, f2, f3, itextureregion, iuncoloredspritevertexbufferobject, shaderprogram);
    }

    public UncoloredSprite(float f, float f1, float f2, float f3, ITextureRegion itextureregion, VertexBufferObjectManager vertexbufferobjectmanager)
    {
        this(f, f1, f2, f3, itextureregion, vertexbufferobjectmanager, DrawType.STATIC);
    }

    public UncoloredSprite(float f, float f1, float f2, float f3, ITextureRegion itextureregion, VertexBufferObjectManager vertexbufferobjectmanager, ShaderProgram shaderprogram)
    {
        this(f, f1, f2, f3, itextureregion, vertexbufferobjectmanager, DrawType.STATIC, shaderprogram);
    }

    public UncoloredSprite(float f, float f1, float f2, float f3, ITextureRegion itextureregion, VertexBufferObjectManager vertexbufferobjectmanager, DrawType drawtype)
    {
        this(f, f1, f2, f3, itextureregion, ((IUncoloredSpriteVertexBufferObject) (new HighPerformanceUncoloredSpriteVertexBufferObject(vertexbufferobjectmanager, 16, drawtype, true, VERTEXBUFFEROBJECTATTRIBUTES_DEFAULT))));
    }

    public UncoloredSprite(float f, float f1, float f2, float f3, ITextureRegion itextureregion, VertexBufferObjectManager vertexbufferobjectmanager, DrawType drawtype, 
            ShaderProgram shaderprogram)
    {
        this(f, f1, f2, f3, itextureregion, ((IUncoloredSpriteVertexBufferObject) (new HighPerformanceUncoloredSpriteVertexBufferObject(vertexbufferobjectmanager, 16, drawtype, true, VERTEXBUFFEROBJECTATTRIBUTES_DEFAULT))), shaderprogram);
    }

    public UncoloredSprite(float f, float f1, ITextureRegion itextureregion, IUncoloredSpriteVertexBufferObject iuncoloredspritevertexbufferobject)
    {
        this(f, f1, itextureregion.getWidth(), itextureregion.getHeight(), itextureregion, iuncoloredspritevertexbufferobject);
    }

    public UncoloredSprite(float f, float f1, ITextureRegion itextureregion, IUncoloredSpriteVertexBufferObject iuncoloredspritevertexbufferobject, ShaderProgram shaderprogram)
    {
        this(f, f1, itextureregion.getWidth(), itextureregion.getHeight(), itextureregion, iuncoloredspritevertexbufferobject, shaderprogram);
    }

    public UncoloredSprite(float f, float f1, ITextureRegion itextureregion, ShaderProgram shaderprogram, VertexBufferObjectManager vertexbufferobjectmanager)
    {
        this(f, f1, itextureregion.getWidth(), itextureregion.getHeight(), itextureregion, vertexbufferobjectmanager, DrawType.STATIC, shaderprogram);
    }

    public UncoloredSprite(float f, float f1, ITextureRegion itextureregion, VertexBufferObjectManager vertexbufferobjectmanager)
    {
        this(f, f1, itextureregion.getWidth(), itextureregion.getHeight(), itextureregion, vertexbufferobjectmanager, DrawType.STATIC);
    }

    public UncoloredSprite(float f, float f1, ITextureRegion itextureregion, VertexBufferObjectManager vertexbufferobjectmanager, DrawType drawtype)
    {
        this(f, f1, itextureregion.getWidth(), itextureregion.getHeight(), itextureregion, vertexbufferobjectmanager, drawtype);
    }

    public UncoloredSprite(float f, float f1, ITextureRegion itextureregion, VertexBufferObjectManager vertexbufferobjectmanager, DrawType drawtype, ShaderProgram shaderprogram)
    {
        this(f, f1, itextureregion.getWidth(), itextureregion.getHeight(), itextureregion, vertexbufferobjectmanager, drawtype, shaderprogram);
    }

    protected void onUpdateColor()
    {
    }

}
