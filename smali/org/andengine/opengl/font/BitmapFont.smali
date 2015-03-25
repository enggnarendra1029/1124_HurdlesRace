.class public Lorg/andengine/opengl/font/BitmapFont;
.super Ljava/lang/Object;
.source "BitmapFont.java"

# interfaces
.implements Lorg/andengine/opengl/font/IFont;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/andengine/opengl/font/BitmapFont$BitmapFontInfo;,
        Lorg/andengine/opengl/font/BitmapFont$BitmapFontOptions;,
        Lorg/andengine/opengl/font/BitmapFont$BitmapFontPage;
    }
.end annotation


# static fields
.field private static final TAG_CHAR:Ljava/lang/String; = "char"

.field private static final TAG_CHARS:Ljava/lang/String; = "chars"

.field private static final TAG_CHARS_ATTRIBUTECOUNT:I = 0x1

.field private static final TAG_CHARS_ATTRIBUTE_COUNT:Ljava/lang/String; = "count"

.field private static final TAG_CHARS_ATTRIBUTE_COUNT_INDEX:I = 0x1

.field private static final TAG_CHAR_ATTRIBUTECOUNT:I = 0xa

.field private static final TAG_CHAR_ATTRIBUTE_HEIGHT:Ljava/lang/String; = "height"

.field private static final TAG_CHAR_ATTRIBUTE_HEIGHT_INDEX:I = 0x5

.field private static final TAG_CHAR_ATTRIBUTE_ID:Ljava/lang/String; = "id"

.field private static final TAG_CHAR_ATTRIBUTE_ID_INDEX:I = 0x1

.field private static final TAG_CHAR_ATTRIBUTE_PAGE:Ljava/lang/String; = "page"

.field private static final TAG_CHAR_ATTRIBUTE_PAGE_INDEX:I = 0x9

.field private static final TAG_CHAR_ATTRIBUTE_WIDTH:Ljava/lang/String; = "width"

.field private static final TAG_CHAR_ATTRIBUTE_WIDTH_INDEX:I = 0x4

.field private static final TAG_CHAR_ATTRIBUTE_X:Ljava/lang/String; = "x"

.field private static final TAG_CHAR_ATTRIBUTE_XADVANCE:Ljava/lang/String; = "xadvance"

.field private static final TAG_CHAR_ATTRIBUTE_XADVANCE_INDEX:I = 0x8

.field private static final TAG_CHAR_ATTRIBUTE_XOFFSET:Ljava/lang/String; = "xoffset"

.field private static final TAG_CHAR_ATTRIBUTE_XOFFSET_INDEX:I = 0x6

.field private static final TAG_CHAR_ATTRIBUTE_X_INDEX:I = 0x2

.field private static final TAG_CHAR_ATTRIBUTE_Y:Ljava/lang/String; = "y"

.field private static final TAG_CHAR_ATTRIBUTE_YOFFSET:Ljava/lang/String; = "yoffset"

.field private static final TAG_CHAR_ATTRIBUTE_YOFFSET_INDEX:I = 0x7

.field private static final TAG_CHAR_ATTRIBUTE_Y_INDEX:I = 0x3

.field private static final TAG_COMMON:Ljava/lang/String; = "common"

.field private static final TAG_COMMON_ATTRIBUTECOUNT:I = 0x6

.field private static final TAG_COMMON_ATTRIBUTE_BASE:Ljava/lang/String; = "base"

.field private static final TAG_COMMON_ATTRIBUTE_BASE_INDEX:I = 0x2

.field private static final TAG_COMMON_ATTRIBUTE_LINEHEIGHT:Ljava/lang/String; = "lineHeight"

.field private static final TAG_COMMON_ATTRIBUTE_LINEHEIGHT_INDEX:I = 0x1

.field private static final TAG_COMMON_ATTRIBUTE_PACKED:Ljava/lang/String; = "packed"

.field private static final TAG_COMMON_ATTRIBUTE_PACKED_INDEX:I = 0x6

.field private static final TAG_COMMON_ATTRIBUTE_PAGES:Ljava/lang/String; = "pages"

.field private static final TAG_COMMON_ATTRIBUTE_PAGES_INDEX:I = 0x5

.field private static final TAG_COMMON_ATTRIBUTE_SCALEHEIGHT:Ljava/lang/String; = "scaleH"

.field private static final TAG_COMMON_ATTRIBUTE_SCALEHEIGHT_INDEX:I = 0x4

.field private static final TAG_COMMON_ATTRIBUTE_SCALEWIDTH:Ljava/lang/String; = "scaleW"

.field private static final TAG_COMMON_ATTRIBUTE_SCALEWIDTH_INDEX:I = 0x3

.field private static final TAG_INFO:Ljava/lang/String; = "info"

.field private static final TAG_INFO_ATTRIBUTECOUNT:I = 0xb

.field private static final TAG_INFO_ATTRIBUTE_ANTIALIASED:Ljava/lang/String; = "aa"

.field private static final TAG_INFO_ATTRIBUTE_ANTIALIASED_INDEX:I = 0x9

.field private static final TAG_INFO_ATTRIBUTE_BOLD:Ljava/lang/String; = "bold"

.field private static final TAG_INFO_ATTRIBUTE_BOLD_INDEX:I = 0x3

.field private static final TAG_INFO_ATTRIBUTE_CHARSET:Ljava/lang/String; = "charset"

.field private static final TAG_INFO_ATTRIBUTE_CHARSET_INDEX:I = 0x5

.field private static final TAG_INFO_ATTRIBUTE_FACE:Ljava/lang/String; = "face"

.field private static final TAG_INFO_ATTRIBUTE_FACE_INDEX:I = 0x1

.field private static final TAG_INFO_ATTRIBUTE_ITALIC:Ljava/lang/String; = "italic"

