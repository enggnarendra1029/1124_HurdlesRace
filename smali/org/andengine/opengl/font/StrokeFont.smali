.class public Lorg/andengine/opengl/font/StrokeFont;
.super Lorg/andengine/opengl/font/Font;
.source "StrokeFont.java"


# instance fields
.field private final mStrokeOnly:Z

.field private final mStrokePaint:Landroid/graphics/Paint;

.field private final mStrokeWidth:F


# direct methods
.method public constructor <init>(Lorg/andengine/opengl/font/FontManager;Lorg/andengine/opengl/texture/ITexture;Landroid/graphics/Typeface;FZIFI)V
    .locals 10
    .parameter "pFontManager"
    .parameter "pTexture"
    .parameter "pTypeface"
    .parameter "pSize"
    .parameter "pAntiAlias"
    .parameter "pColorARGBPackedInt"
    .parameter "pStrokeWidth"
    .parameter "pStrokeColorARGBPackedInt"

    .prologue
    .line 42
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lorg/andengine/opengl/font/StrokeFont;-><init>(Lorg/andengine/opengl/font/FontManager;Lorg/andengine/opengl/texture/ITexture;Landroid/graphics/Typeface;FZIFIZ)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/font/FontManager;Lorg/andengine/opengl/texture/ITexture;Landroid/graphics/Typeface;FZIFIZ)V
    .locals 2
    .parameter "pFontManager"
    .parameter "pTexture"
    .parameter "pTypeface"
    .parameter "pSize"
    .parameter "pAntiAlias"
    .parameter "pColorARGBPackedInt"
    .parameter "pStrokeWidth"
    .parameter "pStrokeColorARGBPackedInt"
    .parameter "pStrokeOnly"

    .prologue
    .line 50
    invoke-direct/range {p0 .. p6}, Lorg/andengine/opengl/font/Font;-><init>(Lorg/andengine/opengl/font/FontManager;Lorg/andengine/opengl/texture/ITexture;Landroid/graphics/Typeface;FZI)V

    .line 52
    iput p7, p0, Lorg/andengine/opengl/font/StrokeFont;->mStrokeWidth:F

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/andengine/opengl/font/StrokeFont;->mStrokePaint:Landroid/graphics/Paint;

    .line 55
    iget-object v0, p0, Lorg/andengine/opengl/font/StrokeFont;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 56
    iget-object v0, p0, Lorg/andengine/opengl/font/StrokeFont;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    iget-object v0, p0, Lorg/andengine/opengl/font/StrokeFont;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 58
    iget-object v0, p0, Lorg/andengine/opengl/font/StrokeFont;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p8}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    iget-object v0, p0, Lorg/andengine/opengl/font/StrokeFont;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 60
    iget-object v0, p0, Lorg/andengine/opengl/font/StrokeFont;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 62
    iput-boolean p9, p0, Lorg/andengine/opengl/font/StrokeFont;->mStrokeOnly:Z

    .line 63
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/font/FontManager;Lorg/andengine/opengl/texture/ITexture;Landroid/graphics/Typeface;FZLorg/andengine/util/color/Color;FLorg/andengine/util/color/Color;)V
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
    .line 38
    invoke-virtual {p6}, Lorg/andengine/util/color/Color;->getARGBPackedInt()I

    move-result v6

    invoke-virtual/range {p8 .. p8}, Lorg/andengine/util/color/Color;->getARGBPackedInt()I

    move-result v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lorg/andengine/opengl/font/StrokeFont;-><init>(Lorg/andengine/opengl/font/FontManager;Lorg/andengine/opengl/texture/ITexture;Landroid/graphics/Typeface;FZIFI)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/font/FontManager;Lorg/andengine/opengl/texture/ITexture;Landroid/graphics/Typeface;FZLorg/andengine/util/color/Color;FLorg/andengine/util/color/Color;Z)V
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
    .line 46
    invoke-virtual/range {p6 .. p6}, Lorg/andengine/util/color/Color;->getARGBPackedInt()I

    move-result v6

    invoke-virtual/range {p8 .. p8}, Lorg/andengine/util/color/Color;->getARGBPackedInt()I

    move-result v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move/from16 v7, p7

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lorg/andengine/opengl/font/StrokeFont;-><init>(Lorg/andengine/opengl/font/FontManager;Lorg/andengine/opengl/texture/ITexture;Landroid/graphics/Typeface;FZIFIZ)V

    .line 47
    return-void
.end method


# virtual methods
.method protected drawLetter(Ljava/lang/String;FF)V
    .locals 4
    .parameter "pCharacterAsString"
    .parameter "pLeft"
    .parameter "pTop"

    .prologue
    const/high16 v2, 0x3f80

    .line 82
    iget-boolean v0, p0, Lorg/andengine/opengl/font/StrokeFont;->mStrokeOnly:Z

    if-nez v0, :cond_0

    .line 83
    invoke-super {p0, p1, p2, p3}, Lorg/andengine/opengl/font/Font;->drawLetter(Ljava/lang/String;FF)V

    .line 85
    :cond_0
    iget-object v0, p0, Lorg/andengine/opengl/font/StrokeFont;->mCanvas:Landroid/graphics/Canvas;

    add-float v1, p2, v2

    add-float/2addr v2, p3

    iget-object v3, p0, Lorg/andengine/opengl/font/StrokeFont;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 86
    return-void
.end method

.method protected updateTextBounds(Ljava/lang/String;)V
    .locals 5
    .parameter "pCharacterAsString"

    .prologue
    .line 75
    iget-object v1, p0, Lorg/andengine/opengl/font/StrokeFont;->mStrokePaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/andengine/opengl/font/StrokeFont;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 76
    iget v1, p0, Lorg/andengine/opengl/font/StrokeFont;->mStrokeWidth:F

    const/high16 v2, 0x3f00

    mul-float/2addr v1, v2

    invoke-static {v1}, Landroid/util/FloatMath;->floor(F)F

    move-result v1

    float-to-int v1, v1

    neg-int v0, v1

    .line 77
    .local v0, inset:I
    iget-object v1, p0, Lorg/andengine/opengl/font/StrokeFont;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Rect;->inset(II)V

    .line 78
    return-void
.end method
