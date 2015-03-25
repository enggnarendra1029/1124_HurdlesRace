.class public Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;
.super Ljava/lang/Object;
.source "VertexBufferObjectAttributes.java"


# instance fields
.field private final mStride:I

.field private final mVertexBufferObjectAttributes:[Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttribute;


# direct methods
.method public varargs constructor <init>(I[Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttribute;)V
    .locals 0
    .parameter "pStride"
    .parameter "pVertexBufferObjectAttributes"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p2, p0, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;->mVertexBufferObjectAttributes:[Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttribute;

    .line 28
    iput p1, p0, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;->mStride:I

    .line 29
    return-void
.end method


# virtual methods
.method public glVertexAttribPointers()V
    .locals 5

    .prologue
    .line 44
    iget-object v3, p0, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;->mVertexBufferObjectAttributes:[Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttribute;

    .line 46
    .local v3, vertexBufferObjectAttributes:[Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttribute;
    iget v1, p0, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;->mStride:I

    .line 48
    .local v1, stride:I
    array-length v2, v3

    .line 49
    .local v2, vertexBufferObjectAttributeCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 52
    return-void

    .line 50
    :cond_0
    aget-object v4, v3, v0

    invoke-virtual {v4, v1}, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttribute;->glVertexAttribPointer(I)V

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
