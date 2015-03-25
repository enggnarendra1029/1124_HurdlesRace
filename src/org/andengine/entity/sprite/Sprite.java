// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.sprite;

import org.andengine.engine.camera.Camera;
import org.andengine.entity.shape.RectangularShape;
import org.andengine.entity.sprite.vbo.HighPerformanceSpriteVertexBufferObject;
import org.andengine.entity.sprite.vbo.ISpriteVertexBufferObject;
import org.andengine.opengl.shader.PositionColorTextureCoordinatesShaderProgram;
import org.andengine.opengl.shader.ShaderProgram;
import org.andengine.opengl.texture.ITexture;
import org.andengine.opengl.texture.region.ITextureRegion;
import org.andengine.opengl.util.GLState;
import org.andengine.opengl.vbo.DrawType;
import org.andengine.opengl.vbo.IVertexBufferObject;
import org.andengine.opengl.vbo.VertexBufferObjectManager;
import org.andengine.opengl.vbo.attribute.VertexBufferObjectAttributes;
import org.andengine.opengl.vbo.attribute.VertexBufferObjectAttributesBuilder;

public class Sprite extends RectangularShape
{

    public static final int COLOR_INDEX = 2;
    public static final int SPRITE_SIZE = 20;
    public static final int TEXTURECOORDINATES_INDEX_U = 3;
    public static final int TEXTURECOORDINATES_INDEX_V = 4;
    public static final VertexBufferObjectAttributes VERTEXBUFFEROBJECTATTRIBUTES_DEFAULT = (new VertexBufferObjectAttributesBuilder(3)).add(0, "a_position", 2, 5126, false).add(1, "a_color", 4, 5121, true).add(3, "a_textureCoordinates", 2, 5126, false).build();
    public static final int VERTEX_INDEX_X = 0;
    public static final int VERTEX_INDEX_Y = 1;
    public static final int VERTEX_SIZE = 5;
    public static final int VERTICES_PER_SPRITE = 4;
    protected boolean mFlippedHorizontal;
    protected boolean mFlippedVertical;
    protected final ISpriteVertexBufferObject mSpriteVertexBufferObject;
    protected final ITextureRegion mTextureRegion;

    public Sprite(float f, float f1, float f2, float f3, ITextureRegion itextureregion, ISpriteVertexBufferObject ispritevertexbufferobject)
    {
        this(f, f1, f2, f3, itextureregion, ispritevertexbufferobject, ((ShaderProgram) (PositionColorTextureCoordinatesShaderProgram.getInstance())));
    }

    public Sprite(float f, float f1, float f2, float f3, ITextureRegion itextureregion, ISpriteVertexBufferObject ispritevertexbufferobject, ShaderProgram shaderprogram)
    {
        super(f, f1, f2, f3, shaderprogram);
        mTextureRegion = itextureregion;
        mSpriteVertexBufferObject = ispritevertexbufferobject;
        setBlendingEnabled(true);
        initBlendFunction(itextureregion);
        onUpdateVertices();
        onUpdateColor();
        onUpdateTextureCoordinates();
    }

    public Sprite(float f, float f1, float f2, float f3, ITextureRegion itextureregion, VertexBufferObjectManager vertexbufferobjectmanager)
    {
        this(f, f1, f2, f3, itextureregion, vertexbufferobjectmanager, DrawType.STATIC);
    }

    public Sprite(float f, float f1, float f2, float f3, ITextureRegion itextureregion, VertexBufferObjectManager vertexbufferobjectmanager, ShaderProgram shaderprogram)
    {
        this(f, f1, f2, f3, itextureregion, vertexbufferobjectmanager, DrawType.STATIC, shaderprogram);
    }

    public Sprite(float f, float f1, float f2, float f3, ITextureRegion itextureregion, VertexBufferObjectManager vertexbufferobjectmanager, DrawType drawtype)
    {
        this(f, f1, f2, f3, itextureregion, vertexbufferobjectmanager, drawtype, ((ShaderProgram) (PositionColorTextureCoordinatesShaderProgram.getInstance())));
    }

    public Sprite(float f, float f1, float f2, float f3, ITextureRegion itextureregion, VertexBufferObjectManager vertexbufferobjectmanager, DrawType drawtype, 
            ShaderProgram shaderprogram)
    {
        this(f, f1, f2, f3, itextureregion, ((ISpriteVertexBufferObject) (new HighPerformanceSpriteVertexBufferObject(vertexbufferobjectmanager, 20, drawtype, true, VERTEXBUFFEROBJECTATTRIBUTES_DEFAULT))), shaderprogram);
    }

