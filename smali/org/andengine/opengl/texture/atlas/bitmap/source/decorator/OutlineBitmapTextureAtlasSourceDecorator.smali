.class public Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/OutlineBitmapTextureAtlasSourceDecorator;
.super Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseShapeBitmapTextureAtlasSourceDecorator;
.source "OutlineBitmapTextureAtlasSourceDecorator.java"


# instance fields
.field protected final mOutlineColor:I


# direct methods
.method public constructor <init>(Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;I)V
    .locals 1
    .parameter "pBitmapTextureAtlasSource"
    .parameter "pBitmapTextureAtlasSourceDecoratorShape"
    .parameter "pOutlineColor"

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/OutlineBitmapTextureAtlasSourceDecorator;-><init>(Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;ILorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;ILorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V
    .locals 2
    .parameter "pBitmapTextureAtlasSource"
    .parameter "pBitmapTextureAtlasSourceDecoratorShape"
    .parameter "pOutlineColor"
    .parameter "pTextureAtlasSourceDecoratorOptions"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p4}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseShapeBitmapTextureAtlasSourceDecorator;-><init>(Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V

    .line 36
    iput p3, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/OutlineBitmapTextureAtlasSourceDecorator;->mOutlineColor:I

    .line 38
    iget-object v0, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/OutlineBitmapTextureAtlasSourceDecorator;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 39
    iget-object v0, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/OutlineBitmapTextureAtlasSourceDecorator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    return-void
.end method


# virtual methods
.method public bridge synthetic deepCopy()Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/OutlineBitmapTextureAtlasSourceDecorator;->deepCopy()Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/OutlineBitmapTextureAtlasSourceDecorator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseShapeBitmapTextureAtlasSourceDecorator;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/OutlineBitmapTextureAtlasSourceDecorator;->deepCopy()Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/OutlineBitmapTextureAtlasSourceDecorator;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/OutlineBitmapTextureAtlasSourceDecorator;
    .locals 5

    .prologue
    .line 44
    new-instance v0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/OutlineBitmapTextureAtlasSourceDecorator;

    iget-object v1, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/OutlineBitmapTextureAtlasSourceDecorator;->mBitmapTextureAtlasSource:Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;

    iget-object v2, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/OutlineBitmapTextureAtlasSourceDecorator;->mBitmapTextureAtlasSourceDecoratorShape:Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;

    iget v3, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/OutlineBitmapTextureAtlasSourceDecorator;->mOutlineColor:I

    iget-object v4, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/OutlineBitmapTextureAtlasSourceDecorator;->mTextureAtlasSourceDecoratorOptions:Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/OutlineBitmapTextureAtlasSourceDecorator;-><init>(Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;ILorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/OutlineBitmapTextureAtlasSourceDecorator;->deepCopy()Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/OutlineBitmapTextureAtlasSourceDecorator;

    move-result-object v0

    return-object v0
.end method
