.class public Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorSwapBitmapTextureAtlasSourceDecorator;
.super Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseShapeBitmapTextureAtlasSourceDecorator;
.source "ColorSwapBitmapTextureAtlasSourceDecorator.java"


# static fields
.field private static final TOLERANCE_DEFAULT:I


# instance fields
.field protected final mColorKeyColorARGBPackedInt:I

.field protected final mColorSwapColorARGBPackedInt:I

.field protected final mTolerance:I


# direct methods
.method public constructor <init>(Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;II)V
    .locals 7
    .parameter "pBitmapTextureAtlasSource"
    .parameter "pBitmapTextureAtlasSourceDecoratorShape"
    .parameter "pColorKeyColorARGBPackedInt"
    .parameter "pColorSwapColorARGBPackedInt"

    .prologue
    .line 41
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorSwapBitmapTextureAtlasSourceDecorator;-><init>(Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;IIILorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;III)V
    .locals 7
    .parameter "pBitmapTextureAtlasSource"
    .parameter "pBitmapTextureAtlasSourceDecoratorShape"
    .parameter "pColorKeyColorARGBPackedInt"
    .parameter "pTolerance"
    .parameter "pColorSwapColorARGBPackedInt"

    .prologue
    .line 57
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorSwapBitmapTextureAtlasSourceDecorator;-><init>(Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;IIILorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;IIILorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V
    .locals 3
    .parameter "pBitmapTextureAtlasSource"
    .parameter "pBitmapTextureAtlasSourceDecoratorShape"
    .parameter "pColorKeyColorARGBPackedInt"
    .parameter "pTolerance"
    .parameter "pColorSwapColorARGBPackedInt"
    .parameter "pTextureAtlasSourceDecoratorOptions"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p6}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseShapeBitmapTextureAtlasSourceDecorator;-><init>(Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V

    .line 67
    iput p3, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorSwapBitmapTextureAtlasSourceDecorator;->mColorKeyColorARGBPackedInt:I

    .line 68
    iput p4, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorSwapBitmapTextureAtlasSourceDecorator;->mTolerance:I

    .line 69
    iput p5, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorSwapBitmapTextureAtlasSourceDecorator;->mColorSwapColorARGBPackedInt:I

    .line 70
    iget-object v0, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorSwapBitmapTextureAtlasSourceDecorator;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/AvoidXfermode;

    sget-object v2, Landroid/graphics/AvoidXfermode$Mode;->TARGET:Landroid/graphics/AvoidXfermode$Mode;

    invoke-direct {v1, p3, p4, v2}, Landroid/graphics/AvoidXfermode;-><init>(IILandroid/graphics/AvoidXfermode$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 71
    iget-object v0, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorSwapBitmapTextureAtlasSourceDecorator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;IILorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V
    .locals 7
    .parameter "pBitmapTextureAtlasSource"
    .parameter "pBitmapTextureAtlasSourceDecoratorShape"
    .parameter "pColorKeyColorARGBPackedInt"
    .parameter "pColorSwapColorARGBPackedInt"
    .parameter "pTextureAtlasSourceDecoratorOptions"

    .prologue
    .line 49
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorSwapBitmapTextureAtlasSourceDecorator;-><init>(Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;IIILorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;Lorg/andengine/util/color/Color;ILorg/andengine/util/color/Color;)V
    .locals 6
    .parameter "pBitmapTextureAtlasSource"
    .parameter "pBitmapTextureAtlasSourceDecoratorShape"
    .parameter "pColorKeyColor"
    .parameter "pTolerance"
    .parameter "pColorSwapColor"

    .prologue
    .line 53
    invoke-virtual {p3}, Lorg/andengine/util/color/Color;->getARGBPackedInt()I

    move-result v3

    invoke-virtual {p5}, Lorg/andengine/util/color/Color;->getARGBPackedInt()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorSwapBitmapTextureAtlasSourceDecorator;-><init>(Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;III)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;Lorg/andengine/util/color/Color;ILorg/andengine/util/color/Color;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V
    .locals 7
    .parameter "pBitmapTextureAtlasSource"
    .parameter "pBitmapTextureAtlasSourceDecoratorShape"
    .parameter "pColorKeyColor"
    .parameter "pTolerance"
    .parameter "pColorSwapColor"
    .parameter "pTextureAtlasSourceDecoratorOptions"

    .prologue
    .line 61
    invoke-virtual {p3}, Lorg/andengine/util/color/Color;->getARGBPackedInt()I

    move-result v3

    invoke-virtual {p5}, Lorg/andengine/util/color/Color;->getARGBPackedInt()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorSwapBitmapTextureAtlasSourceDecorator;-><init>(Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;IIILorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;Lorg/andengine/util/color/Color;Lorg/andengine/util/color/Color;)V
    .locals 2
    .parameter "pBitmapTextureAtlasSource"
    .parameter "pBitmapTextureAtlasSourceDecoratorShape"
    .parameter "pColorKeyColor"
    .parameter "pColorSwapColor"

    .prologue
    .line 37
    invoke-virtual {p3}, Lorg/andengine/util/color/Color;->getARGBPackedInt()I

    move-result v0

    invoke-virtual {p4}, Lorg/andengine/util/color/Color;->getARGBPackedInt()I

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorSwapBitmapTextureAtlasSourceDecorator;-><init>(Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;II)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;Lorg/andengine/util/color/Color;Lorg/andengine/util/color/Color;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V
    .locals 6
    .parameter "pBitmapTextureAtlasSource"
    .parameter "pBitmapTextureAtlasSourceDecoratorShape"
    .parameter "pColorKeyColor"
    .parameter "pColorSwapColor"
    .parameter "pTextureAtlasSourceDecoratorOptions"

    .prologue
    .line 45
    invoke-virtual {p3}, Lorg/andengine/util/color/Color;->getARGBPackedInt()I

    move-result v3

    invoke-virtual {p4}, Lorg/andengine/util/color/Color;->getARGBPackedInt()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorSwapBitmapTextureAtlasSourceDecorator;-><init>(Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;IILorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V

    .line 46
    return-void
.end method


# virtual methods
.method public bridge synthetic deepCopy()Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorSwapBitmapTextureAtlasSourceDecorator;->deepCopy()Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorSwapBitmapTextureAtlasSourceDecorator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseShapeBitmapTextureAtlasSourceDecorator;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorSwapBitmapTextureAtlasSourceDecorator;->deepCopy()Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorSwapBitmapTextureAtlasSourceDecorator;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorSwapBitmapTextureAtlasSourceDecorator;
    .locals 7

    .prologue
    .line 76
    new-instance v0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorSwapBitmapTextureAtlasSourceDecorator;

    iget-object v1, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorSwapBitmapTextureAtlasSourceDecorator;->mBitmapTextureAtlasSource:Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;

    iget-object v2, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorSwapBitmapTextureAtlasSourceDecorator;->mBitmapTextureAtlasSourceDecoratorShape:Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;

    iget v3, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorSwapBitmapTextureAtlasSourceDecorator;->mColorKeyColorARGBPackedInt:I

    iget v4, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorSwapBitmapTextureAtlasSourceDecorator;->mTolerance:I

    iget v5, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorSwapBitmapTextureAtlasSourceDecorator;->mColorSwapColorARGBPackedInt:I

    iget-object v6, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorSwapBitmapTextureAtlasSourceDecorator;->mTextureAtlasSourceDecoratorOptions:Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;

    invoke-direct/range {v0 .. v6}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorSwapBitmapTextureAtlasSourceDecorator;-><init>(Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;IIILorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorSwapBitmapTextureAtlasSourceDecorator;->deepCopy()Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorSwapBitmapTextureAtlasSourceDecorator;

    move-result-object v0

    return-object v0
.end method
