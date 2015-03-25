.class public Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorKeyBitmapTextureAtlasSourceDecorator;
.super Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorSwapBitmapTextureAtlasSourceDecorator;
.source "ColorKeyBitmapTextureAtlasSourceDecorator.java"


# direct methods
.method public constructor <init>(Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;I)V
    .locals 1
    .parameter "pBitmapTextureAtlasSource"
    .parameter "pBitmapTextureAtlasSourceDecoratorShape"
    .parameter "pColorKeyColorARGBPackedInt"

    .prologue
    .line 32
    sget v0, Lorg/andengine/util/color/Color;->TRANSPARENT_ARGB_PACKED_INT:I

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorSwapBitmapTextureAtlasSourceDecorator;-><init>(Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;II)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;II)V
    .locals 6
    .parameter "pBitmapTextureAtlasSource"
    .parameter "pBitmapTextureAtlasSourceDecoratorShape"
    .parameter "pColorKeyColorARGBPackedInt"
    .parameter "pTolerance"

    .prologue
    .line 48
    sget v5, Lorg/andengine/util/color/Color;->TRANSPARENT_ARGB_PACKED_INT:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorSwapBitmapTextureAtlasSourceDecorator;-><init>(Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;III)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;IILorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V
    .locals 7
    .parameter "pBitmapTextureAtlasSource"
    .parameter "pBitmapTextureAtlasSourceDecoratorShape"
    .parameter "pColorKeyColorARGBPackedInt"
    .parameter "pTolerance"
    .parameter "pTextureAtlasSourceDecoratorOptions"

    .prologue
    .line 56
    sget v5, Lorg/andengine/util/color/Color;->TRANSPARENT_ARGB_PACKED_INT:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorSwapBitmapTextureAtlasSourceDecorator;-><init>(Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;IIILorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;ILorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V
    .locals 6
    .parameter "pBitmapTextureAtlasSource"
    .parameter "pBitmapTextureAtlasSourceDecoratorShape"
    .parameter "pColorKeyColorARGBPackedInt"
    .parameter "pTextureAtlasSourceDecoratorOptions"

    .prologue
    .line 40
    sget v4, Lorg/andengine/util/color/Color;->TRANSPARENT_ARGB_PACKED_INT:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorSwapBitmapTextureAtlasSourceDecorator;-><init>(Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;IILorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;Lorg/andengine/util/color/Color;)V
    .locals 1
    .parameter "pBitmapTextureAtlasSource"
    .parameter "pBitmapTextureAtlasSourceDecoratorShape"
    .parameter "pColorKeyColor"

    .prologue
    .line 28
    sget-object v0, Lorg/andengine/util/color/Color;->TRANSPARENT:Lorg/andengine/util/color/Color;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorSwapBitmapTextureAtlasSourceDecorator;-><init>(Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;Lorg/andengine/util/color/Color;Lorg/andengine/util/color/Color;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;Lorg/andengine/util/color/Color;I)V
    .locals 6
    .parameter "pBitmapTextureAtlasSource"
    .parameter "pBitmapTextureAtlasSourceDecoratorShape"
    .parameter "pColorKeyColor"
    .parameter "pTolerance"

    .prologue
    .line 44
    sget-object v5, Lorg/andengine/util/color/Color;->TRANSPARENT:Lorg/andengine/util/color/Color;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorSwapBitmapTextureAtlasSourceDecorator;-><init>(Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;Lorg/andengine/util/color/Color;ILorg/andengine/util/color/Color;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;Lorg/andengine/util/color/Color;ILorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V
    .locals 7
    .parameter "pBitmapTextureAtlasSource"
    .parameter "pBitmapTextureAtlasSourceDecoratorShape"
    .parameter "pColorKeyColor"
    .parameter "pTolerance"
    .parameter "pTextureAtlasSourceDecoratorOptions"

    .prologue
    .line 52
    sget-object v5, Lorg/andengine/util/color/Color;->TRANSPARENT:Lorg/andengine/util/color/Color;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorSwapBitmapTextureAtlasSourceDecorator;-><init>(Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;Lorg/andengine/util/color/Color;ILorg/andengine/util/color/Color;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;Lorg/andengine/util/color/Color;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V
    .locals 6
    .parameter "pBitmapTextureAtlasSource"
    .parameter "pBitmapTextureAtlasSourceDecoratorShape"
    .parameter "pColorKeyColor"
    .parameter "pTextureAtlasSourceDecoratorOptions"

    .prologue
    .line 36
    sget-object v4, Lorg/andengine/util/color/Color;->TRANSPARENT:Lorg/andengine/util/color/Color;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorSwapBitmapTextureAtlasSourceDecorator;-><init>(Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;Lorg/andengine/util/color/Color;Lorg/andengine/util/color/Color;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V

    .line 37
    return-void
.end method


# virtual methods
.method public bridge synthetic deepCopy()Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorKeyBitmapTextureAtlasSourceDecorator;->deepCopy()Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorKeyBitmapTextureAtlasSourceDecorator;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorKeyBitmapTextureAtlasSourceDecorator;
    .locals 6

    .prologue
    .line 61
    new-instance v0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorKeyBitmapTextureAtlasSourceDecorator;

    iget-object v1, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorKeyBitmapTextureAtlasSourceDecorator;->mBitmapTextureAtlasSource:Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;

    iget-object v2, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorKeyBitmapTextureAtlasSourceDecorator;->mBitmapTextureAtlasSourceDecoratorShape:Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;

    iget v3, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorKeyBitmapTextureAtlasSourceDecorator;->mColorKeyColorARGBPackedInt:I

    iget v4, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorKeyBitmapTextureAtlasSourceDecorator;->mTolerance:I

    iget-object v5, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorKeyBitmapTextureAtlasSourceDecorator;->mTextureAtlasSourceDecoratorOptions:Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;

    invoke-direct/range {v0 .. v5}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorKeyBitmapTextureAtlasSourceDecorator;-><init>(Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;IILorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorSwapBitmapTextureAtlasSourceDecorator;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorKeyBitmapTextureAtlasSourceDecorator;->deepCopy()Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorKeyBitmapTextureAtlasSourceDecorator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorKeyBitmapTextureAtlasSourceDecorator;->deepCopy()Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorKeyBitmapTextureAtlasSourceDecorator;

    move-result-object v0

    return-object v0
.end method
