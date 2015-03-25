.class public Lorg/andengine/entity/primitive/vbo/HighPerformanceMeshVertexBufferObject;
.super Lorg/andengine/opengl/vbo/HighPerformanceVertexBufferObject;
.source "HighPerformanceMeshVertexBufferObject.java"

# interfaces
.implements Lorg/andengine/entity/primitive/vbo/IMeshVertexBufferObject;


# instance fields
.field private final mVertexCount:I


# direct methods
.method public constructor <init>(Lorg/andengine/opengl/vbo/VertexBufferObjectManager;[FILorg/andengine/opengl/vbo/DrawType;ZLorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;)V
    .locals 6
    .parameter "pVertexBufferObjectManager"
    .parameter "pBufferData"
    .parameter "pVertexCount"
    .parameter "pDrawType"
    .parameter "pAutoDispose"
    .parameter "pVertexBufferObjectAttributes"

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/andengine/opengl/vbo/HighPerformanceVertexBufferObject;-><init>(Lorg/andengine/opengl/vbo/VertexBufferObjectManager;[FLorg/andengine/opengl/vbo/DrawType;ZLorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;)V

    .line 33
    iput p3, p0, Lorg/andengine/entity/primitive/vbo/HighPerformanceMeshVertexBufferObject;->mVertexCount:I

    .line 34
    return-void
.end method


# virtual methods
.method public onUpdateColor(Lorg/andengine/entity/primitive/Mesh;)V
    .locals 4
    .parameter "pMesh"

    .prologue
    .line 46
    iget-object v0, p0, Lorg/andengine/entity/primitive/vbo/HighPerformanceMeshVertexBufferObject;->mBufferData:[F

    .line 48
    .local v0, bufferData:[F
    invoke-virtual {p1}, Lorg/andengine/entity/primitive/Mesh;->getColor()Lorg/andengine/util/color/Color;

    move-result-object v3

    invoke-virtual {v3}, Lorg/andengine/util/color/Color;->getABGRPackedFloat()F

    move-result v2

    .line 50
    .local v2, packedColor:F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v3, p0, Lorg/andengine/entity/primitive/vbo/HighPerformanceMeshVertexBufferObject;->mVertexCount:I

    if-lt v1, v3, :cond_0

    .line 54
    invoke-virtual {p0}, Lorg/andengine/entity/primitive/vbo/HighPerformanceMeshVertexBufferObject;->setDirtyOnHardware()V

    .line 55
    return-void

    .line 51
    :cond_0
    mul-int/lit8 v3, v1, 0x3

    add-int/lit8 v3, v3, 0x2

    aput v2, v0, v3

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onUpdateVertices(Lorg/andengine/entity/primitive/Mesh;)V
    .locals 0
    .parameter "pMesh"

    .prologue
    .line 61
    invoke-virtual {p0}, Lorg/andengine/entity/primitive/vbo/HighPerformanceMeshVertexBufferObject;->setDirtyOnHardware()V

    .line 62
    return-void
.end method
