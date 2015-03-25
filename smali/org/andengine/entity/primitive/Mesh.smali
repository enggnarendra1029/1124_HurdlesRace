.class public Lorg/andengine/entity/primitive/Mesh;
.super Lorg/andengine/entity/shape/Shape;
.source "Mesh.java"


# static fields
.field public static final COLOR_INDEX:I = 0x2

.field public static final VERTEXBUFFEROBJECTATTRIBUTES_DEFAULT:Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes; = null

.field public static final VERTEX_INDEX_X:I = 0x0

.field public static final VERTEX_INDEX_Y:I = 0x1

.field public static final VERTEX_SIZE:I = 0x3


# instance fields
.field private mDrawMode:I

.field protected final mMeshVertexBufferObject:Lorg/andengine/entity/primitive/vbo/IMeshVertexBufferObject;

.field private mVertexCountToDraw:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 38
    new-instance v0, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;

    invoke-direct {v0, v3}, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;-><init>(I)V

    .line 39
    const-string v2, "a_position"

    const/16 v4, 0x1406

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;->add(ILjava/lang/String;IIZ)Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;

    move-result-object v0

    .line 40
    const-string v2, "a_color"

    const/4 v3, 0x4

    const/16 v4, 0x1401

    move v1, v6

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;->add(ILjava/lang/String;IIZ)Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;->build()Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;

    move-result-object v0

    .line 38
    sput-object v0, Lorg/andengine/entity/primitive/Mesh;->VERTEXBUFFEROBJECTATTRIBUTES_DEFAULT:Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;

    .line 41
    return-void
.end method

.method public constructor <init>(FFILorg/andengine/entity/primitive/DrawMode;Lorg/andengine/entity/primitive/vbo/IMeshVertexBufferObject;)V
    .locals 1
    .parameter "pX"
    .parameter "pY"
    .parameter "pVertexCount"
    .parameter "pDrawMode"
    .parameter "pMeshVertexBufferObject"

    .prologue
    .line 70
    invoke-static {}, Lorg/andengine/opengl/shader/PositionColorShaderProgram;->getInstance()Lorg/andengine/opengl/shader/PositionColorShaderProgram;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/andengine/entity/shape/Shape;-><init>(FFLorg/andengine/opengl/shader/ShaderProgram;)V

    .line 72
    invoke-virtual {p4}, Lorg/andengine/entity/primitive/DrawMode;->getDrawMode()I

    move-result v0

    iput v0, p0, Lorg/andengine/entity/primitive/Mesh;->mDrawMode:I

    .line 73
    iput-object p5, p0, Lorg/andengine/entity/primitive/Mesh;->mMeshVertexBufferObject:Lorg/andengine/entity/primitive/vbo/IMeshVertexBufferObject;

    .line 74
    iput p3, p0, Lorg/andengine/entity/primitive/Mesh;->mVertexCountToDraw:I

    .line 76
    iget-object v0, p0, Lorg/andengine/entity/primitive/Mesh;->mMeshVertexBufferObject:Lorg/andengine/entity/primitive/vbo/IMeshVertexBufferObject;

    invoke-interface {v0}, Lorg/andengine/entity/primitive/vbo/IMeshVertexBufferObject;->setDirtyOnHardware()V

    .line 78
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/andengine/entity/primitive/Mesh;->setBlendingEnabled(Z)V

    .line 79
    return-void
.end method

