.class public Lorg/andengine/opengl/texture/compressed/etc1/ETC1Texture$ETC1TextureHeader;
.super Ljava/lang/Object;
.source "ETC1Texture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andengine/opengl/texture/compressed/etc1/ETC1Texture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ETC1TextureHeader"
.end annotation


# instance fields
.field private final mDataByteBuffer:Ljava/nio/ByteBuffer;

.field private final mHeight:I

.field private final mWidth:I


# direct methods
.method public constructor <init>([B)V
    .locals 4
    .parameter "pData"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x10

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    array-length v0, p1

    if-eq v0, v2, :cond_0

    .line 123
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/andengine/opengl/texture/compressed/etc1/ETC1Texture$ETC1TextureHeader;->mDataByteBuffer:Ljava/nio/ByteBuffer;

    .line 127
    iget-object v0, p0, Lorg/andengine/opengl/texture/compressed/etc1/ETC1Texture$ETC1TextureHeader;->mDataByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, v3, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 128
    iget-object v0, p0, Lorg/andengine/opengl/texture/compressed/etc1/ETC1Texture$ETC1TextureHeader;->mDataByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 130
    iget-object v0, p0, Lorg/andengine/opengl/texture/compressed/etc1/ETC1Texture$ETC1TextureHeader;->mDataByteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Landroid/opengl/ETC1;->isValid(Ljava/nio/Buffer;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_1
    iget-object v0, p0, Lorg/andengine/opengl/texture/compressed/etc1/ETC1Texture$ETC1TextureHeader;->mDataByteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Landroid/opengl/ETC1;->getWidth(Ljava/nio/Buffer;)I

    move-result v0

    iput v0, p0, Lorg/andengine/opengl/texture/compressed/etc1/ETC1Texture$ETC1TextureHeader;->mWidth:I

    .line 135
    iget-object v0, p0, Lorg/andengine/opengl/texture/compressed/etc1/ETC1Texture$ETC1TextureHeader;->mDataByteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Landroid/opengl/ETC1;->getHeight(Ljava/nio/Buffer;)I

    move-result v0

    iput v0, p0, Lorg/andengine/opengl/texture/compressed/etc1/ETC1Texture$ETC1TextureHeader;->mHeight:I

    .line 136
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lorg/andengine/opengl/texture/compressed/etc1/ETC1Texture$ETC1TextureHeader;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lorg/andengine/opengl/texture/compressed/etc1/ETC1Texture$ETC1TextureHeader;->mWidth:I

    return v0
.end method
