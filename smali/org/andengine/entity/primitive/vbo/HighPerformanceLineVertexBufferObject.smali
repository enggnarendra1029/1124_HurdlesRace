.class public Lorg/andengine/entity/primitive/vbo/HighPerformanceLineVertexBufferObject;
.super Lorg/andengine/opengl/vbo/HighPerformanceVertexBufferObject;
.source "HighPerformanceLineVertexBufferObject.java"

# interfaces
.implements Lorg/andengine/entity/primitive/vbo/ILineVertexBufferObject;


# direct methods
.method public constructor <init>(Lorg/andengine/opengl/vbo/VertexBufferObjectManager;ILorg/andengine/opengl/vbo/DrawType;ZLorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;)V
    .locals 0
    .parameter "pVertexBufferObjectManager"
    .parameter "pCapacity"
    .parameter "pDrawType"
    .parameter "pAutoDispose"
    .parameter "pVertexBufferObjectAttributes"

    .prologue
    .line 29
    invoke-direct/range {p0 .. p5}, Lorg/andengine/opengl/vbo/HighPerformanceVertexBufferObject;-><init>(Lorg/andengine/opengl/vbo/VertexBufferObjectManager;ILorg/andengine/opengl/vbo/DrawType;ZLorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;)V

    .line 30
    return-void
.end method


# virtual methods
.method public onUpdateColor(Lorg/andengine/entity/primitive/Line;)V
    .locals 3
    .parameter "pLine"

    .prologue
    .line 42
    iget-object v0, p0, Lorg/andengine/entity/primitive/vbo/HighPerformanceLineVertexBufferObject;->mBufferData:[F

    .line 44
    .local v0, bufferData:[F
    invoke-virtual {p1}, Lorg/andengine/entity/primitive/Line;->getColor()Lorg/andengine/util/color/Color;

    move-result-object v2

    invoke-virtual {v2}, Lorg/andengine/util/color/Color;->getABGRPackedFloat()F

    move-result v1

    .line 46
    .local v1, packedColor:F
    const/4 v2, 0x2

    aput v1, v0, v2

    .line 47
    const/4 v2, 0x5

    aput v1, v0, v2

    .line 49
    invoke-virtual {p0}, Lorg/andengine/entity/primitive/vbo/HighPerformanceLineVertexBufferObject;->setDirtyOnHardware()V

    .line 50
    return-void
.end method

.method public onUpdateVertices(Lorg/andengine/entity/primitive/Line;)V
    .locals 4
    .parameter "pLine"

    .prologue
    const/4 v2, 0x0

    .line 54
    iget-object v0, p0, Lorg/andengine/entity/primitive/vbo/HighPerformanceLineVertexBufferObject;->mBufferData:[F

    .line 56
    .local v0, bufferData:[F
    const/4 v1, 0x0

    aput v2, v0, v1

    .line 57
    const/4 v1, 0x1

    aput v2, v0, v1

    .line 59
    const/4 v1, 0x3

    invoke-virtual {p1}, Lorg/andengine/entity/primitive/Line;->getX2()F

    move-result v2

    invoke-virtual {p1}, Lorg/andengine/entity/primitive/Line;->getX1()F

    move-result v3

    sub-float/2addr v2, v3

    aput v2, v0, v1

    .line 60
    const/4 v1, 0x4

    invoke-virtual {p1}, Lorg/andengine/entity/primitive/Line;->getY2()F

    move-result v2

    invoke-virtual {p1}, Lorg/andengine/entity/primitive/Line;->getY1()F

    move-result v3

    sub-float/2addr v2, v3

    aput v2, v0, v1

    .line 62
    invoke-virtual {p0}, Lorg/andengine/entity/primitive/vbo/HighPerformanceLineVertexBufferObject;->setDirtyOnHardware()V

    .line 63
    return-void
.end method
