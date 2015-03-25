// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.text;

import java.util.ArrayList;
import org.andengine.engine.camera.Camera;
import org.andengine.entity.shape.RectangularShape;
import org.andengine.entity.text.exception.OutOfCharactersException;
import org.andengine.entity.text.vbo.HighPerformanceTextVertexBufferObject;
import org.andengine.entity.text.vbo.ITextVertexBufferObject;
import org.andengine.opengl.font.FontUtils;
import org.andengine.opengl.font.IFont;
import org.andengine.opengl.shader.PositionColorTextureCoordinatesShaderProgram;
import org.andengine.opengl.shader.ShaderProgram;
import org.andengine.opengl.texture.ITexture;
import org.andengine.opengl.util.GLState;
import org.andengine.opengl.vbo.DrawType;
import org.andengine.opengl.vbo.IVertexBufferObject;
import org.andengine.opengl.vbo.VertexBufferObjectManager;
import org.andengine.opengl.vbo.attribute.VertexBufferObjectAttributes;
import org.andengine.opengl.vbo.attribute.VertexBufferObjectAttributesBuilder;
import org.andengine.util.HorizontalAlign;
import org.andengine.util.adt.list.FloatArrayList;
import org.andengine.util.adt.list.IFloatList;

// Referenced classes of package org.andengine.entity.text:
//            TextOptions, AutoWrap

public class Text extends RectangularShape
{

    public static final int COLOR_INDEX = 2;
    public static final float LEADING_DEFAULT = 0F;
    public static final int LETTER_SIZE = 30;
    public static final int TEXTURECOORDINATES_INDEX_U = 3;
    public static final int TEXTURECOORDINATES_INDEX_V = 4;
    public static final VertexBufferObjectAttributes VERTEXBUFFEROBJECTATTRIBUTES_DEFAULT = (new VertexBufferObjectAttributesBuilder(3)).add(0, "a_position", 2, 5126, false).add(1, "a_color", 4, 5121, true).add(3, "a_textureCoordinates", 2, 5126, false).build();
    public static final int VERTEX_INDEX_X = 0;
    public static final int VERTEX_INDEX_Y = 1;
    public static final int VERTEX_SIZE = 5;
    public static final int VERTEX_STRIDE = 20;
    public static final int VERTICES_PER_LETTER = 6;
    protected final int mCharactersMaximum;
    protected int mCharactersToDraw;
    protected final IFont mFont;
    protected float mLineAlignmentWidth;
    protected float mLineWidthMaximum;
    protected IFloatList mLineWidths;
    protected ArrayList mLines;
    protected CharSequence mText;
    protected TextOptions mTextOptions;
    protected final ITextVertexBufferObject mTextVertexBufferObject;
    protected final int mVertexCount;
    protected int mVertexCountToDraw;

    public Text(float f, float f1, IFont ifont, CharSequence charsequence, int i, TextOptions textoptions, ITextVertexBufferObject itextvertexbufferobject)
    {
        this(f, f1, ifont, charsequence, i, textoptions, itextvertexbufferobject, ((ShaderProgram) (PositionColorTextureCoordinatesShaderProgram.getInstance())));
    }

    public Text(float f, float f1, IFont ifont, CharSequence charsequence, int i, TextOptions textoptions, ITextVertexBufferObject itextvertexbufferobject, 
            ShaderProgram shaderprogram)
    {
        super(f, f1, 0.0F, 0.0F, shaderprogram);
        mLines = new ArrayList(1);
        mLineWidths = new FloatArrayList(1);
        mFont = ifont;
        mTextOptions = textoptions;
        mCharactersMaximum = i;
        mVertexCount = 6 * mCharactersMaximum;
        mTextVertexBufferObject = itextvertexbufferobject;
        onUpdateColor();
        setText(charsequence);
        setBlendingEnabled(true);
        initBlendFunction(mFont.getTexture());
    }

    public Text(float f, float f1, IFont ifont, CharSequence charsequence, int i, TextOptions textoptions, VertexBufferObjectManager vertexbufferobjectmanager)
    {
        this(f, f1, ifont, charsequence, i, textoptions, vertexbufferobjectmanager, DrawType.STATIC);
    }

    public Text(float f, float f1, IFont ifont, CharSequence charsequence, int i, TextOptions textoptions, VertexBufferObjectManager vertexbufferobjectmanager, 
            DrawType drawtype)
    {
        this(f, f1, ifont, charsequence, i, textoptions, ((ITextVertexBufferObject) (new HighPerformanceTextVertexBufferObject(vertexbufferobjectmanager, i * 30, drawtype, true, VERTEXBUFFEROBJECTATTRIBUTES_DEFAULT))));
    }

