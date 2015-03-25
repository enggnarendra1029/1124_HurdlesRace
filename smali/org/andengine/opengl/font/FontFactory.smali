.class public Lorg/andengine/opengl/font/FontFactory;
.super Ljava/lang/Object;
.source "FontFactory.java"


# static fields
.field private static final ANTIALIAS_DEFAULT:Z = true

.field private static final COLOR_DEFAULT:I

.field private static sAssetBasePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    sget v0, Lorg/andengine/util/color/Color;->BLACK_ARGB_PACKED_INT:I

    sput v0, Lorg/andengine/opengl/font/FontFactory;->COLOR_DEFAULT:I

    .line 32
    const-string v0, ""

    sput-object v0, Lorg/andengine/opengl/font/FontFactory;->sAssetBasePath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lorg/andengine/opengl/font/FontManager;Lorg/andengine/opengl/texture/ITexture;F)Lorg/andengine/opengl/font/Font;
    .locals 2
    .parameter "pFontManager"
    .parameter "pTexture"
    .parameter "pSize"

    .prologue
    .line 70
    const/4 v0, 0x1

    sget v1, Lorg/andengine/opengl/font/FontFactory;->COLOR_DEFAULT:I

    invoke-static {p0, p1, p2, v0, v1}, Lorg/andengine/opengl/font/FontFactory;->create(Lorg/andengine/opengl/font/FontManager;Lorg/andengine/opengl/texture/ITexture;FZI)Lorg/andengine/opengl/font/Font;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lorg/andengine/opengl/font/FontManager;Lorg/andengine/opengl/texture/ITexture;FI)Lorg/andengine/opengl/font/Font;
    .locals 1
    .parameter "pFontManager"
    .parameter "pTexture"
    .parameter "pSize"
    .parameter "pColor"

    .prologue
    .line 78
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0, p3}, Lorg/andengine/opengl/font/FontFactory;->create(Lorg/andengine/opengl/font/FontManager;Lorg/andengine/opengl/texture/ITexture;FZI)Lorg/andengine/opengl/font/Font;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lorg/andengine/opengl/font/FontManager;Lorg/andengine/opengl/texture/ITexture;FZ)Lorg/andengine/opengl/font/Font;
    .locals 1
    .parameter "pFontManager"
    .parameter "pTexture"
    .parameter "pSize"
    .parameter "pAntiAlias"

    .prologue
    .line 74
    sget v0, Lorg/andengine/opengl/font/FontFactory;->COLOR_DEFAULT:I

    invoke-static {p0, p1, p2, p3, v0}, Lorg/andengine/opengl/font/FontFactory;->create(Lorg/andengine/opengl/font/FontManager;Lorg/andengine/opengl/texture/ITexture;FZI)Lorg/andengine/opengl/font/Font;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lorg/andengine/opengl/font/FontManager;Lorg/andengine/opengl/texture/ITexture;FZI)Lorg/andengine/opengl/font/Font;
    .locals 6
    .parameter "pFontManager"
    .parameter "pTexture"
    .parameter "pSize"
    .parameter "pAntiAlias"
    .parameter "pColor"

    .prologue
    .line 82
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lorg/andengine/opengl/font/FontFactory;->create(Lorg/andengine/opengl/font/FontManager;Lorg/andengine/opengl/texture/ITexture;Landroid/graphics/Typeface;FZI)Lorg/andengine/opengl/font/Font;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lorg/andengine/opengl/font/FontManager;Lorg/andengine/opengl/texture/ITexture;Landroid/graphics/Typeface;FZI)Lorg/andengine/opengl/font/Font;
    .locals 7
    .parameter "pFontManager"
    .parameter "pTexture"
    .parameter "pTypeface"
    .parameter "pSize"
    .parameter "pAntiAlias"
    .parameter "pColor"

    .prologue
    .line 142
    new-instance v0, Lorg/andengine/opengl/font/Font;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/andengine/opengl/font/Font;-><init>(Lorg/andengine/opengl/font/FontManager;Lorg/andengine/opengl/texture/ITexture;Landroid/graphics/Typeface;FZI)V

    return-object v0
