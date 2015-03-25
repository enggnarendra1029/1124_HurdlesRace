.class public Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/SmartPVRTexturePixelBufferStrategy;
.super Ljava/lang/Object;
.source "SmartPVRTexturePixelBufferStrategy.java"

# interfaces
.implements Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/IPVRTexturePixelBufferStrategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/SmartPVRTexturePixelBufferStrategy$SmartPVRTexturePixelBufferStrategyBufferManager;
    }
.end annotation


# instance fields
.field private final mAllocationSizeMaximum:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "pAllocationSizeMaximum"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/SmartPVRTexturePixelBufferStrategy;->mAllocationSizeMaximum:I

    .line 39
    return-void
.end method


# virtual methods
.method public loadPVRTextureData(Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/IPVRTexturePixelBufferStrategy$IPVRTexturePixelBufferStrategyBufferManager;IIILorg/andengine/opengl/texture/PixelFormat;III)V
    .locals 14
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
    .line 56
    invoke-virtual/range {p5 .. p5}, Lorg/andengine/opengl/texture/PixelFormat;->getGLFormat()I

    move-result v7

    .line 57
    .local v7, glFormat:I
    invoke-virtual/range {p5 .. p5}, Lorg/andengine/opengl/texture/PixelFormat;->getGLType()I

    move-result v8

    .line 60
    .local v8, glType:I
    const/16 v1, 0xde1

    invoke-virtual/range {p5 .. p5}, Lorg/andengine/opengl/texture/PixelFormat;->getGLInternalFormat()I

    move-result v3

    const/4 v6, 0x0

    const/4 v9, 0x0

    move/from16 v2, p6

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-static/range {v1 .. v9}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 62
    mul-int v10, p2, p4

    .line 63
    .local v10, bytesPerRow:I
    const/4 v1, 0x1

    iget v2, p0, Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/SmartPVRTexturePixelBufferStrategy;->mAllocationSizeMaximum:I

    div-int/2addr v2, v10

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 66
    .local v13, stripeHeight:I
    move/from16 v11, p7

    .line 67
    .local v11, currentStripePixelDataOffset:I
    const/4 v4, 0x0

    .line 68
    .local v4, currentStripeOffsetY:I
    :goto_0
    move/from16 v0, p3

    if-lt v4, v0, :cond_0

    .line 81
    return-void

    .line 69
    :cond_0
    sub-int v1, p3, v4

    invoke-static {v1, v13}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 70
    .local v6, currentStripeHeight:I
    mul-int v12, v6, v10

    .line 73
    .local v12, currentStripePixelDataSize:I
    add-int/lit8 v1, v11, 0x34

    invoke-interface {p1, v1, v12}, Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/IPVRTexturePixelBufferStrategy$IPVRTexturePixelBufferStrategyBufferManager;->getPixelBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 76
    .local v9, pixelBuffer:Ljava/nio/Buffer;
    const/16 v1, 0xde1

    const/4 v3, 0x0

    move/from16 v2, p6

    move/from16 v5, p2

    invoke-static/range {v1 .. v9}, Landroid/opengl/GLES20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 78
    add-int/2addr v11, v12

    .line 79
    add-int/2addr v4, v6

    goto :goto_0
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
    .line 51
    new-instance v0, Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/SmartPVRTexturePixelBufferStrategy$SmartPVRTexturePixelBufferStrategyBufferManager;

    invoke-direct {v0, p1}, Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/SmartPVRTexturePixelBufferStrategy$SmartPVRTexturePixelBufferStrategyBufferManager;-><init>(Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture;)V

    return-object v0
.end method