    public Text(float f, float f1, IFont ifont, CharSequence charsequence, int i, TextOptions textoptions, VertexBufferObjectManager vertexbufferobjectmanager, 
            DrawType drawtype, ShaderProgram shaderprogram)
    {
        this(f, f1, ifont, charsequence, i, textoptions, ((ITextVertexBufferObject) (new HighPerformanceTextVertexBufferObject(vertexbufferobjectmanager, i * 30, drawtype, true, VERTEXBUFFEROBJECTATTRIBUTES_DEFAULT))), shaderprogram);
    }

    public Text(float f, float f1, IFont ifont, CharSequence charsequence, int i, VertexBufferObjectManager vertexbufferobjectmanager)
    {
        this(f, f1, ifont, charsequence, i, vertexbufferobjectmanager, DrawType.STATIC);
    }

    public Text(float f, float f1, IFont ifont, CharSequence charsequence, int i, VertexBufferObjectManager vertexbufferobjectmanager, ShaderProgram shaderprogram)
    {
        this(f, f1, ifont, charsequence, i, vertexbufferobjectmanager, DrawType.STATIC, shaderprogram);
    }

    public Text(float f, float f1, IFont ifont, CharSequence charsequence, int i, VertexBufferObjectManager vertexbufferobjectmanager, DrawType drawtype)
    {
        this(f, f1, ifont, charsequence, i, new TextOptions(), vertexbufferobjectmanager, drawtype);
    }

    public Text(float f, float f1, IFont ifont, CharSequence charsequence, int i, VertexBufferObjectManager vertexbufferobjectmanager, DrawType drawtype, 
            ShaderProgram shaderprogram)
    {
        this(f, f1, ifont, charsequence, i, new TextOptions(), vertexbufferobjectmanager, drawtype, shaderprogram);
    }

    public Text(float f, float f1, IFont ifont, CharSequence charsequence, TextOptions textoptions, VertexBufferObjectManager vertexbufferobjectmanager)
    {
        this(f, f1, ifont, charsequence, textoptions, vertexbufferobjectmanager, DrawType.STATIC);
    }

    public Text(float f, float f1, IFont ifont, CharSequence charsequence, TextOptions textoptions, VertexBufferObjectManager vertexbufferobjectmanager, ShaderProgram shaderprogram)
    {
        this(f, f1, ifont, charsequence, textoptions, vertexbufferobjectmanager, DrawType.STATIC, shaderprogram);
    }

    public Text(float f, float f1, IFont ifont, CharSequence charsequence, TextOptions textoptions, VertexBufferObjectManager vertexbufferobjectmanager, DrawType drawtype)
    {
        this(f, f1, ifont, charsequence, charsequence.length(), textoptions, vertexbufferobjectmanager, drawtype);
    }

    public Text(float f, float f1, IFont ifont, CharSequence charsequence, TextOptions textoptions, VertexBufferObjectManager vertexbufferobjectmanager, DrawType drawtype, 
            ShaderProgram shaderprogram)
    {
        this(f, f1, ifont, charsequence, charsequence.length(), textoptions, vertexbufferobjectmanager, drawtype, shaderprogram);
    }

    public Text(float f, float f1, IFont ifont, CharSequence charsequence, VertexBufferObjectManager vertexbufferobjectmanager)
    {
        this(f, f1, ifont, charsequence, vertexbufferobjectmanager, DrawType.STATIC);
    }

    public Text(float f, float f1, IFont ifont, CharSequence charsequence, VertexBufferObjectManager vertexbufferobjectmanager, ShaderProgram shaderprogram)
    {
        this(f, f1, ifont, charsequence, vertexbufferobjectmanager, DrawType.STATIC, shaderprogram);
    }

    public Text(float f, float f1, IFont ifont, CharSequence charsequence, VertexBufferObjectManager vertexbufferobjectmanager, DrawType drawtype)
    {
        this(f, f1, ifont, charsequence, new TextOptions(), vertexbufferobjectmanager, drawtype);
    }

    public Text(float f, float f1, IFont ifont, CharSequence charsequence, VertexBufferObjectManager vertexbufferobjectmanager, DrawType drawtype, ShaderProgram shaderprogram)
    {
        this(f, f1, ifont, charsequence, new TextOptions(), vertexbufferobjectmanager, drawtype, shaderprogram);
    }

    protected void draw(GLState glstate, Camera camera)
    {
        mTextVertexBufferObject.draw(4, mVertexCountToDraw);
    }

