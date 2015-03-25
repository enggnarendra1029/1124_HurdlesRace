.class public Lorg/andengine/opengl/texture/atlas/bitmap/source/FileBitmapTextureAtlasSource;
.super Lorg/andengine/opengl/texture/atlas/source/BaseTextureAtlasSource;
.source "FileBitmapTextureAtlasSource.java"

# interfaces
.implements Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;


# instance fields
.field private final mFile:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;IIII)V
    .locals 0
    .parameter "pFile"
    .parameter "pTextureX"
    .parameter "pTextureY"
    .parameter "pTextureWidth"
    .parameter "pTextureHeight"

    .prologue
    .line 71
    invoke-direct {p0, p2, p3, p4, p5}, Lorg/andengine/opengl/texture/atlas/source/BaseTextureAtlasSource;-><init>(IIII)V

    .line 73
    iput-object p1, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/FileBitmapTextureAtlasSource;->mFile:Ljava/io/File;

    .line 74
    return-void
.end method

.method public static create(Ljava/io/File;)Lorg/andengine/opengl/texture/atlas/bitmap/source/FileBitmapTextureAtlasSource;
    .locals 1
    .parameter "pFile"

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-static {p0, v0, v0}, Lorg/andengine/opengl/texture/atlas/bitmap/source/FileBitmapTextureAtlasSource;->create(Ljava/io/File;II)Lorg/andengine/opengl/texture/atlas/bitmap/source/FileBitmapTextureAtlasSource;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/io/File;II)Lorg/andengine/opengl/texture/atlas/bitmap/source/FileBitmapTextureAtlasSource;
    .locals 10
    .parameter "pFile"
    .parameter "pTextureX"
    .parameter "pTextureY"

    .prologue
    .line 46
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 47
    .local v6, decodeOptions:Landroid/graphics/BitmapFactory$Options;
    const/4 v0, 0x1

    iput-boolean v0, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 49
    const/4 v8, 0x0

    .line 51
    .local v8, in:Ljava/io/InputStream;
    :try_start_0
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v8           #in:Ljava/io/InputStream;
    .local v9, in:Ljava/io/InputStream;
    const/4 v0, 0x0

    :try_start_1
    invoke-static {v9, v0, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 56
    invoke-static {v9}, Lorg/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    move-object v8, v9

    .line 59
    .end local v9           #in:Ljava/io/InputStream;
    .restart local v8       #in:Ljava/io/InputStream;
    :goto_0
    new-instance v0, Lorg/andengine/opengl/texture/atlas/bitmap/source/FileBitmapTextureAtlasSource;

    iget v4, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/andengine/opengl/texture/atlas/bitmap/source/FileBitmapTextureAtlasSource;-><init>(Ljava/io/File;IIII)V

    return-object v0

    .line 53
    :catch_0
    move-exception v7

    .line 54
    .local v7, e:Ljava/io/IOException;
    :goto_1
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed loading Bitmap in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lorg/andengine/opengl/texture/atlas/bitmap/source/FileBitmapTextureAtlasSource;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". File: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Lorg/andengine/util/debug/Debug;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    invoke-static {v8}, Lorg/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    .line 55
    .end local v7           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v0

    .line 56
    :goto_2
    invoke-static {v8}, Lorg/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 57
    throw v0

    .line 55
    .end local v8           #in:Ljava/io/InputStream;
    .restart local v9       #in:Ljava/io/InputStream;
    :catchall_1
    move-exception v0

    move-object v8, v9

    .end local v9           #in:Ljava/io/InputStream;
    .restart local v8       #in:Ljava/io/InputStream;
    goto :goto_2

    .line 53
    .end local v8           #in:Ljava/io/InputStream;
    .restart local v9       #in:Ljava/io/InputStream;
    :catch_1
    move-exception v7

    move-object v8, v9

    .end local v9           #in:Ljava/io/InputStream;
    .restart local v8       #in:Ljava/io/InputStream;
    goto :goto_1
.end method

.method public static createFromExternalStorage(Landroid/content/Context;Ljava/lang/String;II)Lorg/andengine/opengl/texture/atlas/bitmap/source/FileBitmapTextureAtlasSource;
    .locals 2
    .parameter "pContext"
    .parameter "pFilePath"
    .parameter "pTextureX"
    .parameter "pTextureY"

    .prologue
    .line 67
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1}, Lorg/andengine/util/FileUtils;->getAbsolutePathOnExternalStorage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p2, p3}, Lorg/andengine/opengl/texture/atlas/bitmap/source/FileBitmapTextureAtlasSource;->create(Ljava/io/File;II)Lorg/andengine/opengl/texture/atlas/bitmap/source/FileBitmapTextureAtlasSource;

    move-result-object v0

    return-object v0
