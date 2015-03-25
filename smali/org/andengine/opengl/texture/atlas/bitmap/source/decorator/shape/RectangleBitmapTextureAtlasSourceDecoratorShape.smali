.class public Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/RectangleBitmapTextureAtlasSourceDecoratorShape;
.super Ljava/lang/Object;
.source "RectangleBitmapTextureAtlasSourceDecoratorShape.java"

# interfaces
.implements Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;


# static fields
.field private static sDefaultInstance:Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/RectangleBitmapTextureAtlasSourceDecoratorShape;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static getDefaultInstance()Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/RectangleBitmapTextureAtlasSourceDecoratorShape;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/RectangleBitmapTextureAtlasSourceDecoratorShape;->sDefaultInstance:Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/RectangleBitmapTextureAtlasSourceDecoratorShape;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/RectangleBitmapTextureAtlasSourceDecoratorShape;

    invoke-direct {v0}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/RectangleBitmapTextureAtlasSourceDecoratorShape;-><init>()V

    sput-object v0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/RectangleBitmapTextureAtlasSourceDecoratorShape;->sDefaultInstance:Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/RectangleBitmapTextureAtlasSourceDecoratorShape;

    .line 31
    :cond_0
    sget-object v0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/RectangleBitmapTextureAtlasSourceDecoratorShape;->sDefaultInstance:Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/RectangleBitmapTextureAtlasSourceDecoratorShape;

    return-object v0
.end method


# virtual methods
.method public onDecorateBitmap(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V
    .locals 6
    .parameter "pCanvas"
    .parameter "pPaint"
    .parameter "pDecoratorOptions"

    .prologue
    .line 44
    invoke-virtual {p3}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->getInsetLeft()F

    move-result v1

    .line 45
    .local v1, left:F
    invoke-virtual {p3}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->getInsetTop()F

    move-result v2

    .line 46
    .local v2, top:F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p3}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->getInsetRight()F

    move-result v5

    sub-float v3, v0, v5

    .line 47
    .local v3, right:F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p3}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->getInsetBottom()F

    move-result v5

    sub-float v4, v0, v5

    .local v4, bottom:F
    move-object v0, p1

    move-object v5, p2

    .line 49
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 50
    return-void
.end method
