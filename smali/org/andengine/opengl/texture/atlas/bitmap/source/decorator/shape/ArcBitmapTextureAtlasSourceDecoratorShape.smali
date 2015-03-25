.class public Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/ArcBitmapTextureAtlasSourceDecoratorShape;
.super Ljava/lang/Object;
.source "ArcBitmapTextureAtlasSourceDecoratorShape.java"

# interfaces
.implements Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;


# static fields
.field private static final STARTANGLE_DEFAULT:F = 0.0f

.field private static final SWEEPANGLE_DEFAULT:F = 360.0f

.field private static final USECENTER_DEFAULT:Z = true

.field private static sDefaultInstance:Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/ArcBitmapTextureAtlasSourceDecoratorShape;


# instance fields
.field private final mRectF:Landroid/graphics/RectF;

.field private final mStartAngle:F

.field private final mSweepAngle:F

.field private final mUseCenter:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 42
    const/4 v0, 0x0

    const/high16 v1, 0x43b4

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/ArcBitmapTextureAtlasSourceDecoratorShape;-><init>(FFZ)V

    .line 43
    return-void
.end method

.method public constructor <init>(FFZ)V
    .locals 1
    .parameter "pStartAngle"
    .parameter "pSweepAngle"
    .parameter "pUseCenter"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/ArcBitmapTextureAtlasSourceDecoratorShape;->mRectF:Landroid/graphics/RectF;

    .line 46
    iput p1, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/ArcBitmapTextureAtlasSourceDecoratorShape;->mStartAngle:F

    .line 47
    iput p2, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/ArcBitmapTextureAtlasSourceDecoratorShape;->mSweepAngle:F

    .line 48
    iput-boolean p3, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/ArcBitmapTextureAtlasSourceDecoratorShape;->mUseCenter:Z

    .line 49
    return-void
.end method

.method public static getDefaultInstance()Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/ArcBitmapTextureAtlasSourceDecoratorShape;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 53
    sget-object v0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/ArcBitmapTextureAtlasSourceDecoratorShape;->sDefaultInstance:Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/ArcBitmapTextureAtlasSourceDecoratorShape;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/ArcBitmapTextureAtlasSourceDecoratorShape;

    invoke-direct {v0}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/ArcBitmapTextureAtlasSourceDecoratorShape;-><init>()V

    sput-object v0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/ArcBitmapTextureAtlasSourceDecoratorShape;->sDefaultInstance:Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/ArcBitmapTextureAtlasSourceDecoratorShape;

    .line 56
    :cond_0
    sget-object v0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/ArcBitmapTextureAtlasSourceDecoratorShape;->sDefaultInstance:Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/ArcBitmapTextureAtlasSourceDecoratorShape;

    return-object v0
.end method


# virtual methods
.method public onDecorateBitmap(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V
    .locals 10
    .parameter "pCanvas"
    .parameter "pPaint"
    .parameter "pDecoratorOptions"

    .prologue
    .line 69
    invoke-virtual {p3}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->getInsetLeft()F

    move-result v7

    .line 70
    .local v7, left:F
    invoke-virtual {p3}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->getInsetTop()F

    move-result v9

    .line 71
    .local v9, top:F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p3}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->getInsetRight()F

    move-result v1

    sub-float v8, v0, v1

    .line 72
    .local v8, right:F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p3}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->getInsetBottom()F

    move-result v1

    sub-float v6, v0, v1

    .line 74
    .local v6, bottom:F
    iget-object v0, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/ArcBitmapTextureAtlasSourceDecoratorShape;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v7, v9, v8, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 76
    iget-object v1, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/ArcBitmapTextureAtlasSourceDecoratorShape;->mRectF:Landroid/graphics/RectF;

    iget v2, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/ArcBitmapTextureAtlasSourceDecoratorShape;->mStartAngle:F

    iget v3, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/ArcBitmapTextureAtlasSourceDecoratorShape;->mSweepAngle:F

    iget-boolean v4, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/ArcBitmapTextureAtlasSourceDecoratorShape;->mUseCenter:Z

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 77
    return-void
.end method
