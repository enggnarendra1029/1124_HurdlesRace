.class public Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/SmartPVRTexturePixelBufferStrategy$SmartPVRTexturePixelBufferStrategyBufferManager;
.super Ljava/lang/Object;
.source "SmartPVRTexturePixelBufferStrategy.java"

# interfaces
.implements Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/IPVRTexturePixelBufferStrategy$IPVRTexturePixelBufferStrategyBufferManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/SmartPVRTexturePixelBufferStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmartPVRTexturePixelBufferStrategyBufferManager"
.end annotation


# instance fields
.field private mData:[B

.field private final mInputStream:Ljava/io/InputStream;

.field private mInputStreamPosition:I


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
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    invoke-virtual {p1}, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/SmartPVRTexturePixelBufferStrategy$SmartPVRTexturePixelBufferStrategyBufferManager;->mInputStream:Ljava/io/InputStream;

    .line 111
    return-void
.end method


# virtual methods
.method public getPixelBuffer(II)Ljava/nio/ByteBuffer;
    .locals 7
    .parameter "pStart"
    .parameter "pByteCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    iget v4, p0, Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/SmartPVRTexturePixelBufferStrategy$SmartPVRTexturePixelBufferStrategyBufferManager;->mInputStreamPosition:I

    if-ge p1, v4, :cond_0

    .line 124
    new-instance v4, Lorg/andengine/util/exception/AndEngineRuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Cannot read data that has been read already. (pStart: \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\', this.mInputStreamPosition: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/SmartPVRTexturePixelBufferStrategy$SmartPVRTexturePixelBufferStrategyBufferManager;->mInputStreamPosition:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\')"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/andengine/util/exception/AndEngineRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 128
    :cond_0
    iget-object v4, p0, Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/SmartPVRTexturePixelBufferStrategy$SmartPVRTexturePixelBufferStrategyBufferManager;->mData:[B

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/SmartPVRTexturePixelBufferStrategy$SmartPVRTexturePixelBufferStrategyBufferManager;->mData:[B

    array-length v4, v4

    if-ge v4, p2, :cond_2

    .line 129
    :cond_1
    new-array v4, p2, [B

    iput-object v4, p0, Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/SmartPVRTexturePixelBufferStrategy$SmartPVRTexturePixelBufferStrategyBufferManager;->mData:[B

    .line 133
    :cond_2
    iget v4, p0, Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/SmartPVRTexturePixelBufferStrategy$SmartPVRTexturePixelBufferStrategyBufferManager;->mInputStreamPosition:I

    if-ge v4, p1, :cond_3

    .line 134
    iget v4, p0, Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/SmartPVRTexturePixelBufferStrategy$SmartPVRTexturePixelBufferStrategyBufferManager;->mInputStreamPosition:I

    sub-int v1, p1, v4

    .line 135
    .local v1, bytesToSkip:I
    iget-object v4, p0, Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/SmartPVRTexturePixelBufferStrategy$SmartPVRTexturePixelBufferStrategyBufferManager;->mInputStream:Ljava/io/InputStream;

    int-to-long v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    .line 137
    .local v2, skipped:J
    iget v4, p0, Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/SmartPVRTexturePixelBufferStrategy$SmartPVRTexturePixelBufferStrategyBufferManager;->mInputStreamPosition:I

    int-to-long v4, v4

    add-long/2addr v4, v2

    long-to-int v4, v4

    iput v4, p0, Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/SmartPVRTexturePixelBufferStrategy$SmartPVRTexturePixelBufferStrategyBufferManager;->mInputStreamPosition:I

    .line 139
    int-to-long v4, v1

    cmp-long v4, v4, v2

    if-eqz v4, :cond_3

    .line 140
    new-instance v4, Lorg/andengine/util/exception/AndEngineRuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Skipped: \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' instead of \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/andengine/util/exception/AndEngineRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 145
    .end local v1           #bytesToSkip:I
    .end local v2           #skipped:J
    :cond_3
    add-int v4, p1, p2

    iget v5, p0, Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/SmartPVRTexturePixelBufferStrategy$SmartPVRTexturePixelBufferStrategyBufferManager;->mInputStreamPosition:I

    sub-int v0, v4, v5

    .line 146
    .local v0, bytesToRead:I
    iget-object v4, p0, Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/SmartPVRTexturePixelBufferStrategy$SmartPVRTexturePixelBufferStrategyBufferManager;->mInputStream:Ljava/io/InputStream;

    iget-object v5, p0, Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/SmartPVRTexturePixelBufferStrategy$SmartPVRTexturePixelBufferStrategyBufferManager;->mData:[B

    invoke-static {v4, v0, v5}, Lorg/andengine/util/StreamUtils;->streamToBytes(Ljava/io/InputStream;I[B)V

    .line 147
    iget v4, p0, Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/SmartPVRTexturePixelBufferStrategy$SmartPVRTexturePixelBufferStrategyBufferManager;->mInputStreamPosition:I

    add-int/2addr v4, v0

    iput v4, p0, Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/SmartPVRTexturePixelBufferStrategy$SmartPVRTexturePixelBufferStrategyBufferManager;->mInputStreamPosition:I

    .line 150
    iget-object v4, p0, Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/SmartPVRTexturePixelBufferStrategy$SmartPVRTexturePixelBufferStrategyBufferManager;->mData:[B

    const/4 v5, 0x0

    invoke-static {v4, v5, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v4

    return-object v4
.end method