.field private static final TAG_INFO_ATTRIBUTE_ITALIC_INDEX:I = 0x4

.field private static final TAG_INFO_ATTRIBUTE_PADDING:Ljava/lang/String; = "padding"

.field private static final TAG_INFO_ATTRIBUTE_PADDING_INDEX:I = 0xa

.field private static final TAG_INFO_ATTRIBUTE_SIZE:Ljava/lang/String; = "size"

.field private static final TAG_INFO_ATTRIBUTE_SIZE_INDEX:I = 0x2

.field private static final TAG_INFO_ATTRIBUTE_SMOOTH:Ljava/lang/String; = "smooth"

.field private static final TAG_INFO_ATTRIBUTE_SMOOTH_INDEX:I = 0x8

.field private static final TAG_INFO_ATTRIBUTE_SPACING:Ljava/lang/String; = "spacing"

.field private static final TAG_INFO_ATTRIBUTE_SPACING_INDEX:I = 0xb

.field private static final TAG_INFO_ATTRIBUTE_STRETCHHEIGHT:Ljava/lang/String; = "stretchH"

.field private static final TAG_INFO_ATTRIBUTE_STRETCHHEIGHT_INDEX:I = 0x7

.field private static final TAG_INFO_ATTRIBUTE_UNICODE:Ljava/lang/String; = "unicode"

.field private static final TAG_INFO_ATTRIBUTE_UNICODE_INDEX:I = 0x6

.field private static final TAG_KERNING:Ljava/lang/String; = "kerning"

.field private static final TAG_KERNINGS:Ljava/lang/String; = "kernings"

.field private static final TAG_KERNINGS_ATTRIBUTECOUNT:I = 0x1

.field private static final TAG_KERNINGS_ATTRIBUTE_COUNT:Ljava/lang/String; = "count"

.field private static final TAG_KERNINGS_ATTRIBUTE_COUNT_INDEX:I = 0x1

.field private static final TAG_KERNING_ATTRIBUTECOUNT:I = 0x3

.field private static final TAG_KERNING_ATTRIBUTE_AMOUNT:Ljava/lang/String; = "amount"

.field private static final TAG_KERNING_ATTRIBUTE_AMOUNT_INDEX:I = 0x3

.field private static final TAG_KERNING_ATTRIBUTE_FIRST:Ljava/lang/String; = "first"

.field private static final TAG_KERNING_ATTRIBUTE_FIRST_INDEX:I = 0x1

.field private static final TAG_KERNING_ATTRIBUTE_SECOND:Ljava/lang/String; = "second"

.field private static final TAG_KERNING_ATTRIBUTE_SECOND_INDEX:I = 0x2

.field private static final TAG_PAGE:Ljava/lang/String; = "page"

.field private static final TAG_PAGE_ATTRIBUTECOUNT:I = 0x2

.field private static final TAG_PAGE_ATTRIBUTE_FILE:Ljava/lang/String; = "file"

.field private static final TAG_PAGE_ATTRIBUTE_FILE_INDEX:I = 0x2

.field private static final TAG_PAGE_ATTRIBUTE_ID:Ljava/lang/String; = "id"

.field private static final TAG_PAGE_ATTRIBUTE_ID_INDEX:I = 0x1


# instance fields
.field private final mBase:I

.field private final mBitmapFontInfo:Lorg/andengine/opengl/font/BitmapFont$BitmapFontInfo;

.field private final mBitmapFontOptions:Lorg/andengine/opengl/font/BitmapFont$BitmapFontOptions;

.field private final mBitmapFontPageCount:I

.field private final mBitmapFontPages:[Lorg/andengine/opengl/font/BitmapFont$BitmapFontPage;

.field private final mBitmapTextureFormat:Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;

.field private final mCharacterToLetterMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/andengine/opengl/font/Letter;",
            ">;"
        }
    .end annotation
.end field

.field private final mLineHeight:I

.field private final mPacked:Z

.field private final mScaleHeight:I

.field private final mScaleWidth:I

.field private final mTextureManager:Lorg/andengine/opengl/texture/TextureManager;

.field private final mTextureOptions:Lorg/andengine/opengl/texture/TextureOptions;


