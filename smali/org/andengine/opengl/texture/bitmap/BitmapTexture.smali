.class public Lorg/andengine/opengl/texture/bitmap/BitmapTexture;
.super Lorg/andengine/opengl/texture/Texture;
.source "BitmapTexture.java"


# instance fields
.field private final mBitmapTextureFormat:Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;

.field private final mHeight:I

.field private final mInputStreamOpener:Lorg/andengine/util/adt/io/in/IInputStreamOpener;

.field private final mWidth:I


# direct methods
.method public constructor <init>(Lorg/andengine/opengl/texture/TextureManager;Lorg/andengine/util/adt/io/in/IInputStreamOpener;)V
    .locals 6
    .parameter "pTextureManager"
    .parameter "pInputStreamOpener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    sget-object v3, Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;->RGBA_8888:Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;

    sget-object v4, Lorg/andengine/opengl/texture/TextureOptions;->DEFAULT:Lorg/andengine/opengl/texture/TextureOptions;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/andengine/opengl/texture/bitmap/BitmapTexture;-><init>(Lorg/andengine/opengl/texture/TextureManager;Lorg/andengine/util/adt/io/in/IInputStreamOpener;Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;Lorg/andengine/opengl/texture/TextureOptions;Lorg/andengine/opengl/texture/ITextureStateListener;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/TextureManager;Lorg/andengine/util/adt/io/in/IInputStreamOpener;Lorg/andengine/opengl/texture/TextureOptions;)V
    .locals 6
    .parameter "pTextureManager"
    .parameter "pInputStreamOpener"
    .parameter "pTextureOptions"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    sget-object v3, Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;->RGBA_8888:Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/andengine/opengl/texture/bitmap/BitmapTexture;-><init>(Lorg/andengine/opengl/texture/TextureManager;Lorg/andengine/util/adt/io/in/IInputStreamOpener;Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;Lorg/andengine/opengl/texture/TextureOptions;Lorg/andengine/opengl/texture/ITextureStateListener;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/TextureManager;Lorg/andengine/util/adt/io/in/IInputStreamOpener;Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;)V
    .locals 6
    .parameter "pTextureManager"
    .parameter "pInputStreamOpener"
    .parameter "pBitmapTextureFormat"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    sget-object v4, Lorg/andengine/opengl/texture/TextureOptions;->DEFAULT:Lorg/andengine/opengl/texture/TextureOptions;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/andengine/opengl/texture/bitmap/BitmapTexture;-><init>(Lorg/andengine/opengl/texture/TextureManager;Lorg/andengine/util/adt/io/in/IInputStreamOpener;Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;Lorg/andengine/opengl/texture/TextureOptions;Lorg/andengine/opengl/texture/ITextureStateListener;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/TextureManager;Lorg/andengine/util/adt/io/in/IInputStreamOpener;Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;Lorg/andengine/opengl/texture/TextureOptions;)V
    .locals 6
    .parameter "pTextureManager"
    .parameter "pInputStreamOpener"
    .parameter "pBitmapTextureFormat"
    .parameter "pTextureOptions"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/andengine/opengl/texture/bitmap/BitmapTexture;-><init>(Lorg/andengine/opengl/texture/TextureManager;Lorg/andengine/util/adt/io/in/IInputStreamOpener;Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;Lorg/andengine/opengl/texture/TextureOptions;Lorg/andengine/opengl/texture/ITextureStateListener;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/TextureManager;Lorg/andengine/util/adt/io/in/IInputStreamOpener;Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;Lorg/andengine/opengl/texture/TextureOptions;Lorg/andengine/opengl/texture/ITextureStateListener;)V
    .locals 4
    .parameter "pTextureManager"
    .parameter "pInputStreamOpener"
    .parameter "pBitmapTextureFormat"
    .parameter "pTextureOptions"
    .parameter "pTextureStateListener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p3}, Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;->getPixelFormat()Lorg/andengine/opengl/texture/PixelFormat;

    move-result-object v2

    invoke-direct {p0, p1, v2, p4, p5}, Lorg/andengine/opengl/texture/Texture;-><init>(Lorg/andengine/opengl/texture/TextureManager;Lorg/andengine/opengl/texture/PixelFormat;Lorg/andengine/opengl/texture/TextureOptions;Lorg/andengine/opengl/texture/ITextureStateListener;)V

    .line 66
    iput-object p2, p0, Lorg/andengine/opengl/texture/bitmap/BitmapTexture;->mInputStreamOpener:Lorg/andengine/util/adt/io/in/IInputStreamOpener;

    .line 67
    iput-object p3, p0, Lorg/andengine/opengl/texture/bitmap/BitmapTexture;->mBitmapTextureFormat:Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;

    .line 69
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 70
    .local v0, decodeOptions:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 72
    const/4 v1, 0x0

    .line 74
    .local v1, in:Ljava/io/InputStream;
    :try_start_0
    invoke-interface {p2}, Lorg/andengine/util/adt/io/in/IInputStreamOpener;->open()Ljava/io/InputStream;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    invoke-static {v1}, Lorg/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 79
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v2, p0, Lorg/andengine/opengl/texture/bitmap/BitmapTexture;->mWidth:I

    .line 80
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v2, p0, Lorg/andengine/opengl/texture/bitmap/BitmapTexture;->mHeight:I

    .line 81
    return-void

    .line 75
    :catchall_0
    move-exception v2

    .line 76
    invoke-static {v1}, Lorg/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 77
    throw v2
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lorg/andengine/opengl/texture/bitmap/BitmapTexture;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lorg/andengine/opengl/texture/bitmap/BitmapTexture;->mWidth:I

    return v0
