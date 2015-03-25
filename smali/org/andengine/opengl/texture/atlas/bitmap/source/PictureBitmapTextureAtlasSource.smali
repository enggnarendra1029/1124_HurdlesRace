.class public abstract Lorg/andengine/opengl/texture/atlas/bitmap/source/PictureBitmapTextureAtlasSource;
.super Lorg/andengine/opengl/texture/atlas/source/BaseTextureAtlasSource;
.source "PictureBitmapTextureAtlasSource.java"

# interfaces
.implements Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;


# instance fields
.field protected final mPicture:Landroid/graphics/Picture;


# direct methods
.method public constructor <init>(Landroid/graphics/Picture;)V
    .locals 1
    .parameter "pPicture"

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, v0, v0}, Lorg/andengine/opengl/texture/atlas/bitmap/source/PictureBitmapTextureAtlasSource;-><init>(Landroid/graphics/Picture;II)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Picture;II)V
    .locals 6
    .parameter "pPicture"
    .parameter "pTextureX"
    .parameter "pTextureY"

    .prologue
    .line 38
    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/andengine/opengl/texture/atlas/bitmap/source/PictureBitmapTextureAtlasSource;-><init>(Landroid/graphics/Picture;IIII)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Picture;IIF)V
    .locals 6
    .parameter "pPicture"
    .parameter "pTextureX"
    .parameter "pTextureY"
    .parameter "pScale"

    .prologue
    .line 42
    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/andengine/opengl/texture/atlas/bitmap/source/PictureBitmapTextureAtlasSource;-><init>(Landroid/graphics/Picture;IIII)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Picture;IIII)V
    .locals 0
    .parameter "pPicture"
    .parameter "pTextureX"
    .parameter "pTextureY"
    .parameter "pTextureWidth"
    .parameter "pTextureHeight"

    .prologue
    .line 46
    invoke-direct {p0, p2, p3, p4, p5}, Lorg/andengine/opengl/texture/atlas/source/BaseTextureAtlasSource;-><init>(IIII)V

    .line 48
    iput-object p1, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/PictureBitmapTextureAtlasSource;->mPicture:Landroid/graphics/Picture;

    .line 49
    return-void
.end method


# virtual methods
.method public bridge synthetic deepCopy()Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/opengl/texture/atlas/bitmap/source/PictureBitmapTextureAtlasSource;->deepCopy()Lorg/andengine/opengl/texture/atlas/bitmap/source/PictureBitmapTextureAtlasSource;

    move-result-object v0

    return-object v0
.end method

.method public abstract deepCopy()Lorg/andengine/opengl/texture/atlas/bitmap/source/PictureBitmapTextureAtlasSource;
.end method

.method public bridge synthetic deepCopy()Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/opengl/texture/atlas/bitmap/source/PictureBitmapTextureAtlasSource;->deepCopy()Lorg/andengine/opengl/texture/atlas/bitmap/source/PictureBitmapTextureAtlasSource;

    move-result-object v0

    return-object v0
.end method

.method public onLoadBitmap(Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "pBitmapConfig"

    .prologue
    const/4 v7, 0x0

    .line 64
    iget-object v2, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/PictureBitmapTextureAtlasSource;->mPicture:Landroid/graphics/Picture;

    .line 65
    .local v2, picture:Landroid/graphics/Picture;
    if-nez v2, :cond_0

    .line 66
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed loading Bitmap in "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/andengine/util/debug/Debug;->e(Ljava/lang/String;)V

    .line 67
    const/4 v0, 0x0

    .line 79
    :goto_0
    return-object v0

    .line 70
    :cond_0
    iget v5, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/PictureBitmapTextureAtlasSource;->mTextureWidth:I

    iget v6, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/PictureBitmapTextureAtlasSource;->mTextureHeight:I

    invoke-static {v5, v6, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 71
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 73
    .local v1, canvas:Landroid/graphics/Canvas;
    iget v5, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/PictureBitmapTextureAtlasSource;->mTextureWidth:I

    int-to-float v5, v5

    iget-object v6, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/PictureBitmapTextureAtlasSource;->mPicture:Landroid/graphics/Picture;

    invoke-virtual {v6}, Landroid/graphics/Picture;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v3, v5, v6

    .line 74
    .local v3, scaleX:F
    iget v5, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/PictureBitmapTextureAtlasSource;->mTextureHeight:I

    int-to-float v5, v5

    iget-object v6, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/PictureBitmapTextureAtlasSource;->mPicture:Landroid/graphics/Picture;

    invoke-virtual {v6}, Landroid/graphics/Picture;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 75
    .local v4, scaleY:F
    invoke-virtual {v1, v3, v4, v7, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 77
    invoke-virtual {v2, v1}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method
