.class public Lorg/andengine/entity/primitive/vbo/HighPerformanceRectangleVertexBufferObject;
.super Lorg/andengine/opengl/vbo/HighPerformanceVertexBufferObject;
.source "HighPerformanceRectangleVertexBufferObject.java"

# interfaces
.implements Lorg/andengine/entity/primitive/vbo/IRectangleVertexBufferObject;


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
.method public onUpdateColor(Lorg/andengine/entity/primitive/Rectangle;)V
    .locals 3
    .parameter "pRectangle"

    .prologue
    .line 42
    iget-object v0, p0, Lorg/andengine/entity/primitive/vbo/HighPerformanceRectangleVertexBufferObject;->mBufferData:[F

    .line 44
    .local v0, bufferData:[F
    invoke-virtual {p1}, Lorg/andengine/entity/primitive/Rectangle;->getColor()Lorg/andengine/util/color/Color;

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

    .line 48
    const/16 v2, 0x8

    aput v1, v0, v2

    .line 49
    const/16 v2, 0xb

    aput v1, v0, v2

    .line 51
    invoke-virtual {p0}, Lorg/andengine/entity/primitive/vbo/HighPerformanceRectangleVertexBufferObject;->setDirtyOnHardware()V

    .line 52
    return-void
.end method

.method public onUpdateVertices(Lorg/andengine/entity/primitive/Rectangle;)V
    .locals 7
    .parameter "pRectangle"

    .prologue
    const/4 v6, 0x0

    .line 56
    iget-object v0, p0, Lorg/andengine/entity/primitive/vbo/HighPerformanceRectangleVertexBufferObject;->mBufferData:[F

    .line 58
    .local v0, bufferData:[F
    const/4 v1, 0x0

    .line 59
    .local v1, x:F
    const/4 v3, 0x0

    .line 60
    .local v3, y:F
    invoke-virtual {p1}, Lorg/andengine/entity/primitive/Rectangle;->getWidth()F

    move-result v2

    .line 61
    .local v2, x2:F
    invoke-virtual {p1}, Lorg/andengine/entity/primitive/Rectangle;->getHeight()F

    move-result v4

    .line 63
    .local v4, y2:F
    const/4 v5, 0x0

    aput v6, v0, v5

    .line 64
    const/4 v5, 0x1

    aput v6, v0, v5

    .line 66
    const/4 v5, 0x3

    aput v6, v0, v5

    .line 67
    const/4 v5, 0x4

    aput v4, v0, v5

    .line 69
    const/4 v5, 0x6

    aput v2, v0, v5

    .line 70
    const/4 v5, 0x7

    aput v6, v0, v5

    .line 72
    const/16 v5, 0x9

    aput v2, v0, v5

    .line 73
    const/16 v5, 0xa

    aput v4, v0, v5

    .line 75
    invoke-virtual {p0}, Lorg/andengine/entity/primitive/vbo/HighPerformanceRectangleVertexBufferObject;->setDirtyOnHardware()V

    .line 76
    return-void
.end method