.end method

.method protected onGetBitmap(Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "pBitmapConfig"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 137
    .local v0, decodeOptions:Landroid/graphics/BitmapFactory$Options;
    iput-object p1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 139
    iget-object v1, p0, Lorg/andengine/opengl/texture/bitmap/BitmapTexture;->mInputStreamOpener:Lorg/andengine/util/adt/io/in/IInputStreamOpener;

    invoke-interface {v1}, Lorg/andengine/util/adt/io/in/IInputStreamOpener;->open()Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method protected writeTextureToHardware(Lorg/andengine/opengl/util/GLState;)V
    .locals 10
    .parameter "pGLState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0xde1

    const/16 v9, 0xcf5

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 103
    iget-object v4, p0, Lorg/andengine/opengl/texture/bitmap/BitmapTexture;->mBitmapTextureFormat:Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;

    invoke-virtual {v4}, Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;->getBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    .line 104
    .local v6, bitmapConfig:Landroid/graphics/Bitmap$Config;
    invoke-virtual {p0, v6}, Lorg/andengine/opengl/texture/bitmap/BitmapTexture;->onGetBitmap(Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 106
    .local v3, bitmap:Landroid/graphics/Bitmap;
    if-nez v3, :cond_0

    .line 107
    new-instance v0, Lorg/andengine/util/exception/NullBitmapException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Caused by: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/andengine/util/exception/NullBitmapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-static {v4}, Lorg/andengine/util/math/MathUtils;->isPowerOfTwo(I)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v4}, Lorg/andengine/util/math/MathUtils;->isPowerOfTwo(I)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/andengine/opengl/texture/bitmap/BitmapTexture;->mPixelFormat:Lorg/andengine/opengl/texture/PixelFormat;

    sget-object v5, Lorg/andengine/opengl/texture/PixelFormat;->RGBA_8888:Lorg/andengine/opengl/texture/PixelFormat;

    if-ne v4, v5, :cond_3

    move v8, v0

    .line 111
    .local v8, useDefaultAlignment:Z
    :goto_0
    if-nez v8, :cond_1

    .line 113
    invoke-static {v9, v0}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 116
    :cond_1
    iget-object v0, p0, Lorg/andengine/opengl/texture/bitmap/BitmapTexture;->mTextureOptions:Lorg/andengine/opengl/texture/TextureOptions;

    iget-boolean v7, v0, Lorg/andengine/opengl/texture/TextureOptions;->mPreMultiplyAlpha:Z

    .line 117
    .local v7, preMultipyAlpha:Z
    if-eqz v7, :cond_4

    .line 118
    invoke-static {v1, v2, v3, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 123
    :goto_1
    if-nez v8, :cond_2

    .line 125
    const/4 v0, 0x4

    invoke-static {v9, v0}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 128
    :cond_2
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 129
    return-void

    .end local v7           #preMultipyAlpha:Z
    .end local v8           #useDefaultAlignment:Z
    :cond_3
    move v8, v2

    .line 110
    goto :goto_0

    .line 120
    .restart local v7       #preMultipyAlpha:Z
    .restart local v8       #useDefaultAlignment:Z
    :cond_4
    iget-object v5, p0, Lorg/andengine/opengl/texture/bitmap/BitmapTexture;->mPixelFormat:Lorg/andengine/opengl/texture/PixelFormat;

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lorg/andengine/opengl/util/GLState;->glTexImage2D(IILandroid/graphics/Bitmap;ILorg/andengine/opengl/texture/PixelFormat;)V

    goto :goto_1
.end method