.end method

.method public static create(Lorg/andengine/opengl/font/FontManager;Lorg/andengine/opengl/texture/TextureManager;IIFZI)Lorg/andengine/opengl/font/Font;
    .locals 8
    .parameter "pFontManager"
    .parameter "pTextureManager"
    .parameter "pTextureWidth"
    .parameter "pTextureHeight"
    .parameter "pSize"
    .parameter "pAntiAlias"
    .parameter "pColor"

    .prologue
    .line 86
    sget-object v4, Lorg/andengine/opengl/texture/TextureOptions;->DEFAULT:Lorg/andengine/opengl/texture/TextureOptions;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Lorg/andengine/opengl/font/FontFactory;->create(Lorg/andengine/opengl/font/FontManager;Lorg/andengine/opengl/texture/TextureManager;IILorg/andengine/opengl/texture/TextureOptions;FZI)Lorg/andengine/opengl/font/Font;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lorg/andengine/opengl/font/FontManager;Lorg/andengine/opengl/texture/TextureManager;IILandroid/graphics/Typeface;F)Lorg/andengine/opengl/font/Font;
    .locals 9
    .parameter "pFontManager"
    .parameter "pTextureManager"
    .parameter "pTextureWidth"
    .parameter "pTextureHeight"
    .parameter "pTypeface"
    .parameter "pSize"

    .prologue
    .line 94
    sget-object v4, Lorg/andengine/opengl/texture/TextureOptions;->DEFAULT:Lorg/andengine/opengl/texture/TextureOptions;

    const/4 v7, 0x1

    sget v8, Lorg/andengine/opengl/font/FontFactory;->COLOR_DEFAULT:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    move v6, p5

    invoke-static/range {v0 .. v8}, Lorg/andengine/opengl/font/FontFactory;->create(Lorg/andengine/opengl/font/FontManager;Lorg/andengine/opengl/texture/TextureManager;IILorg/andengine/opengl/texture/TextureOptions;Landroid/graphics/Typeface;FZI)Lorg/andengine/opengl/font/Font;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lorg/andengine/opengl/font/FontManager;Lorg/andengine/opengl/texture/TextureManager;IILandroid/graphics/Typeface;FI)Lorg/andengine/opengl/font/Font;
    .locals 9
    .parameter "pFontManager"
    .parameter "pTextureManager"
    .parameter "pTextureWidth"
    .parameter "pTextureHeight"
    .parameter "pTypeface"
    .parameter "pSize"
    .parameter "pColor"

    .prologue
    .line 102
    sget-object v4, Lorg/andengine/opengl/texture/TextureOptions;->DEFAULT:Lorg/andengine/opengl/texture/TextureOptions;

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    move v6, p5

    move v8, p6

    invoke-static/range {v0 .. v8}, Lorg/andengine/opengl/font/FontFactory;->create(Lorg/andengine/opengl/font/FontManager;Lorg/andengine/opengl/texture/TextureManager;IILorg/andengine/opengl/texture/TextureOptions;Landroid/graphics/Typeface;FZI)Lorg/andengine/opengl/font/Font;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lorg/andengine/opengl/font/FontManager;Lorg/andengine/opengl/texture/TextureManager;IILandroid/graphics/Typeface;FZ)Lorg/andengine/opengl/font/Font;
    .locals 9
    .parameter "pFontManager"
    .parameter "pTextureManager"
    .parameter "pTextureWidth"
    .parameter "pTextureHeight"
    .parameter "pTypeface"
    .parameter "pSize"
    .parameter "pAntiAlias"

    .prologue
    .line 98
    sget-object v4, Lorg/andengine/opengl/texture/TextureOptions;->DEFAULT:Lorg/andengine/opengl/texture/TextureOptions;

    sget v8, Lorg/andengine/opengl/font/FontFactory;->COLOR_DEFAULT:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v8}, Lorg/andengine/opengl/font/FontFactory;->create(Lorg/andengine/opengl/font/FontManager;Lorg/andengine/opengl/texture/TextureManager;IILorg/andengine/opengl/texture/TextureOptions;Landroid/graphics/Typeface;FZI)Lorg/andengine/opengl/font/Font;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lorg/andengine/opengl/font/FontManager;Lorg/andengine/opengl/texture/TextureManager;IILandroid/graphics/Typeface;FZI)Lorg/andengine/opengl/font/Font;
    .locals 9
    .parameter "pFontManager"
    .parameter "pTextureManager"
    .parameter "pTextureWidth"
    .parameter "pTextureHeight"
    .parameter "pTypeface"
    .parameter "pSize"
    .parameter "pAntiAlias"
    .parameter "pColor"

    .prologue
    .line 106
    sget-object v4, Lorg/andengine/opengl/texture/TextureOptions;->DEFAULT:Lorg/andengine/opengl/texture/TextureOptions;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lorg/andengine/opengl/font/FontFactory;->create(Lorg/andengine/opengl/font/FontManager;Lorg/andengine/opengl/texture/TextureManager;IILorg/andengine/opengl/texture/TextureOptions;Landroid/graphics/Typeface;FZI)Lorg/andengine/opengl/font/Font;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lorg/andengine/opengl/font/FontManager;Lorg/andengine/opengl/texture/TextureManager;IILorg/andengine/opengl/texture/TextureOptions;FZI)Lorg/andengine/opengl/font/Font;
    .locals 9
    .parameter "pFontManager"
    .parameter "pTextureManager"
    .parameter "pTextureWidth"
    .parameter "pTextureHeight"
    .parameter "pTextureOptions"
    .parameter "pSize"
    .parameter "pAntiAlias"
    .parameter "pColor"

    .prologue
    .line 90
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lorg/andengine/opengl/font/FontFactory;->create(Lorg/andengine/opengl/font/FontManager;Lorg/andengine/opengl/texture/TextureManager;IILorg/andengine/opengl/texture/TextureOptions;Landroid/graphics/Typeface;FZI)Lorg/andengine/opengl/font/Font;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lorg/andengine/opengl/font/FontManager;Lorg/andengine/opengl/texture/TextureManager;IILorg/andengine/opengl/texture/TextureOptions;Landroid/graphics/Typeface;F)Lorg/andengine/opengl/font/Font;
    .locals 9
    .parameter "pFontManager"
    .parameter "pTextureManager"
    .parameter "pTextureWidth"
    .parameter "pTextureHeight"
    .parameter "pTextureOptions"
    .parameter "pTypeface"
    .parameter "pSize"

    .prologue
    .line 110
    const/4 v7, 0x1

    sget v8, Lorg/andengine/opengl/font/FontFactory;->COLOR_DEFAULT:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-static/range {v0 .. v8}, Lorg/andengine/opengl/font/FontFactory;->create(Lorg/andengine/opengl/font/FontManager;Lorg/andengine/opengl/texture/TextureManager;IILorg/andengine/opengl/texture/TextureOptions;Landroid/graphics/Typeface;FZI)Lorg/andengine/opengl/font/Font;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lorg/andengine/opengl/font/FontManager;Lorg/andengine/opengl/texture/TextureManager;IILorg/andengine/opengl/texture/TextureOptions;Landroid/graphics/Typeface;FI)Lorg/andengine/opengl/font/Font;
    .locals 9
    .parameter "pFontManager"
    .parameter "pTextureManager"
    .parameter "pTextureWidth"
    .parameter "pTextureHeight"
    .parameter "pTextureOptions"
    .parameter "pTypeface"
    .parameter "pSize"
    .parameter "pColor"

    .prologue
    .line 118
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lorg/andengine/opengl/font/FontFactory;->create(Lorg/andengine/opengl/font/FontManager;Lorg/andengine/opengl/texture/TextureManager;IILorg/andengine/opengl/texture/TextureOptions;Landroid/graphics/Typeface;FZI)Lorg/andengine/opengl/font/Font;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lorg/andengine/opengl/font/FontManager;Lorg/andengine/opengl/texture/TextureManager;IILorg/andengine/opengl/texture/TextureOptions;Landroid/graphics/Typeface;FZ)Lorg/andengine/opengl/font/Font;
    .locals 9
    .parameter "pFontManager"
    .parameter "pTextureManager"
    .parameter "pTextureWidth"
    .parameter "pTextureHeight"
    .parameter "pTextureOptions"
    .parameter "pTypeface"
    .parameter "pSize"
    .parameter "pAntiAlias"

    .prologue
    .line 114
    sget v8, Lorg/andengine/opengl/font/FontFactory;->COLOR_DEFAULT:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v8}, Lorg/andengine/opengl/font/FontFactory;->create(Lorg/andengine/opengl/font/FontManager;Lorg/andengine/opengl/texture/TextureManager;IILorg/andengine/opengl/texture/TextureOptions;Landroid/graphics/Typeface;FZI)Lorg/andengine/opengl/font/Font;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lorg/andengine/opengl/font/FontManager;Lorg/andengine/opengl/texture/TextureManager;IILorg/andengine/opengl/texture/TextureOptions;Landroid/graphics/Typeface;FZI)Lorg/andengine/opengl/font/Font;
    .locals 10
    .parameter "pFontManager"
    .parameter "pTextureManager"
    .parameter "pTextureWidth"
    .parameter "pTextureHeight"
    .parameter "pTextureOptions"
    .parameter "pTypeface"
    .parameter "pSize"
    .parameter "pAntiAlias"
    .parameter "pColor"

    .prologue
    .line 122
    sget-object v4, Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;->RGBA_8888:Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-static/range {v0 .. v9}, Lorg/andengine/opengl/font/FontFactory;->create(Lorg/andengine/opengl/font/FontManager;Lorg/andengine/opengl/texture/TextureManager;IILorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;Lorg/andengine/opengl/texture/TextureOptions;Landroid/graphics/Typeface;FZI)Lorg/andengine/opengl/font/Font;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lorg/andengine/opengl/font/FontManager;Lorg/andengine/opengl/texture/TextureManager;IILorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;Lorg/andengine/opengl/texture/TextureOptions;Landroid/graphics/Typeface;F)Lorg/andengine/opengl/font/Font;
    .locals 10
    .parameter "pFontManager"
    .parameter "pTextureManager"
    .parameter "pTextureWidth"
    .parameter "pTextureHeight"
    .parameter "pBitmapTextureFormat"
    .parameter "pTextureOptions"
    .parameter "pTypeface"
    .parameter "pSize"

    .prologue
    .line 126
    const/4 v8, 0x1

    sget v9, Lorg/andengine/opengl/font/FontFactory;->COLOR_DEFAULT:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v9}, Lorg/andengine/opengl/font/FontFactory;->create(Lorg/andengine/opengl/font/FontManager;Lorg/andengine/opengl/texture/TextureManager;IILorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;Lorg/andengine/opengl/texture/TextureOptions;Landroid/graphics/Typeface;FZI)Lorg/andengine/opengl/font/Font;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lorg/andengine/opengl/font/FontManager;Lorg/andengine/opengl/texture/TextureManager;IILorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;Lorg/andengine/opengl/texture/TextureOptions;Landroid/graphics/Typeface;FI)Lorg/andengine/opengl/font/Font;
    .locals 10
    .parameter "pFontManager"
    .parameter "pTextureManager"
    .parameter "pTextureWidth"
    .parameter "pTextureHeight"
    .parameter "pBitmapTextureFormat"
    .parameter "pTextureOptions"
    .parameter "pTypeface"
    .parameter "pSize"
    .parameter "pColor"

    .prologue
    .line 134
    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v9, p8

    invoke-static/range {v0 .. v9}, Lorg/andengine/opengl/font/FontFactory;->create(Lorg/andengine/opengl/font/FontManager;Lorg/andengine/opengl/texture/TextureManager;IILorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;Lorg/andengine/opengl/texture/TextureOptions;Landroid/graphics/Typeface;FZI)Lorg/andengine/opengl/font/Font;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lorg/andengine/opengl/font/FontManager;Lorg/andengine/opengl/texture/TextureManager;IILorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;Lorg/andengine/opengl/texture/TextureOptions;Landroid/graphics/Typeface;FZ)Lorg/andengine/opengl/font/Font;
    .locals 10
    .parameter "pFontManager"
    .parameter "pTextureManager"
    .parameter "pTextureWidth"
    .parameter "pTextureHeight"
    .parameter "pBitmapTextureFormat"
    .parameter "pTextureOptions"
    .parameter "pTypeface"
    .parameter "pSize"
    .parameter "pAntiAlias"

    .prologue
    .line 130
    sget v9, Lorg/andengine/opengl/font/FontFactory;->COLOR_DEFAULT:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v0 .. v9}, Lorg/andengine/opengl/font/FontFactory;->create(Lorg/andengine/opengl/font/FontManager;Lorg/andengine/opengl/texture/TextureManager;IILorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;Lorg/andengine/opengl/texture/TextureOptions;Landroid/graphics/Typeface;FZI)Lorg/andengine/opengl/font/Font;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lorg/andengine/opengl/font/FontManager;Lorg/andengine/opengl/texture/TextureManager;IILorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;Lorg/andengine/opengl/texture/TextureOptions;Landroid/graphics/Typeface;FZI)Lorg/andengine/opengl/font/Font;
    .locals 7
    .parameter "pFontManager"
    .parameter "pTextureManager"
    .parameter "pTextureWidth"
    .parameter "pTextureHeight"
    .parameter "pBitmapTextureFormat"
    .parameter "pTextureOptions"
    .parameter "pTypeface"
    .parameter "pSize"
    .parameter "pAntiAlias"
    .parameter "pColor"

    .prologue
    .line 138
    new-instance v0, Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(Lorg/andengine/opengl/texture/TextureManager;IILorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;Lorg/andengine/opengl/texture/TextureOptions;)V

    move-object v1, p0

    move-object v2, v0

    move-object v3, p6

    move v4, p7

    move v5, p8

    move/from16 v6, p9

    invoke-static/range {v1 .. v6}, Lorg/andengine/opengl/font/FontFactory;->create(Lorg/andengine/opengl/font/FontManager;Lorg/andengine/opengl/texture/ITexture;Landroid/graphics/Typeface;FZI)Lorg/andengine/opengl/font/Font;

    move-result-object v0

    return-object v0
