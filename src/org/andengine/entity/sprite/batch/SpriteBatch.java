// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.sprite.batch;

import org.andengine.engine.camera.Camera;
import org.andengine.entity.IEntity;
import org.andengine.entity.shape.IShape;
import org.andengine.entity.shape.Shape;
import org.andengine.entity.sprite.Sprite;
import org.andengine.entity.sprite.batch.vbo.HighPerformanceSpriteBatchVertexBufferObject;
import org.andengine.entity.sprite.batch.vbo.ISpriteBatchVertexBufferObject;
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
import org.andengine.util.adt.transformation.Transformation;
import org.andengine.util.color.Color;
import org.andengine.util.color.ColorUtils;

public class SpriteBatch extends Shape
{

    public static final int COLOR_INDEX = 2;
    public static final int SPRITE_SIZE = 30;
    public static final int TEXTURECOORDINATES_INDEX_U = 3;
    public static final int TEXTURECOORDINATES_INDEX_V = 4;
    private static final Transformation TRANSFORATION_TMP = new Transformation();
    public static final VertexBufferObjectAttributes VERTEXBUFFEROBJECTATTRIBUTES_DEFAULT = (new VertexBufferObjectAttributesBuilder(3)).add(0, "a_position", 2, 5126, false).add(1, "a_color", 4, 5121, true).add(3, "a_textureCoordinates", 2, 5126, false).build();
    public static final int VERTEX_INDEX_X = 0;
    public static final int VERTEX_INDEX_Y = 1;
    public static final int VERTEX_SIZE = 5;
    public static final int VERTICES_PER_SPRITE = 6;
    private static final float VERTICES_TMP[] = new float[8];
    protected final int mCapacity;
    protected int mIndex;
    protected final ISpriteBatchVertexBufferObject mSpriteBatchVertexBufferObject;
    protected ITexture mTexture;
    protected int mVertices;

    public SpriteBatch(float f, float f1, ITexture itexture, int i, ISpriteBatchVertexBufferObject ispritebatchvertexbufferobject)
    {
        this(f, f1, itexture, i, ispritebatchvertexbufferobject, ((ShaderProgram) (PositionColorTextureCoordinatesShaderProgram.getInstance())));
    }

    public SpriteBatch(float f, float f1, ITexture itexture, int i, ISpriteBatchVertexBufferObject ispritebatchvertexbufferobject, ShaderProgram shaderprogram)
    {
        super(f, f1, shaderprogram);
        mTexture = itexture;
        mCapacity = i;
        mSpriteBatchVertexBufferObject = ispritebatchvertexbufferobject;
        setBlendingEnabled(true);
        initBlendFunction(mTexture);
    }

    public SpriteBatch(float f, float f1, ITexture itexture, int i, VertexBufferObjectManager vertexbufferobjectmanager)
    {
        this(f, f1, itexture, i, vertexbufferobjectmanager, DrawType.STATIC);
    }

    public SpriteBatch(float f, float f1, ITexture itexture, int i, VertexBufferObjectManager vertexbufferobjectmanager, DrawType drawtype)
    {
        this(f, f1, itexture, i, ((ISpriteBatchVertexBufferObject) (new HighPerformanceSpriteBatchVertexBufferObject(vertexbufferobjectmanager, i * 30, drawtype, true, VERTEXBUFFEROBJECTATTRIBUTES_DEFAULT))));
    }

    public SpriteBatch(float f, float f1, ITexture itexture, int i, VertexBufferObjectManager vertexbufferobjectmanager, DrawType drawtype, ShaderProgram shaderprogram)
    {
        this(f, f1, itexture, i, ((ISpriteBatchVertexBufferObject) (new HighPerformanceSpriteBatchVertexBufferObject(vertexbufferobjectmanager, i * 30, drawtype, true, VERTEXBUFFEROBJECTATTRIBUTES_DEFAULT))), shaderprogram);
    }

    public SpriteBatch(float f, float f1, ITexture itexture, VertexBufferObjectManager vertexbufferobjectmanager, int i, ShaderProgram shaderprogram)
    {
        this(f, f1, itexture, i, vertexbufferobjectmanager, DrawType.STATIC, shaderprogram);
    }

