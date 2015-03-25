.class public Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/RoundedRectangleBitmapTextureAtlasSourceDecoratorShape;
.super Ljava/lang/Object;
.source "RoundedRectangleBitmapTextureAtlasSourceDecoratorShape.java"

# interfaces
.implements Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;


# static fields
.field private static final CORNER_RADIUS_DEFAULT:F = 1.0f

.field private static sDefaultInstance:Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/RoundedRectangleBitmapTextureAtlasSourceDecoratorShape;


# instance fields
.field private final mCornerRadiusX:F

.field private final mCornerRadiusY:F

.field private final mRectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/high16 v0, 0x3f80

    .line 39
    invoke-direct {p0, v0, v0}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/RoundedRectangleBitmapTextureAtlasSourceDecoratorShape;-><init>(FF)V

    .line 40
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1
    .parameter "pCornerRadiusX"
    .parameter "pCornerRadiusY"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/RoundedRectangleBitmapTextureAtlasSourceDecoratorShape;->mRectF:Landroid/graphics/RectF;

    .line 43
    iput p1, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/RoundedRectangleBitmapTextureAtlasSourceDecoratorShape;->mCornerRadiusX:F

    .line 44
    iput p2, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/RoundedRectangleBitmapTextureAtlasSourceDecoratorShape;->mCornerRadiusY:F

    .line 45
    return-void
.end method

.method public static getDefaultInstance()Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/RoundedRectangleBitmapTextureAtlasSourceDecoratorShape;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/RoundedRectangleBitmapTextureAtlasSourceDecoratorShape;->sDefaultInstance:Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/RoundedRectangleBitmapTextureAtlasSourceDecoratorShape;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/RoundedRectangleBitmapTextureAtlasSourceDecoratorShape;

    invoke-direct {v0}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/RoundedRectangleBitmapTextureAtlasSourceDecoratorShape;-><init>()V

    sput-object v0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/RoundedRectangleBitmapTextureAtlasSourceDecoratorShape;->sDefaultInstance:Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/RoundedRectangleBitmapTextureAtlasSourceDecoratorShape;

    .line 51
    :cond_0
    sget-object v0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/RoundedRectangleBitmapTextureAtlasSourceDecoratorShape;->sDefaultInstance:Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/RoundedRectangleBitmapTextureAtlasSourceDecoratorShape;

    return-object v0
.end method


# virtual methods
.method public onDecorateBitmap(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V
    .locals 7
    .parameter "pCanvas"
    .parameter "pPaint"
    .parameter "pDecoratorOptions"

    .prologue
    .line 64
    invoke-virtual {p3}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->getInsetLeft()F

    move-result v1

    .line 65
    .local v1, left:F
    invoke-virtual {p3}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->getInsetTop()F

    move-result v3

    .line 66
    .local v3, top:F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p3}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->getInsetRight()F

    move-result v5

    sub-float v2, v4, v5

    .line 67
    .local v2, right:F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p3}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->getInsetBottom()F

    move-result v5

    sub-float v0, v4, v5

    .line 69
    .local v0, bottom:F
    iget-object v4, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/RoundedRectangleBitmapTextureAtlasSourceDecoratorShape;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 71
    iget-object v4, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/RoundedRectangleBitmapTextureAtlasSourceDecoratorShape;->mRectF:Landroid/graphics/RectF;

    iget v5, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/RoundedRectangleBitmapTextureAtlasSourceDecoratorShape;->mCornerRadiusX:F

    iget v6, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/RoundedRectangleBitmapTextureAtlasSourceDecoratorShape;->mCornerRadiusY:F

    invoke-virtual {p1, v4, v5, v6, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 72
    return-void
.end method
