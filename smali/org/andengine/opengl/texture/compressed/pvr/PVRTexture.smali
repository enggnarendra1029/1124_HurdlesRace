.class public abstract Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture;
.super Lorg/andengine/opengl/texture/Texture;
.source "PVRTexture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;,
        Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;
    }
.end annotation


# static fields
.field public static final FLAG_ALPHA:I = 0x8000

.field public static final FLAG_BUMPMAP:I = 0x400

.field public static final FLAG_CUBEMAP:I = 0x1000

.field public static final FLAG_FALSEMIPCOL:I = 0x2000

.field public static final FLAG_MIPMAP:I = 0x100

.field public static final FLAG_TILING:I = 0x800

.field public static final FLAG_TWIDDLE:I = 0x200

.field public static final FLAG_VERTICALFLIP:I = 0x10000

.field public static final FLAG_VOLUME:I = 0x4000


# instance fields
.field private final mPVRTextureHeader:Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;

.field private final mPVRTexturePixelBufferStrategy:Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/IPVRTexturePixelBufferStrategy;


# direct methods
.method public constructor <init>(Lorg/andengine/opengl/texture/TextureManager;Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;)V
    .locals 6
    .parameter "pTextureManager"
    .parameter "pPVRTextureFormat"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    new-instance v3, Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/GreedyPVRTexturePixelBufferStrategy;

    invoke-direct {v3}, Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/GreedyPVRTexturePixelBufferStrategy;-><init>()V

    sget-object v4, Lorg/andengine/opengl/texture/TextureOptions;->DEFAULT:Lorg/andengine/opengl/texture/TextureOptions;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture;-><init>(Lorg/andengine/opengl/texture/TextureManager;Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/IPVRTexturePixelBufferStrategy;Lorg/andengine/opengl/texture/TextureOptions;Lorg/andengine/opengl/texture/ITextureStateListener;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/TextureManager;Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;Lorg/andengine/opengl/texture/ITextureStateListener;)V
    .locals 6
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
    .line 69
    new-instance v3, Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/GreedyPVRTexturePixelBufferStrategy;

    invoke-direct {v3}, Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/GreedyPVRTexturePixelBufferStrategy;-><init>()V

    sget-object v4, Lorg/andengine/opengl/texture/TextureOptions;->DEFAULT:Lorg/andengine/opengl/texture/TextureOptions;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture;-><init>(Lorg/andengine/opengl/texture/TextureManager;Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/IPVRTexturePixelBufferStrategy;Lorg/andengine/opengl/texture/TextureOptions;Lorg/andengine/opengl/texture/ITextureStateListener;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/TextureManager;Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;Lorg/andengine/opengl/texture/TextureOptions;)V
    .locals 6
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
    .line 77
    new-instance v3, Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/GreedyPVRTexturePixelBufferStrategy;

    invoke-direct {v3}, Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/GreedyPVRTexturePixelBufferStrategy;-><init>()V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture;-><init>(Lorg/andengine/opengl/texture/TextureManager;Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/IPVRTexturePixelBufferStrategy;Lorg/andengine/opengl/texture/TextureOptions;Lorg/andengine/opengl/texture/ITextureStateListener;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/TextureManager;Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;Lorg/andengine/opengl/texture/TextureOptions;Lorg/andengine/opengl/texture/ITextureStateListener;)V
    .locals 6
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
    .line 85
    new-instance v3, Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/GreedyPVRTexturePixelBufferStrategy;

    invoke-direct {v3}, Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/GreedyPVRTexturePixelBufferStrategy;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture;-><init>(Lorg/andengine/opengl/texture/TextureManager;Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/IPVRTexturePixelBufferStrategy;Lorg/andengine/opengl/texture/TextureOptions;Lorg/andengine/opengl/texture/ITextureStateListener;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/TextureManager;Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/IPVRTexturePixelBufferStrategy;)V
    .locals 6
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
    .line 65
    sget-object v4, Lorg/andengine/opengl/texture/TextureOptions;->DEFAULT:Lorg/andengine/opengl/texture/TextureOptions;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture;-><init>(Lorg/andengine/opengl/texture/TextureManager;Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/IPVRTexturePixelBufferStrategy;Lorg/andengine/opengl/texture/TextureOptions;Lorg/andengine/opengl/texture/ITextureStateListener;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/TextureManager;Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/IPVRTexturePixelBufferStrategy;Lorg/andengine/opengl/texture/ITextureStateListener;)V
    .locals 6
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
    .line 73
    sget-object v4, Lorg/andengine/opengl/texture/TextureOptions;->DEFAULT:Lorg/andengine/opengl/texture/TextureOptions;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture;-><init>(Lorg/andengine/opengl/texture/TextureManager;Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/IPVRTexturePixelBufferStrategy;Lorg/andengine/opengl/texture/TextureOptions;Lorg/andengine/opengl/texture/ITextureStateListener;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/TextureManager;Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/IPVRTexturePixelBufferStrategy;Lorg/andengine/opengl/texture/TextureOptions;)V
    .locals 6
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
    .line 81
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture;-><init>(Lorg/andengine/opengl/texture/TextureManager;Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/IPVRTexturePixelBufferStrategy;Lorg/andengine/opengl/texture/TextureOptions;Lorg/andengine/opengl/texture/ITextureStateListener;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/TextureManager;Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/IPVRTexturePixelBufferStrategy;Lorg/andengine/opengl/texture/TextureOptions;Lorg/andengine/opengl/texture/ITextureStateListener;)V
    .locals 4
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
    .line 89
    invoke-virtual {p2}, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;->getPixelFormat()Lorg/andengine/opengl/texture/PixelFormat;

    move-result-object v1

    invoke-direct {p0, p1, v1, p4, p5}, Lorg/andengine/opengl/texture/Texture;-><init>(Lorg/andengine/opengl/texture/TextureManager;Lorg/andengine/opengl/texture/PixelFormat;Lorg/andengine/opengl/texture/TextureOptions;Lorg/andengine/opengl/texture/ITextureStateListener;)V

    .line 90
    iput-object p3, p0, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture;->mPVRTexturePixelBufferStrategy:Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/IPVRTexturePixelBufferStrategy;

    .line 92
    const/4 v0, 0x0

    .line 94
    .local v0, inputStream:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 95
    new-instance v1, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;

    const/16 v2, 0x34

    invoke-static {v0, v2}, Lorg/andengine/util/StreamUtils;->streamToBytes(Ljava/io/InputStream;I)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;-><init>([B)V

    iput-object v1, p0, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture;->mPVRTextureHeader:Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    invoke-static {v0}, Lorg/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 100
    iget-object v1, p0, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture;->mPVRTextureHeader:Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;

    invoke-virtual {v1}, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;->getPVRTextureFormat()Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;

    move-result-object v1

    invoke-virtual {v1}, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;->getPixelFormat()Lorg/andengine/opengl/texture/PixelFormat;

    move-result-object v1

    invoke-virtual {p2}, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;->getPixelFormat()Lorg/andengine/opengl/texture/PixelFormat;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 101
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Other PVRTextureFormat: \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture;->mPVRTextureHeader:Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;

    invoke-virtual {v3}, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;->getPVRTextureFormat()Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;

    move-result-object v3

    invoke-virtual {v3}, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;->getPixelFormat()Lorg/andengine/opengl/texture/PixelFormat;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' found than expected: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;->getPixelFormat()Lorg/andengine/opengl/texture/PixelFormat;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    :catchall_0
    move-exception v1

    .line 97
    invoke-static {v0}, Lorg/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 98
    throw v1

    .line 104
    :cond_0
    iget-object v1, p0, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture;->mPVRTextureHeader:Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;

    invoke-virtual {v1}, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;->getPVRTextureFormat()Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;

    move-result-object v1

    invoke-virtual {v1}, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;->isCompressed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid PVRTextureFormat: \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture;->mPVRTextureHeader:Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;

    invoke-virtual {v3}, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;->getPVRTextureFormat()Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 108
    :cond_1
    invoke-virtual {p0}, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture;->hasMipMaps()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 109
    iget v1, p4, Lorg/andengine/opengl/texture/TextureOptions;->mMinFilter:I

    packed-switch v1, :pswitch_data_0

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' contains mipmaps, but the provided \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' don\'t have MipMaps enabled on the MinFilter!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/andengine/util/debug/Debug;->w(Ljava/lang/String;)V

    .line 122
    :cond_2
    :pswitch_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture;->mUpdateOnHardwareNeeded:Z

    .line 123
    return-void

    .line 109
    :pswitch_data_0
    .packed-switch 0x2700
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture;->mPVRTextureHeader:Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;

    invoke-virtual {v0}, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;->getHeight()I

    move-result v0

    return v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-virtual {p0}, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture;->onGetInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getPVRTextureBuffer()Ljava/nio/ByteBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    invoke-virtual {p0}, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 203
    .local v0, inputStream:Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Lorg/andengine/util/adt/io/out/ByteBufferOutputStream;

    const/16 v2, 0x400

    const/high16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lorg/andengine/util/adt/io/out/ByteBufferOutputStream;-><init>(II)V

    .line 204
    .local v1, os:Lorg/andengine/util/adt/io/out/ByteBufferOutputStream;
    invoke-static {v0, v1}, Lorg/andengine/util/StreamUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 205
    invoke-virtual {v1}, Lorg/andengine/util/adt/io/out/ByteBufferOutputStream;->toByteBuffer()Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 207
    invoke-static {v0}, Lorg/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 205
    return-object v2

    .line 206
    .end local v1           #os:Lorg/andengine/util/adt/io/out/ByteBufferOutputStream;
    :catchall_0
    move-exception v2

    .line 207
    invoke-static {v0}, Lorg/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 208
    throw v2
.end method

.method public getPVRTextureHeader()Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture;->mPVRTextureHeader:Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture;->mPVRTextureHeader:Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;

    invoke-virtual {v0}, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;->getWidth()I

    move-result v0

    return v0
.end method

.method public hasMipMaps()Z
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture;->mPVRTextureHeader:Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;

    invoke-virtual {v0}, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;->getNumMipmaps()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract onGetInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected writeTextureToHardware(Lorg/andengine/opengl/util/GLState;)V
    .locals 12
    .parameter "pGLState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0xcf5

    const/4 v10, 0x1

    .line 159
    iget-object v0, p0, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture;->mPVRTexturePixelBufferStrategy:Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/IPVRTexturePixelBufferStrategy;

    invoke-interface {v0, p0}, Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/IPVRTexturePixelBufferStrategy;->newPVRTexturePixelBufferStrategyManager(Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture;)Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/IPVRTexturePixelBufferStrategy$IPVRTexturePixelBufferStrategyBufferManager;

    move-result-object v1

    .line 161
    .local v1, pvrTextureLoadStrategyManager:Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/IPVRTexturePixelBufferStrategy$IPVRTexturePixelBufferStrategyBufferManager;
    invoke-virtual {p0}, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture;->getWidth()I

    move-result v2

    .line 162
    .local v2, width:I
    invoke-virtual {p0}, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture;->getHeight()I

    move-result v3

    .line 164
    .local v3, height:I
    iget-object v0, p0, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture;->mPVRTextureHeader:Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;

    invoke-virtual {v0}, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;->getDataLength()I

    move-result v9

    .line 166
    .local v9, dataLength:I
    iget-object v0, p0, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture;->mPVRTextureHeader:Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;

    invoke-virtual {v0}, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;->getBitsPerPixel()I

    move-result v0

    div-int/lit8 v4, v0, 0x8

    .line 169
    .local v4, bytesPerPixel:I
    invoke-static {v11, v10}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 171
    const/4 v6, 0x0

    .line 172
    .local v6, currentLevel:I
    const/4 v7, 0x0

    .line 173
    .local v7, currentPixelDataOffset:I
    :goto_0
    if-lt v7, v9, :cond_0

    .line 193
    const/4 v0, 0x4

    invoke-static {v11, v0}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 194
    return-void

    .line 174
    :cond_0
    if-lez v6, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {v2}, Lorg/andengine/util/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 175
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Mipmap level \'"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\' is not squared. Width: \'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\', height: \'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\'. Texture won\'t render correctly."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/andengine/util/debug/Debug;->w(Ljava/lang/String;)V

    .line 178
    :cond_2
    mul-int v0, v3, v2

    mul-int v8, v0, v4

    .line 181
    .local v8, currentPixelDataSize:I
    iget-object v0, p0, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture;->mPVRTexturePixelBufferStrategy:Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/IPVRTexturePixelBufferStrategy;

    iget-object v5, p0, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture;->mPixelFormat:Lorg/andengine/opengl/texture/PixelFormat;

    invoke-interface/range {v0 .. v8}, Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/IPVRTexturePixelBufferStrategy;->loadPVRTextureData(Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/IPVRTexturePixelBufferStrategy$IPVRTexturePixelBufferStrategyBufferManager;IIILorg/andengine/opengl/texture/PixelFormat;III)V

    .line 183
    add-int/2addr v7, v8

    .line 186
    div-int/lit8 v0, v2, 0x2

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 187
    div-int/lit8 v0, v3, 0x2

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 189
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method
