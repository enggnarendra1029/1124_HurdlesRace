// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.sprite;

import android.opengl.GLES20;
import org.andengine.engine.camera.Camera;
import org.andengine.entity.sprite.vbo.HighPerformanceUniformColorSpriteVertexBufferObject;
import org.andengine.entity.sprite.vbo.ISpriteVertexBufferObject;
import org.andengine.entity.sprite.vbo.IUniformColorSpriteVertexBufferObject;
import org.andengine.opengl.shader.PositionTextureCoordinatesUniformColorShaderProgram;
import org.andengine.opengl.shader.ShaderProgram;
import org.andengine.opengl.texture.region.ITextureRegion;
import org.andengine.opengl.util.GLState;
import org.andengine.opengl.vbo.DrawType;
import org.andengine.opengl.vbo.VertexBufferObjectManager;
import org.andengine.opengl.vbo.attribute.VertexBufferObjectAttributes;
import org.andengine.opengl.vbo.attribute.VertexBufferObjectAttributesBuilder;
import org.andengine.util.color.Color;

// Referenced classes of package org.andengine.entity.sprite:
//            Sprite

public class UniformColorSprite extends Sprite
{

    public static final int SPRITE_SIZE = 16;
    public static final int TEXTURECOORDINATES_INDEX_U = 2;
    public static final int TEXTURECOORDINATES_INDEX_V = 3;
    public static final VertexBufferObjectAttributes VERTEXBUFFEROBJECTATTRIBUTES_DEFAULT = (new VertexBufferObjectAttributesBuilder(2)).add(0, "a_position", 2, 5126, false).add(3, "a_textureCoordinates", 2, 5126, false).build();
    public static final int VERTEX_INDEX_X = 0;
    public static final int VERTEX_INDEX_Y = 1;
    public static final int VERTEX_SIZE = 4;
    public static final int VERTICES_PER_SPRITE = 4;

    public UniformColorSprite(float f, float f1, float f2, float f3, ITextureRegion itextureregion, IUniformColorSpriteVertexBufferObject iuniformcolorspritevertexbufferobject)
    {
        this(f, f1, f2, f3, itextureregion, iuniformcolorspritevertexbufferobject, ((ShaderProgram) (PositionTextureCoordinatesUniformColorShaderProgram.getInstance())));
    }

    public UniformColorSprite(float f, float f1, float f2, float f3, ITextureRegion itextureregion, IUniformColorSpriteVertexBufferObject iuniformcolorspritevertexbufferobject, ShaderProgram shaderprogram)
    {
        super(f, f1, f2, f3, itextureregion, iuniformcolorspritevertexbufferobject, shaderprogram);
    }

    public UniformColorSprite(float f, float f1, float f2, float f3, ITextureRegion itextureregion, VertexBufferObjectManager vertexbufferobjectmanager)
    {
        this(f, f1, f2, f3, itextureregion, vertexbufferobjectmanager, DrawType.STATIC);
    }

    public UniformColorSprite(float f, float f1, float f2, float f3, ITextureRegion itextureregion, VertexBufferObjectManager vertexbufferobjectmanager, ShaderProgram shaderprogram)
    {
        this(f, f1, f2, f3, itextureregion, vertexbufferobjectmanager, DrawType.STATIC, shaderprogram);
    }

    public UniformColorSprite(float f, float f1, float f2, float f3, ITextureRegion itextureregion, VertexBufferObjectManager vertexbufferobjectmanager, DrawType drawtype)
    {
        this(f, f1, f2, f3, itextureregion, vertexbufferobjectmanager, drawtype, ((ShaderProgram) (PositionTextureCoordinatesUniformColorShaderProgram.getInstance())));
    }

    public UniformColorSprite(float f, float f1, float f2, float f3, ITextureRegion itextureregion, VertexBufferObjectManager vertexbufferobjectmanager, DrawType drawtype, 
            ShaderProgram shaderprogram)
    {
        this(f, f1, f2, f3, itextureregion, ((IUniformColorSpriteVertexBufferObject) (new HighPerformanceUniformColorSpriteVertexBufferObject(vertexbufferobjectmanager, 16, drawtype, true, VERTEXBUFFEROBJECTATTRIBUTES_DEFAULT))), shaderprogram);
    }

    public UniformColorSprite(float f, float f1, ITextureRegion itextureregion, IUniformColorSpriteVertexBufferObject iuniformcolorspritevertexbufferobject)
    {
        this(f, f1, itextureregion.getWidth(), itextureregion.getHeight(), itextureregion, iuniformcolorspritevertexbufferobject);
    }

    public UniformColorSprite(float f, float f1, ITextureRegion itextureregion, IUniformColorSpriteVertexBufferObject iuniformcolorspritevertexbufferobject, ShaderProgram shaderprogram)
    {
        this(f, f1, itextureregion.getWidth(), itextureregion.getHeight(), itextureregion, iuniformcolorspritevertexbufferobject, shaderprogram);
    }

    public UniformColorSprite(float f, float f1, ITextureRegion itextureregion, VertexBufferObjectManager vertexbufferobjectmanager)
    {
        this(f, f1, itextureregion.getWidth(), itextureregion.getHeight(), itextureregion, vertexbufferobjectmanager, DrawType.STATIC);
    }

    public UniformColorSprite(float f, float f1, ITextureRegion itextureregion, VertexBufferObjectManager vertexbufferobjectmanager, ShaderProgram shaderprogram)
    {
        this(f, f1, itextureregion.getWidth(), itextureregion.getHeight(), itextureregion, vertexbufferobjectmanager, DrawType.STATIC, shaderprogram);
    }

    public UniformColorSprite(float f, float f1, ITextureRegion itextureregion, VertexBufferObjectManager vertexbufferobjectmanager, DrawType drawtype)
    {
        this(f, f1, itextureregion.getWidth(), itextureregion.getHeight(), itextureregion, vertexbufferobjectmanager, drawtype);
    }

    public UniformColorSprite(float f, float f1, ITextureRegion itextureregion, VertexBufferObjectManager vertexbufferobjectmanager, DrawType drawtype, ShaderProgram shaderprogram)
    {
        this(f, f1, itextureregion.getWidth(), itextureregion.getHeight(), itextureregion, vertexbufferobjectmanager, drawtype, shaderprogram);
    }

    protected void draw(GLState glstate, Camera camera)
    {
        mSpriteVertexBufferObject.draw(5, 4);
    }

    protected void preDraw(GLState glstate, Camera camera)
    {
        super.preDraw(glstate, camera);
        GLES20.glUniform4f(PositionTextureCoordinatesUniformColorShaderProgram.sUniformColorLocation, mColor.getRed(), mColor.getGreen(), mColor.getBlue(), mColor.getAlpha());
    }

}
