.class public Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/CircleBitmapTextureAtlasSourceDecoratorShape;
.super Ljava/lang/Object;
.source "CircleBitmapTextureAtlasSourceDecoratorShape.java"

# interfaces
.implements Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;


# static fields
.field private static sDefaultInstance:Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/CircleBitmapTextureAtlasSourceDecoratorShape;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static getDefaultInstance()Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/CircleBitmapTextureAtlasSourceDecoratorShape;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/CircleBitmapTextureAtlasSourceDecoratorShape;->sDefaultInstance:Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/CircleBitmapTextureAtlasSourceDecoratorShape;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/CircleBitmapTextureAtlasSourceDecoratorShape;

    invoke-direct {v0}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/CircleBitmapTextureAtlasSourceDecoratorShape;-><init>()V

    sput-object v0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/CircleBitmapTextureAtlasSourceDecoratorShape;->sDefaultInstance:Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/CircleBitmapTextureAtlasSourceDecoratorShape;

    .line 38
    :cond_0
    sget-object v0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/CircleBitmapTextureAtlasSourceDecoratorShape;->sDefaultInstance:Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/CircleBitmapTextureAtlasSourceDecoratorShape;

    return-object v0
.end method


# virtual methods
.method public onDecorateBitmap(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V
    .locals 8
    .parameter "pCanvas"
    .parameter "pPaint"
    .parameter "pDecoratorOptions"

    .prologue
    const/high16 v7, 0x3f00

    .line 51
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p3}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->getInsetLeft()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {p3}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->getInsetRight()F

    move-result v6

    sub-float v4, v5, v6

    .line 52
    .local v4, width:F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p3}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->getInsetTop()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {p3}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->getInsetBottom()F

    move-result v6

    sub-float v2, v5, v6

    .line 54
    .local v2, height:F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p3}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->getInsetLeft()F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {p3}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->getInsetRight()F

    move-result v6

    sub-float/2addr v5, v6

    mul-float v0, v5, v7

    .line 55
    .local v0, centerX:F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p3}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->getInsetTop()F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {p3}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->getInsetBottom()F

    move-result v6

    sub-float/2addr v5, v6

    mul-float v1, v5, v7

    .line 57
    .local v1, centerY:F
    mul-float v5, v4, v7

    mul-float v6, v2, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 59
    .local v3, radius:F
    invoke-virtual {p1, v0, v1, v3, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 60
    return-void
.end method