.method public constructor <init>(FF[FILorg/andengine/entity/primitive/DrawMode;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;)V
    .locals 8
    .parameter "pX"
    .parameter "pY"
    .parameter "pBufferData"
    .parameter "pVertexCount"
    .parameter "pDrawMode"
    .parameter "pVertexBufferObjectManager"

    .prologue
    .line 59
    sget-object v7, Lorg/andengine/opengl/vbo/DrawType;->STATIC:Lorg/andengine/opengl/vbo/DrawType;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/andengine/entity/primitive/Mesh;-><init>(FF[FILorg/andengine/entity/primitive/DrawMode;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V

    .line 60
    return-void
.end method

.method public constructor <init>(FF[FILorg/andengine/entity/primitive/DrawMode;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V
    .locals 7
    .parameter "pX"
    .parameter "pY"
    .parameter "pBufferData"
    .parameter "pVertexCount"
    .parameter "pDrawMode"
    .parameter "pVertexBufferObjectManager"
    .parameter "pDrawType"

    .prologue
    .line 66
    new-instance v0, Lorg/andengine/entity/primitive/vbo/HighPerformanceMeshVertexBufferObject;

    const/4 v5, 0x1

    sget-object v6, Lorg/andengine/entity/primitive/Mesh;->VERTEXBUFFEROBJECTATTRIBUTES_DEFAULT:Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;

    move-object v1, p6

    move-object v2, p3

    move v3, p4

    move-object v4, p7

    invoke-direct/range {v0 .. v6}, Lorg/andengine/entity/primitive/vbo/HighPerformanceMeshVertexBufferObject;-><init>(Lorg/andengine/opengl/vbo/VertexBufferObjectManager;[FILorg/andengine/opengl/vbo/DrawType;ZLorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;)V

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p4

    move-object v5, p5

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lorg/andengine/entity/primitive/Mesh;-><init>(FFILorg/andengine/entity/primitive/DrawMode;Lorg/andengine/entity/primitive/vbo/IMeshVertexBufferObject;)V

    .line 67
    return-void
.end method


# virtual methods
.method public collidesWith(Lorg/andengine/entity/shape/IShape;)Z
    .locals 2
    .parameter "pOtherShape"

    .prologue
    const/4 v1, 0x0

    .line 143
    instance-of v0, p1, Lorg/andengine/entity/primitive/Line;

    if-eqz v0, :cond_1

    .line 150
    :cond_0
    :goto_0
    return v1

    .line 146
    :cond_1
    instance-of v0, p1, Lorg/andengine/entity/shape/RectangularShape;

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public contains(FF)Z
    .locals 1
    .parameter "pX"
    .parameter "pY"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 138
    new-instance v0, Lorg/andengine/util/exception/MethodNotSupportedException;

    invoke-direct {v0}, Lorg/andengine/util/exception/MethodNotSupportedException;-><init>()V

    throw v0
.end method

.method protected draw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V
    .locals 3
    .parameter "pGLState"
    .parameter "pCamera"

    .prologue
    .line 115
    iget-object v0, p0, Lorg/andengine/entity/primitive/Mesh;->mMeshVertexBufferObject:Lorg/andengine/entity/primitive/vbo/IMeshVertexBufferObject;

    iget v1, p0, Lorg/andengine/entity/primitive/Mesh;->mDrawMode:I

    iget v2, p0, Lorg/andengine/entity/primitive/Mesh;->mVertexCountToDraw:I

    invoke-interface {v0, v1, v2}, Lorg/andengine/entity/primitive/vbo/IMeshVertexBufferObject;->draw(II)V

    .line 116
    return-void
.end method

.method public getBufferData()[F
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/andengine/entity/primitive/Mesh;->mMeshVertexBufferObject:Lorg/andengine/entity/primitive/vbo/IMeshVertexBufferObject;

    invoke-interface {v0}, Lorg/andengine/entity/primitive/vbo/IMeshVertexBufferObject;->getBufferData()[F

    move-result-object v0

    return-object v0
.end method

.method public getVertexBufferObject()Lorg/andengine/entity/primitive/vbo/IMeshVertexBufferObject;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/andengine/entity/primitive/Mesh;->mMeshVertexBufferObject:Lorg/andengine/entity/primitive/vbo/IMeshVertexBufferObject;

    return-object v0
.end method

.method public bridge synthetic getVertexBufferObject()Lorg/andengine/opengl/vbo/IVertexBufferObject;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/entity/primitive/Mesh;->getVertexBufferObject()Lorg/andengine/entity/primitive/vbo/IMeshVertexBufferObject;

    move-result-object v0

    return-object v0
.end method

.method protected onUpdateColor()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/andengine/entity/primitive/Mesh;->mMeshVertexBufferObject:Lorg/andengine/entity/primitive/vbo/IMeshVertexBufferObject;

    invoke-interface {v0, p0}, Lorg/andengine/entity/primitive/vbo/IMeshVertexBufferObject;->onUpdateColor(Lorg/andengine/entity/primitive/Mesh;)V

    .line 128
    return-void
.end method

.method protected onUpdateVertices()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lorg/andengine/entity/primitive/Mesh;->mMeshVertexBufferObject:Lorg/andengine/entity/primitive/vbo/IMeshVertexBufferObject;

    invoke-interface {v0, p0}, Lorg/andengine/entity/primitive/vbo/IMeshVertexBufferObject;->onUpdateVertices(Lorg/andengine/entity/primitive/Mesh;)V

    .line 133
    return-void
.end method

.method protected postDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V
    .locals 2
    .parameter "pGLState"
    .parameter "pCamera"

    .prologue
    .line 120
    iget-object v0, p0, Lorg/andengine/entity/primitive/Mesh;->mMeshVertexBufferObject:Lorg/andengine/entity/primitive/vbo/IMeshVertexBufferObject;

    iget-object v1, p0, Lorg/andengine/entity/primitive/Mesh;->mShaderProgram:Lorg/andengine/opengl/shader/ShaderProgram;

    invoke-interface {v0, p1, v1}, Lorg/andengine/entity/primitive/vbo/IMeshVertexBufferObject;->unbind(Lorg/andengine/opengl/util/GLState;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 122
    invoke-super {p0, p1, p2}, Lorg/andengine/entity/shape/Shape;->postDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V

    .line 123
    return-void
.end method

.method protected preDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V
    .locals 2
    .parameter "pGLState"
    .parameter "pCamera"

    .prologue
    .line 108
    invoke-super {p0, p1, p2}, Lorg/andengine/entity/shape/Shape;->preDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V

    .line 110
    iget-object v0, p0, Lorg/andengine/entity/primitive/Mesh;->mMeshVertexBufferObject:Lorg/andengine/entity/primitive/vbo/IMeshVertexBufferObject;

    iget-object v1, p0, Lorg/andengine/entity/primitive/Mesh;->mShaderProgram:Lorg/andengine/opengl/shader/ShaderProgram;

    invoke-interface {v0, p1, v1}, Lorg/andengine/entity/primitive/vbo/IMeshVertexBufferObject;->bind(Lorg/andengine/opengl/util/GLState;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 111
    return-void
.end method

.method public setDrawMode(Lorg/andengine/entity/primitive/DrawMode;)V
    .locals 1
    .parameter "pDrawMode"

    .prologue
    .line 94
    iget v0, p1, Lorg/andengine/entity/primitive/DrawMode;->mDrawMode:I

    iput v0, p0, Lorg/andengine/entity/primitive/Mesh;->mDrawMode:I

    .line 95
    return-void
.end method

.method public setVertexCountToDraw(I)V
    .locals 0
    .parameter "pVertexCountToDraw"

    .prologue
    .line 90
    iput p1, p0, Lorg/andengine/entity/primitive/Mesh;->mVertexCountToDraw:I

    .line 91
    return-void
.end method
