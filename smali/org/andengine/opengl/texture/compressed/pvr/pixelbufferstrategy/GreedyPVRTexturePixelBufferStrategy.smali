.class public Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/GreedyPVRTexturePixelBufferStrategy;
.super Ljava/lang/Object;
.source "GreedyPVRTexturePixelBufferStrategy.java"

# interfaces
.implements Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/IPVRTexturePixelBufferStrategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/GreedyPVRTexturePixelBufferStrategy$GreedyPVRTexturePixelBufferStrategyBufferManager;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadPVRTextureData(Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/IPVRTexturePixelBufferStrategy$IPVRTexturePixelBufferStrategyBufferManager;IIILorg/andengine/opengl/texture/PixelFormat;III)V
    .locals 10
    .parameter "pPVRTexturePixelBufferStrategyManager"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pBytesPerPixel"
    .parameter "pPixelFormat"
    .parameter "pLevel"
    .parameter "pCurrentPixelDataOffset"
    .parameter "pCurrentPixelDataSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    add-int/lit8 v1, p7, 0x34

    move/from16 v0, p8

    invoke-interface {p1, v1, v0}, Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/IPVRTexturePixelBufferStrategy$IPVRTexturePixelBufferStrategyBufferManager;->getPixelBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 51
    .local v9, pixelBuffer:Ljava/nio/Buffer;
    const/16 v1, 0xde1

    invoke-virtual {p5}, Lorg/andengine/opengl/texture/PixelFormat;->getGLInternalFormat()I

    move-result v3

    const/4 v6, 0x0

    invoke-virtual {p5}, Lorg/andengine/opengl/texture/PixelFormat;->getGLFormat()I

    move-result v7

    invoke-virtual {p5}, Lorg/andengine/opengl/texture/PixelFormat;->getGLType()I

    move-result v8

    move/from16 v2, p6

    move v4, p2

    move v5, p3

    invoke-static/range {v1 .. v9}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 52
    return-void
.end method

.method public newPVRTexturePixelBufferStrategyManager(Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture;)Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/IPVRTexturePixelBufferStrategy$IPVRTexturePixelBufferStrategyBufferManager;
    .locals 1
    .parameter "pPVRTexture"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/GreedyPVRTexturePixelBufferStrategy$GreedyPVRTexturePixelBufferStrategyBufferManager;

    invoke-direct {v0, p1}, Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/GreedyPVRTexturePixelBufferStrategy$GreedyPVRTexturePixelBufferStrategyBufferManager;-><init>(Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture;)V

    return-object v0
.end method
