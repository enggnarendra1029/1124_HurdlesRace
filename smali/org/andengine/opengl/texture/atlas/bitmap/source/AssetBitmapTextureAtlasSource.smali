.class public Lorg/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;
.super Lorg/andengine/opengl/texture/atlas/source/BaseTextureAtlasSource;
.source "AssetBitmapTextureAtlasSource.java"

# interfaces
.implements Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;


# instance fields
.field private final mAssetManager:Landroid/content/res/AssetManager;

.field private final mAssetPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;IIII)V
    .locals 0
    .parameter "pAssetManager"
    .parameter "pAssetPath"
    .parameter "pTextureX"
    .parameter "pTextureY"
    .parameter "pTextureWidth"
    .parameter "pTextureHeight"

    .prologue
    .line 60
    invoke-direct {p0, p3, p4, p5, p6}, Lorg/andengine/opengl/texture/atlas/source/BaseTextureAtlasSource;-><init>(IIII)V

    .line 62
    iput-object p1, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;->mAssetManager:Landroid/content/res/AssetManager;

    .line 63
    iput-object p2, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;->mAssetPath:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public static create(Landroid/content/res/AssetManager;Ljava/lang/String;)Lorg/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;
    .locals 1
    .parameter "pAssetManager"
    .parameter "pAssetPath"

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-static {p0, p1, v0, v0}, Lorg/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;->create(Landroid/content/res/AssetManager;Ljava/lang/String;II)Lorg/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/res/AssetManager;Ljava/lang/String;II)Lorg/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;
    .locals 10
    .parameter "pAssetManager"
    .parameter "pAssetPath"
    .parameter "pTextureX"
    .parameter "pTextureY"

    .prologue
    .line 43
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 44
    .local v7, decodeOptions:Landroid/graphics/BitmapFactory$Options;
    const/4 v0, 0x1

    iput-boolean v0, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 46
    const/4 v9, 0x0

    .line 48
    .local v9, in:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    .line 49
    const/4 v0, 0x0

    invoke-static {v9, v0, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    invoke-static {v9}, Lorg/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 56
    :goto_0
    new-instance v0, Lorg/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;

    iget v5, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v6}, Lorg/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;IIII)V

    return-object v0

    .line 50
    :catch_0
    move-exception v8

    .line 51
    .local v8, e:Ljava/io/IOException;
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed loading Bitmap in AssetBitmapTextureAtlasSource. AssetPath: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Lorg/andengine/util/debug/Debug;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    invoke-static {v9}, Lorg/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    .line 52
    .end local v8           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v0

    .line 53
    invoke-static {v9}, Lorg/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 54
    throw v0
.end method


# virtual methods
.method public deepCopy()Lorg/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;
    .locals 7

    .prologue
    .line 68
    new-instance v0, Lorg/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;

    iget-object v1, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;->mAssetManager:Landroid/content/res/AssetManager;

    iget-object v2, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;->mAssetPath:Ljava/lang/String;

    iget v3, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;->mTextureX:I

    iget v4, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;->mTextureY:I

    iget v5, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;->mTextureWidth:I

    iget v6, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;->mTextureHeight:I

    invoke-direct/range {v0 .. v6}, Lorg/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;IIII)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;->deepCopy()Lorg/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;->deepCopy()Lorg/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;

    move-result-object v0

    return-object v0
.end method

.method public onLoadBitmap(Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "pBitmapConfig"

    .prologue
    const/4 v3, 0x0

    .line 81
    const/4 v2, 0x0

    .line 83
    .local v2, in:Ljava/io/InputStream;
    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 84
    .local v0, decodeOptions:Landroid/graphics/BitmapFactory$Options;
    iput-object p1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 86
    iget-object v4, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;->mAssetManager:Landroid/content/res/AssetManager;

    iget-object v5, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;->mAssetPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 87
    const/4 v4, 0x0

    invoke-static {v2, v4, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 92
    invoke-static {v2}, Lorg/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 90
    .end local v0           #decodeOptions:Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v3

    .line 88
    :catch_0
    move-exception v1

    .line 89
    .local v1, e:Ljava/io/IOException;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed loading Bitmap in "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". AssetPath: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;->mAssetPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lorg/andengine/util/debug/Debug;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    invoke-static {v2}, Lorg/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    .line 91
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 92
    invoke-static {v2}, Lorg/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 93
    throw v3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
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

    iget-object v1, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;->mAssetPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