    public SpriteBatch(ITexture itexture, int i, ISpriteBatchVertexBufferObject ispritebatchvertexbufferobject)
    {
        this(itexture, i, ispritebatchvertexbufferobject, ((ShaderProgram) (PositionColorTextureCoordinatesShaderProgram.getInstance())));
    }

    public SpriteBatch(ITexture itexture, int i, ISpriteBatchVertexBufferObject ispritebatchvertexbufferobject, ShaderProgram shaderprogram)
    {
        this(0.0F, 0.0F, itexture, i, ispritebatchvertexbufferobject, shaderprogram);
    }

    public SpriteBatch(ITexture itexture, int i, VertexBufferObjectManager vertexbufferobjectmanager)
    {
        this(itexture, i, vertexbufferobjectmanager, DrawType.STATIC);
    }

    public SpriteBatch(ITexture itexture, int i, VertexBufferObjectManager vertexbufferobjectmanager, ShaderProgram shaderprogram)
    {
        this(itexture, i, vertexbufferobjectmanager, DrawType.STATIC, shaderprogram);
    }

    public SpriteBatch(ITexture itexture, int i, VertexBufferObjectManager vertexbufferobjectmanager, DrawType drawtype)
    {
        this(itexture, i, ((ISpriteBatchVertexBufferObject) (new HighPerformanceSpriteBatchVertexBufferObject(vertexbufferobjectmanager, i * 30, drawtype, true, VERTEXBUFFEROBJECTATTRIBUTES_DEFAULT))));
    }

    public SpriteBatch(ITexture itexture, int i, VertexBufferObjectManager vertexbufferobjectmanager, DrawType drawtype, ShaderProgram shaderprogram)
    {
        this(itexture, i, ((ISpriteBatchVertexBufferObject) (new HighPerformanceSpriteBatchVertexBufferObject(vertexbufferobjectmanager, i * 30, drawtype, true, VERTEXBUFFEROBJECTATTRIBUTES_DEFAULT))), shaderprogram);
    }

    private void addInner(ITextureRegion itextureregion, float f, float f1, float f2, float f3, float f4, float f5, 
            float f6, float f7)
    {
        mSpriteBatchVertexBufferObject.addWithPackedColor(itextureregion, f, f1, f2, f3, ColorUtils.convertRGBAToABGRPackedFloat(f4, f5, f6, f7));
    }

    private void addInner(ITextureRegion itextureregion, float f, float f1, float f2, float f3, float f4, float f5, 
            float f6, float f7, float f8, float f9, float f10, float f11)
    {
        mSpriteBatchVertexBufferObject.addWithPackedColor(itextureregion, f, f1, f2, f3, f4, f5, f6, f7, ColorUtils.convertRGBAToABGRPackedFloat(f8, f9, f10, f11));
    }

    private void assertCapacity()
    {
        if (mIndex == mCapacity)
        {
            throw new IllegalStateException((new StringBuilder("This SpriteBatch has already reached its capacity (")).append(mCapacity).append(") !").toString());
        } else
        {
            return;
        }
    }

    private void assertCapacity(int i)
    {
        if (i >= mCapacity)
        {
            throw new IllegalStateException((new StringBuilder("This supplied pIndex: '")).append(i).append("' is exceeding the capacity: '").append(mCapacity).append("' of this SpriteBatch!").toString());
        } else
        {
            return;
        }
    }

    protected void add(ITextureRegion itextureregion, float f, float f1, float f2, float f3, float f4)
    {
        mSpriteBatchVertexBufferObject.addWithPackedColor(itextureregion, f, f1, f + f2, f1 + f3, f4);
    }

    protected void add(ITextureRegion itextureregion, float f, float f1, float f2, float f3, float f4, float f5, 
            float f6, float f7)
    {
        addInner(itextureregion, f, f1, f + f2, f1 + f3, f4, f5, f6, f7);
    }