.end method

.method public static createFromAsset(Lorg/andengine/opengl/font/FontManager;Lorg/andengine/opengl/texture/ITexture;Landroid/content/res/AssetManager;Ljava/lang/String;FZI)Lorg/andengine/opengl/font/Font;
    .locals 7
    .parameter "pFontManager"
    .parameter "pTexture"
    .parameter "pAssetManager"
    .parameter "pAssetPath"
    .parameter "pSize"
    .parameter "pAntiAlias"
    .parameter "pColor"

    .prologue
    .line 147
    new-instance v0, Lorg/andengine/opengl/font/Font;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lorg/andengine/opengl/font/FontFactory;->sAssetBasePath:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/andengine/opengl/font/Font;-><init>(Lorg/andengine/opengl/font/FontManager;Lorg/andengine/opengl/texture/ITexture;Landroid/graphics/Typeface;FZI)V

    return-object v0
.end method

.method public static createFromAsset(Lorg/andengine/opengl/font/FontManager;Lorg/andengine/opengl/texture/TextureManager;IILandroid/content/res/AssetManager;Ljava/lang/String;FZI)Lorg/andengine/opengl/font/Font;
    .locals 10
    .parameter "pFontManager"
    .parameter "pTextureManager"
    .parameter "pTextureWidth"
    .parameter "pTextureHeight"
    .parameter "pAssetManager"
    .parameter "pAssetPath"
    .parameter "pSize"
    .parameter "pAntiAlias"
    .parameter "pColor"

    .prologue
    .line 151
    sget-object v4, Lorg/andengine/opengl/texture/TextureOptions;->DEFAULT:Lorg/andengine/opengl/texture/TextureOptions;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-static/range {v0 .. v9}, Lorg/andengine/opengl/font/FontFactory;->createFromAsset(Lorg/andengine/opengl/font/FontManager;Lorg/andengine/opengl/texture/TextureManager;IILorg/andengine/opengl/texture/TextureOptions;Landroid/content/res/AssetManager;Ljava/lang/String;FZI)Lorg/andengine/opengl/font/Font;

    move-result-object v0

    return-object v0