# direct methods
.method public constructor <init>(Lorg/andengine/opengl/texture/TextureManager;Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 7
    .parameter "pTextureManager"
    .parameter "pAssetManager"
    .parameter "pAssetPath"

    .prologue
    .line 176
    sget-object v4, Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;->RGBA_8888:Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;

    sget-object v5, Lorg/andengine/opengl/texture/TextureOptions;->DEFAULT:Lorg/andengine/opengl/texture/TextureOptions;

    sget-object v6, Lorg/andengine/opengl/font/BitmapFont$BitmapFontOptions;->DEFAULT:Lorg/andengine/opengl/font/BitmapFont$BitmapFontOptions;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lorg/andengine/opengl/font/BitmapFont;-><init>(Lorg/andengine/opengl/texture/TextureManager;Landroid/content/res/AssetManager;Ljava/lang/String;Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;Lorg/andengine/opengl/texture/TextureOptions;Lorg/andengine/opengl/font/BitmapFont$BitmapFontOptions;)V

    .line 177
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/TextureManager;Landroid/content/res/AssetManager;Ljava/lang/String;Lorg/andengine/opengl/texture/TextureOptions;)V
    .locals 7
    .parameter "pTextureManager"
    .parameter "pAssetManager"
    .parameter "pAssetPath"
    .parameter "pTextureOptions"

    .prologue
    .line 184
    sget-object v4, Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;->RGBA_8888:Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;

    sget-object v6, Lorg/andengine/opengl/font/BitmapFont$BitmapFontOptions;->DEFAULT:Lorg/andengine/opengl/font/BitmapFont$BitmapFontOptions;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/andengine/opengl/font/BitmapFont;-><init>(Lorg/andengine/opengl/texture/TextureManager;Landroid/content/res/AssetManager;Ljava/lang/String;Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;Lorg/andengine/opengl/texture/TextureOptions;Lorg/andengine/opengl/font/BitmapFont$BitmapFontOptions;)V

    .line 185
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/TextureManager;Landroid/content/res/AssetManager;Ljava/lang/String;Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;)V
    .locals 7
    .parameter "pTextureManager"
    .parameter "pAssetManager"
    .parameter "pAssetPath"
    .parameter "pBitmapTextureFormat"

    .prologue
    .line 180
    sget-object v5, Lorg/andengine/opengl/texture/TextureOptions;->DEFAULT:Lorg/andengine/opengl/texture/TextureOptions;

    sget-object v6, Lorg/andengine/opengl/font/BitmapFont$BitmapFontOptions;->DEFAULT:Lorg/andengine/opengl/font/BitmapFont$BitmapFontOptions;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/andengine/opengl/font/BitmapFont;-><init>(Lorg/andengine/opengl/texture/TextureManager;Landroid/content/res/AssetManager;Ljava/lang/String;Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;Lorg/andengine/opengl/texture/TextureOptions;Lorg/andengine/opengl/font/BitmapFont$BitmapFontOptions;)V

    .line 181
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/TextureManager;Landroid/content/res/AssetManager;Ljava/lang/String;Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;Lorg/andengine/opengl/texture/TextureOptions;)V
    .locals 7
    .parameter "pTextureManager"
    .parameter "pAssetManager"
    .parameter "pAssetPath"
    .parameter "pBitmapTextureFormat"
    .parameter "pTextureOptions"

    .prologue
    .line 188
    sget-object v6, Lorg/andengine/opengl/font/BitmapFont$BitmapFontOptions;->DEFAULT:Lorg/andengine/opengl/font/BitmapFont$BitmapFontOptions;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/andengine/opengl/font/BitmapFont;-><init>(Lorg/andengine/opengl/texture/TextureManager;Landroid/content/res/AssetManager;Ljava/lang/String;Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;Lorg/andengine/opengl/texture/TextureOptions;Lorg/andengine/opengl/font/BitmapFont$BitmapFontOptions;)V

    .line 189
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/TextureManager;Landroid/content/res/AssetManager;Ljava/lang/String;Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;Lorg/andengine/opengl/texture/TextureOptions;Lorg/andengine/opengl/font/BitmapFont$BitmapFontOptions;)V
    .locals 20
    .parameter "pTextureManager"
    .parameter "pAssetManager"
    .parameter "pAssetPath"
    .parameter "pBitmapTextureFormat"
    .parameter "pTextureOptions"
    .parameter "pBitmapFontOptions"

    .prologue
    .line 191
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 158
    new-instance v17, Landroid/util/SparseArray;

    invoke-direct/range {v17 .. v17}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/andengine/opengl/font/BitmapFont;->mCharacterToLetterMap:Landroid/util/SparseArray;

    .line 192
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/andengine/opengl/font/BitmapFont;->mTextureManager:Lorg/andengine/opengl/texture/TextureManager;

    .line 193
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/andengine/opengl/font/BitmapFont;->mBitmapTextureFormat:Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;

    .line 194
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/andengine/opengl/font/BitmapFont;->mTextureOptions:Lorg/andengine/opengl/texture/TextureOptions;

    .line 195
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/andengine/opengl/font/BitmapFont;->mBitmapFontOptions:Lorg/andengine/opengl/font/BitmapFont$BitmapFontOptions;

    .line 197
    const/4 v13, 0x0

    .line 199
    .local v13, in:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual/range {p2 .. p3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v13

    .line 200
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/InputStreamReader;

    move-object/from16 v0, v17

    invoke-direct {v0, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v18, 0x2000

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v5, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 203
    .local v5, bufferedReader:Ljava/io/BufferedReader;
    const/16 v17, 0x2f

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 204
    const-string v4, ""

    .line 211
    .local v4, assetBasePath:Ljava/lang/String;
    :goto_0
    new-instance v17, Lorg/andengine/opengl/font/BitmapFont$BitmapFontInfo;

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lorg/andengine/opengl/font/BitmapFont$BitmapFontInfo;-><init>(Lorg/andengine/opengl/font/BitmapFont;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/andengine/opengl/font/BitmapFont;->mBitmapFontInfo:Lorg/andengine/opengl/font/BitmapFont$BitmapFontInfo;

    .line 216
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 217
    .local v9, common:Ljava/lang/String;
    if-eqz v9, :cond_4

    const-string v17, "common"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 218
    sget-object v17, Lorg/andengine/util/TextUtils;->SPLITPATTERN_SPACE:Ljava/util/regex/Pattern;

    const/16 v18, 0x7

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v10

    .line 219
    .local v10, commonAttributes:[Ljava/lang/String;
    array-length v0, v10

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 220
    new-instance v17, Lorg/andengine/opengl/font/exception/FontException;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Expected: \'6\' common attributes, found: \'"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v10

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\'."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lorg/andengine/opengl/font/exception/FontException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    .end local v4           #assetBasePath:Ljava/lang/String;
    .end local v5           #bufferedReader:Ljava/io/BufferedReader;
    .end local v9           #common:Ljava/lang/String;
    .end local v10           #commonAttributes:[Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 288
    .local v11, e:Ljava/io/IOException;
    :try_start_1
    new-instance v17, Lorg/andengine/opengl/font/exception/FontException;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Failed loading BitmapFont. AssetPath: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v11}, Lorg/andengine/opengl/font/exception/FontException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 289
    .end local v11           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v17

    .line 290
    invoke-static {v13}, Lorg/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 291
    throw v17

    .line 206
    .restart local v5       #bufferedReader:Ljava/io/BufferedReader;
    :cond_0
    const/16 v17, 0x0

    const/16 v18, 0x2f

    :try_start_2
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #assetBasePath:Ljava/lang/String;
    goto/16 :goto_0

    .line 222
    .restart local v9       #common:Ljava/lang/String;
    .restart local v10       #commonAttributes:[Ljava/lang/String;
    :cond_1
    const/16 v17, 0x0

    aget-object v17, v10, v17

    const-string v18, "common"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 223
    new-instance v17, Lorg/andengine/opengl/font/exception/FontException;

    const-string v18, "Expected: \'common\' attributes."

    invoke-direct/range {v17 .. v18}, Lorg/andengine/opengl/font/exception/FontException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 225
    :cond_2
    const/16 v17, 0x1

    const-string v18, "lineHeight"

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v10, v0, v1}, Lorg/andengine/opengl/font/BitmapFont;->getIntAttribute([Ljava/lang/String;ILjava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/andengine/opengl/font/BitmapFont;->mLineHeight:I

    .line 226
    const/16 v17, 0x2

    const-string v18, "base"

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v10, v0, v1}, Lorg/andengine/opengl/font/BitmapFont;->getIntAttribute([Ljava/lang/String;ILjava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/andengine/opengl/font/BitmapFont;->mBase:I

    .line 227
    const/16 v17, 0x3

    const-string v18, "scaleW"

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v10, v0, v1}, Lorg/andengine/opengl/font/BitmapFont;->getIntAttribute([Ljava/lang/String;ILjava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/andengine/opengl/font/BitmapFont;->mScaleWidth:I

    .line 228
    const/16 v17, 0x4

    const-string v18, "scaleH"

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v10, v0, v1}, Lorg/andengine/opengl/font/BitmapFont;->getIntAttribute([Ljava/lang/String;ILjava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/andengine/opengl/font/BitmapFont;->mScaleHeight:I

    .line 229
    const/16 v17, 0x5

    const-string v18, "pages"

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v10, v0, v1}, Lorg/andengine/opengl/font/BitmapFont;->getIntAttribute([Ljava/lang/String;ILjava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/andengine/opengl/font/BitmapFont;->mBitmapFontPageCount:I

    .line 230
    const/16 v17, 0x6

    const-string v18, "packed"

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v10, v0, v1}, Lorg/andengine/opengl/font/BitmapFont;->getBooleanAttribute([Ljava/lang/String;ILjava/lang/String;)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/andengine/opengl/font/BitmapFont;->mPacked:Z

    .line 232
    move-object/from16 v0, p0

    iget v0, v0, Lorg/andengine/opengl/font/BitmapFont;->mBitmapFontPageCount:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    .line 233
    new-instance v17, Lorg/andengine/opengl/font/exception/FontException;

    const-string v18, "Only a single page is supported."

    invoke-direct/range {v17 .. v18}, Lorg/andengine/opengl/font/exception/FontException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 235
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lorg/andengine/opengl/font/BitmapFont;->mBitmapFontPageCount:I

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v0, v0, [Lorg/andengine/opengl/font/BitmapFont$BitmapFontPage;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/andengine/opengl/font/BitmapFont;->mBitmapFontPages:[Lorg/andengine/opengl/font/BitmapFont$BitmapFontPage;

    .line 237
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/andengine/opengl/font/BitmapFont;->mPacked:Z

    move/from16 v17, v0

    if-eqz v17, :cond_5

    .line 238
    new-instance v17, Lorg/andengine/opengl/font/exception/FontException;

    const-string v18, "Packed is not supported."

    invoke-direct/range {v17 .. v18}, Lorg/andengine/opengl/font/exception/FontException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 241
    .end local v10           #commonAttributes:[Ljava/lang/String;
    :cond_4
    new-instance v17, Lorg/andengine/opengl/font/exception/FontException;

    const-string v18, "Expected: \'common\' attributes."

    invoke-direct/range {v17 .. v18}, Lorg/andengine/opengl/font/exception/FontException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 246
    .restart local v10       #commonAttributes:[Ljava/lang/String;
    :cond_5
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/andengine/opengl/font/BitmapFont;->mBitmapFontPageCount:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v12, v0, :cond_6

    .line 252
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 253
    .local v7, chars:Ljava/lang/String;
    if-eqz v7, :cond_9

    const-string v17, "chars"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 254
    sget-object v17, Lorg/andengine/util/TextUtils;->SPLITPATTERN_SPACE:Ljava/util/regex/Pattern;

    const/16 v18, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v7, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v8

    .line 255
    .local v8, charsAttributes:[Ljava/lang/String;
    array-length v0, v8

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_7

    .line 256
    new-instance v17, Lorg/andengine/opengl/font/exception/FontException;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Expected: \'1\' chars attributes, found: \'"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v8

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\'."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lorg/andengine/opengl/font/exception/FontException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 247
    .end local v7           #chars:Ljava/lang/String;
    .end local v8           #charsAttributes:[Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/andengine/opengl/font/BitmapFont;->mBitmapFontPages:[Lorg/andengine/opengl/font/BitmapFont$BitmapFontPage;

    move-object/from16 v17, v0

    new-instance v18, Lorg/andengine/opengl/font/BitmapFont$BitmapFontPage;

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/andengine/opengl/font/BitmapFont$BitmapFontPage;-><init>(Lorg/andengine/opengl/font/BitmapFont;Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v18, v17, v12

    .line 246
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 258
    .restart local v7       #chars:Ljava/lang/String;
    .restart local v8       #charsAttributes:[Ljava/lang/String;
    :cond_7
    const/16 v17, 0x0

    aget-object v17, v8, v17

    const-string v18, "chars"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_8

    .line 259
    new-instance v17, Lorg/andengine/opengl/font/exception/FontException;

    const-string v18, "Expected: \'chars\' attributes."

    invoke-direct/range {v17 .. v18}, Lorg/andengine/opengl/font/exception/FontException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 262
    :cond_8
    const/16 v17, 0x1

    const-string v18, "count"

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v8, v0, v1}, Lorg/andengine/opengl/font/BitmapFont;->getIntAttribute([Ljava/lang/String;ILjava/lang/String;)I

    move-result v6

    .line 264
    .local v6, characterCount:I
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v5}, Lorg/andengine/opengl/font/BitmapFont;->parseCharacters(ILjava/io/BufferedReader;)V

    .line 272
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    .line 273
    .local v14, kernings:Ljava/lang/String;
    if-eqz v14, :cond_c

    const-string v17, "kernings"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 274
    sget-object v17, Lorg/andengine/util/TextUtils;->SPLITPATTERN_SPACE:Ljava/util/regex/Pattern;

    const/16 v18, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v14, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v15

    .line 275
    .local v15, kerningsAttributes:[Ljava/lang/String;
    array-length v0, v15

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_a

    .line 276
    new-instance v17, Lorg/andengine/opengl/font/exception/FontException;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Expected: \'1\' kernings attributes, found: \'"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v15

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\'."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lorg/andengine/opengl/font/exception/FontException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 266
    .end local v6           #characterCount:I
    .end local v8           #charsAttributes:[Ljava/lang/String;
    .end local v14           #kernings:Ljava/lang/String;
    .end local v15           #kerningsAttributes:[Ljava/lang/String;
    :cond_9
    new-instance v17, Lorg/andengine/opengl/font/exception/FontException;

    const-string v18, "Expected: \'chars\' attributes."

    invoke-direct/range {v17 .. v18}, Lorg/andengine/opengl/font/exception/FontException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 278
    .restart local v6       #characterCount:I
    .restart local v8       #charsAttributes:[Ljava/lang/String;
    .restart local v14       #kernings:Ljava/lang/String;
    .restart local v15       #kerningsAttributes:[Ljava/lang/String;
    :cond_a
    const/16 v17, 0x0

    aget-object v17, v15, v17

    const-string v18, "kernings"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_b

    .line 279
    new-instance v17, Lorg/andengine/opengl/font/exception/FontException;

    const-string v18, "Expected: \'kernings\' attributes."

    invoke-direct/range {v17 .. v18}, Lorg/andengine/opengl/font/exception/FontException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 282
    :cond_b
    const/16 v17, 0x1

    const-string v18, "count"

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v15, v0, v1}, Lorg/andengine/opengl/font/BitmapFont;->getIntAttribute([Ljava/lang/String;ILjava/lang/String;)I

    move-result v16

    .line 284
    .local v16, kerningsCount:I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v5}, Lorg/andengine/opengl/font/BitmapFont;->parseKernings(ILjava/io/BufferedReader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 290
    .end local v15           #kerningsAttributes:[Ljava/lang/String;
    .end local v16           #kerningsCount:I
    :cond_c
    invoke-static {v13}, Lorg/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 292
    return-void
.end method

.method static synthetic access$0([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 463
    invoke-static {p0, p1, p2}, Lorg/andengine/opengl/font/BitmapFont;->getStringAttribute([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1([Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 452
    invoke-static {p0, p1, p2}, Lorg/andengine/opengl/font/BitmapFont;->getIntAttribute([Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2([Ljava/lang/String;ILjava/lang/String;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 437
    invoke-static {p0, p1, p2}, Lorg/andengine/opengl/font/BitmapFont;->getBooleanAttribute([Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 474
    invoke-static {p0, p1, p2}, Lorg/andengine/opengl/font/BitmapFont;->getAttribute([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lorg/andengine/opengl/font/BitmapFont;)Lorg/andengine/opengl/texture/TextureManager;
    .locals 1
    .parameter

    .prologue
    .line 153
    iget-object v0, p0, Lorg/andengine/opengl/font/BitmapFont;->mTextureManager:Lorg/andengine/opengl/texture/TextureManager;

    return-object v0
.end method

.method static synthetic access$5(Lorg/andengine/opengl/font/BitmapFont;)Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;
    .locals 1
    .parameter

    .prologue
    .line 155
    iget-object v0, p0, Lorg/andengine/opengl/font/BitmapFont;->mBitmapTextureFormat:Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;

    return-object v0
.end method

.method static synthetic access$6(Lorg/andengine/opengl/font/BitmapFont;)Lorg/andengine/opengl/texture/TextureOptions;
    .locals 1
    .parameter

    .prologue
    .line 156
    iget-object v0, p0, Lorg/andengine/opengl/font/BitmapFont;->mTextureOptions:Lorg/andengine/opengl/texture/TextureOptions;

    return-object v0
.end method

.method private static getAttribute([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "pData"
    .parameter "pPosition"
    .parameter "pAttribute"

    .prologue
    .line 475
    aget-object v1, p0, p1

    .line 476
    .local v1, data:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 478
    .local v0, attributeLength:I
    invoke-virtual {v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 479
    new-instance v2, Lorg/andengine/opengl/font/exception/FontException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Expected \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' at position \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', but found: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/andengine/opengl/font/exception/FontException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 482
    :cond_0
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getBooleanAttribute([Ljava/lang/String;ILjava/lang/String;)Z
    .locals 5
    .parameter "pData"
    .parameter "pPosition"
    .parameter "pAttribute"

    .prologue
    .line 438
    aget-object v1, p0, p1

    .line 439
    .local v1, data:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 441
    .local v0, attributeLength:I
    invoke-virtual {v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3d

    if-eq v2, v3, :cond_1

    .line 442
    :cond_0
    new-instance v2, Lorg/andengine/opengl/font/exception/FontException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Expected \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' at position \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', but found: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/andengine/opengl/font/exception/FontException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 445
    :cond_1
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getCharAttribute([Ljava/lang/String;ILjava/lang/String;)C
    .locals 1
    .parameter "pData"
    .parameter "pPosition"
    .parameter "pAttribute"

    .prologue
    .line 449
    invoke-static {p0, p1, p2}, Lorg/andengine/opengl/font/BitmapFont;->getIntAttribute([Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method private static getIntAttribute([Ljava/lang/String;ILjava/lang/String;)I
    .locals 5
    .parameter "pData"
    .parameter "pPosition"
    .parameter "pAttribute"

    .prologue
    .line 453
    aget-object v1, p0, p1

    .line 454
    .local v1, data:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 456
    .local v0, attributeLength:I
    invoke-virtual {v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3d

    if-eq v2, v3, :cond_1

    .line 457
    :cond_0
    new-instance v2, Lorg/andengine/opengl/font/exception/FontException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Expected \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' at position \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', but found: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/andengine/opengl/font/exception/FontException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 460
    :cond_1
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method private static getStringAttribute([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "pData"
    .parameter "pPosition"
    .parameter "pAttribute"

    .prologue
    .line 464
    aget-object v1, p0, p1

    .line 465
    .local v1, data:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 467
    .local v0, attributeLength:I
    invoke-virtual {v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3d

    if-eq v2, v3, :cond_1

    .line 468
    :cond_0
    new-instance v2, Lorg/andengine/opengl/font/exception/FontException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Expected \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' at position \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', but found: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/andengine/opengl/font/exception/FontException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 471
    :cond_1
    add-int/lit8 v2, v0, 0x2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private parseCharacters(ILjava/io/BufferedReader;)V
    .locals 25
    .parameter "pCharacterCount"
    .parameter "pBufferedReader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 384
    add-int/lit8 v17, p1, -0x1

    .local v17, i:I
    :goto_0
    if-gez v17, :cond_0

    .line 416
    return-void

    .line 385
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16

    .line 386
    .local v16, character:Ljava/lang/String;
    sget-object v1, Lorg/andengine/util/TextUtils;->SPLITPATTERN_SPACES:Ljava/util/regex/Pattern;

    const/16 v7, 0xb

    move-object/from16 v0, v16

    invoke-virtual {v1, v0, v7}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v15

    .line 387
    .local v15, charAttributes:[Ljava/lang/String;
    array-length v1, v15

    add-int/lit8 v1, v1, -0x1

    const/16 v7, 0xa

    if-eq v1, v7, :cond_1

    .line 388
    new-instance v1, Lorg/andengine/opengl/font/exception/FontException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Expected: \'10\' char attributes, found: \'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v8, v15

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Lorg/andengine/opengl/font/exception/FontException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 390
    :cond_1
    const/4 v1, 0x0

    aget-object v1, v15, v1

    const-string v7, "char"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 391
    new-instance v1, Lorg/andengine/opengl/font/exception/FontException;

    const-string v7, "Expected: \'char\' attributes."

    invoke-direct {v1, v7}, Lorg/andengine/opengl/font/exception/FontException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 394
    :cond_2
    const/4 v1, 0x1

    const-string v7, "id"

    invoke-static {v15, v1, v7}, Lorg/andengine/opengl/font/BitmapFont;->getCharAttribute([Ljava/lang/String;ILjava/lang/String;)C

    move-result v2

    .line 395
    .local v2, id:C
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/andengine/opengl/font/BitmapFont;->mBitmapFontOptions:Lorg/andengine/opengl/font/BitmapFont$BitmapFontOptions;

    #getter for: Lorg/andengine/opengl/font/BitmapFont$BitmapFontOptions;->mTextureOffsetX:I
    invoke-static {v1}, Lorg/andengine/opengl/font/BitmapFont$BitmapFontOptions;->access$0(Lorg/andengine/opengl/font/BitmapFont$BitmapFontOptions;)I

    move-result v1

    const/4 v7, 0x2

    const-string v8, "x"

    invoke-static {v15, v7, v8}, Lorg/andengine/opengl/font/BitmapFont;->getIntAttribute([Ljava/lang/String;ILjava/lang/String;)I

    move-result v7

    add-int v3, v1, v7

    .line 396
    .local v3, x:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/andengine/opengl/font/BitmapFont;->mBitmapFontOptions:Lorg/andengine/opengl/font/BitmapFont$BitmapFontOptions;

    #getter for: Lorg/andengine/opengl/font/BitmapFont$BitmapFontOptions;->mTextureOffsetY:I
    invoke-static {v1}, Lorg/andengine/opengl/font/BitmapFont$BitmapFontOptions;->access$1(Lorg/andengine/opengl/font/BitmapFont$BitmapFontOptions;)I

    move-result v1

    const/4 v7, 0x3

    const-string v8, "y"

    invoke-static {v15, v7, v8}, Lorg/andengine/opengl/font/BitmapFont;->getIntAttribute([Ljava/lang/String;ILjava/lang/String;)I

    move-result v7

    add-int v4, v1, v7

    .line 397
    .local v4, y:I
    const/4 v1, 0x4

    const-string v7, "width"

    invoke-static {v15, v1, v7}, Lorg/andengine/opengl/font/BitmapFont;->getIntAttribute([Ljava/lang/String;ILjava/lang/String;)I

    move-result v5

    .line 398
    .local v5, width:I
    const/4 v1, 0x5

    const-string v7, "height"

    invoke-static {v15, v1, v7}, Lorg/andengine/opengl/font/BitmapFont;->getIntAttribute([Ljava/lang/String;ILjava/lang/String;)I

    move-result v6

    .line 399
    .local v6, height:I
    const/4 v1, 0x6

    const-string v7, "xoffset"

    invoke-static {v15, v1, v7}, Lorg/andengine/opengl/font/BitmapFont;->getIntAttribute([Ljava/lang/String;ILjava/lang/String;)I

    move-result v22

    .line 400
    .local v22, xOffset:I
    const/4 v1, 0x7

    const-string v7, "yoffset"

    invoke-static {v15, v1, v7}, Lorg/andengine/opengl/font/BitmapFont;->getIntAttribute([Ljava/lang/String;ILjava/lang/String;)I

    move-result v23

    .line 401
    .local v23, yOffset:I
    const/16 v1, 0x8

    const-string v7, "xadvance"

    invoke-static {v15, v1, v7}, Lorg/andengine/opengl/font/BitmapFont;->getIntAttribute([Ljava/lang/String;ILjava/lang/String;)I

    move-result v21

    .line 402
    .local v21, xAdvance:I
    const/16 v1, 0x9

    const-string v7, "page"

    invoke-static {v15, v1, v7}, Lorg/andengine/opengl/font/BitmapFont;->getIntAttribute([Ljava/lang/String;ILjava/lang/String;)I

    move-result v18

    .line 405
    .local v18, page:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/andengine/opengl/font/BitmapFont;->mBitmapFontPages:[Lorg/andengine/opengl/font/BitmapFont$BitmapFontPage;

    aget-object v1, v1, v18

    invoke-virtual {v1}, Lorg/andengine/opengl/font/BitmapFont$BitmapFontPage;->getTexture()Lorg/andengine/opengl/texture/ITexture;

    move-result-object v14

    .line 406
    .local v14, bitmapFontPageTexture:Lorg/andengine/opengl/texture/ITexture;
    invoke-interface {v14}, Lorg/andengine/opengl/texture/ITexture;->getWidth()I

    move-result v1

    int-to-float v0, v1

    move/from16 v20, v0

    .line 407
    .local v20, textureWidth:F
    invoke-interface {v14}, Lorg/andengine/opengl/texture/ITexture;->getHeight()I

    move-result v1

    int-to-float v0, v1

    move/from16 v19, v0

    .line 409
    .local v19, textureHeight:F
    int-to-float v1, v3

    div-float v10, v1, v20

    .line 410
    .local v10, u:F
    int-to-float v1, v4

    div-float v11, v1, v19

    .line 411
    .local v11, v:F
    add-int v1, v3, v5

    int-to-float v1, v1

    div-float v12, v1, v20

    .line 412
    .local v12, u2:F
    add-int v1, v4, v6

    int-to-float v1, v1

    div-float v13, v1, v19

    .line 414
    .local v13, v2:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/andengine/opengl/font/BitmapFont;->mCharacterToLetterMap:Landroid/util/SparseArray;

    move-object/from16 v24, v0

    new-instance v1, Lorg/andengine/opengl/font/Letter;

    move/from16 v0, v22

    int-to-float v7, v0

    move/from16 v0, v23

    int-to-float v8, v0

    move/from16 v0, v21

    int-to-float v9, v0

    invoke-direct/range {v1 .. v13}, Lorg/andengine/opengl/font/Letter;-><init>(CIIIIFFFFFFF)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 384
    add-int/lit8 v17, v17, -0x1

    goto/16 :goto_0
.end method

.method private parseKernings(ILjava/io/BufferedReader;)V
    .locals 9
    .parameter "pKerningsCount"
    .parameter "pBufferedReader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    .line 419
    add-int/lit8 v3, p1, -0x1

    .local v3, i:I
    :goto_0
    if-gez v3, :cond_0

    .line 435
    return-void

    .line 420
    :cond_0
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 421
    .local v4, kerning:Ljava/lang/String;
    sget-object v6, Lorg/andengine/util/TextUtils;->SPLITPATTERN_SPACES:Ljava/util/regex/Pattern;

    const/4 v7, 0x4

    invoke-virtual {v6, v4, v7}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v1

    .line 422
    .local v1, charAttributes:[Ljava/lang/String;
    array-length v6, v1

    add-int/lit8 v6, v6, -0x1

    if-eq v6, v8, :cond_1

    .line 423
    new-instance v6, Lorg/andengine/opengl/font/exception/FontException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Expected: \'3\' kerning attributes, found: \'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v8, v1

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/andengine/opengl/font/exception/FontException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 425
    :cond_1
    const/4 v6, 0x0

    aget-object v6, v1, v6

    const-string v7, "kerning"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 426
    new-instance v6, Lorg/andengine/opengl/font/exception/FontException;

    const-string v7, "Expected: \'kerning\' attributes."

    invoke-direct {v6, v7}, Lorg/andengine/opengl/font/exception/FontException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 429
    :cond_2
    const/4 v6, 0x1

    const-string v7, "first"

    invoke-static {v1, v6, v7}, Lorg/andengine/opengl/font/BitmapFont;->getIntAttribute([Ljava/lang/String;ILjava/lang/String;)I

    move-result v2

    .line 430
    .local v2, first:I
    const/4 v6, 0x2

    const-string v7, "second"

    invoke-static {v1, v6, v7}, Lorg/andengine/opengl/font/BitmapFont;->getIntAttribute([Ljava/lang/String;ILjava/lang/String;)I

    move-result v5

    .line 431
    .local v5, second:I
    const-string v6, "amount"

    invoke-static {v1, v8, v6}, Lorg/andengine/opengl/font/BitmapFont;->getIntAttribute([Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 433
    .local v0, amount:I
    iget-object v6, p0, Lorg/andengine/opengl/font/BitmapFont;->mCharacterToLetterMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/andengine/opengl/font/Letter;

    invoke-virtual {v6, v5, v0}, Lorg/andengine/opengl/font/Letter;->addKerning(II)V

    .line 419
    add-int/lit8 v3, v3, -0x1

    goto :goto_0
.end method


# virtual methods
.method public getBase()I
    .locals 1

    .prologue
    .line 303
    iget v0, p0, Lorg/andengine/opengl/font/BitmapFont;->mBase:I

    return v0
.end method

.method public getBitmapFontInfo()Lorg/andengine/opengl/font/BitmapFont$BitmapFontInfo;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lorg/andengine/opengl/font/BitmapFont;->mBitmapFontInfo:Lorg/andengine/opengl/font/BitmapFont$BitmapFontInfo;

    return-object v0
.end method

.method public getBitmapFontPage(I)Lorg/andengine/opengl/font/BitmapFont$BitmapFontPage;
    .locals 1
    .parameter "pIndex"

    .prologue
    .line 323
    iget-object v0, p0, Lorg/andengine/opengl/font/BitmapFont;->mBitmapFontPages:[Lorg/andengine/opengl/font/BitmapFont$BitmapFontPage;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getBitmapFontPageCount()I
    .locals 1

    .prologue
    .line 315
    iget v0, p0, Lorg/andengine/opengl/font/BitmapFont;->mBitmapFontPageCount:I

    return v0
.end method

.method public getBitmapFontPages()[Lorg/andengine/opengl/font/BitmapFont$BitmapFontPage;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lorg/andengine/opengl/font/BitmapFont;->mBitmapFontPages:[Lorg/andengine/opengl/font/BitmapFont$BitmapFontPage;

    return-object v0
.end method

.method public getLetter(C)Lorg/andengine/opengl/font/Letter;
    .locals 4
    .parameter "pChar"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/opengl/font/exception/LetterNotFoundException;
        }
    .end annotation

    .prologue
    .line 356
    iget-object v1, p0, Lorg/andengine/opengl/font/BitmapFont;->mCharacterToLetterMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/andengine/opengl/font/Letter;

    .line 357
    .local v0, letter:Lorg/andengine/opengl/font/Letter;
    if-nez v0, :cond_0

    .line 358
    new-instance v1, Lorg/andengine/opengl/font/exception/LetterNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Letter \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/andengine/opengl/font/exception/LetterNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 360
    :cond_0
    return-object v0
.end method

.method public getLineHeight()F
    .locals 1

    .prologue
    .line 351
    iget v0, p0, Lorg/andengine/opengl/font/BitmapFont;->mLineHeight:I

    int-to-float v0, v0

    return v0
.end method

.method public getScaleHeight()I
    .locals 1

    .prologue
    .line 311
    iget v0, p0, Lorg/andengine/opengl/font/BitmapFont;->mScaleHeight:I

    return v0
.end method

.method public getScaleWidth()I
    .locals 1

    .prologue
    .line 307
    iget v0, p0, Lorg/andengine/opengl/font/BitmapFont;->mScaleWidth:I

    return v0
.end method

.method public getTexture()Lorg/andengine/opengl/texture/ITexture;
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lorg/andengine/opengl/font/BitmapFont;->mBitmapFontPages:[Lorg/andengine/opengl/font/BitmapFont$BitmapFontPage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/andengine/opengl/font/BitmapFont$BitmapFontPage;->getTexture()Lorg/andengine/opengl/texture/ITexture;

    move-result-object v0

    return-object v0
.end method

.method public isPacked()Z
    .locals 1

    .prologue
    .line 327
    iget-boolean v0, p0, Lorg/andengine/opengl/font/BitmapFont;->mPacked:Z

    return v0
.end method

.method public load()V
    .locals 0

    .prologue
    .line 341
    invoke-virtual {p0}, Lorg/andengine/opengl/font/BitmapFont;->loadTextures()V

    .line 342
    return-void
.end method

.method public loadTextures()V
    .locals 4

    .prologue
    .line 368
    iget-object v1, p0, Lorg/andengine/opengl/font/BitmapFont;->mBitmapFontPages:[Lorg/andengine/opengl/font/BitmapFont$BitmapFontPage;

    .line 369
    .local v1, bitmapFontPages:[Lorg/andengine/opengl/font/BitmapFont$BitmapFontPage;
    array-length v0, v1

    .line 370
    .local v0, bitmapFontPageCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v0, :cond_0

    .line 373
    return-void

    .line 371
    :cond_0
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lorg/andengine/opengl/font/BitmapFont$BitmapFontPage;->getTexture()Lorg/andengine/opengl/texture/ITexture;

    move-result-object v3

    invoke-interface {v3}, Lorg/andengine/opengl/texture/ITexture;->load()V

    .line 370
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public unload()V
    .locals 0

    .prologue
    .line 346
    invoke-virtual {p0}, Lorg/andengine/opengl/font/BitmapFont;->unloadTextures()V

    .line 347
    return-void
.end method

.method public unloadTextures()V
    .locals 4

    .prologue
    .line 376
    iget-object v1, p0, Lorg/andengine/opengl/font/BitmapFont;->mBitmapFontPages:[Lorg/andengine/opengl/font/BitmapFont$BitmapFontPage;

    .line 377
    .local v1, bitmapFontPages:[Lorg/andengine/opengl/font/BitmapFont$BitmapFontPage;
    array-length v0, v1

    .line 378
    .local v0, bitmapFontPageCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v0, :cond_0

    .line 381
    return-void

    .line 379
    :cond_0
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lorg/andengine/opengl/font/BitmapFont$BitmapFontPage;->getTexture()Lorg/andengine/opengl/texture/ITexture;

    move-result-object v3

    invoke-interface {v3}, Lorg/andengine/opengl/texture/ITexture;->unload()V

    .line 378
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