    protected void add(ITextureRegion itextureregion, float f, float f1, float f2, float f3, float f4, float f5, 
            float f6, float f7, float f8)
    {
        float f9 = f2 * 0.5F;
        float f10 = f3 * 0.5F;
        TRANSFORATION_TMP.setToIdentity();
        TRANSFORATION_TMP.postTranslate(-f9, -f10);
        TRANSFORATION_TMP.postRotate(f4);
        TRANSFORATION_TMP.postTranslate(f9, f10);
        TRANSFORATION_TMP.postTranslate(f, f1);
        add(itextureregion, f2, f3, TRANSFORATION_TMP, f5, f6, f7, f8);
    }

    protected void add(ITextureRegion itextureregion, float f, float f1, float f2, float f3, float f4, float f5, 
            float f6, float f7, float f8, float f9)
    {
        float f10 = f2 * 0.5F;
        float f11 = f3 * 0.5F;
        TRANSFORATION_TMP.setToIdentity();
        TRANSFORATION_TMP.postTranslate(-f10, -f11);
        TRANSFORATION_TMP.postScale(f4, f5);
        TRANSFORATION_TMP.postTranslate(f10, f11);
        TRANSFORATION_TMP.postTranslate(f, f1);
        add(itextureregion, f2, f3, TRANSFORATION_TMP, f6, f7, f8, f9);
    }

    protected void add(ITextureRegion itextureregion, float f, float f1, float f2, float f3, float f4, float f5, 
            float f6, float f7, float f8, float f9, float f10)
    {
        float f11 = f2 * 0.5F;
        float f12 = f3 * 0.5F;
        TRANSFORATION_TMP.setToIdentity();
        TRANSFORATION_TMP.postTranslate(-f11, -f12);
        TRANSFORATION_TMP.postScale(f5, f6);
        TRANSFORATION_TMP.postRotate(f4);
        TRANSFORATION_TMP.postTranslate(f11, f12);
        TRANSFORATION_TMP.postTranslate(f, f1);
        add(itextureregion, f2, f3, TRANSFORATION_TMP, f7, f8, f9, f10);
    }

    protected void add(ITextureRegion itextureregion, float f, float f1, Transformation transformation, float f2, float f3, float f4, 
            float f5)
    {
        VERTICES_TMP[0] = 0.0F;
        VERTICES_TMP[1] = 0.0F;
        VERTICES_TMP[2] = 0.0F;
        VERTICES_TMP[3] = f1;
        VERTICES_TMP[4] = f;
        VERTICES_TMP[5] = 0.0F;
        VERTICES_TMP[6] = f;
        VERTICES_TMP[7] = f1;
        transformation.transform(VERTICES_TMP);
        addInner(itextureregion, VERTICES_TMP[0], VERTICES_TMP[1], VERTICES_TMP[2], VERTICES_TMP[3], VERTICES_TMP[4], VERTICES_TMP[5], VERTICES_TMP[6], VERTICES_TMP[7], f2, f3, f4, f5);
    }

    protected void addWithPackedColor(ITextureRegion itextureregion, float f, float f1, float f2, float f3, float f4)
    {
        mSpriteBatchVertexBufferObject.addWithPackedColor(itextureregion, f, f1, f + f2, f1 + f3, f4);
    }

    protected void addWithPackedColor(ITextureRegion itextureregion, float f, float f1, float f2, float f3, float f4, float f5)
    {
        float f6 = f2 * 0.5F;
        float f7 = f3 * 0.5F;
        TRANSFORATION_TMP.setToIdentity();
        TRANSFORATION_TMP.postTranslate(-f6, -f7);
        TRANSFORATION_TMP.postRotate(f4);
        TRANSFORATION_TMP.postTranslate(f6, f7);
        TRANSFORATION_TMP.postTranslate(f, f1);
        addWithPackedColor(itextureregion, f2, f3, TRANSFORATION_TMP, f5);
    }

    protected void addWithPackedColor(ITextureRegion itextureregion, float f, float f1, float f2, float f3, float f4, float f5, 
            float f6)
    {
        float f7 = f2 * 0.5F;
        float f8 = f3 * 0.5F;
        TRANSFORATION_TMP.setToIdentity();
        TRANSFORATION_TMP.postTranslate(-f7, -f8);
        TRANSFORATION_TMP.postScale(f4, f5);
        TRANSFORATION_TMP.postTranslate(f7, f8);
        TRANSFORATION_TMP.postTranslate(f, f1);
        addWithPackedColor(itextureregion, f2, f3, TRANSFORATION_TMP, f6);
    }