.end method

.method public static createFromAsset(Lorg/andengine/opengl/font/FontManager;Lorg/andengine/opengl/texture/TextureManager;IILorg/andengine/opengl/texture/TextureOptions;Landroid/content/res/AssetManager;Ljava/lang/String;FZI)Lorg/andengine/opengl/font/Font;
    .locals 11
    .parameter "pFontManager"
    .parameter "pTextureManager"
    .parameter "pTextureWidth"
    .parameter "pTextureHeight"
    .parameter "pTextureOptions"
    .parameter "pAssetManager"
    .parameter "pAssetPath"
    .parameter "pSize"
    .parameter "pAntiAlias"
    .parameter "pColor"

    .prologue
    .line 155
    sget-object v4, Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;->RGBA_8888:Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-static/range {v0 .. v10}, Lorg/andengine/opengl/font/FontFactory;->createFromAsset(Lorg/andengine/opengl/font/FontManager;Lorg/andengine/opengl/texture/TextureManager;IILorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;Lorg/andengine/opengl/texture/TextureOptions;Landroid/content/res/AssetManager;Ljava/lang/String;FZI)Lorg/andengine/opengl/font/Font;

    move-result-object v0

    return-object v0
.end method

.method public static createFromAsset(Lorg/andengine/opengl/font/FontManager;Lorg/andengine/opengl/texture/TextureManager;IILorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;Lorg/andengine/opengl/texture/TextureOptions;Landroid/content/res/AssetManager;Ljava/lang/String;FZI)Lorg/andengine/opengl/font/Font;
    .locals 10
    .parameter "pFontManager"
    .parameter "pTextureManager"
    .parameter "pTextureWidth"
    .parameter "pTextureHeight"
    .parameter "pBitmapTextureFormat"
    .parameter "pTextureOptions"
    .parameter "pAssetManager"
    .parameter "pAssetPath"
    .parameter "pSize"
    .parameter "pAntiAlias"
    .parameter "pColor"

    .prologue
    .line 159
    new-instance v9, Lorg/andengine/opengl/font/Font;

    new-instance v1, Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(Lorg/andengine/opengl/texture/TextureManager;IILorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;Lorg/andengine/opengl/texture/TextureOptions;)V

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lorg/andengine/opengl/font/FontFactory;->sAssetBasePath:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    move-object v2, v9

    move-object v3, p0

    move-object v4, v1

    move/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p10

    invoke-direct/range {v2 .. v8}, Lorg/andengine/opengl/font/Font;-><init>(Lorg/andengine/opengl/font/FontManager;Lorg/andengine/opengl/texture/ITexture;Landroid/graphics/Typeface;FZI)V

    return-object v9
