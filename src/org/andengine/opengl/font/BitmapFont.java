// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.font;

import android.content.res.AssetManager;
import android.util.SparseArray;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.regex.Pattern;
import org.andengine.opengl.font.exception.FontException;
import org.andengine.opengl.font.exception.LetterNotFoundException;
import org.andengine.opengl.texture.ITexture;
import org.andengine.opengl.texture.TextureManager;
import org.andengine.opengl.texture.TextureOptions;
import org.andengine.opengl.texture.bitmap.BitmapTexture;
import org.andengine.opengl.texture.bitmap.BitmapTextureFormat;
import org.andengine.util.StreamUtils;
import org.andengine.util.TextUtils;
import org.andengine.util.adt.io.in.AssetInputStreamOpener;

// Referenced classes of package org.andengine.opengl.font:
//            IFont, Letter

public class BitmapFont
    implements IFont
{
    public class BitmapFontInfo
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

        public BitmapFontInfo(String s)
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
                mFace = BitmapFont.getStringAttribute(as, 1, "face");
                mSize = BitmapFont.getIntAttribute(as, 2, "size");
                mBold = BitmapFont.getBooleanAttribute(as, 3, "bold");
                mItalic = BitmapFont.getBooleanAttribute(as, 4, "italic");
                mCharset = BitmapFont.getStringAttribute(as, 5, "charset");
                mUnicode = BitmapFont.getIntAttribute(as, 6, "unicode");
                mStretchHeight = BitmapFont.getIntAttribute(as, 7, "stretchH");
                mSmooth = BitmapFont.getBooleanAttribute(as, 8, "smooth");
                mAntiAliased = BitmapFont.getBooleanAttribute(as, 9, "aa");
                String s1 = BitmapFont.getAttribute(as, 10, "padding");
                String as1[] = TextUtils.SPLITPATTERN_COMMA.split(s1, 4);
                mPaddingLeft = Integer.parseInt(as1[0]);
                mPaddingTop = Integer.parseInt(as1[1]);
                mPaddingRight = Integer.parseInt(as1[2]);
                mPaddingBottom = Integer.parseInt(as1[3]);
                String s2 = BitmapFont.getAttribute(as, 11, "spacing");
                String as2[] = TextUtils.SPLITPATTERN_COMMA.split(s2, 2);
                mSpacingX = Integer.parseInt(as2[0]);
                mSpacingY = Integer.parseInt(as2[1]);
                return;
            }
        }
    }

    public static class BitmapFontOptions
    {

        public static final BitmapFontOptions DEFAULT = new BitmapFontOptions(0, 0);
        private final int mTextureOffsetX;
        private final int mTextureOffsetY;

        public int getTextureOffsetX()
        {
            return mTextureOffsetX;
        }

        public int getTextureOffsetY()
        {
            return mTextureOffsetY;
        }




        public BitmapFontOptions(int i, int j)
        {
            mTextureOffsetX = i;
            mTextureOffsetY = j;
        }
    }

    public class BitmapFontPage
    {

        private int mID;
        private final ITexture mTexture;
        final BitmapFont this$0;

        public int getID()
        {
            return mID;
        }

        public ITexture getTexture()
        {
            return mTexture;
        }

        public BitmapFontPage(AssetManager assetmanager, String s, String s1)
            throws IOException
        {
            this$0 = BitmapFont.this;
            super();
            String as[] = TextUtils.SPLITPATTERN_SPACE.split(s1, 3);
            if (-1 + as.length != 2)
            {
                throw new FontException((new StringBuilder("Expected: '2' page attributes, found: '")).append(-1 + as.length).append("'.").toString());
            }
            if (!as[0].equals("page"))
            {
                throw new FontException("Expected: 'page' attributes.");
            } else
            {
                mID = BitmapFont.getIntAttribute(as, 1, "id");
                String s2 = BitmapFont.getStringAttribute(as, 2, "file");
                String s3 = (new StringBuilder(String.valueOf(s))).append(s2).toString();
                mTexture = new BitmapTexture(mTextureManager, new AssetInputStreamOpener(assetmanager, s3), mBitmapTextureFormat, mTextureOptions);
                return;
            }
        }
    }


    private static final String TAG_CHAR = "char";
    private static final String TAG_CHARS = "chars";
    private static final int TAG_CHARS_ATTRIBUTECOUNT = 1;
    private static final String TAG_CHARS_ATTRIBUTE_COUNT = "count";
    private static final int TAG_CHARS_ATTRIBUTE_COUNT_INDEX = 1;
    private static final int TAG_CHAR_ATTRIBUTECOUNT = 10;
    private static final String TAG_CHAR_ATTRIBUTE_HEIGHT = "height";
    private static final int TAG_CHAR_ATTRIBUTE_HEIGHT_INDEX = 5;
    private static final String TAG_CHAR_ATTRIBUTE_ID = "id";
    private static final int TAG_CHAR_ATTRIBUTE_ID_INDEX = 1;
    private static final String TAG_CHAR_ATTRIBUTE_PAGE = "page";
    private static final int TAG_CHAR_ATTRIBUTE_PAGE_INDEX = 9;
    private static final String TAG_CHAR_ATTRIBUTE_WIDTH = "width";
    private static final int TAG_CHAR_ATTRIBUTE_WIDTH_INDEX = 4;
    private static final String TAG_CHAR_ATTRIBUTE_X = "x";
    private static final String TAG_CHAR_ATTRIBUTE_XADVANCE = "xadvance";
    private static final int TAG_CHAR_ATTRIBUTE_XADVANCE_INDEX = 8;
    private static final String TAG_CHAR_ATTRIBUTE_XOFFSET = "xoffset";
    private static final int TAG_CHAR_ATTRIBUTE_XOFFSET_INDEX = 6;
    private static final int TAG_CHAR_ATTRIBUTE_X_INDEX = 2;
    private static final String TAG_CHAR_ATTRIBUTE_Y = "y";
    private static final String TAG_CHAR_ATTRIBUTE_YOFFSET = "yoffset";
    private static final int TAG_CHAR_ATTRIBUTE_YOFFSET_INDEX = 7;
    private static final int TAG_CHAR_ATTRIBUTE_Y_INDEX = 3;
    private static final String TAG_COMMON = "common";
    private static final int TAG_COMMON_ATTRIBUTECOUNT = 6;
    private static final String TAG_COMMON_ATTRIBUTE_BASE = "base";
    private static final int TAG_COMMON_ATTRIBUTE_BASE_INDEX = 2;
    private static final String TAG_COMMON_ATTRIBUTE_LINEHEIGHT = "lineHeight";
    private static final int TAG_COMMON_ATTRIBUTE_LINEHEIGHT_INDEX = 1;
    private static final String TAG_COMMON_ATTRIBUTE_PACKED = "packed";
    private static final int TAG_COMMON_ATTRIBUTE_PACKED_INDEX = 6;
    private static final String TAG_COMMON_ATTRIBUTE_PAGES = "pages";
    private static final int TAG_COMMON_ATTRIBUTE_PAGES_INDEX = 5;
    private static final String TAG_COMMON_ATTRIBUTE_SCALEHEIGHT = "scaleH";
    private static final int TAG_COMMON_ATTRIBUTE_SCALEHEIGHT_INDEX = 4;
    private static final String TAG_COMMON_ATTRIBUTE_SCALEWIDTH = "scaleW";
    private static final int TAG_COMMON_ATTRIBUTE_SCALEWIDTH_INDEX = 3;
    private static final String TAG_INFO = "info";
    private static final int TAG_INFO_ATTRIBUTECOUNT = 11;
    private static final String TAG_INFO_ATTRIBUTE_ANTIALIASED = "aa";
    private static final int TAG_INFO_ATTRIBUTE_ANTIALIASED_INDEX = 9;
    private static final String TAG_INFO_ATTRIBUTE_BOLD = "bold";
    private static final int TAG_INFO_ATTRIBUTE_BOLD_INDEX = 3;
    private static final String TAG_INFO_ATTRIBUTE_CHARSET = "charset";
    private static final int TAG_INFO_ATTRIBUTE_CHARSET_INDEX = 5;
    private static final String TAG_INFO_ATTRIBUTE_FACE = "face";
    private static final int TAG_INFO_ATTRIBUTE_FACE_INDEX = 1;
    private static final String TAG_INFO_ATTRIBUTE_ITALIC = "italic";
    private static final int TAG_INFO_ATTRIBUTE_ITALIC_INDEX = 4;
    private static final String TAG_INFO_ATTRIBUTE_PADDING = "padding";
    private static final int TAG_INFO_ATTRIBUTE_PADDING_INDEX = 10;
    private static final String TAG_INFO_ATTRIBUTE_SIZE = "size";
    private static final int TAG_INFO_ATTRIBUTE_SIZE_INDEX = 2;
    private static final String TAG_INFO_ATTRIBUTE_SMOOTH = "smooth";
    private static final int TAG_INFO_ATTRIBUTE_SMOOTH_INDEX = 8;
    private static final String TAG_INFO_ATTRIBUTE_SPACING = "spacing";
    private static final int TAG_INFO_ATTRIBUTE_SPACING_INDEX = 11;
    private static final String TAG_INFO_ATTRIBUTE_STRETCHHEIGHT = "stretchH";
    private static final int TAG_INFO_ATTRIBUTE_STRETCHHEIGHT_INDEX = 7;
    private static final String TAG_INFO_ATTRIBUTE_UNICODE = "unicode";
    private static final int TAG_INFO_ATTRIBUTE_UNICODE_INDEX = 6;
    private static final String TAG_KERNING = "kerning";
    private static final String TAG_KERNINGS = "kernings";
    private static final int TAG_KERNINGS_ATTRIBUTECOUNT = 1;
    private static final String TAG_KERNINGS_ATTRIBUTE_COUNT = "count";
    private static final int TAG_KERNINGS_ATTRIBUTE_COUNT_INDEX = 1;
    private static final int TAG_KERNING_ATTRIBUTECOUNT = 3;
    private static final String TAG_KERNING_ATTRIBUTE_AMOUNT = "amount";
    private static final int TAG_KERNING_ATTRIBUTE_AMOUNT_INDEX = 3;
    private static final String TAG_KERNING_ATTRIBUTE_FIRST = "first";
    private static final int TAG_KERNING_ATTRIBUTE_FIRST_INDEX = 1;
    private static final String TAG_KERNING_ATTRIBUTE_SECOND = "second";
    private static final int TAG_KERNING_ATTRIBUTE_SECOND_INDEX = 2;
    private static final String TAG_PAGE = "page";
    private static final int TAG_PAGE_ATTRIBUTECOUNT = 2;
    private static final String TAG_PAGE_ATTRIBUTE_FILE = "file";
    private static final int TAG_PAGE_ATTRIBUTE_FILE_INDEX = 2;
    private static final String TAG_PAGE_ATTRIBUTE_ID = "id";
    private static final int TAG_PAGE_ATTRIBUTE_ID_INDEX = 1;
    private final int mBase;
    private final BitmapFontInfo mBitmapFontInfo;
    private final BitmapFontOptions mBitmapFontOptions;
    private final int mBitmapFontPageCount;
    private final BitmapFontPage mBitmapFontPages[];
    private final BitmapTextureFormat mBitmapTextureFormat;
    private final SparseArray mCharacterToLetterMap;
    private final int mLineHeight;
    private final boolean mPacked;
    private final int mScaleHeight;
    private final int mScaleWidth;
    private final TextureManager mTextureManager;
    private final TextureOptions mTextureOptions;

    public BitmapFont(TextureManager texturemanager, AssetManager assetmanager, String s)
    {
        this(texturemanager, assetmanager, s, BitmapTextureFormat.RGBA_8888, TextureOptions.DEFAULT, BitmapFontOptions.DEFAULT);
    }

    public BitmapFont(TextureManager texturemanager, AssetManager assetmanager, String s, TextureOptions textureoptions)
    {
        this(texturemanager, assetmanager, s, BitmapTextureFormat.RGBA_8888, textureoptions, BitmapFontOptions.DEFAULT);
    }

    public BitmapFont(TextureManager texturemanager, AssetManager assetmanager, String s, BitmapTextureFormat bitmaptextureformat)
    {
        this(texturemanager, assetmanager, s, bitmaptextureformat, TextureOptions.DEFAULT, BitmapFontOptions.DEFAULT);
    }

    public BitmapFont(TextureManager texturemanager, AssetManager assetmanager, String s, BitmapTextureFormat bitmaptextureformat, TextureOptions textureoptions)
    {
        this(texturemanager, assetmanager, s, bitmaptextureformat, textureoptions, BitmapFontOptions.DEFAULT);
    }

    public BitmapFont(TextureManager texturemanager, AssetManager assetmanager, String s, BitmapTextureFormat bitmaptextureformat, TextureOptions textureoptions, BitmapFontOptions bitmapfontoptions)
    {
        java.io.InputStream inputstream;
        mCharacterToLetterMap = new SparseArray();
        mTextureManager = texturemanager;
        mBitmapTextureFormat = bitmaptextureformat;
        mTextureOptions = textureoptions;
        mBitmapFontOptions = bitmapfontoptions;
        inputstream = null;
        BufferedReader bufferedreader;
        inputstream = assetmanager.open(s);
        InputStreamReader inputstreamreader = new InputStreamReader(inputstream);
        bufferedreader = new BufferedReader(inputstreamreader, 8192);
        if (s.indexOf('/') != -1)
        {
            break MISSING_BLOCK_LABEL_231;
        }
        String s1 = "";
_L1:
        String s2;
        BitmapFontInfo bitmapfontinfo = new BitmapFontInfo(bufferedreader.readLine());
        mBitmapFontInfo = bitmapfontinfo;
        s2 = bufferedreader.readLine();
        if (s2 == null)
        {
            break MISSING_BLOCK_LABEL_393;
        }
        String as[];
        if (!s2.startsWith("common"))
        {
            break MISSING_BLOCK_LABEL_393;
        }
        as = TextUtils.SPLITPATTERN_SPACE.split(s2, 7);
        if (-1 + as.length != 6)
        {
            throw new FontException((new StringBuilder("Expected: '6' common attributes, found: '")).append(-1 + as.length).append("'.").toString());
        }
        break MISSING_BLOCK_LABEL_249;
        IOException ioexception;
        ioexception;
        FontException fontexception = new FontException((new StringBuilder("Failed loading BitmapFont. AssetPath: ")).append(s).toString(), ioexception);
        throw fontexception;
        Exception exception;
        exception;
        StreamUtils.close(inputstream);
        throw exception;
        s1 = s.substring(0, 1 + s.lastIndexOf('/'));
          goto _L1
        if (!as[0].equals("common"))
        {
            throw new FontException("Expected: 'common' attributes.");
        }
        mLineHeight = getIntAttribute(as, 1, "lineHeight");
        mBase = getIntAttribute(as, 2, "base");
        mScaleWidth = getIntAttribute(as, 3, "scaleW");
        mScaleHeight = getIntAttribute(as, 4, "scaleH");
        mBitmapFontPageCount = getIntAttribute(as, 5, "pages");
        mPacked = getBooleanAttribute(as, 6, "packed");
        if (mBitmapFontPageCount != 1)
        {
            throw new FontException("Only a single page is supported.");
        }
        mBitmapFontPages = new BitmapFontPage[mBitmapFontPageCount];
        if (mPacked)
        {
            throw new FontException("Packed is not supported.");
        }
        break MISSING_BLOCK_LABEL_695;
        throw new FontException("Expected: 'common' attributes.");
_L8:
        int i;
        if (i < mBitmapFontPageCount) goto _L3; else goto _L2
_L2:
        String s3 = bufferedreader.readLine();
        if (s3 == null) goto _L5; else goto _L4
_L4:
        if (!s3.startsWith("chars")) goto _L5; else goto _L6
_L6:
        String as1[];
        as1 = TextUtils.SPLITPATTERN_SPACE.split(s3, 2);
        if (-1 + as1.length != 1)
        {
            throw new FontException((new StringBuilder("Expected: '1' chars attributes, found: '")).append(-1 + as1.length).append("'.").toString());
        }
          goto _L7
_L3:
        BitmapFontPage abitmapfontpage[] = mBitmapFontPages;
        BitmapFontPage bitmapfontpage = new BitmapFontPage(assetmanager, s1, bufferedreader.readLine());
        abitmapfontpage[i] = bitmapfontpage;
        i++;
          goto _L8
_L7:
        String s4;
        if (!as1[0].equals("chars"))
        {
            throw new FontException("Expected: 'chars' attributes.");
        }
        parseCharacters(getIntAttribute(as1, 1, "count"), bufferedreader);
        s4 = bufferedreader.readLine();
        if (s4 == null) goto _L10; else goto _L9
_L9:
        if (s4.startsWith("kernings"))
        {
            String as2[] = TextUtils.SPLITPATTERN_SPACE.split(s4, 2);
            if (-1 + as2.length != 1)
            {
                throw new FontException((new StringBuilder("Expected: '1' kernings attributes, found: '")).append(-1 + as2.length).append("'.").toString());
            }
            if (!as2[0].equals("kernings"))
            {
                throw new FontException("Expected: 'kernings' attributes.");
            }
            parseKernings(getIntAttribute(as2, 1, "count"), bufferedreader);
        }
          goto _L10
_L5:
        throw new FontException("Expected: 'chars' attributes.");
_L10:
        StreamUtils.close(inputstream);
        return;
        i = 0;
          goto _L8
    }

    private static String getAttribute(String as[], int i, String s)
    {
        String s1 = as[i];
        int j = s.length();
        if (!s1.startsWith(s))
        {
            throw new FontException((new StringBuilder("Expected '")).append(s).append("' at position '").append(i).append("', but found: '").append(s1).append("'.").toString());
        } else
        {
            return s1.substring(j + 1);
        }
    }

    private static boolean getBooleanAttribute(String as[], int i, String s)
    {
        String s1 = as[i];
        int j = s.length();
        if (!s1.startsWith(s) || s1.charAt(j) != '=')
        {
            throw new FontException((new StringBuilder("Expected '")).append(s).append("' at position '").append(i).append("', but found: '").append(s1).append("'.").toString());
        }
        return Integer.parseInt(s1.substring(j + 1)) != 0;
    }

    private static char getCharAttribute(String as[], int i, String s)
    {
        return (char)getIntAttribute(as, i, s);
    }

    private static int getIntAttribute(String as[], int i, String s)
    {
        String s1 = as[i];
        int j = s.length();
        if (!s1.startsWith(s) || s1.charAt(j) != '=')
        {
            throw new FontException((new StringBuilder("Expected '")).append(s).append("' at position '").append(i).append("', but found: '").append(s1).append("'.").toString());
        } else
        {
            return Integer.parseInt(s1.substring(j + 1));
        }
    }

    private static String getStringAttribute(String as[], int i, String s)
    {
        String s1 = as[i];
        int j = s.length();
        if (!s1.startsWith(s) || s1.charAt(j) != '=')
        {
            throw new FontException((new StringBuilder("Expected '")).append(s).append("' at position '").append(i).append("', but found: '").append(s1).append("'.").toString());
        } else
        {
            return s1.substring(j + 2, -1 + s1.length());
        }
    }

    private void parseCharacters(int i, BufferedReader bufferedreader)
        throws IOException
    {
        int j = i - 1;
        do
        {
            if (j < 0)
            {
                return;
            }
            String s = bufferedreader.readLine();
            String as[] = TextUtils.SPLITPATTERN_SPACES.split(s, 11);
            if (-1 + as.length != 10)
            {
                throw new FontException((new StringBuilder("Expected: '10' char attributes, found: '")).append(-1 + as.length).append("'.").toString());
            }
            if (!as[0].equals("char"))
            {
                throw new FontException("Expected: 'char' attributes.");
            }
            char c = getCharAttribute(as, 1, "id");
            int k = mBitmapFontOptions.mTextureOffsetX + getIntAttribute(as, 2, "x");
            int l = mBitmapFontOptions.mTextureOffsetY + getIntAttribute(as, 3, "y");
            int i1 = getIntAttribute(as, 4, "width");
            int j1 = getIntAttribute(as, 5, "height");
            int k1 = getIntAttribute(as, 6, "xoffset");
            int l1 = getIntAttribute(as, 7, "yoffset");
            int i2 = getIntAttribute(as, 8, "xadvance");
            int j2 = getIntAttribute(as, 9, "page");
            ITexture itexture = mBitmapFontPages[j2].getTexture();
            float f = itexture.getWidth();
            float f1 = itexture.getHeight();
            float f2 = (float)k / f;
            float f3 = (float)l / f1;
            float f4 = (float)(k + i1) / f;
            float f5 = (float)(l + j1) / f1;
            mCharacterToLetterMap.put(c, new Letter(c, k, l, i1, j1, k1, l1, i2, f2, f3, f4, f5));
            j--;
        } while (true);
    }

    private void parseKernings(int i, BufferedReader bufferedreader)
        throws IOException
    {
        int j = i - 1;
        do
        {
            if (j < 0)
            {
                return;
            }
            String s = bufferedreader.readLine();
            String as[] = TextUtils.SPLITPATTERN_SPACES.split(s, 4);
            if (-1 + as.length != 3)
            {
                throw new FontException((new StringBuilder("Expected: '3' kerning attributes, found: '")).append(-1 + as.length).append("'.").toString());
            }
            if (!as[0].equals("kerning"))
            {
                throw new FontException("Expected: 'kerning' attributes.");
            }
            int k = getIntAttribute(as, 1, "first");
            int l = getIntAttribute(as, 2, "second");
            int i1 = getIntAttribute(as, 3, "amount");
            ((Letter)mCharacterToLetterMap.get(k)).addKerning(l, i1);
            j--;
        } while (true);
    }

    public int getBase()
    {
        return mBase;
    }

    public BitmapFontInfo getBitmapFontInfo()
    {
        return mBitmapFontInfo;
    }

    public BitmapFontPage getBitmapFontPage(int i)
    {
        return mBitmapFontPages[i];
    }

    public int getBitmapFontPageCount()
    {
        return mBitmapFontPageCount;
    }

    public BitmapFontPage[] getBitmapFontPages()
    {
        return mBitmapFontPages;
    }

    public Letter getLetter(char c)
        throws LetterNotFoundException
    {
        Letter letter = (Letter)mCharacterToLetterMap.get(c);
        if (letter == null)
        {
            throw new LetterNotFoundException((new StringBuilder("Letter '")).append(c).append("' not found.").toString());
        } else
        {
            return letter;
        }
    }

    public float getLineHeight()
    {
        return (float)mLineHeight;
    }

    public int getScaleHeight()
    {
        return mScaleHeight;
    }

    public int getScaleWidth()
    {
        return mScaleWidth;
    }

    public ITexture getTexture()
    {
        return mBitmapFontPages[0].getTexture();
    }

    public boolean isPacked()
    {
        return mPacked;
    }

    public void load()
    {
        loadTextures();
    }

    public void loadTextures()
    {
        BitmapFontPage abitmapfontpage[] = mBitmapFontPages;
        int i = abitmapfontpage.length;
        int j = 0;
        do
        {
            if (j >= i)
            {
                return;
            }
            abitmapfontpage[j].getTexture().load();
            j++;
        } while (true);
    }

    public void unload()
    {
        unloadTextures();
    }

    public void unloadTextures()
    {
        BitmapFontPage abitmapfontpage[] = mBitmapFontPages;
        int i = abitmapfontpage.length;
        int j = 0;
        do
        {
            if (j >= i)
            {
                return;
            }
            abitmapfontpage[j].getTexture().unload();
            j++;
        } while (true);
    }







}