    protected void addWithPackedColor(ITextureRegion itextureregion, float f, float f1, float f2, float f3, float f4, float f5, 
            float f6, float f7)
    {
        float f8 = f2 * 0.5F;
        float f9 = f3 * 0.5F;
        TRANSFORATION_TMP.setToIdentity();
        TRANSFORATION_TMP.postTranslate(-f8, -f9);
        TRANSFORATION_TMP.postScale(f5, f6);
        TRANSFORATION_TMP.postRotate(f4);
        TRANSFORATION_TMP.postTranslate(f8, f9);
        TRANSFORATION_TMP.postTranslate(f, f1);
        addWithPackedColor(itextureregion, f2, f3, TRANSFORATION_TMP, f7);
    }

    protected void addWithPackedColor(ITextureRegion itextureregion, float f, float f1, Transformation transformation, float f2)
    {
        VERTICES_TMP[0] = 0.0F;
        VERTICES_TMP[1] = 0.0F;
        VERTICES_TMP[2] = 0.0F;
        VERTICES_TMP[3] = f1;
        VERTICES_TMP[4] = f;
        VERTICES_TMP[5] = 0.0F;
        VERTICES_TMP[6] = f;
        VERTICES_TMP[7] = f1;
        transformation.transform(VERTICES_TMP);
        mSpriteBatchVertexBufferObject.addWithPackedColor(itextureregion, VERTICES_TMP[0], VERTICES_TMP[1], VERTICES_TMP[2], VERTICES_TMP[3], VERTICES_TMP[4], VERTICES_TMP[5], VERTICES_TMP[6], VERTICES_TMP[7], f2);
    }

    protected void assertTexture(ITextureRegion itextureregion)
    {
        if (itextureregion.getTexture() != mTexture)
        {
            throw new IllegalArgumentException("The supplied Texture does match the Texture of this SpriteBatch!");
        } else
        {
            return;
        }
    }

    protected void begin()
    {
    }

    public boolean collidesWith(IShape ishape)
    {
        return false;
    }

    public boolean contains(float f, float f1)
    {
        return false;
    }

    public void dispose()
    {
        super.dispose();
        if (mSpriteBatchVertexBufferObject != null && mSpriteBatchVertexBufferObject.isAutoDispose() && !mSpriteBatchVertexBufferObject.isDisposed())
        {
            mSpriteBatchVertexBufferObject.dispose();
        }
    }

    public void draw(Sprite sprite)
    {
        draw(sprite.getTextureRegion(), ((IEntity) (sprite)), sprite.getWidth(), sprite.getHeight(), sprite.getColor().getABGRPackedFloat());
    }

    public void draw(Sprite sprite, float f)
    {
        draw(sprite.getTextureRegion(), ((IEntity) (sprite)), sprite.getWidth(), sprite.getHeight(), f);
    }

    public void draw(Sprite sprite, float f, float f1, float f2, float f3)
    {
        draw(sprite.getTextureRegion(), ((IEntity) (sprite)), sprite.getWidth(), sprite.getHeight(), f, f1, f2, f3);
    }

    public void draw(ITextureRegion itextureregion, float f, float f1, float f2, float f3, float f4)
    {
        assertCapacity();
        assertTexture(itextureregion);
        add(itextureregion, f, f1, f2, f3, f4);
        mIndex = 1 + mIndex;
    }

    public void draw(ITextureRegion itextureregion, float f, float f1, float f2, float f3, float f4, float f5, 
            float f6, float f7)
    {
        assertCapacity();
        assertTexture(itextureregion);
        add(itextureregion, f, f1, f2, f3, f4, f5, f6, f7);
        mIndex = 1 + mIndex;
    }

    public void draw(ITextureRegion itextureregion, float f, float f1, float f2, float f3, float f4, float f5, 
            float f6, float f7, float f8)
    {
        assertCapacity();
        assertTexture(itextureregion);
        add(itextureregion, f, f1, f2, f3, f4, f5, f6, f7, f8);
        mIndex = 1 + mIndex;
    }

