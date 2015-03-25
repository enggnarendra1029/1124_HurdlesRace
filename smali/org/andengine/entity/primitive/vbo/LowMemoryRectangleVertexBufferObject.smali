.class public Lorg/andengine/entity/primitive/vbo/LowMemoryRectangleVertexBufferObject;
.super Lorg/andengine/opengl/vbo/LowMemoryVertexBufferObject;
.source "LowMemoryRectangleVertexBufferObject.java"

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
    .line 31
    invoke-direct/range {p0 .. p5}, Lorg/andengine/opengl/vbo/LowMemoryVertexBufferObject;-><init>(Lorg/andengine/opengl/vbo/VertexBufferObjectManager;ILorg/andengine/opengl/vbo/DrawType;ZLorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;)V

    .line 32
    return-void
.end method


# virtual methods
.method public onUpdateColor(Lorg/andengine/entity/primitive/Rectangle;)V
    .locals 3
    .parameter "pRectangle"

    .prologue
    .line 44
    iget-object v0, p0, Lorg/andengine/entity/primitive/vbo/LowMemoryRectangleVertexBufferObject;->mFloatBuffer:Ljava/nio/FloatBuffer;

    .line 46
    .local v0, bufferData:Ljava/nio/FloatBuffer;
    invoke-virtual {p1}, Lorg/andengine/entity/primitive/Rectangle;->getColor()Lorg/andengine/util/color/Color;

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

    .line 50
    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 51
    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 53
    invoke-virtual {p0}, Lorg/andengine/entity/primitive/vbo/LowMemoryRectangleVertexBufferObject;->setDirtyOnHardware()V

    .line 54
    return-void
.end method

.method public onUpdateVertices(Lorg/andengine/entity/primitive/Rectangle;)V
    .locals 7
    .parameter "pRectangle"

    .prologue
    const/4 v6, 0x0

    .line 58
    iget-object v0, p0, Lorg/andengine/entity/primitive/vbo/LowMemoryRectangleVertexBufferObject;->mFloatBuffer:Ljava/nio/FloatBuffer;

    .line 60
    .local v0, bufferData:Ljava/nio/FloatBuffer;
    const/4 v1, 0x0

    .line 61
    .local v1, x:F
    const/4 v3, 0x0

    .line 62
    .local v3, y:F
    invoke-virtual {p1}, Lorg/andengine/entity/primitive/Rectangle;->getWidth()F

    move-result v2

    .line 63
    .local v2, x2:F
    invoke-virtual {p1}, Lorg/andengine/entity/primitive/Rectangle;->getHeight()F

    move-result v4

    .line 65
    .local v4, y2:F
    const/4 v5, 0x0

    invoke-virtual {v0, v5, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 66
    const/4 v5, 0x1

    invoke-virtual {v0, v5, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 68
    const/4 v5, 0x3

    invoke-virtual {v0, v5, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 69
    const/4 v5, 0x4

    invoke-virtual {v0, v5, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 71
    const/4 v5, 0x6

    invoke-virtual {v0, v5, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 72
    const/4 v5, 0x7

    invoke-virtual {v0, v5, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 74
    const/16 v5, 0x9

    invoke-virtual {v0, v5, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 75
    const/16 v5, 0xa

    invoke-virtual {v0, v5, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 77
    invoke-virtual {p0}, Lorg/andengine/entity/primitive/vbo/LowMemoryRectangleVertexBufferObject;->setDirtyOnHardware()V

    .line 78
    return-void
.end method
