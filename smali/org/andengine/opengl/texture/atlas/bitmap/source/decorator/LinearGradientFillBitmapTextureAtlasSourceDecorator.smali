.class public Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator;
.super Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseShapeBitmapTextureAtlasSourceDecorator;
.source "LinearGradientFillBitmapTextureAtlasSourceDecorator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;
    }
.end annotation


# instance fields
.field protected final mColors:[I

.field protected final mLinearGradientDirection:Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;

.field protected final mPositions:[F


# direct methods
.method public constructor <init>(Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;IILorg/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;)V
    .locals 7
    .parameter "pBitmapTextureAtlasSource"
    .parameter "pBitmapTextureAtlasSourceDecoratorShape"
    .parameter "pFromColor"
    .parameter "pToColor"
    .parameter "pLinearGradientDirection"

    .prologue
    .line 35
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator;-><init>(Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;IILorg/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;IILorg/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V
    .locals 7
    .parameter "pBitmapTextureAtlasSource"
    .parameter "pBitmapTextureAtlasSourceDecoratorShape"
    .parameter "pFromColor"
    .parameter "pToColor"
    .parameter "pLinearGradientDirection"
    .parameter "pTextureAtlasSourceDecoratorOptions"

    .prologue
    .line 39
    const/4 v0, 0x2

    new-array v3, v0, [I

    const/4 v0, 0x0

    aput p3, v3, v0

    const/4 v0, 0x1

    aput p4, v3, v0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator;-><init>(Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;[I[FLorg/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;[I[FLorg/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;)V
    .locals 7
    .parameter "pBitmapTextureAtlasSource"
    .parameter "pBitmapTextureAtlasSourceDecoratorShape"
    .parameter "pColors"
    .parameter "pPositions"
    .parameter "pLinearGradientDirection"

    .prologue
    .line 43
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator;-><init>(Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;[I[FLorg/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;[I[FLorg/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V
    .locals 12
    .parameter "pBitmapTextureAtlasSource"
    .parameter "pBitmapTextureAtlasSourceDecoratorShape"
    .parameter "pColors"
    .parameter "pPositions"
    .parameter "pLinearGradientDirection"
    .parameter "pTextureAtlasSourceDecoratorOptions"

    .prologue
    .line 47
    move-object/from16 v0, p6

    invoke-direct {p0, p1, p2, v0}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseShapeBitmapTextureAtlasSourceDecorator;-><init>(Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V

    .line 48
    iput-object p3, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator;->mColors:[I

    .line 49
    move-object/from16 v0, p4

    iput-object v0, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator;->mPositions:[F

    .line 50
    move-object/from16 v0, p5

    iput-object v0, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator;->mLinearGradientDirection:Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;

    .line 52
    iget-object v1, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator;->mPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    invoke-interface {p1}, Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;->getTextureWidth()I

    move-result v1

    add-int/lit8 v10, v1, -0x1

    .line 55
    .local v10, right:I
    invoke-interface {p1}, Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;->getTextureHeight()I

    move-result v1

    add-int/lit8 v9, v1, -0x1

    .line 57
    .local v9, bottom:I
    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;->getFromX(I)I

    move-result v1

    int-to-float v2, v1

    .line 58
    .local v2, fromX:F
    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;->getFromY(I)I

    move-result v1

    int-to-float v3, v1

    .line 59
    .local v3, fromY:F
    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;->getToX(I)I

    move-result v1

    int-to-float v4, v1

    .line 60
    .local v4, toX:F
    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;->getToY(I)I

    move-result v1

    int-to-float v5, v1

    .line 62
    .local v5, toY:F
    iget-object v11, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/LinearGradient;

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 63
    return-void
.end method


# virtual methods
.method public bridge synthetic deepCopy()Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator;->deepCopy()Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseShapeBitmapTextureAtlasSourceDecorator;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator;->deepCopy()Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator;
    .locals 7

    .prologue
    .line 67
    new-instance v0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator;

    iget-object v1, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator;->mBitmapTextureAtlasSource:Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;

    iget-object v2, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator;->mBitmapTextureAtlasSourceDecoratorShape:Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;

    iget-object v3, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator;->mColors:[I

    iget-object v4, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator;->mPositions:[F

    iget-object v5, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator;->mLinearGradientDirection:Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;

    iget-object v6, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator;->mTextureAtlasSourceDecoratorOptions:Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;

    invoke-direct/range {v0 .. v6}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator;-><init>(Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;[I[FLorg/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator;->deepCopy()Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator;

    move-result-object v0

    return-object v0
.end method
