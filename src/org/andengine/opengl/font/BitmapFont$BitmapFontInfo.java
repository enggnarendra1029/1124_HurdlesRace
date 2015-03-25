// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.font;

import java.util.regex.Pattern;
import org.andengine.opengl.font.exception.FontException;
import org.andengine.util.TextUtils;

// Referenced classes of package org.andengine.opengl.font:
//            BitmapFont

public class mSpacingY
{

    private static final int PADDING_BOTTOM_INDEX = 3;
    private static final int PADDING_LEFT_INDEX = 0;
    private static final int PADDING_RIGHT_INDEX = 2;
    private static final int PADDING_TOP_INDEX = 1;
    private static final int SPACING_X_INDEX = 0;
    private static final int SPACING_Y_INDEX = 1;
    private final boolean mAntiAliased;
    private final boolean mBold;
    private final String mCharset;
    private final String mFace;
    private final boolean mItalic;
    private final int mPaddingBottom;
    private final int mPaddingLeft;
    private final int mPaddingRight;
    private final int mPaddingTop;
    private final int mSize;
    private final boolean mSmooth;
    private final int mSpacingX;
    private final int mSpacingY;
    private final int mStretchHeight;
    private final int mUnicode;
    final BitmapFont this$0;

    public String getCharset()
    {
        return mCharset;
    }

    public String getFace()
    {
        return mFace;
    }

    public int getPaddingBottom()
    {
        return mPaddingBottom;
    }

    public int getPaddingLeft()
    {
        return mPaddingLeft;
    }

    public int getPaddingRight()
    {
        return mPaddingRight;
    }

    public int getPaddingTop()
    {
        return mPaddingTop;
    }

    public int getSize()
    {
        return mSize;
    }

    public int getSpacingX()
    {
        return mSpacingX;
    }

    public int getSpacingY()
    {
        return mSpacingY;
    }

    public int getStretchHeight()
    {
        return mStretchHeight;
    }

    public int getUnicode()
    {
        return mUnicode;
    }

    public boolean isAntiAliased()
    {
        return mAntiAliased;
    }

    public boolean isBold()
    {
        return mBold;
    }

    public boolean isItalic()
    {
        return mItalic;
    }

    public boolean isSmooth()
    {
        return mSmooth;
    }

    public _cls9(String s)
        throws FontException
    {
        this$0 = BitmapFont.this;
        super();
        if (s == null)
        {
            throw new FontException("pData must not be null.");
        }
        String as[] = TextUtils.SPLITPATTERN_SPACE.split(s, 12);
        if (-1 + as.length != 11)
        {
            throw new FontException((new StringBuilder("Expected: '11' info attributes, found: '")).append(-1 + as.length).append("'.").toString());
        }
        if (!as[0].equals("info"))
        {
            throw new FontException("Expected: 'info' attributes.");
        } else
        {
            mFace = BitmapFont.access$0(as, 1, "face");
            mSize = BitmapFont.access$1(as, 2, "size");
            mBold = BitmapFont.access$2(as, 3, "bold");
            mItalic = BitmapFont.access$2(as, 4, "italic");
            mCharset = BitmapFont.access$0(as, 5, "charset");
            mUnicode = BitmapFont.access$1(as, 6, "unicode");
            mStretchHeight = BitmapFont.access$1(as, 7, "stretchH");
            mSmooth = BitmapFont.access$2(as, 8, "smooth");
            mAntiAliased = BitmapFont.access$2(as, 9, "aa");
            String s1 = BitmapFont.access$3(as, 10, "padding");
            String as1[] = TextUtils.SPLITPATTERN_COMMA.split(s1, 4);
            mPaddingLeft = Integer.parseInt(as1[0]);
            mPaddingTop = Integer.parseInt(as1[1]);
            mPaddingRight = Integer.parseInt(as1[2]);
            mPaddingBottom = Integer.parseInt(as1[3]);
            String s2 = BitmapFont.access$3(as, 11, "spacing");
            String as2[] = TextUtils.SPLITPATTERN_COMMA.split(s2, 2);
            mSpacingX = Integer.parseInt(as2[0]);
            mSpacingY = Integer.parseInt(as2[1]);
            return;
        }
    }
}
