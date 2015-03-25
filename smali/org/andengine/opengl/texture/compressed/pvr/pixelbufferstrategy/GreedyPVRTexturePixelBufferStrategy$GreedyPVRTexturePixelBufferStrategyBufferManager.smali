.class public Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/GreedyPVRTexturePixelBufferStrategy$GreedyPVRTexturePixelBufferStrategyBufferManager;
.super Ljava/lang/Object;
.source "GreedyPVRTexturePixelBufferStrategy.java"

# interfaces
.implements Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/IPVRTexturePixelBufferStrategy$IPVRTexturePixelBufferStrategyBufferManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/GreedyPVRTexturePixelBufferStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GreedyPVRTexturePixelBufferStrategyBufferManager"
.end annotation


# instance fields
.field private final mByteBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture;)V
    .locals 1
    .parameter "pPVRTexture"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-virtual {p1}, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture;->getPVRTextureBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/GreedyPVRTexturePixelBufferStrategy$GreedyPVRTexturePixelBufferStrategyBufferManager;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 79
    return-void
.end method


# virtual methods
.method public getPixelBuffer(II)Ljava/nio/ByteBuffer;
    .locals 2
    .parameter "pStart"
    .parameter "pByteCount"

    .prologue
    .line 91
    iget-object v0, p0, Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/GreedyPVRTexturePixelBufferStrategy$GreedyPVRTexturePixelBufferStrategyBufferManager;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 92
    iget-object v0, p0, Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/GreedyPVRTexturePixelBufferStrategy$GreedyPVRTexturePixelBufferStrategyBufferManager;->mByteBuffer:Ljava/nio/ByteBuffer;

    add-int v1, p1, p2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 94
    iget-object v0, p0, Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/GreedyPVRTexturePixelBufferStrategy$GreedyPVRTexturePixelBufferStrategyBufferManager;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