    public Sprite(float f, float f1, ITextureRegion itextureregion, ISpriteVertexBufferObject ispritevertexbufferobject)
    {
        this(f, f1, itextureregion.getWidth(), itextureregion.getHeight(), itextureregion, ispritevertexbufferobject);
    }

    public Sprite(float f, float f1, ITextureRegion itextureregion, ISpriteVertexBufferObject ispritevertexbufferobject, ShaderProgram shaderprogram)
    {
        this(f, f1, itextureregion.getWidth(), itextureregion.getHeight(), itextureregion, ispritevertexbufferobject, shaderprogram);
    }

    public Sprite(float f, float f1, ITextureRegion itextureregion, VertexBufferObjectManager vertexbufferobjectmanager)
    {
        this(f, f1, itextureregion.getWidth(), itextureregion.getHeight(), itextureregion, vertexbufferobjectmanager, DrawType.STATIC);
    }

    public Sprite(float f, float f1, ITextureRegion itextureregion, VertexBufferObjectManager vertexbufferobjectmanager, ShaderProgram shaderprogram)
    {
        this(f, f1, itextureregion.getWidth(), itextureregion.getHeight(), itextureregion, vertexbufferobjectmanager, DrawType.STATIC, shaderprogram);
    }

    public Sprite(float f, float f1, ITextureRegion itextureregion, VertexBufferObjectManager vertexbufferobjectmanager, DrawType drawtype)
    {
        this(f, f1, itextureregion.getWidth(), itextureregion.getHeight(), itextureregion, vertexbufferobjectmanager, drawtype);
    }

    public Sprite(float f, float f1, ITextureRegion itextureregion, VertexBufferObjectManager vertexbufferobjectmanager, DrawType drawtype, ShaderProgram shaderprogram)
    {
        this(f, f1, itextureregion.getWidth(), itextureregion.getHeight(), itextureregion, vertexbufferobjectmanager, drawtype, shaderprogram);
    }

    protected void draw(GLState glstate, Camera camera)
    {
        mSpriteVertexBufferObject.draw(5, 4);
    }

    public ITextureRegion getTextureRegion()
    {
        return mTextureRegion;
    }

    public ISpriteVertexBufferObject getVertexBufferObject()
    {
        return mSpriteVertexBufferObject;
    }

    public volatile IVertexBufferObject getVertexBufferObject()
    {
        return getVertexBufferObject();
    }

    public boolean isFlippedHorizontal()
    {
        return mFlippedHorizontal;
    }

    public boolean isFlippedVertical()
    {
        return mFlippedVertical;
    }

    protected void onUpdateColor()
    {
        mSpriteVertexBufferObject.onUpdateColor(this);
    }

    protected void onUpdateTextureCoordinates()
    {
        mSpriteVertexBufferObject.onUpdateTextureCoordinates(this);
    }

    protected void onUpdateVertices()
    {
        mSpriteVertexBufferObject.onUpdateVertices(this);
    }

    protected void postDraw(GLState glstate, Camera camera)
    {
        mSpriteVertexBufferObject.unbind(glstate, mShaderProgram);
        super.postDraw(glstate, camera);
    }

    protected void preDraw(GLState glstate, Camera camera)
    {
        super.preDraw(glstate, camera);
        getTextureRegion().getTexture().bind(glstate);
        mSpriteVertexBufferObject.bind(glstate, mShaderProgram);
    }

    public void reset()
    {
        super.reset();
        initBlendFunction(getTextureRegion().getTexture());
    }

    public void setFlipped(boolean flag, boolean flag1)
    {
        if (mFlippedHorizontal != flag || mFlippedVertical != flag1)
        {
            mFlippedHorizontal = flag;
            mFlippedVertical = flag1;
            onUpdateTextureCoordinates();
        }
    }

    public void setFlippedHorizontal(boolean flag)
    {
        if (mFlippedHorizontal != flag)
        {
            mFlippedHorizontal = flag;
            onUpdateTextureCoordinates();
        }
    }

    public void setFlippedVertical(boolean flag)
    {
        if (mFlippedVertical != flag)
        {
            mFlippedVertical = flag;
            onUpdateTextureCoordinates();
        }
    }

}
