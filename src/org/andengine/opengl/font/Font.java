// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.font;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.opengl.GLES20;
import android.opengl.GLUtils;
import android.util.SparseArray;
import java.util.ArrayList;
import org.andengine.opengl.font.exception.FontException;
import org.andengine.opengl.texture.ITexture;
import org.andengine.opengl.texture.PixelFormat;
import org.andengine.opengl.texture.TextureOptions;
import org.andengine.opengl.util.GLState;
import org.andengine.util.adt.map.SparseArrayUtils;
import org.andengine.util.color.Color;
import org.andengine.util.math.MathUtils;

// Referenced classes of package org.andengine.opengl.font:
//            IFont, Letter, FontManager

public class Font
    implements IFont
{

    protected static final int LETTER_TEXTURE_PADDING = 1;
    private final Paint mBackgroundPaint;
    protected final Canvas mCanvas;
    private int mCurrentTextureX;
    private int mCurrentTextureY;
    private int mCurrentTextureYHeightMax;
    private final FontManager mFontManager;
    protected final android.graphics.Paint.FontMetrics mFontMetrics;
    private final ArrayList mLettersPendingToBeDrawnToTexture;
    private final SparseArray mManagedCharacterToLetterMap;
    protected final Paint mPaint;
    protected final Rect mTextBounds;
    protected final float mTextWidthContainer[];
    private final ITexture mTexture;
    private final int mTextureHeight;
    private final int mTextureWidth;

    public Font(FontManager fontmanager, ITexture itexture, Typeface typeface, float f, boolean flag, int i)
    {
        mCurrentTextureX = 1;
        mCurrentTextureY = 1;
        mManagedCharacterToLetterMap = new SparseArray();
        mLettersPendingToBeDrawnToTexture = new ArrayList();
        mCanvas = new Canvas();
        mTextBounds = new Rect();
        mTextWidthContainer = new float[1];
        mFontManager = fontmanager;
        mTexture = itexture;
        mTextureWidth = itexture.getWidth();
        mTextureHeight = itexture.getHeight();
        mBackgroundPaint = new Paint();
        mBackgroundPaint.setColor(Color.TRANSPARENT_ARGB_PACKED_INT);
        mBackgroundPaint.setStyle(android.graphics.Paint.Style.FILL);
        mPaint = new Paint();
        mPaint.setTypeface(typeface);
        mPaint.setColor(i);
        mPaint.setTextSize(f);
        mPaint.setAntiAlias(flag);
        mFontMetrics = mPaint.getFontMetrics();
    }

    public Font(FontManager fontmanager, ITexture itexture, Typeface typeface, float f, boolean flag, Color color)
    {
        this(fontmanager, itexture, typeface, f, flag, color.getARGBPackedInt());
    }

    private Letter createLetter(char c)
        throws FontException
    {
        String s = String.valueOf(c);
        float f = mTextureWidth;
        float f1 = mTextureHeight;
        updateTextBounds(s);
        int i = mTextBounds.left;
        int j = mTextBounds.top;
        int k = mTextBounds.width();
        int l = mTextBounds.height();
        float f2 = getLetterAdvance(s);
        boolean flag;
        if (!Character.isWhitespace(c) && k != 0 && l != 0)
        {
            flag = false;
        } else
        {
            flag = true;
        }
        if (flag)
        {
            return new Letter(c, f2);
        }
        if ((float)(k + (1 + mCurrentTextureX)) >= f)
        {
            mCurrentTextureX = 0;
            mCurrentTextureY = mCurrentTextureY + (2 + mCurrentTextureYHeightMax);
            mCurrentTextureYHeightMax = 0;
        }
        if ((float)(l + mCurrentTextureY) >= f1)
        {
            throw new FontException((new StringBuilder("Not enough space for ")).append(org/andengine/opengl/font/Letter.getSimpleName()).append(": '").append(c).append("' on the ").append(mTexture.getClass().getSimpleName()).append(". Existing Letters: ").append(SparseArrayUtils.toString(mManagedCharacterToLetterMap)).toString());
        } else
        {
            mCurrentTextureYHeightMax = Math.max(l, mCurrentTextureYHeightMax);
            mCurrentTextureX = 1 + mCurrentTextureX;
            float f3 = (float)mCurrentTextureX / f;
            float f4 = (float)mCurrentTextureY / f1;
            float f5 = (float)(k + mCurrentTextureX) / f;
            float f6 = (float)(l + mCurrentTextureY) / f1;
            Letter letter = new Letter(c, -1 + mCurrentTextureX, -1 + mCurrentTextureY, k, l, i, (float)j - getAscent(), f2, f3, f4, f5, f6);
            mCurrentTextureX = mCurrentTextureX + (k + 1);
            return letter;
        }
    }

    private float getLetterAdvance(String s)
    {
        mPaint.getTextWidths(s, mTextWidthContainer);
        return mTextWidthContainer[0];
    }

    protected void drawLetter(String s, float f, float f1)
    {
        mCanvas.drawText(s, f + 1.0F, 1.0F + f1, mPaint);
    }

    public float getAscent()
    {
        return mFontMetrics.ascent;
    }

    public float getDescent()
    {
        return mFontMetrics.descent;
    }

    public float getLeading()
    {
        return mFontMetrics.leading;
    }

    public Letter getLetter(char c)
        throws FontException
    {
        this;
        JVM INSTR monitorenter ;
        Letter letter = (Letter)mManagedCharacterToLetterMap.get(c);
        if (letter != null)
        {
            break MISSING_BLOCK_LABEL_42;
        }
        letter = createLetter(c);
        mLettersPendingToBeDrawnToTexture.add(letter);
        mManagedCharacterToLetterMap.put(c, letter);
        this;
        JVM INSTR monitorexit ;
        return letter;
        Exception exception;
        exception;
        throw exception;
    }

    protected Bitmap getLetterBitmap(Letter letter)
        throws FontException
    {
        String s = String.valueOf(letter.mCharacter);
        Bitmap bitmap = Bitmap.createBitmap(2 + letter.mWidth, 2 + letter.mHeight, android.graphics.Bitmap.Config.ARGB_8888);
        mCanvas.setBitmap(bitmap);
        mCanvas.drawRect(0.0F, 0.0F, bitmap.getWidth(), bitmap.getHeight(), mBackgroundPaint);
        drawLetter(s, -letter.mOffsetX, -(letter.mOffsetY + getAscent()));
        return bitmap;
    }

    public float getLineHeight()
    {
        return -getAscent() + getDescent();
    }

    public ITexture getTexture()
    {
        return mTexture;
    }

    public void invalidateLetters()
    {
        this;
        JVM INSTR monitorenter ;
        ArrayList arraylist;
        SparseArray sparsearray;
        int i;
        arraylist = mLettersPendingToBeDrawnToTexture;
        sparsearray = mManagedCharacterToLetterMap;
        i = sparsearray.size();
        int j = i - 1;
_L2:
        if (j < 0)
        {
            return;
        }
        arraylist.add((Letter)sparsearray.valueAt(j));
        j--;
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        throw exception;
    }

    public void load()
    {
        mTexture.load();
        mFontManager.loadFont(this);
    }

    public transient void prepareLetters(char ac[])
        throws FontException
    {
        int i = ac.length;
        int j = 0;
        do
        {
            if (j >= i)
            {
                return;
            }
            getLetter(ac[j]);
            j++;
        } while (true);
    }

    public void unload()
    {
        mTexture.unload();
        mFontManager.unloadFont(this);
    }

    public void update(GLState glstate)
    {
        this;
        JVM INSTR monitorenter ;
        if (!mTexture.isLoadedToHardware()) goto _L2; else goto _L1
_L1:
        ArrayList arraylist = mLettersPendingToBeDrawnToTexture;
        if (arraylist.size() <= 0) goto _L2; else goto _L3
_L3:
        PixelFormat pixelformat;
        boolean flag;
        int i;
        mTexture.bind(glstate);
        pixelformat = mTexture.getPixelFormat();
        flag = mTexture.getTextureOptions().mPreMultiplyAlpha;
        i = -1 + arraylist.size();
_L12:
        if (i >= 0) goto _L5; else goto _L4
_L4:
        arraylist.clear();
        System.gc();
_L2:
        this;
        JVM INSTR monitorexit ;
        return;
_L5:
        Letter letter = (Letter)arraylist.get(i);
        if (letter.isWhitespace()) goto _L7; else goto _L6
_L6:
        Bitmap bitmap = getLetterBitmap(letter);
        Exception exception;
        boolean flag1;
        if (MathUtils.isPowerOfTwo(bitmap.getWidth()) && MathUtils.isPowerOfTwo(bitmap.getHeight()) && pixelformat == PixelFormat.RGBA_8888)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (flag1)
        {
            break MISSING_BLOCK_LABEL_156;
        }
        GLES20.glPixelStorei(3317, 1);
        if (!flag) goto _L9; else goto _L8
_L8:
        GLUtils.texSubImage2D(3553, 0, letter.mTextureX, letter.mTextureY, bitmap);
_L10:
        if (flag1)
        {
            break MISSING_BLOCK_LABEL_192;
        }
        GLES20.glPixelStorei(3317, 4);
        bitmap.recycle();
        break; /* Loop/switch isn't completed */
_L9:
        glstate.glTexSubImage2D(3553, 0, letter.mTextureX, letter.mTextureY, bitmap, pixelformat);
        if (true) goto _L10; else goto _L7
        exception;
        throw exception;
_L7:
        i--;
        if (true) goto _L12; else goto _L11
_L11:
    }

    protected void updateTextBounds(String s)
    {
        mPaint.getTextBounds(s, 0, 1, mTextBounds);
    }
}
