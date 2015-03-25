.class public Lorg/andengine/entity/primitive/Rectangle;
.super Lorg/andengine/entity/shape/RectangularShape;
.source "Rectangle.java"


# static fields
.field public static final COLOR_INDEX:I = 0x2

.field public static final RECTANGLE_SIZE:I = 0xc

.field public static final VERTEXBUFFEROBJECTATTRIBUTES_DEFAULT:Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes; = null

.field public static final VERTEX_INDEX_X:I = 0x0

.field public static final VERTEX_INDEX_Y:I = 0x1

.field public static final VERTEX_SIZE:I = 0x3

.field public static final VERTICES_PER_RECTANGLE:I = 0x4


# instance fields
.field protected final mRectangleVertexBufferObject:Lorg/andengine/entity/primitive/vbo/IRectangleVertexBufferObject;


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
    sput-object v0, Lorg/andengine/entity/primitive/Rectangle;->VERTEXBUFFEROBJECTATTRIBUTES_DEFAULT:Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;

    .line 41
    return-void
.end method

.method public constructor <init>(FFFFLorg/andengine/entity/primitive/vbo/IRectangleVertexBufferObject;)V
    .locals 6
    .parameter "pX"
    .parameter "pY"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pRectangleVertexBufferObject"

    .prologue
    .line 68
    invoke-static {}, Lorg/andengine/opengl/shader/PositionColorShaderProgram;->getInstance()Lorg/andengine/opengl/shader/PositionColorShaderProgram;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/andengine/entity/shape/RectangularShape;-><init>(FFFFLorg/andengine/opengl/shader/ShaderProgram;)V

    .line 70
    iput-object p5, p0, Lorg/andengine/entity/primitive/Rectangle;->mRectangleVertexBufferObject:Lorg/andengine/entity/primitive/vbo/IRectangleVertexBufferObject;

    .line 72
    invoke-virtual {p0}, Lorg/andengine/entity/primitive/Rectangle;->onUpdateVertices()V

    .line 73
    invoke-virtual {p0}, Lorg/andengine/entity/primitive/Rectangle;->onUpdateColor()V

    .line 75
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/andengine/entity/primitive/Rectangle;->setBlendingEnabled(Z)V

    .line 76
    return-void
.end method

.method public constructor <init>(FFFFLorg/andengine/opengl/vbo/VertexBufferObjectManager;)V
    .locals 7
    .parameter "pX"
    .parameter "pY"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pVertexBufferObjectManager"

    .prologue
    .line 57
    sget-object v6, Lorg/andengine/opengl/vbo/DrawType;->STATIC:Lorg/andengine/opengl/vbo/DrawType;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/andengine/entity/primitive/Rectangle;-><init>(FFFFLorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V

    .line 58
    return-void
.end method

.method public constructor <init>(FFFFLorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V
    .locals 7
    .parameter "pX"
    .parameter "pY"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pVertexBufferObjectManager"
    .parameter "pDrawType"

    .prologue
    .line 64
    new-instance v0, Lorg/andengine/entity/primitive/vbo/HighPerformanceRectangleVertexBufferObject;

    const/16 v2, 0xc

    const/4 v4, 0x1

    sget-object v5, Lorg/andengine/entity/primitive/Rectangle;->VERTEXBUFFEROBJECTATTRIBUTES_DEFAULT:Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;

    move-object v1, p5

    move-object v3, p6

    invoke-direct/range {v0 .. v5}, Lorg/andengine/entity/primitive/vbo/HighPerformanceRectangleVertexBufferObject;-><init>(Lorg/andengine/opengl/vbo/VertexBufferObjectManager;ILorg/andengine/opengl/vbo/DrawType;ZLorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;)V

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lorg/andengine/entity/primitive/Rectangle;-><init>(FFFFLorg/andengine/entity/primitive/vbo/IRectangleVertexBufferObject;)V

    .line 65
    return-void
.end method


# virtual methods
.method protected draw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V
    .locals 3
    .parameter "pGLState"
    .parameter "pCamera"

    .prologue
    .line 100
    iget-object v0, p0, Lorg/andengine/entity/primitive/Rectangle;->mRectangleVertexBufferObject:Lorg/andengine/entity/primitive/vbo/IRectangleVertexBufferObject;

    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Lorg/andengine/entity/primitive/vbo/IRectangleVertexBufferObject;->draw(II)V

    .line 101
    return-void
.end method

.method public getVertexBufferObject()Lorg/andengine/entity/primitive/vbo/IRectangleVertexBufferObject;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/andengine/entity/primitive/Rectangle;->mRectangleVertexBufferObject:Lorg/andengine/entity/primitive/vbo/IRectangleVertexBufferObject;

    return-object v0
.end method

.method public bridge synthetic getVertexBufferObject()Lorg/andengine/opengl/vbo/IVertexBufferObject;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/entity/primitive/Rectangle;->getVertexBufferObject()Lorg/andengine/entity/primitive/vbo/IRectangleVertexBufferObject;

    move-result-object v0

    return-object v0
.end method

.method protected onUpdateColor()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lorg/andengine/entity/primitive/Rectangle;->mRectangleVertexBufferObject:Lorg/andengine/entity/primitive/vbo/IRectangleVertexBufferObject;

    invoke-interface {v0, p0}, Lorg/andengine/entity/primitive/vbo/IRectangleVertexBufferObject;->onUpdateColor(Lorg/andengine/entity/primitive/Rectangle;)V

    .line 113
    return-void
.end method

.method protected onUpdateVertices()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/andengine/entity/primitive/Rectangle;->mRectangleVertexBufferObject:Lorg/andengine/entity/primitive/vbo/IRectangleVertexBufferObject;

    invoke-interface {v0, p0}, Lorg/andengine/entity/primitive/vbo/IRectangleVertexBufferObject;->onUpdateVertices(Lorg/andengine/entity/primitive/Rectangle;)V

    .line 118
    return-void
.end method

.method protected postDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V
    .locals 2
    .parameter "pGLState"
    .parameter "pCamera"

    .prologue
    .line 105
    iget-object v0, p0, Lorg/andengine/entity/primitive/Rectangle;->mRectangleVertexBufferObject:Lorg/andengine/entity/primitive/vbo/IRectangleVertexBufferObject;

    iget-object v1, p0, Lorg/andengine/entity/primitive/Rectangle;->mShaderProgram:Lorg/andengine/opengl/shader/ShaderProgram;

    invoke-interface {v0, p1, v1}, Lorg/andengine/entity/primitive/vbo/IRectangleVertexBufferObject;->unbind(Lorg/andengine/opengl/util/GLState;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 107
    invoke-super {p0, p1, p2}, Lorg/andengine/entity/shape/RectangularShape;->postDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V

    .line 108
    return-void
.end method

.method protected preDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V
    .locals 2
    .parameter "pGLState"
    .parameter "pCamera"

    .prologue
    .line 93
    invoke-super {p0, p1, p2}, Lorg/andengine/entity/shape/RectangularShape;->preDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V

    .line 95
    iget-object v0, p0, Lorg/andengine/entity/primitive/Rectangle;->mRectangleVertexBufferObject:Lorg/andengine/entity/primitive/vbo/IRectangleVertexBufferObject;

    iget-object v1, p0, Lorg/andengine/entity/primitive/Rectangle;->mShaderProgram:Lorg/andengine/opengl/shader/ShaderProgram;

    invoke-interface {v0, p1, v1}, Lorg/andengine/entity/primitive/vbo/IRectangleVertexBufferObject;->bind(Lorg/andengine/opengl/util/GLState;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 96
    return-void
.end method