    public void draw(ITextureRegion itextureregion, float f, float f1, float f2, float f3, float f4, float f5, 
            float f6, float f7, float f8, float f9)
    {
        assertCapacity();
        assertTexture(itextureregion);
        add(itextureregion, f, f1, f2, f3, f4, f5, f6, f7, f8, f9);
        mIndex = 1 + mIndex;
    }

    public void draw(ITextureRegion itextureregion, float f, float f1, float f2, float f3, float f4, float f5, 
            float f6, float f7, float f8, float f9, float f10)
    {
        assertCapacity();
        assertTexture(itextureregion);
        add(itextureregion, f, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10);
        mIndex = 1 + mIndex;
    }

    public void draw(ITextureRegion itextureregion, float f, float f1, float f2, float f3, float f4, float f5, 
            float f6, float f7, float f8, float f9, float f10, float f11)
    {
        assertCapacity();
        assertTexture(itextureregion);
        addInner(itextureregion, f, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11);
        mIndex = 1 + mIndex;
    }

    public void draw(ITextureRegion itextureregion, IEntity ientity, float f, float f1)
    {
        draw(itextureregion, ientity, f, f1, ientity.getColor().getABGRPackedFloat());
    }

    public void draw(ITextureRegion itextureregion, IEntity ientity, float f, float f1, float f2)
    {
        if (ientity.isVisible())
        {
            assertCapacity();
            assertTexture(itextureregion);
            if (ientity.isRotatedOrScaledOrSkewed())
            {
                addWithPackedColor(itextureregion, f, f1, ientity.getLocalToParentTransformation(), f2);
            } else
            {
                addWithPackedColor(itextureregion, ientity.getX(), ientity.getY(), f, f1, f2);
            }
            mIndex = 1 + mIndex;
        }
    }

    public void draw(ITextureRegion itextureregion, IEntity ientity, float f, float f1, float f2, float f3, float f4, 
            float f5)
    {
        if (ientity.isVisible())
        {
            assertCapacity();
            assertTexture(itextureregion);
            if (ientity.isRotatedOrScaledOrSkewed())
            {
                add(itextureregion, f, f1, ientity.getLocalToParentTransformation(), f2, f3, f4, f5);
            } else
            {
                add(itextureregion, ientity.getX(), ientity.getY(), f, f1, f2, f3, f4, f5);
            }
            mIndex = 1 + mIndex;
        }
    }

    protected void draw(GLState glstate, Camera camera)
    {
        begin();
        mSpriteBatchVertexBufferObject.draw(4, mVertices);
        end();
    }

    public void drawWithoutChecks(Sprite sprite)
    {
        drawWithoutChecks(sprite.getTextureRegion(), ((IEntity) (sprite)), sprite.getWidth(), sprite.getHeight(), sprite.getColor().getABGRPackedFloat());
    }

    public void drawWithoutChecks(Sprite sprite, float f)
    {
        drawWithoutChecks(sprite.getTextureRegion(), ((IEntity) (sprite)), sprite.getWidth(), sprite.getHeight(), f);
    }

    public void drawWithoutChecks(Sprite sprite, float f, float f1, float f2, float f3)
    {
        drawWithoutChecks(sprite.getTextureRegion(), ((IEntity) (sprite)), sprite.getWidth(), sprite.getHeight(), f, f1, f2, f3);
    }

    public void drawWithoutChecks(ITextureRegion itextureregion, float f, float f1, float f2, float f3, float f4)
    {
        add(itextureregion, f, f1, f2, f3, f4);
        mIndex = 1 + mIndex;
    }

    public void drawWithoutChecks(ITextureRegion itextureregion, float f, float f1, float f2, float f3, float f4, float f5, 
            float f6, float f7)
    {
        add(itextureregion, f, f1, f2, f3, f4, f5, f6, f7);
        mIndex = 1 + mIndex;
    }

    public void drawWithoutChecks(ITextureRegion itextureregion, float f, float f1, float f2, float f3, float f4, float f5, 
            float f6, float f7, float f8)
    {
        add(itextureregion, f, f1, f2, f3, f4, f5, f6, f7, f8);
        mIndex = 1 + mIndex;
    }

