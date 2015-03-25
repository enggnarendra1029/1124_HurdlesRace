.class public Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/EllipseBitmapTextureAtlasSourceDecoratorShape;
.super Ljava/lang/Object;
.source "EllipseBitmapTextureAtlasSourceDecoratorShape.java"

# interfaces
.implements Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;


# static fields
.field private static sDefaultInstance:Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/EllipseBitmapTextureAtlasSourceDecoratorShape;


# instance fields
.field private final mRectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/EllipseBitmapTextureAtlasSourceDecoratorShape;->mRectF:Landroid/graphics/RectF;

    .line 35
    return-void
.end method

.method public static getDefaultInstance()Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/EllipseBitmapTextureAtlasSourceDecoratorShape;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/EllipseBitmapTextureAtlasSourceDecoratorShape;->sDefaultInstance:Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/EllipseBitmapTextureAtlasSourceDecoratorShape;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/EllipseBitmapTextureAtlasSourceDecoratorShape;

    invoke-direct {v0}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/EllipseBitmapTextureAtlasSourceDecoratorShape;-><init>()V

    sput-object v0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/EllipseBitmapTextureAtlasSourceDecoratorShape;->sDefaultInstance:Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/EllipseBitmapTextureAtlasSourceDecoratorShape;

    .line 41
    :cond_0
    sget-object v0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/EllipseBitmapTextureAtlasSourceDecoratorShape;->sDefaultInstance:Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/EllipseBitmapTextureAtlasSourceDecoratorShape;

    return-object v0
.end method


# virtual methods
.method public onDecorateBitmap(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V
    .locals 6
    .parameter "pCanvas"
    .parameter "pPaint"
    .parameter "pDecoratorOptions"

    .prologue
    .line 54
    invoke-virtual {p3}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->getInsetLeft()F

    move-result v1

    .line 55
    .local v1, left:F
    invoke-virtual {p3}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->getInsetTop()F

    move-result v3

    .line 56
    .local v3, top:F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p3}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->getInsetRight()F

    move-result v5

    sub-float v2, v4, v5

    .line 57
    .local v2, right:F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p3}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->getInsetBottom()F

    move-result v5

    sub-float v0, v4, v5

    .line 59
    .local v0, bottom:F
    iget-object v4, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/EllipseBitmapTextureAtlasSourceDecoratorShape;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 61
    iget-object v4, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/EllipseBitmapTextureAtlasSourceDecoratorShape;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {p1, v4, p2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 62
    return-void
.end method
