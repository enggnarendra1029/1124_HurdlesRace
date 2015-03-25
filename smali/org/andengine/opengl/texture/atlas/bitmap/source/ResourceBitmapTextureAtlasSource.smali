.class public Lorg/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;
.super Lorg/andengine/opengl/texture/atlas/source/BaseTextureAtlasSource;
.source "ResourceBitmapTextureAtlasSource.java"

# interfaces
.implements Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;


# instance fields
.field private final mDrawableResourceID:I

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;IIIII)V
    .locals 0
    .parameter "pResources"
    .parameter "pDrawableResourceID"
    .parameter "pTextureX"
    .parameter "pTextureY"
    .parameter "pTextureWidth"
    .parameter "pTextureHeight"

    .prologue
    .line 49
    invoke-direct {p0, p3, p4, p5, p6}, Lorg/andengine/opengl/texture/atlas/source/BaseTextureAtlasSource;-><init>(IIII)V

    .line 51
    iput-object p1, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;->mResources:Landroid/content/res/Resources;

    .line 52
    iput p2, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;->mDrawableResourceID:I

    .line 53
    return-void
.end method

.method public static create(Landroid/content/res/Resources;I)Lorg/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;
    .locals 1
    .parameter "pResources"
    .parameter "pDrawableResourceID"

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-static {p0, p1, v0, v0}, Lorg/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;->create(Landroid/content/res/Resources;III)Lorg/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/res/Resources;III)Lorg/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;
    .locals 8
    .parameter "pResources"
    .parameter "pDrawableResourceID"
    .parameter "pTextureX"
    .parameter "pTextureY"

    .prologue
    .line 39
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 40
    .local v7, decodeOptions:Landroid/graphics/BitmapFactory$Options;
    const/4 v0, 0x1

    iput-boolean v0, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 43
    invoke-static {p0, p1, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 45
    new-instance v0, Lorg/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;

    iget v5, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v6}, Lorg/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;-><init>(Landroid/content/res/Resources;IIIII)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic deepCopy()Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;->deepCopy()Lorg/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lorg/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;
    .locals 7

    .prologue
    .line 57
    new-instance v0, Lorg/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;

    iget-object v1, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;->mResources:Landroid/content/res/Resources;

    iget v2, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;->mDrawableResourceID:I

    iget v3, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;->mTextureX:I

    iget v4, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;->mTextureY:I

    iget v5, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;->mTextureWidth:I

    iget v6, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;->mTextureHeight:I

    invoke-direct/range {v0 .. v6}, Lorg/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;-><init>(Landroid/content/res/Resources;IIIII)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;->deepCopy()Lorg/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;

    move-result-object v0

    return-object v0
.end method

.method public onLoadBitmap(Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "pBitmapConfig"

    .prologue
    .line 70
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 71
    .local v0, decodeOptions:Landroid/graphics/BitmapFactory$Options;
    iput-object p1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 73
    iget-object v1, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;->mResources:Landroid/content/res/Resources;

    iget v2, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;->mDrawableResourceID:I

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
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

    iget v1, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;->mDrawableResourceID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