.end method

.method public static createStroke(Lorg/andengine/opengl/font/FontManager;Lorg/andengine/opengl/texture/ITexture;Landroid/graphics/Typeface;FZIFI)Lorg/andengine/opengl/font/StrokeFont;
    .locals 9
    .parameter "pFontManager"
    .parameter "pTexture"
    .parameter "pTypeface"
    .parameter "pSize"
    .parameter "pAntiAlias"
    .parameter "pColor"
    .parameter "pStrokeWidth"
    .parameter "pStrokeColor"

    .prologue
    .line 164
    new-instance v0, Lorg/andengine/opengl/font/StrokeFont;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/andengine/opengl/font/StrokeFont;-><init>(Lorg/andengine/opengl/font/FontManager;Lorg/andengine/opengl/texture/ITexture;Landroid/graphics/Typeface;FZIFI)V

    return-object v0
.end method

.method public static createStroke(Lorg/andengine/opengl/font/FontManager;Lorg/andengine/opengl/texture/ITexture;Landroid/graphics/Typeface;FZIFIZ)Lorg/andengine/opengl/font/StrokeFont;
    .locals 10
    .parameter "pFontManager"
    .parameter "pTexture"
    .parameter "pTypeface"
    .parameter "pSize"
    .parameter "pAntiAlias"
    .parameter "pColor"
    .parameter "pStrokeWidth"
    .parameter "pStrokeColor"
    .parameter "pStrokeOnly"

    .prologue
    .line 168
    new-instance v0, Lorg/andengine/opengl/font/StrokeFont;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lorg/andengine/opengl/font/StrokeFont;-><init>(Lorg/andengine/opengl/font/FontManager;Lorg/andengine/opengl/texture/ITexture;Landroid/graphics/Typeface;FZIFIZ)V

    return-object v0
