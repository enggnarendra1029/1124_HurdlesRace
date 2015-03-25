.class public abstract Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator;
.super Lorg/andengine/opengl/texture/atlas/source/BaseTextureAtlasSource;
.source "BaseBitmapTextureAtlasSourceDecorator.java"

# interfaces
.implements Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;
    }
.end annotation


# instance fields
.field protected final mBitmapTextureAtlasSource:Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;

.field protected mPaint:Landroid/graphics/Paint;

.field protected mTextureAtlasSourceDecoratorOptions:Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;


# direct methods
.method public constructor <init>(Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;)V
    .locals 1
    .parameter "pBitmapTextureAtlasSource"

    .prologue
    .line 37
    new-instance v0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;

    invoke-direct {v0}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator;-><init>(Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V
    .locals 4
    .parameter "pBitmapTextureAtlasSource"
    .parameter "pTextureAtlasSourceDecoratorOptions"

    .prologue
    .line 41
    invoke-interface {p1}, Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;->getTextureX()I

    move-result v0

    invoke-interface {p1}, Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;->getTextureY()I

    move-result v1

    invoke-interface {p1}, Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;->getTextureWidth()I

    move-result v2

    invoke-interface {p1}, Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;->getTextureHeight()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/andengine/opengl/texture/atlas/source/BaseTextureAtlasSource;-><init>(IIII)V

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator;->mPaint:Landroid/graphics/Paint;

    .line 43
    iput-object p1, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator;->mBitmapTextureAtlasSource:Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;

    .line 44
    if-nez p2, :cond_0

    new-instance p2, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;

    .end local p2
    invoke-direct {p2}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;-><init>()V

    :cond_0
    iput-object p2, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator;->mTextureAtlasSourceDecoratorOptions:Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;

    .line 45
    iget-object v0, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator;->mTextureAtlasSourceDecoratorOptions:Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;

    invoke-virtual {v1}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->getAntiAliasing()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 46
    return-void
.end method

.method private static ensureLoadedBitmapIsMutable(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "pBitmap"

    .prologue
    .line 105
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    .end local p0
    :goto_0
    return-object p0

    .line 108
    .restart local p0
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 109
    .local v0, mutableBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    move-object p0, v0

    .line 110
    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic deepCopy()Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator;->deepCopy()Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator;

    move-result-object v0

    return-object v0
.end method

.method public abstract deepCopy()Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator;
.end method

.method public bridge synthetic deepCopy()Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator;->deepCopy()Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator;

    move-result-object v0

    return-object v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getTextureAtlasSourceDecoratorOptions()Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator;->mTextureAtlasSourceDecoratorOptions:Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;

    return-object v0
.end method

.method public getTextureHeight()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator;->mBitmapTextureAtlasSource:Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;

    invoke-interface {v0}, Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;->getTextureHeight()I

    move-result v0

    return v0
.end method

.method public getTextureWidth()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator;->mBitmapTextureAtlasSource:Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;

    invoke-interface {v0}, Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;->getTextureWidth()I

    move-result v0

    return v0
.end method

.method protected abstract onDecorateBitmap(Landroid/graphics/Canvas;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public onLoadBitmap(Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "pBitmapConfig"

    .prologue
    .line 89
    iget-object v3, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator;->mBitmapTextureAtlasSource:Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;

    invoke-interface {v3, p1}, Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;->onLoadBitmap(Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator;->ensureLoadedBitmapIsMutable(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 91
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 93
    .local v1, canvas:Landroid/graphics/Canvas;
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator;->onDecorateBitmap(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    return-object v0

    .line 94
    :catch_0
    move-exception v2

    .line 95
    .local v2, e:Ljava/lang/Exception;
    invoke-static {v2}, Lorg/andengine/util/debug/Debug;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setPaint(Landroid/graphics/Paint;)V
    .locals 0
    .parameter "pPaint"

    .prologue
    .line 60
    iput-object p1, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator;->mPaint:Landroid/graphics/Paint;

    .line 61
    return-void
.end method

.method public setTextureAtlasSourceDecoratorOptions(Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V
    .locals 0
    .parameter "pTextureAtlasSourceDecoratorOptions"

    .prologue
    .line 68
    iput-object p1, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator;->mTextureAtlasSourceDecoratorOptions:Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;

    .line 69
    return-void
.end method