.end method

.method public static createFromInternalStorage(Landroid/content/Context;Ljava/lang/String;II)Lorg/andengine/opengl/texture/atlas/bitmap/source/FileBitmapTextureAtlasSource;
    .locals 2
    .parameter "pContext"
    .parameter "pFilePath"
    .parameter "pTextureX"
    .parameter "pTextureY"

    .prologue
    .line 63
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1}, Lorg/andengine/util/FileUtils;->getAbsolutePathOnInternalStorage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p2, p3}, Lorg/andengine/opengl/texture/atlas/bitmap/source/FileBitmapTextureAtlasSource;->create(Ljava/io/File;II)Lorg/andengine/opengl/texture/atlas/bitmap/source/FileBitmapTextureAtlasSource;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deepCopy()Lorg/andengine/opengl/texture/atlas/bitmap/source/FileBitmapTextureAtlasSource;
    .locals 6

    .prologue
    .line 78
    new-instance v0, Lorg/andengine/opengl/texture/atlas/bitmap/source/FileBitmapTextureAtlasSource;

    iget-object v1, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/FileBitmapTextureAtlasSource;->mFile:Ljava/io/File;

    iget v2, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/FileBitmapTextureAtlasSource;->mTextureX:I

    iget v3, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/FileBitmapTextureAtlasSource;->mTextureY:I

    iget v4, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/FileBitmapTextureAtlasSource;->mTextureWidth:I

    iget v5, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/FileBitmapTextureAtlasSource;->mTextureHeight:I

    invoke-direct/range {v0 .. v5}, Lorg/andengine/opengl/texture/atlas/bitmap/source/FileBitmapTextureAtlasSource;-><init>(Ljava/io/File;IIII)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/opengl/texture/atlas/bitmap/source/FileBitmapTextureAtlasSource;->deepCopy()Lorg/andengine/opengl/texture/atlas/bitmap/source/FileBitmapTextureAtlasSource;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/opengl/texture/atlas/bitmap/source/FileBitmapTextureAtlasSource;->deepCopy()Lorg/andengine/opengl/texture/atlas/bitmap/source/FileBitmapTextureAtlasSource;

    move-result-object v0

    return-object v0
.end method

.method public onLoadBitmap(Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "pBitmapConfig"

    .prologue
    const/4 v4, 0x0

    .line 91
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 92
    .local v0, decodeOptions:Landroid/graphics/BitmapFactory$Options;
    iput-object p1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 94
    const/4 v2, 0x0

    .line 96
    .local v2, in:Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v5, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/FileBitmapTextureAtlasSource;->mFile:Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .end local v2           #in:Ljava/io/InputStream;
    .local v3, in:Ljava/io/InputStream;
    const/4 v5, 0x0

    :try_start_1
    invoke-static {v3, v5, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 102
    invoke-static {v3}, Lorg/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    move-object v2, v3

    .line 100
    .end local v3           #in:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    :goto_0
    return-object v4

    .line 98
    :catch_0
    move-exception v1

    .line 99
    .local v1, e:Ljava/io/IOException;
    :goto_1
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed loading Bitmap in "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". File: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/FileBitmapTextureAtlasSource;->mFile:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lorg/andengine/util/debug/Debug;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    invoke-static {v2}, Lorg/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    .line 101
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 102
    :goto_2
    invoke-static {v2}, Lorg/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 103
    throw v4

    .line 101
    .end local v2           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #in:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    goto :goto_2

    .line 98
    .end local v2           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3           #in:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
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

    iget-object v1, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/FileBitmapTextureAtlasSource;->mFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