.end method

.method public static createStrokeFromAsset(Lorg/andengine/opengl/font/FontManager;Lorg/andengine/opengl/texture/ITexture;Landroid/content/res/AssetManager;Ljava/lang/String;FZIFI)Lorg/andengine/opengl/font/StrokeFont;
    .locals 9
    .parameter "pFontManager"
    .parameter "pTexture"
    .parameter "pAssetManager"
    .parameter "pAssetPath"
    .parameter "pSize"
    .parameter "pAntiAlias"
    .parameter "pColor"
    .parameter "pStrokeWidth"
    .parameter "pStrokeColor"

    .prologue
    .line 172
    new-instance v0, Lorg/andengine/opengl/font/StrokeFont;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lorg/andengine/opengl/font/FontFactory;->sAssetBasePath:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lorg/andengine/opengl/font/StrokeFont;-><init>(Lorg/andengine/opengl/font/FontManager;Lorg/andengine/opengl/texture/ITexture;Landroid/graphics/Typeface;FZIFI)V

    return-object v0
.end method

.method public static createStrokeFromAsset(Lorg/andengine/opengl/font/FontManager;Lorg/andengine/opengl/texture/ITexture;Landroid/content/res/AssetManager;Ljava/lang/String;FZIFIZ)Lorg/andengine/opengl/font/StrokeFont;
    .locals 10
    .parameter "pFontManager"
    .parameter "pTexture"
    .parameter "pAssetManager"
    .parameter "pAssetPath"
    .parameter "pSize"
    .parameter "pAntiAlias"
    .parameter "pColor"
    .parameter "pStrokeWidth"
    .parameter "pStrokeColor"
    .parameter "pStrokeOnly"

    .prologue
    .line 176
    new-instance v0, Lorg/andengine/opengl/font/StrokeFont;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lorg/andengine/opengl/font/FontFactory;->sAssetBasePath:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lorg/andengine/opengl/font/StrokeFont;-><init>(Lorg/andengine/opengl/font/FontManager;Lorg/andengine/opengl/texture/ITexture;Landroid/graphics/Typeface;FZIFIZ)V

    return-object v0
.end method

.method public static getAssetBasePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lorg/andengine/opengl/font/FontFactory;->sAssetBasePath:Ljava/lang/String;

    return-object v0
.end method

.method public static onCreate()V
    .locals 1

    .prologue
    .line 58
    const-string v0, ""

    invoke-static {v0}, Lorg/andengine/opengl/font/FontFactory;->setAssetBasePath(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public static setAssetBasePath(Ljava/lang/String;)V
    .locals 2
    .parameter "pAssetBasePath"

    .prologue
    .line 46
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 47
    :cond_0
    sput-object p0, Lorg/andengine/opengl/font/FontFactory;->sAssetBasePath:Ljava/lang/String;

    .line 51
    return-void

    .line 49
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "pAssetBasePath must end with \'/\' or be lenght zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
