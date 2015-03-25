.class public Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/FillBitmapTextureAtlasSourceDecorator;
.super Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseShapeBitmapTextureAtlasSourceDecorator;
.source "FillBitmapTextureAtlasSourceDecorator.java"


# instance fields
.field protected final mFillColor:I


# direct methods
.method public constructor <init>(Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;I)V
    .locals 1
    .parameter "pBitmapTextureAtlasSource"
    .parameter "pBitmapTextureAtlasSourceDecoratorShape"
    .parameter "pFillColor"

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/FillBitmapTextureAtlasSourceDecorator;-><init>(Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;ILorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;ILorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V
    .locals 2
    .parameter "pBitmapTextureAtlasSource"
    .parameter "pBitmapTextureAtlasSourceDecoratorShape"
    .parameter "pFillColor"
    .parameter "pTextureAtlasSourceDecoratorOptions"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p4}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseShapeBitmapTextureAtlasSourceDecorator;-><init>(Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V

    .line 36
    iput p3, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/FillBitmapTextureAtlasSourceDecorator;->mFillColor:I

    .line 38
    iget-object v0, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/FillBitmapTextureAtlasSourceDecorator;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 39
    iget-object v0, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/FillBitmapTextureAtlasSourceDecorator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    return-void
.end method


# virtual methods
.method public bridge synthetic deepCopy()Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/FillBitmapTextureAtlasSourceDecorator;->deepCopy()Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/FillBitmapTextureAtlasSourceDecorator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseShapeBitmapTextureAtlasSourceDecorator;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/FillBitmapTextureAtlasSourceDecorator;->deepCopy()Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/FillBitmapTextureAtlasSourceDecorator;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/FillBitmapTextureAtlasSourceDecorator;
    .locals 5

    .prologue
    .line 44
    new-instance v0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/FillBitmapTextureAtlasSourceDecorator;

    iget-object v1, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/FillBitmapTextureAtlasSourceDecorator;->mBitmapTextureAtlasSource:Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;

    iget-object v2, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/FillBitmapTextureAtlasSourceDecorator;->mBitmapTextureAtlasSourceDecoratorShape:Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;

    iget v3, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/FillBitmapTextureAtlasSourceDecorator;->mFillColor:I

    iget-object v4, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/FillBitmapTextureAtlasSourceDecorator;->mTextureAtlasSourceDecoratorOptions:Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/FillBitmapTextureAtlasSourceDecorator;-><init>(Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;ILorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/FillBitmapTextureAtlasSourceDecorator;->deepCopy()Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/FillBitmapTextureAtlasSourceDecorator;

    move-result-object v0

    return-object v0
.end method