    public AutoWrap getAutoWrap()
    {
        return mTextOptions.mAutoWrap;
    }

    public float getAutoWrapWidth()
    {
        return mTextOptions.mAutoWrapWidth;
    }

    public int getCharactersMaximum()
    {
        return mCharactersMaximum;
    }

    public IFont getFont()
    {
        return mFont;
    }

    public HorizontalAlign getHorizontalAlign()
    {
        return mTextOptions.mHorizontalAlign;
    }

    public float getLeading()
    {
        return mTextOptions.mLeading;
    }

    public float getLineAlignmentWidth()
    {
        return mLineAlignmentWidth;
    }

    public float getLineWidthMaximum()
    {
        return mLineWidthMaximum;
    }

    public IFloatList getLineWidths()
    {
        return mLineWidths;
    }

    public ArrayList getLines()
    {
        return mLines;
    }

    public CharSequence getText()
    {
        return mText;
    }

    public TextOptions getTextOptions()
    {
        return mTextOptions;
    }

    public ITextVertexBufferObject getVertexBufferObject()
    {
        return mTextVertexBufferObject;
    }

    public volatile IVertexBufferObject getVertexBufferObject()
    {
        return getVertexBufferObject();
    }

    public void invalidateText()
    {
        setText(mText);
    }

    protected void onUpdateColor()
    {
        mTextVertexBufferObject.onUpdateColor(this);
    }

    protected void onUpdateVertices()
    {
        mTextVertexBufferObject.onUpdateVertices(this);
    }

    protected void postDraw(GLState glstate, Camera camera)
    {
        mTextVertexBufferObject.unbind(glstate, mShaderProgram);
        super.postDraw(glstate, camera);
    }

    protected void preDraw(GLState glstate, Camera camera)
    {
        super.preDraw(glstate, camera);
        mFont.getTexture().bind(glstate);
        mTextVertexBufferObject.bind(glstate, mShaderProgram);
    }

    public void setAutoWrap(AutoWrap autowrap)
    {
        mTextOptions.mAutoWrap = autowrap;
        invalidateText();
    }

    public void setAutoWrapWidth(float f)
    {
        mTextOptions.mAutoWrapWidth = f;
        invalidateText();
    }

    public void setCharactersToDraw(int i)
    {
        if (i > mCharactersMaximum)
        {
            throw new OutOfCharactersException((new StringBuilder("Characters: maximum: '")).append(mCharactersMaximum).append("' required: '").append(i).append("'.").toString());
        } else
        {
            mCharactersToDraw = i;
            mVertexCountToDraw = i * 6;
            return;
        }
    }

    public void setHorizontalAlign(HorizontalAlign horizontalalign)
    {
        mTextOptions.mHorizontalAlign = horizontalalign;
        invalidateText();
    }

    public void setLeading(float f)
    {
        mTextOptions.mLeading = f;
        invalidateText();
    }

    public void setText(CharSequence charsequence)
        throws OutOfCharactersException
    {
        mText = charsequence;
        IFont ifont = mFont;
        mLines.clear();
        mLineWidths.clear();
        int i;
        float f;
        int j;
        if (mTextOptions.mAutoWrap == AutoWrap.NONE)
        {
            mLines = (ArrayList)FontUtils.splitLines(mText, mLines);
        } else
        {
            mLines = (ArrayList)FontUtils.splitLines(mFont, mText, mLines, mTextOptions.mAutoWrap, mTextOptions.mAutoWrapWidth);
        }
        i = mLines.size();
        f = 0.0F;
        j = 0;
        do
        {
            if (j >= i)
            {
                mLineWidthMaximum = f;
                float f1;
                if (mTextOptions.mAutoWrap == AutoWrap.NONE)
                {
                    mLineAlignmentWidth = mLineWidthMaximum;
                } else
                {
                    mLineAlignmentWidth = mTextOptions.mAutoWrapWidth;
                }
                super.mWidth = mLineAlignmentWidth;
                super.mHeight = (float)i * ifont.getLineHeight() + (float)(i - 1) * mTextOptions.mLeading;
                mRotationCenterX = 0.5F * super.mWidth;
                mRotationCenterY = 0.5F * super.mHeight;
                mScaleCenterX = mRotationCenterX;
                mScaleCenterY = mRotationCenterY;
                onUpdateVertices();
                return;
            }
            f1 = FontUtils.measureText(ifont, (CharSequence)mLines.get(j));
            f = Math.max(f, f1);
            mLineWidths.add(f1);
            j++;
        } while (true);
    }

    public void setTextOptions(TextOptions textoptions)
    {
        mTextOptions = textoptions;
    }

}
