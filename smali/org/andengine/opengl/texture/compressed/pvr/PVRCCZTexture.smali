.class public abstract Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture;
.super Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture;
.source "PVRCCZTexture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;,
        Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZHeader;
    }
.end annotation


# instance fields
.field private mCCZHeader:Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZHeader;


# direct methods
.method public constructor <init>(Lorg/andengine/opengl/texture/TextureManager;Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;)V
    .locals 0
    .parameter "pTextureManager"
    .parameter "pPVRTextureFormat"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture;-><init>(Lorg/andengine/opengl/texture/TextureManager;Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/TextureManager;Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;Lorg/andengine/opengl/texture/ITextureStateListener;)V
    .locals 0
    .parameter "pTextureManager"
    .parameter "pPVRTextureFormat"
    .parameter "pTextureStateListener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture;-><init>(Lorg/andengine/opengl/texture/TextureManager;Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;Lorg/andengine/opengl/texture/ITextureStateListener;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/TextureManager;Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;Lorg/andengine/opengl/texture/TextureOptions;)V
    .locals 0
    .parameter "pTextureManager"
    .parameter "pPVRTextureFormat"
    .parameter "pTextureOptions"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture;-><init>(Lorg/andengine/opengl/texture/TextureManager;Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;Lorg/andengine/opengl/texture/TextureOptions;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/TextureManager;Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;Lorg/andengine/opengl/texture/TextureOptions;Lorg/andengine/opengl/texture/ITextureStateListener;)V
    .locals 0
    .parameter "pTextureManager"
    .parameter "pPVRTextureFormat"
    .parameter "pTextureOptions"
    .parameter "pTextureStateListener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture;-><init>(Lorg/andengine/opengl/texture/TextureManager;Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;Lorg/andengine/opengl/texture/TextureOptions;Lorg/andengine/opengl/texture/ITextureStateListener;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/TextureManager;Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/IPVRTexturePixelBufferStrategy;)V
    .locals 0
    .parameter "pTextureManager"
    .parameter "pPVRTextureFormat"
    .parameter "pPVRTexturePixelBufferStrategy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture;-><init>(Lorg/andengine/opengl/texture/TextureManager;Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/IPVRTexturePixelBufferStrategy;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/TextureManager;Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/IPVRTexturePixelBufferStrategy;Lorg/andengine/opengl/texture/ITextureStateListener;)V
    .locals 0
    .parameter "pTextureManager"
    .parameter "pPVRTextureFormat"
    .parameter "pPVRTexturePixelBufferStrategy"
    .parameter "pTextureStateListener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture;-><init>(Lorg/andengine/opengl/texture/TextureManager;Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/IPVRTexturePixelBufferStrategy;Lorg/andengine/opengl/texture/ITextureStateListener;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/TextureManager;Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/IPVRTexturePixelBufferStrategy;Lorg/andengine/opengl/texture/TextureOptions;)V
    .locals 0
    .parameter "pTextureManager"
    .parameter "pPVRTextureFormat"
    .parameter "pPVRTexturePixelBufferStrategy"
    .parameter "pTextureOptions"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture;-><init>(Lorg/andengine/opengl/texture/TextureManager;Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/IPVRTexturePixelBufferStrategy;Lorg/andengine/opengl/texture/TextureOptions;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/TextureManager;Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/IPVRTexturePixelBufferStrategy;Lorg/andengine/opengl/texture/TextureOptions;Lorg/andengine/opengl/texture/ITextureStateListener;)V
    .locals 0
    .parameter "pTextureManager"
    .parameter "pPVRTextureFormat"
    .parameter "pPVRTexturePixelBufferStrategy"
    .parameter "pTextureOptions"
    .parameter "pTextureStateListener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct/range {p0 .. p5}, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture;-><init>(Lorg/andengine/opengl/texture/TextureManager;Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/IPVRTexturePixelBufferStrategy;Lorg/andengine/opengl/texture/TextureOptions;Lorg/andengine/opengl/texture/ITextureStateListener;)V

    .line 70
    return-void
.end method


# virtual methods
.method public bridge synthetic getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture;->getInputStream()Ljava/util/zip/InflaterInputStream;

    move-result-object v0

    return-object v0
.end method

.method public final getInputStream()Ljava/util/zip/InflaterInputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p0}, Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture;->onGetInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 84
    .local v0, inputStream:Ljava/io/InputStream;
    new-instance v1, Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZHeader;

    const/16 v2, 0x10

    invoke-static {v0, v2}, Lorg/andengine/util/StreamUtils;->streamToBytes(Ljava/io/InputStream;I)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZHeader;-><init>([B)V

    iput-object v1, p0, Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture;->mCCZHeader:Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZHeader;

    .line 86
    iget-object v1, p0, Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture;->mCCZHeader:Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZHeader;

    invoke-virtual {v1}, Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZHeader;->getCCZCompressionFormat()Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;->wrap(Ljava/io/InputStream;)Ljava/util/zip/InflaterInputStream;

    move-result-object v1

    return-object v1
.end method

.method public getPVRTextureBuffer()Ljava/nio/ByteBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-virtual {p0}, Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture;->getInputStream()Ljava/util/zip/InflaterInputStream;

    move-result-object v1

    .line 93
    .local v1, inputStream:Ljava/io/InputStream;
    :try_start_0
    iget-object v2, p0, Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture;->mCCZHeader:Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZHeader;

    invoke-virtual {v2}, Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZHeader;->getUncompressedSize()I

    move-result v2

    new-array v0, v2, [B

    .line 94
    .local v0, data:[B
    invoke-static {v1, v0}, Lorg/andengine/util/StreamUtils;->copy(Ljava/io/InputStream;[B)V

    .line 95
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 97
    invoke-static {v1}, Lorg/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 95
    return-object v2

    .line 96
    .end local v0           #data:[B
    :catchall_0
    move-exception v2

    .line 97
    invoke-static {v1}, Lorg/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 98
    throw v2
.end method