    public void drawWithoutChecks(ITextureRegion itextureregion, float f, float f1, float f2, float f3, float f4, float f5, 
            float f6, float f7, float f8, float f9)
    {
        add(itextureregion, f, f1, f2, f3, f4, f5, f6, f7, f8, f9);
        mIndex = 1 + mIndex;
    }

    public void drawWithoutChecks(ITextureRegion itextureregion, float f, float f1, float f2, float f3, float f4, float f5, 
            float f6, float f7, float f8, float f9, float f10)
    {
        add(itextureregion, f, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10);
        mIndex = 1 + mIndex;
    }

    public void drawWithoutChecks(ITextureRegion itextureregion, float f, float f1, float f2, float f3, float f4, float f5, 
            float f6, float f7, float f8, float f9, float f10, float f11)
    {
        addInner(itextureregion, f, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11);
        mIndex = 1 + mIndex;
    }

    public void drawWithoutChecks(ITextureRegion itextureregion, IEntity ientity, float f, float f1)
    {
        drawWithoutChecks(itextureregion, ientity, f, f1, ientity.getColor().getABGRPackedFloat());
    }

    public void drawWithoutChecks(ITextureRegion itextureregion, IEntity ientity, float f, float f1, float f2)
    {
        if (ientity.isVisible())
        {
            if (ientity.isRotatedOrScaledOrSkewed())
            {
                addWithPackedColor(itextureregion, f, f1, ientity.getLocalToParentTransformation(), f2);
            } else
            {
                addWithPackedColor(itextureregion, ientity.getX(), ientity.getY(), f, f1, f2);
            }
            mIndex = 1 + mIndex;
        }
    }

    public void drawWithoutChecks(ITextureRegion itextureregion, IEntity ientity, float f, float f1, float f2, float f3, float f4, 
            float f5)
    {
        if (ientity.isVisible())
        {
            if (ientity.isRotatedOrScaledOrSkewed())
            {
                add(itextureregion, f, f1, ientity.getLocalToParentTransformation(), f2, f3, f4, f5);
            } else
            {
                add(itextureregion, ientity.getX(), ientity.getY(), f, f1, f2, f3, f4, f5);
            }
            mIndex = 1 + mIndex;
        }
    }

    protected void end()
    {
    }

    public int getIndex()
    {
        return mIndex;
    }

    public ITexture getTexture()
    {
        return mTexture;
    }

    public ISpriteBatchVertexBufferObject getVertexBufferObject()
    {
        return mSpriteBatchVertexBufferObject;
    }

    public volatile IVertexBufferObject getVertexBufferObject()
    {
        return getVertexBufferObject();
    }

    protected void onSubmit()
    {
        mVertices = 6 * mIndex;
        mSpriteBatchVertexBufferObject.setDirtyOnHardware();
        mIndex = 0;
        mSpriteBatchVertexBufferObject.setBufferDataOffset(0);
    }

    protected void onUpdateVertices()
    {
    }

    protected void postDraw(GLState glstate, Camera camera)
    {
        mSpriteBatchVertexBufferObject.unbind(glstate, mShaderProgram);
        if (mBlendingEnabled)
        {
            glstate.disableBlend();
        }
        super.postDraw(glstate, camera);
    }

    protected void preDraw(GLState glstate, Camera camera)
    {
        super.preDraw(glstate, camera);
        if (mBlendingEnabled)
        {
            glstate.enableBlend();
            glstate.blendFunction(mBlendFunctionSource, mBlendFunctionDestination);
        }
        mTexture.bind(glstate);
        mSpriteBatchVertexBufferObject.bind(glstate, mShaderProgram);
    }

    public void reset()
    {
        super.reset();
        initBlendFunction(mTexture);
    }

    public void setIndex(int i)
    {
        assertCapacity(i);
        mIndex = i;
        int j = i * 30;
        mSpriteBatchVertexBufferObject.setBufferDataOffset(j);
    }

    public void setTexture(ITexture itexture)
    {
        mTexture = itexture;
    }

    public void submit()
    {
        onSubmit();
    }

}
