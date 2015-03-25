.class public Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttribute;
.super Ljava/lang/Object;
.source "VertexBufferObjectAttribute.java"


# instance fields
.field final mLocation:I

.field final mName:Ljava/lang/String;

.field final mNormalized:Z

.field final mOffset:I

.field final mSize:I

.field final mType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;IIZI)V
    .locals 0
    .parameter "pLocation"
    .parameter "pName"
    .parameter "pSize"
    .parameter "pType"
    .parameter "pNormalized"
    .parameter "pOffset"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttribute;->mLocation:I

    .line 33
    iput-object p2, p0, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttribute;->mName:Ljava/lang/String;

    .line 34
    iput p3, p0, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttribute;->mSize:I

    .line 35
    iput p4, p0, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttribute;->mType:I

    .line 36
    iput-boolean p5, p0, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttribute;->mNormalized:Z

    .line 37
    iput p6, p0, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttribute;->mOffset:I

    .line 38
    return-void
.end method


# virtual methods
.method public getLocation()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttribute;->mLocation:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttribute;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttribute;->mOffset:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttribute;->mSize:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttribute;->mType:I

    return v0
.end method

.method public glVertexAttribPointer(I)V
    .locals 6
    .parameter "pStride"

    .prologue
    .line 73
    iget v0, p0, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttribute;->mLocation:I

    iget v1, p0, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttribute;->mSize:I

    iget v2, p0, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttribute;->mType:I

    iget-boolean v3, p0, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttribute;->mNormalized:Z

    iget v5, p0, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttribute;->mOffset:I

    move v4, p1

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 74
    return-void
.end method

.method public isNormalized()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttribute;->mNormalized:Z

    return v0
.end method
