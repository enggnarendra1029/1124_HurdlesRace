.class public Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributeFix;
.super Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttribute;
.source "VertexBufferObjectAttributeFix.java"


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
    .line 26
    invoke-direct/range {p0 .. p6}, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttribute;-><init>(ILjava/lang/String;IIZI)V

    .line 27
    return-void
.end method


# virtual methods
.method public glVertexAttribPointer(I)V
    .locals 6
    .parameter "pStride"

    .prologue
    .line 39
    iget v0, p0, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributeFix;->mLocation:I

    iget v1, p0, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributeFix;->mSize:I

    iget v2, p0, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributeFix;->mType:I

    iget-boolean v3, p0, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributeFix;->mNormalized:Z

    iget v5, p0, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributeFix;->mOffset:I

    move v4, p1

    invoke-static/range {v0 .. v5}, Lorg/andengine/opengl/GLES20Fix;->glVertexAttribPointer(IIIZII)V

    .line 40
    return-void
.end method
