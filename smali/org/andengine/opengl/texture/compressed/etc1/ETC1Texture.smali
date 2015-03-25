.class public abstract Lorg/andengine/opengl/texture/compressed/etc1/ETC1Texture;
.super Lorg/andengine/opengl/texture/Texture;
.source "ETC1Texture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/andengine/opengl/texture/compressed/etc1/ETC1Texture$ETC1TextureHeader;
    }
.end annotation


# instance fields
.field private mETC1TextureHeader:Lorg/andengine/opengl/texture/compressed/etc1/ETC1Texture$ETC1TextureHeader;


# direct methods
.method public constructor <init>(Lorg/andengine/opengl/texture/TextureManager;)V
    .locals 2
    .parameter "pTextureManager"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    sget-object v0, Lorg/andengine/opengl/texture/TextureOptions;->DEFAULT:Lorg/andengine/opengl/texture/TextureOptions;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/andengine/opengl/texture/compressed/etc1/ETC1Texture;-><init>(Lorg/andengine/opengl/texture/TextureManager;Lorg/andengine/opengl/texture/TextureOptions;Lorg/andengine/opengl/texture/ITextureStateListener;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/TextureManager;Lorg/andengine/opengl/texture/ITextureStateListener;)V
    .locals 1
    .parameter "pTextureManager"
    .parameter "pTextureStateListener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    sget-object v0, Lorg/andengine/opengl/texture/TextureOptions;->DEFAULT:Lorg/andengine/opengl/texture/TextureOptions;

    invoke-direct {p0, p1, v0, p2}, Lorg/andengine/opengl/texture/compressed/etc1/ETC1Texture;-><init>(Lorg/andengine/opengl/texture/TextureManager;Lorg/andengine/opengl/texture/TextureOptions;Lorg/andengine/opengl/texture/ITextureStateListener;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/TextureManager;Lorg/andengine/opengl/texture/TextureOptions;)V
    .locals 1
    .parameter "pTextureManager"
    .parameter "pTextureOptions"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/andengine/opengl/texture/compressed/etc1/ETC1Texture;-><init>(Lorg/andengine/opengl/texture/TextureManager;Lorg/andengine/opengl/texture/TextureOptions;Lorg/andengine/opengl/texture/ITextureStateListener;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/TextureManager;Lorg/andengine/opengl/texture/TextureOptions;Lorg/andengine/opengl/texture/ITextureStateListener;)V
    .locals 3
    .parameter "pTextureManager"
    .parameter "pTextureOptions"
    .parameter "pTextureStateListener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    sget-object v1, Lorg/andengine/opengl/texture/PixelFormat;->RGB_565:Lorg/andengine/opengl/texture/PixelFormat;

    invoke-direct {p0, p1, v1, p2, p3}, Lorg/andengine/opengl/texture/Texture;-><init>(Lorg/andengine/opengl/texture/TextureManager;Lorg/andengine/opengl/texture/PixelFormat;Lorg/andengine/opengl/texture/TextureOptions;Lorg/andengine/opengl/texture/ITextureStateListener;)V

    .line 59
    const/4 v0, 0x0

    .line 61
    .local v0, inputStream:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Lorg/andengine/opengl/texture/compressed/etc1/ETC1Texture;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 63
    new-instance v1, Lorg/andengine/opengl/texture/compressed/etc1/ETC1Texture$ETC1TextureHeader;

    const/16 v2, 0x10

    invoke-static {v0, v2}, Lorg/andengine/util/StreamUtils;->streamToBytes(Ljava/io/InputStream;I)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/andengine/opengl/texture/compressed/etc1/ETC1Texture$ETC1TextureHeader;-><init>([B)V

    iput-object v1, p0, Lorg/andengine/opengl/texture/compressed/etc1/ETC1Texture;->mETC1TextureHeader:Lorg/andengine/opengl/texture/compressed/etc1/ETC1Texture$ETC1TextureHeader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    invoke-static {v0}, Lorg/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 67
    return-void

    .line 64
    :catchall_0
    move-exception v1

    .line 65
    invoke-static {v0}, Lorg/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 66
    throw v1
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/andengine/opengl/texture/compressed/etc1/ETC1Texture;->mETC1TextureHeader:Lorg/andengine/opengl/texture/compressed/etc1/ETC1Texture$ETC1TextureHeader;

    invoke-virtual {v0}, Lorg/andengine/opengl/texture/compressed/etc1/ETC1Texture$ETC1TextureHeader;->getHeight()I

    move-result v0

    return v0
.end method

.method protected abstract getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/andengine/opengl/texture/compressed/etc1/ETC1Texture;->mETC1TextureHeader:Lorg/andengine/opengl/texture/compressed/etc1/ETC1Texture$ETC1TextureHeader;

    invoke-virtual {v0}, Lorg/andengine/opengl/texture/compressed/etc1/ETC1Texture$ETC1TextureHeader;->getWidth()I

    move-result v0

    return v0
.end method

.method protected writeTextureToHardware(Lorg/andengine/opengl/util/GLState;)V
    .locals 6
    .parameter "pGLState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-virtual {p0}, Lorg/andengine/opengl/texture/compressed/etc1/ETC1Texture;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 92
    .local v5, inputStream:Ljava/io/InputStream;
    const/16 v0, 0xde1

    iget-object v2, p0, Lorg/andengine/opengl/texture/compressed/etc1/ETC1Texture;->mPixelFormat:Lorg/andengine/opengl/texture/PixelFormat;

    invoke-virtual {v2}, Lorg/andengine/opengl/texture/PixelFormat;->getGLFormat()I

    move-result v3

    iget-object v2, p0, Lorg/andengine/opengl/texture/compressed/etc1/ETC1Texture;->mPixelFormat:Lorg/andengine/opengl/texture/PixelFormat;

    invoke-virtual {v2}, Lorg/andengine/opengl/texture/PixelFormat;->getGLType()I

    move-result v4

    move v2, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/ETC1Util;->loadTexture(IIIIILjava/io/InputStream;)V

    .line 93
    return-void
.end method
