.class public Lorg/andengine/opengl/texture/atlas/bitmap/source/EmptyBitmapTextureAtlasSource;
.super Lorg/andengine/opengl/texture/atlas/source/BaseTextureAtlasSource;
.source "EmptyBitmapTextureAtlasSource.java"

# interfaces
.implements Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .parameter "pTextureWidth"
    .parameter "pTextureHeight"

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, v0, v0, p1, p2}, Lorg/andengine/opengl/texture/atlas/bitmap/source/EmptyBitmapTextureAtlasSource;-><init>(IIII)V

    .line 31
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .parameter "pTextureX"
    .parameter "pTextureY"
    .parameter "pTextureWidth"
    .parameter "pTextureHeight"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/andengine/opengl/texture/atlas/source/BaseTextureAtlasSource;-><init>(IIII)V

    .line 35
    return-void
.end method


# virtual methods
.method public deepCopy()Lorg/andengine/opengl/texture/atlas/bitmap/source/EmptyBitmapTextureAtlasSource;
    .locals 5

    .prologue
    .line 39
    new-instance v0, Lorg/andengine/opengl/texture/atlas/bitmap/source/EmptyBitmapTextureAtlasSource;

    iget v1, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/EmptyBitmapTextureAtlasSource;->mTextureX:I

    iget v2, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/EmptyBitmapTextureAtlasSource;->mTextureY:I

    iget v3, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/EmptyBitmapTextureAtlasSource;->mTextureWidth:I

    iget v4, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/EmptyBitmapTextureAtlasSource;->mTextureHeight:I

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/andengine/opengl/texture/atlas/bitmap/source/EmptyBitmapTextureAtlasSource;-><init>(IIII)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/opengl/texture/atlas/bitmap/source/EmptyBitmapTextureAtlasSource;->deepCopy()Lorg/andengine/opengl/texture/atlas/bitmap/source/EmptyBitmapTextureAtlasSource;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/opengl/texture/atlas/bitmap/source/EmptyBitmapTextureAtlasSource;->deepCopy()Lorg/andengine/opengl/texture/atlas/bitmap/source/EmptyBitmapTextureAtlasSource;

    move-result-object v0

    return-object v0
.end method

.method public onLoadBitmap(Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "pBitmapConfig"

    .prologue
    .line 52
    iget v0, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/EmptyBitmapTextureAtlasSource;->mTextureWidth:I

    iget v1, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/EmptyBitmapTextureAtlasSource;->mTextureHeight:I

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/EmptyBitmapTextureAtlasSource;->mTextureWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/EmptyBitmapTextureAtlasSource;->mTextureHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
