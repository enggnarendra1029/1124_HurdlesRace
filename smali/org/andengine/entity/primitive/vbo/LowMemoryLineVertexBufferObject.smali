.class public Lorg/andengine/entity/primitive/vbo/LowMemoryLineVertexBufferObject;
.super Lorg/andengine/opengl/vbo/LowMemoryVertexBufferObject;
.source "LowMemoryLineVertexBufferObject.java"

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
    .line 31
    invoke-direct/range {p0 .. p5}, Lorg/andengine/opengl/vbo/LowMemoryVertexBufferObject;-><init>(Lorg/andengine/opengl/vbo/VertexBufferObjectManager;ILorg/andengine/opengl/vbo/DrawType;ZLorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;)V

    .line 32
    return-void
.end method


# virtual methods
.method public onUpdateColor(Lorg/andengine/entity/primitive/Line;)V
    .locals 3
    .parameter "pLine"

    .prologue
    .line 44
    iget-object v0, p0, Lorg/andengine/entity/primitive/vbo/LowMemoryLineVertexBufferObject;->mFloatBuffer:Ljava/nio/FloatBuffer;

    .line 46
    .local v0, bufferData:Ljava/nio/FloatBuffer;
    invoke-virtual {p1}, Lorg/andengine/entity/primitive/Line;->getColor()Lorg/andengine/util/color/Color;

    move-result-object v2

    invoke-virtual {v2}, Lorg/andengine/util/color/Color;->getABGRPackedFloat()F

    move-result v1

    .line 48
    .local v1, packedColor:F
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 49
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 51
    invoke-virtual {p0}, Lorg/andengine/entity/primitive/vbo/LowMemoryLineVertexBufferObject;->setDirtyOnHardware()V

    .line 52
    return-void
.end method

.method public onUpdateVertices(Lorg/andengine/entity/primitive/Line;)V
    .locals 4
    .parameter "pLine"

    .prologue
    const/4 v2, 0x0

    .line 56
    iget-object v0, p0, Lorg/andengine/entity/primitive/vbo/LowMemoryLineVertexBufferObject;->mFloatBuffer:Ljava/nio/FloatBuffer;

    .line 58
    .local v0, bufferData:Ljava/nio/FloatBuffer;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 59
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 61
    const/4 v1, 0x3

    invoke-virtual {p1}, Lorg/andengine/entity/primitive/Line;->getX2()F

    move-result v2

    invoke-virtual {p1}, Lorg/andengine/entity/primitive/Line;->getX1()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 62
    const/4 v1, 0x4

    invoke-virtual {p1}, Lorg/andengine/entity/primitive/Line;->getY2()F

    move-result v2

    invoke-virtual {p1}, Lorg/andengine/entity/primitive/Line;->getY1()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 64
    invoke-virtual {p0}, Lorg/andengine/entity/primitive/vbo/LowMemoryLineVertexBufferObject;->setDirtyOnHardware()V

    .line 65
    return-void
.end method
