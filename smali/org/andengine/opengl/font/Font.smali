.class public Lorg/andengine/opengl/font/Font;
.super Ljava/lang/Object;
.source "Font.java"

# interfaces
.implements Lorg/andengine/opengl/font/IFont;


# static fields
.field protected static final LETTER_TEXTURE_PADDING:I = 0x1


# instance fields
.field private final mBackgroundPaint:Landroid/graphics/Paint;

.field protected final mCanvas:Landroid/graphics/Canvas;

.field private mCurrentTextureX:I

.field private mCurrentTextureY:I

.field private mCurrentTextureYHeightMax:I

.field private final mFontManager:Lorg/andengine/opengl/font/FontManager;

.field protected final mFontMetrics:Landroid/graphics/Paint$FontMetrics;

.field private final mLettersPendingToBeDrawnToTexture:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/andengine/opengl/font/Letter;",
            ">;"
        }
    .end annotation
.end field

.field private final mManagedCharacterToLetterMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/andengine/opengl/font/Letter;",
            ">;"
        }
    .end annotation
.end field

.field protected final mPaint:Landroid/graphics/Paint;

.field protected final mTextBounds:Landroid/graphics/Rect;

.field protected final mTextWidthContainer:[F

.field private final mTexture:Lorg/andengine/opengl/texture/ITexture;

.field private final mTextureHeight:I

.field private final mTextureWidth:I


# direct methods
.method public constructor <init>(Lorg/andengine/opengl/font/FontManager;Lorg/andengine/opengl/texture/ITexture;Landroid/graphics/Typeface;FZI)V
    .locals 2
    .parameter "pFontManager"
    .parameter "pTexture"
    .parameter "pTypeface"
    .parameter "pSize"
    .parameter "pAntiAlias"
    .parameter "pColorARGBPackedInt"

    .prologue
    const/4 v1, 0x1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput v1, p0, Lorg/andengine/opengl/font/Font;->mCurrentTextureX:I

    .line 49
    iput v1, p0, Lorg/andengine/opengl/font/Font;->mCurrentTextureY:I

    .line 52
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/andengine/opengl/font/Font;->mManagedCharacterToLetterMap:Landroid/util/SparseArray;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/andengine/opengl/font/Font;->mLettersPendingToBeDrawnToTexture:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lorg/andengine/opengl/font/Font;->mCanvas:Landroid/graphics/Canvas;

    .line 61
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/andengine/opengl/font/Font;->mTextBounds:Landroid/graphics/Rect;

    .line 62
    new-array v0, v1, [F

    iput-object v0, p0, Lorg/andengine/opengl/font/Font;->mTextWidthContainer:[F

    .line 73
    iput-object p1, p0, Lorg/andengine/opengl/font/Font;->mFontManager:Lorg/andengine/opengl/font/FontManager;

    .line 74
    iput-object p2, p0, Lorg/andengine/opengl/font/Font;->mTexture:Lorg/andengine/opengl/texture/ITexture;

    .line 75
    invoke-interface {p2}, Lorg/andengine/opengl/texture/ITexture;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/andengine/opengl/font/Font;->mTextureWidth:I

    .line 76
    invoke-interface {p2}, Lorg/andengine/opengl/texture/ITexture;->getHeight()I

    move-result v0

    iput v0, p0, Lorg/andengine/opengl/font/Font;->mTextureHeight:I

    .line 78
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/andengine/opengl/font/Font;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 79
    iget-object v0, p0, Lorg/andengine/opengl/font/Font;->mBackgroundPaint:Landroid/graphics/Paint;

    sget v1, Lorg/andengine/util/color/Color;->TRANSPARENT_ARGB_PACKED_INT:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    iget-object v0, p0, Lorg/andengine/opengl/font/Font;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 82
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/andengine/opengl/font/Font;->mPaint:Landroid/graphics/Paint;

    .line 83
    iget-object v0, p0, Lorg/andengine/opengl/font/Font;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 84
    iget-object v0, p0, Lorg/andengine/opengl/font/Font;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p6}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    iget-object v0, p0, Lorg/andengine/opengl/font/Font;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 86
    iget-object v0, p0, Lorg/andengine/opengl/font/Font;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 88
    iget-object v0, p0, Lorg/andengine/opengl/font/Font;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iput-object v0, p0, Lorg/andengine/opengl/font/Font;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 89
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/font/FontManager;Lorg/andengine/opengl/texture/ITexture;Landroid/graphics/Typeface;FZLorg/andengine/util/color/Color;)V
    .locals 7
    .parameter "pFontManager"
    .parameter "pTexture"
    .parameter "pTypeface"
    .parameter "pSize"
    .parameter "pAntiAlias"
    .parameter "pColor"

    .prologue
    .line 69
    invoke-virtual {p6}, Lorg/andengine/util/color/Color;->getARGBPackedInt()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/andengine/opengl/font/Font;-><init>(Lorg/andengine/opengl/font/FontManager;Lorg/andengine/opengl/texture/ITexture;Landroid/graphics/Typeface;FZI)V

    .line 70
    return-void
.end method

.method private createLetter(C)Lorg/andengine/opengl/font/Letter;
    .locals 20
    .parameter "pCharacter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/opengl/font/exception/FontException;
        }
    .end annotation

    .prologue
    .line 206
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v14

    .line 208
    .local v14, characterAsString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v2, v0, Lorg/andengine/opengl/font/Font;->mTextureWidth:I

    int-to-float v0, v2

    move/from16 v18, v0

    .line 209
    .local v18, textureWidth:F
    move-object/from16 v0, p0

    iget v2, v0, Lorg/andengine/opengl/font/Font;->mTextureHeight:I

    int-to-float v0, v2

    move/from16 v17, v0

    .line 211
    .local v17, textureHeight:F
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/andengine/opengl/font/Font;->updateTextBounds(Ljava/lang/String;)V

    .line 212
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/andengine/opengl/font/Font;->mTextBounds:Landroid/graphics/Rect;

    iget v15, v2, Landroid/graphics/Rect;->left:I

    .line 213
    .local v15, letterLeft:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/andengine/opengl/font/Font;->mTextBounds:Landroid/graphics/Rect;

    iget v0, v2, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    .line 214
    .local v16, letterTop:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/andengine/opengl/font/Font;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 215
    .local v5, letterWidth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/andengine/opengl/font/Font;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 219
    .local v6, letterHeight:I
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/andengine/opengl/font/Font;->getLetterAdvance(Ljava/lang/String;)F

    move-result v9

    .line 221
    .local v9, advance:F
    invoke-static/range {p1 .. p1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    const/16 v19, 0x0

    .line 222
    .local v19, whitespace:Z
    :goto_0
    if-eqz v19, :cond_1

    .line 223
    new-instance v1, Lorg/andengine/opengl/font/Letter;

    move/from16 v0, p1

    invoke-direct {v1, v0, v9}, Lorg/andengine/opengl/font/Letter;-><init>(CF)V

    .line 248
    .local v1, letter:Lorg/andengine/opengl/font/Letter;
    :goto_1
    return-object v1

    .line 221
    .end local v1           #letter:Lorg/andengine/opengl/font/Letter;
    .end local v19           #whitespace:Z
    :cond_0
    const/16 v19, 0x1

    goto :goto_0

    .line 225
    .restart local v19       #whitespace:Z
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lorg/andengine/opengl/font/Font;->mCurrentTextureX:I

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v5

    int-to-float v2, v2

    cmpl-float v2, v2, v18

    if-ltz v2, :cond_2

    .line 226
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/andengine/opengl/font/Font;->mCurrentTextureX:I

    .line 227
    move-object/from16 v0, p0

    iget v2, v0, Lorg/andengine/opengl/font/Font;->mCurrentTextureY:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/andengine/opengl/font/Font;->mCurrentTextureYHeightMax:I

    add-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lorg/andengine/opengl/font/Font;->mCurrentTextureY:I

    .line 228
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/andengine/opengl/font/Font;->mCurrentTextureYHeightMax:I

    .line 231
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lorg/andengine/opengl/font/Font;->mCurrentTextureY:I

    add-int/2addr v2, v6

    int-to-float v2, v2

    cmpl-float v2, v2, v17

    if-ltz v2, :cond_3

    .line 232
    new-instance v2, Lorg/andengine/opengl/font/exception/FontException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Not enough space for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v4, Lorg/andengine/opengl/font/Letter;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' on the "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/andengine/opengl/font/Font;->mTexture:Lorg/andengine/opengl/texture/ITexture;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Existing Letters: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/andengine/opengl/font/Font;->mManagedCharacterToLetterMap:Landroid/util/SparseArray;

    invoke-static {v4}, Lorg/andengine/util/adt/map/SparseArrayUtils;->toString(Landroid/util/SparseArray;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/andengine/opengl/font/exception/FontException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 235
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lorg/andengine/opengl/font/Font;->mCurrentTextureYHeightMax:I

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/andengine/opengl/font/Font;->mCurrentTextureYHeightMax:I

    .line 237
    move-object/from16 v0, p0

    iget v2, v0, Lorg/andengine/opengl/font/Font;->mCurrentTextureX:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/andengine/opengl/font/Font;->mCurrentTextureX:I

    .line 239
    move-object/from16 v0, p0

    iget v2, v0, Lorg/andengine/opengl/font/Font;->mCurrentTextureX:I

    int-to-float v2, v2

    div-float v10, v2, v18

    .line 240
    .local v10, u:F
    move-object/from16 v0, p0

    iget v2, v0, Lorg/andengine/opengl/font/Font;->mCurrentTextureY:I

    int-to-float v2, v2

    div-float v11, v2, v17

    .line 241
    .local v11, v:F
    move-object/from16 v0, p0

    iget v2, v0, Lorg/andengine/opengl/font/Font;->mCurrentTextureX:I

    add-int/2addr v2, v5

    int-to-float v2, v2

    div-float v12, v2, v18

    .line 242
    .local v12, u2:F
    move-object/from16 v0, p0

    iget v2, v0, Lorg/andengine/opengl/font/Font;->mCurrentTextureY:I

    add-int/2addr v2, v6

    int-to-float v2, v2

    div-float v13, v2, v17

    .line 244
    .local v13, v2:F
    new-instance v1, Lorg/andengine/opengl/font/Letter;

    move-object/from16 v0, p0

    iget v2, v0, Lorg/andengine/opengl/font/Font;->mCurrentTextureX:I

    add-int/lit8 v3, v2, -0x1

    move-object/from16 v0, p0

    iget v2, v0, Lorg/andengine/opengl/font/Font;->mCurrentTextureY:I

    add-int/lit8 v4, v2, -0x1

    int-to-float v7, v15

    move/from16 v0, v16

    int-to-float v2, v0

    invoke-virtual/range {p0 .. p0}, Lorg/andengine/opengl/font/Font;->getAscent()F

    move-result v8

    sub-float v8, v2, v8

    move/from16 v2, p1

    invoke-direct/range {v1 .. v13}, Lorg/andengine/opengl/font/Letter;-><init>(CIIIIFFFFFFF)V

    .line 245
    .restart local v1       #letter:Lorg/andengine/opengl/font/Letter;
    move-object/from16 v0, p0

    iget v2, v0, Lorg/andengine/opengl/font/Font;->mCurrentTextureX:I

    add-int/lit8 v3, v5, 0x1

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lorg/andengine/opengl/font/Font;->mCurrentTextureX:I

    goto/16 :goto_1
.end method

.method private getLetterAdvance(Ljava/lang/String;)F
    .locals 2
    .parameter "pCharacterAsString"

    .prologue
    .line 169
    iget-object v0, p0, Lorg/andengine/opengl/font/Font;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/andengine/opengl/font/Font;->mTextWidthContainer:[F

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 170
    iget-object v0, p0, Lorg/andengine/opengl/font/Font;->mTextWidthContainer:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method


# virtual methods
.method protected drawLetter(Ljava/lang/String;FF)V
    .locals 4
    .parameter "pCharacterAsString"
    .parameter "pLeft"
    .parameter "pTop"

    .prologue
    const/high16 v2, 0x3f80

    .line 196
    iget-object v0, p0, Lorg/andengine/opengl/font/Font;->mCanvas:Landroid/graphics/Canvas;

    add-float v1, p2, v2

    add-float/2addr v2, p3

    iget-object v3, p0, Lorg/andengine/opengl/font/Font;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 197
    return-void
.end method

.method public getAscent()F
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/andengine/opengl/font/Font;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    return v0
.end method

.method public getDescent()F
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/andengine/opengl/font/Font;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    return v0
.end method

.method public getLeading()F
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/andengine/opengl/font/Font;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->leading:F

    return v0
.end method

.method public declared-synchronized getLetter(C)Lorg/andengine/opengl/font/Letter;
    .locals 2
    .parameter "pCharacter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/opengl/font/exception/FontException;
        }
    .end annotation

    .prologue
    .line 144
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/andengine/opengl/font/Font;->mManagedCharacterToLetterMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/andengine/opengl/font/Letter;

    .line 145
    .local v0, letter:Lorg/andengine/opengl/font/Letter;
    if-nez v0, :cond_0

    .line 146
    invoke-direct {p0, p1}, Lorg/andengine/opengl/font/Font;->createLetter(C)Lorg/andengine/opengl/font/Letter;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lorg/andengine/opengl/font/Font;->mLettersPendingToBeDrawnToTexture:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v1, p0, Lorg/andengine/opengl/font/Font;->mManagedCharacterToLetterMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    :cond_0
    monitor-exit p0

    return-object v0

    .line 144
    .end local v0           #letter:Lorg/andengine/opengl/font/Letter;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected getLetterBitmap(Lorg/andengine/opengl/font/Letter;)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "pLetter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/opengl/font/exception/FontException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 174
    iget-char v7, p1, Lorg/andengine/opengl/font/Letter;->mCharacter:C

    .line 175
    .local v7, character:C
    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    .line 177
    .local v8, characterAsString:Ljava/lang/String;
    iget v0, p1, Lorg/andengine/opengl/font/Letter;->mWidth:I

    add-int/lit8 v12, v0, 0x2

    .line 178
    .local v12, width:I
    iget v0, p1, Lorg/andengine/opengl/font/Letter;->mHeight:I

    add-int/lit8 v11, v0, 0x2

    .line 180
    .local v11, height:I
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v11, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 181
    .local v6, bitmap:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lorg/andengine/opengl/font/Font;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 184
    iget-object v0, p0, Lorg/andengine/opengl/font/Font;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v3, v2

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v4, v2

    iget-object v5, p0, Lorg/andengine/opengl/font/Font;->mBackgroundPaint:Landroid/graphics/Paint;

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 187
    iget v0, p1, Lorg/andengine/opengl/font/Letter;->mOffsetX:F

    neg-float v9, v0

    .line 188
    .local v9, drawLetterLeft:F
    iget v0, p1, Lorg/andengine/opengl/font/Letter;->mOffsetY:F

    invoke-virtual {p0}, Lorg/andengine/opengl/font/Font;->getAscent()F

    move-result v1

    add-float/2addr v0, v1

    neg-float v10, v0

    .line 190
    .local v10, drawLetterTop:F
    invoke-virtual {p0, v8, v9, v10}, Lorg/andengine/opengl/font/Font;->drawLetter(Ljava/lang/String;FF)V

    .line 192
    return-object v6
.end method

.method public getLineHeight()F
    .locals 2

    .prologue
    .line 139
    invoke-virtual {p0}, Lorg/andengine/opengl/font/Font;->getAscent()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p0}, Lorg/andengine/opengl/font/Font;->getDescent()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getTexture()Lorg/andengine/opengl/texture/ITexture;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/andengine/opengl/font/Font;->mTexture:Lorg/andengine/opengl/texture/ITexture;

    return-object v0
.end method

.method public declared-synchronized invalidateLetters()V
    .locals 4

    .prologue
    .line 159
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/andengine/opengl/font/Font;->mLettersPendingToBeDrawnToTexture:Ljava/util/ArrayList;

    .line 160
    .local v1, lettersPendingToBeDrawnToTexture:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/andengine/opengl/font/Letter;>;"
    iget-object v2, p0, Lorg/andengine/opengl/font/Font;->mManagedCharacterToLetterMap:Landroid/util/SparseArray;

    .line 163
    .local v2, managedCharacterToLetterMap:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lorg/andengine/opengl/font/Letter;>;"
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 166
    monitor-exit p0

    return-void

    .line 164
    :cond_0
    :try_start_1
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/andengine/opengl/font/Letter;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 159
    .end local v0           #i:I
    .end local v1           #lettersPendingToBeDrawnToTexture:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/andengine/opengl/font/Letter;>;"
    .end local v2           #managedCharacterToLetterMap:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lorg/andengine/opengl/font/Letter;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public load()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/andengine/opengl/font/Font;->mTexture:Lorg/andengine/opengl/texture/ITexture;

    invoke-interface {v0}, Lorg/andengine/opengl/texture/ITexture;->load()V

    .line 128
    iget-object v0, p0, Lorg/andengine/opengl/font/Font;->mFontManager:Lorg/andengine/opengl/font/FontManager;

    invoke-virtual {v0, p0}, Lorg/andengine/opengl/font/FontManager;->loadFont(Lorg/andengine/opengl/font/Font;)V

    .line 129
    return-void
.end method

.method public varargs prepareLetters([C)V
    .locals 3
    .parameter "pCharacters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/opengl/font/exception/FontException;
        }
    .end annotation

    .prologue
    .line 200
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 203
    return-void

    .line 200
    :cond_0
    aget-char v0, p1, v1

    .line 201
    .local v0, character:C
    invoke-virtual {p0, v0}, Lorg/andengine/opengl/font/Font;->getLetter(C)Lorg/andengine/opengl/font/Letter;

    .line 200
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public unload()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/andengine/opengl/font/Font;->mTexture:Lorg/andengine/opengl/texture/ITexture;

    invoke-interface {v0}, Lorg/andengine/opengl/texture/ITexture;->unload()V

    .line 134
    iget-object v0, p0, Lorg/andengine/opengl/font/Font;->mFontManager:Lorg/andengine/opengl/font/FontManager;

    invoke-virtual {v0, p0}, Lorg/andengine/opengl/font/FontManager;->unloadFont(Lorg/andengine/opengl/font/Font;)V

    .line 135
    return-void
.end method

.method public declared-synchronized update(Lorg/andengine/opengl/util/GLState;)V
    .locals 14
    .parameter "pGLState"

    .prologue
    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 256
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/andengine/opengl/font/Font;->mTexture:Lorg/andengine/opengl/texture/ITexture;

    invoke-interface {v0}, Lorg/andengine/opengl/texture/ITexture;->isLoadedToHardware()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v9, p0, Lorg/andengine/opengl/font/Font;->mLettersPendingToBeDrawnToTexture:Ljava/util/ArrayList;

    .line 258
    .local v9, lettersPendingToBeDrawnToTexture:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/andengine/opengl/font/Letter;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 259
    iget-object v0, p0, Lorg/andengine/opengl/font/Font;->mTexture:Lorg/andengine/opengl/texture/ITexture;

    invoke-interface {v0, p1}, Lorg/andengine/opengl/texture/ITexture;->bind(Lorg/andengine/opengl/util/GLState;)V

    .line 260
    iget-object v0, p0, Lorg/andengine/opengl/font/Font;->mTexture:Lorg/andengine/opengl/texture/ITexture;

    invoke-interface {v0}, Lorg/andengine/opengl/texture/ITexture;->getPixelFormat()Lorg/andengine/opengl/texture/PixelFormat;

    move-result-object v6

    .line 262
    .local v6, pixelFormat:Lorg/andengine/opengl/texture/PixelFormat;
    iget-object v0, p0, Lorg/andengine/opengl/font/Font;->mTexture:Lorg/andengine/opengl/texture/ITexture;

    invoke-interface {v0}, Lorg/andengine/opengl/texture/ITexture;->getTextureOptions()Lorg/andengine/opengl/texture/TextureOptions;

    move-result-object v0

    iget-boolean v10, v0, Lorg/andengine/opengl/texture/TextureOptions;->mPreMultiplyAlpha:Z

    .line 263
    .local v10, preMultipyAlpha:Z
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    .local v7, i:I
    :goto_0
    if-gez v7, :cond_1

    .line 288
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 290
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    .end local v6           #pixelFormat:Lorg/andengine/opengl/texture/PixelFormat;
    .end local v7           #i:I
    .end local v9           #lettersPendingToBeDrawnToTexture:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/andengine/opengl/font/Letter;>;"
    .end local v10           #preMultipyAlpha:Z
    :cond_0
    monitor-exit p0

    return-void

    .line 264
    .restart local v6       #pixelFormat:Lorg/andengine/opengl/texture/PixelFormat;
    .restart local v7       #i:I
    .restart local v9       #lettersPendingToBeDrawnToTexture:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/andengine/opengl/font/Letter;>;"
    .restart local v10       #preMultipyAlpha:Z
    :cond_1
    :try_start_1
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/andengine/opengl/font/Letter;

    .line 265
    .local v8, letter:Lorg/andengine/opengl/font/Letter;
    invoke-virtual {v8}, Lorg/andengine/opengl/font/Letter;->isWhitespace()Z

    move-result v0

    if-nez v0, :cond_4

    .line 266
    invoke-virtual {p0, v8}, Lorg/andengine/opengl/font/Font;->getLetterBitmap(Lorg/andengine/opengl/font/Letter;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 268
    .local v5, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-static {v0}, Lorg/andengine/util/math/MathUtils;->isPowerOfTwo(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {v0}, Lorg/andengine/util/math/MathUtils;->isPowerOfTwo(I)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lorg/andengine/opengl/texture/PixelFormat;->RGBA_8888:Lorg/andengine/opengl/texture/PixelFormat;

    if-ne v6, v0, :cond_5

    move v11, v12

    .line 269
    .local v11, useDefaultAlignment:Z
    :goto_1
    if-nez v11, :cond_2

    .line 271
    const/16 v0, 0xcf5

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 274
    :cond_2
    if-eqz v10, :cond_6

    .line 275
    const/16 v0, 0xde1

    const/4 v1, 0x0

    iget v2, v8, Lorg/andengine/opengl/font/Letter;->mTextureX:I

    iget v3, v8, Lorg/andengine/opengl/font/Letter;->mTextureY:I

    invoke-static {v0, v1, v2, v3, v5}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;)V

    .line 280
    :goto_2
    if-nez v11, :cond_3

    .line 282
    const/16 v0, 0xcf5

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 285
    :cond_3
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 263
    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .end local v11           #useDefaultAlignment:Z
    :cond_4
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .restart local v5       #bitmap:Landroid/graphics/Bitmap;
    :cond_5
    move v11, v13

    .line 268
    goto :goto_1

    .line 277
    .restart local v11       #useDefaultAlignment:Z
    :cond_6
    const/16 v1, 0xde1

    const/4 v2, 0x0

    iget v3, v8, Lorg/andengine/opengl/font/Letter;->mTextureX:I

    iget v4, v8, Lorg/andengine/opengl/font/Letter;->mTextureY:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lorg/andengine/opengl/util/GLState;->glTexSubImage2D(IIIILandroid/graphics/Bitmap;Lorg/andengine/opengl/texture/PixelFormat;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 256
    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .end local v6           #pixelFormat:Lorg/andengine/opengl/texture/PixelFormat;
    .end local v7           #i:I
    .end local v8           #letter:Lorg/andengine/opengl/font/Letter;
    .end local v9           #lettersPendingToBeDrawnToTexture:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/andengine/opengl/font/Letter;>;"
    .end local v10           #preMultipyAlpha:Z
    .end local v11           #useDefaultAlignment:Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected updateTextBounds(Ljava/lang/String;)V
    .locals 4
    .parameter "pCharacterAsString"

    .prologue
    .line 252
    iget-object v0, p0, Lorg/andengine/opengl/font/Font;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/andengine/opengl/font/Font;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 253
    return-void
.end method
