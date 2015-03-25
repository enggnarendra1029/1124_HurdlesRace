.class public Lorg/andengine/entity/primitive/Line;
.super Lorg/andengine/entity/shape/Shape;
.source "Line.java"


# static fields
.field public static final COLOR_INDEX:I = 0x2

.field public static final LINE_SIZE:I = 0x6

.field public static final LINE_WIDTH_DEFAULT:F = 1.0f

.field public static final VERTEXBUFFEROBJECTATTRIBUTES_DEFAULT:Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes; = null

.field public static final VERTEX_INDEX_X:I = 0x0

.field public static final VERTEX_INDEX_Y:I = 0x1

.field public static final VERTEX_SIZE:I = 0x3

.field public static final VERTICES_PER_LINE:I = 0x2


# instance fields
.field protected final mLineVertexBufferObject:Lorg/andengine/entity/primitive/vbo/ILineVertexBufferObject;

.field protected mLineWidth:F

.field protected mX2:F

.field protected mY2:F


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 45
    new-instance v0, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;

    invoke-direct {v0, v3}, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;-><init>(I)V

    .line 46
    const-string v2, "a_position"

    const/16 v4, 0x1406

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;->add(ILjava/lang/String;IIZ)Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;

    move-result-object v0

    .line 47
    const-string v2, "a_color"

    const/4 v3, 0x4

    const/16 v4, 0x1401

    move v1, v6

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;->add(ILjava/lang/String;IIZ)Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;->build()Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;

    move-result-object v0

    .line 45
    sput-object v0, Lorg/andengine/entity/primitive/Line;->VERTEXBUFFEROBJECTATTRIBUTES_DEFAULT:Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;

    .line 48
    return-void
.end method

.method public constructor <init>(FFFFFLorg/andengine/entity/primitive/vbo/ILineVertexBufferObject;)V
    .locals 5
    .parameter "pX1"
    .parameter "pY1"
    .parameter "pX2"
    .parameter "pY2"
    .parameter "pLineWidth"
    .parameter "pLineVertexBufferObject"

    .prologue
    const/high16 v4, 0x3f00

    .line 91
    invoke-static {}, Lorg/andengine/opengl/shader/PositionColorShaderProgram;->getInstance()Lorg/andengine/opengl/shader/PositionColorShaderProgram;

    move-result-object v2

    invoke-direct {p0, p1, p2, v2}, Lorg/andengine/entity/shape/Shape;-><init>(FFLorg/andengine/opengl/shader/ShaderProgram;)V

    .line 93
    iput p3, p0, Lorg/andengine/entity/primitive/Line;->mX2:F

    .line 94
    iput p4, p0, Lorg/andengine/entity/primitive/Line;->mY2:F

    .line 96
    iput p5, p0, Lorg/andengine/entity/primitive/Line;->mLineWidth:F

    .line 98
    iput-object p6, p0, Lorg/andengine/entity/primitive/Line;->mLineVertexBufferObject:Lorg/andengine/entity/primitive/vbo/ILineVertexBufferObject;

    .line 100
    invoke-virtual {p0}, Lorg/andengine/entity/primitive/Line;->onUpdateVertices()V

    .line 101
    invoke-virtual {p0}, Lorg/andengine/entity/primitive/Line;->onUpdateColor()V

    .line 103
    iget v2, p0, Lorg/andengine/entity/primitive/Line;->mX2:F

    iget v3, p0, Lorg/andengine/entity/primitive/Line;->mX:F

    sub-float/2addr v2, v3

    mul-float v0, v2, v4

    .line 104
    .local v0, centerX:F
    iget v2, p0, Lorg/andengine/entity/primitive/Line;->mY2:F

    iget v3, p0, Lorg/andengine/entity/primitive/Line;->mY:F

    sub-float/2addr v2, v3

    mul-float v1, v2, v4

    .line 106
    .local v1, centerY:F
    iput v0, p0, Lorg/andengine/entity/primitive/Line;->mRotationCenterX:F

    .line 107
    iput v1, p0, Lorg/andengine/entity/primitive/Line;->mRotationCenterY:F

    .line 109
    iget v2, p0, Lorg/andengine/entity/primitive/Line;->mRotationCenterX:F

    iput v2, p0, Lorg/andengine/entity/primitive/Line;->mScaleCenterX:F

    .line 110
    iget v2, p0, Lorg/andengine/entity/primitive/Line;->mRotationCenterY:F

    iput v2, p0, Lorg/andengine/entity/primitive/Line;->mScaleCenterY:F

    .line 112
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lorg/andengine/entity/primitive/Line;->setBlendingEnabled(Z)V

    .line 113
    return-void
.end method

.method public constructor <init>(FFFFFLorg/andengine/opengl/vbo/VertexBufferObjectManager;)V
    .locals 8
    .parameter "pX1"
    .parameter "pY1"
    .parameter "pX2"
    .parameter "pY2"
    .parameter "pLineWidth"
    .parameter "pVertexBufferObjectManager"

    .prologue
    .line 83
    sget-object v7, Lorg/andengine/opengl/vbo/DrawType;->STATIC:Lorg/andengine/opengl/vbo/DrawType;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/andengine/entity/primitive/Line;-><init>(FFFFFLorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V

    .line 84
    return-void
.end method

.method public constructor <init>(FFFFFLorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V
    .locals 8
    .parameter "pX1"
    .parameter "pY1"
    .parameter "pX2"
    .parameter "pY2"
    .parameter "pLineWidth"
    .parameter "pVertexBufferObjectManager"
    .parameter "pDrawType"

    .prologue
    .line 87
    new-instance v0, Lorg/andengine/entity/primitive/vbo/HighPerformanceLineVertexBufferObject;

    const/4 v2, 0x6

    const/4 v4, 0x1

    sget-object v5, Lorg/andengine/entity/primitive/Line;->VERTEXBUFFEROBJECTATTRIBUTES_DEFAULT:Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;

    move-object v1, p6

    move-object v3, p7

    invoke-direct/range {v0 .. v5}, Lorg/andengine/entity/primitive/vbo/HighPerformanceLineVertexBufferObject;-><init>(Lorg/andengine/opengl/vbo/VertexBufferObjectManager;ILorg/andengine/opengl/vbo/DrawType;ZLorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;)V

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lorg/andengine/entity/primitive/Line;-><init>(FFFFFLorg/andengine/entity/primitive/vbo/ILineVertexBufferObject;)V

    .line 88
    return-void
.end method

.method public constructor <init>(FFFFLorg/andengine/opengl/vbo/VertexBufferObjectManager;)V
    .locals 8
    .parameter "pX1"
    .parameter "pY1"
    .parameter "pX2"
    .parameter "pY2"
    .parameter "pVertexBufferObjectManager"

    .prologue
    .line 69
    const/high16 v5, 0x3f80

    sget-object v7, Lorg/andengine/opengl/vbo/DrawType;->STATIC:Lorg/andengine/opengl/vbo/DrawType;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lorg/andengine/entity/primitive/Line;-><init>(FFFFFLorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V

    .line 70
    return-void
.end method

.method public constructor <init>(FFFFLorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V
    .locals 8
    .parameter "pX1"
    .parameter "pY1"
    .parameter "pX2"
    .parameter "pY2"
    .parameter "pVertexBufferObjectManager"
    .parameter "pDrawType"

    .prologue
    .line 76
    const/high16 v5, 0x3f80

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/andengine/entity/primitive/Line;-><init>(FFFFFLorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V

    .line 77
    return-void
.end method


# virtual methods
.method public collidesWith(Lorg/andengine/entity/shape/IShape;)Z
    .locals 9
    .parameter "pOtherShape"

    .prologue
    .line 274
    instance-of v0, p1, Lorg/andengine/entity/primitive/Line;

    if-eqz v0, :cond_0

    move-object v8, p1

    .line 275
    check-cast v8, Lorg/andengine/entity/primitive/Line;

    .line 276
    .local v8, otherLine:Lorg/andengine/entity/primitive/Line;
    iget v0, p0, Lorg/andengine/entity/primitive/Line;->mX:F

    iget v1, p0, Lorg/andengine/entity/primitive/Line;->mY:F

    iget v2, p0, Lorg/andengine/entity/primitive/Line;->mX2:F

    iget v3, p0, Lorg/andengine/entity/primitive/Line;->mY2:F

    iget v4, v8, Lorg/andengine/entity/primitive/Line;->mX:F

    iget v5, v8, Lorg/andengine/entity/primitive/Line;->mY:F

    iget v6, v8, Lorg/andengine/entity/primitive/Line;->mX2:F

    iget v7, v8, Lorg/andengine/entity/primitive/Line;->mY2:F

    invoke-static/range {v0 .. v7}, Lorg/andengine/util/algorithm/collision/LineCollisionChecker;->checkLineCollision(FFFFFFFF)Z

    move-result v0

    .line 280
    .end local v8           #otherLine:Lorg/andengine/entity/primitive/Line;
    .end local p1
    :goto_0
    return v0

    .line 277
    .restart local p1
    :cond_0
    instance-of v0, p1, Lorg/andengine/entity/shape/RectangularShape;

    if-eqz v0, :cond_1

    .line 278
    check-cast p1, Lorg/andengine/entity/shape/RectangularShape;

    .end local p1
    invoke-static {p1, p0}, Lorg/andengine/util/algorithm/collision/RectangularShapeCollisionChecker;->checkCollision(Lorg/andengine/entity/shape/RectangularShape;Lorg/andengine/entity/primitive/Line;)Z

    move-result v0

    goto :goto_0

    .line 280
    .restart local p1
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public contains(FF)Z
    .locals 1
    .parameter "pX"
    .parameter "pY"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 269
    new-instance v0, Lorg/andengine/util/exception/MethodNotSupportedException;

    invoke-direct {v0}, Lorg/andengine/util/exception/MethodNotSupportedException;-><init>()V

    throw v0
.end method

.method protected draw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V
    .locals 3
    .parameter "pGLState"
    .parameter "pCamera"

    .prologue
    .line 236
    iget-object v0, p0, Lorg/andengine/entity/primitive/Line;->mLineVertexBufferObject:Lorg/andengine/entity/primitive/vbo/ILineVertexBufferObject;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lorg/andengine/entity/primitive/vbo/ILineVertexBufferObject;->draw(II)V

    .line 237
    return-void
.end method

.method public getLineWidth()F
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lorg/andengine/entity/primitive/Line;->mLineWidth:F

    return v0
.end method

.method public getSceneCenterCoordinates()[F
    .locals 1

    .prologue
    .line 258
    new-instance v0, Lorg/andengine/util/exception/MethodNotSupportedException;

    invoke-direct {v0}, Lorg/andengine/util/exception/MethodNotSupportedException;-><init>()V

    throw v0
.end method

.method public getSceneCenterCoordinates([F)[F
    .locals 1
    .parameter "pReuse"

    .prologue
    .line 263
    new-instance v0, Lorg/andengine/util/exception/MethodNotSupportedException;

    invoke-direct {v0}, Lorg/andengine/util/exception/MethodNotSupportedException;-><init>()V

    throw v0
.end method

.method public getVertexBufferObject()Lorg/andengine/entity/primitive/vbo/ILineVertexBufferObject;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lorg/andengine/entity/primitive/Line;->mLineVertexBufferObject:Lorg/andengine/entity/primitive/vbo/ILineVertexBufferObject;

    return-object v0
.end method

.method public bridge synthetic getVertexBufferObject()Lorg/andengine/opengl/vbo/IVertexBufferObject;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/entity/primitive/Line;->getVertexBufferObject()Lorg/andengine/entity/primitive/vbo/ILineVertexBufferObject;

    move-result-object v0

    return-object v0
.end method

.method public getX()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 125
    invoke-super {p0}, Lorg/andengine/entity/shape/Shape;->getX()F

    move-result v0

    return v0
.end method

.method public getX1()F
    .locals 1

    .prologue
    .line 138
    invoke-super {p0}, Lorg/andengine/entity/shape/Shape;->getX()F

    move-result v0

    return v0
.end method

.method public getX2()F
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lorg/andengine/entity/primitive/Line;->mX2:F

    return v0
.end method

.method public getY()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 134
    invoke-super {p0}, Lorg/andengine/entity/shape/Shape;->getY()F

    move-result v0

    return v0
.end method

.method public getY1()F
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Lorg/andengine/entity/shape/Shape;->getY()F

    move-result v0

    return v0
.end method

.method public getY2()F
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lorg/andengine/entity/primitive/Line;->mY2:F

    return v0
.end method

.method public isCulled(Lorg/andengine/engine/camera/Camera;)Z
    .locals 1
    .parameter "pCamera"

    .prologue
    .line 222
    invoke-virtual {p1, p0}, Lorg/andengine/engine/camera/Camera;->isLineVisible(Lorg/andengine/entity/primitive/Line;)Z

    move-result v0

    return v0
.end method

.method protected onUpdateColor()V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lorg/andengine/entity/primitive/Line;->mLineVertexBufferObject:Lorg/andengine/entity/primitive/vbo/ILineVertexBufferObject;

    invoke-interface {v0, p0}, Lorg/andengine/entity/primitive/vbo/ILineVertexBufferObject;->onUpdateColor(Lorg/andengine/entity/primitive/Line;)V

    .line 249
    return-void
.end method

.method protected onUpdateVertices()V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lorg/andengine/entity/primitive/Line;->mLineVertexBufferObject:Lorg/andengine/entity/primitive/vbo/ILineVertexBufferObject;

    invoke-interface {v0, p0}, Lorg/andengine/entity/primitive/vbo/ILineVertexBufferObject;->onUpdateVertices(Lorg/andengine/entity/primitive/Line;)V

    .line 254
    return-void
.end method

.method protected postDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V
    .locals 2
    .parameter "pGLState"
    .parameter "pCamera"

    .prologue
    .line 241
    iget-object v0, p0, Lorg/andengine/entity/primitive/Line;->mLineVertexBufferObject:Lorg/andengine/entity/primitive/vbo/ILineVertexBufferObject;

    iget-object v1, p0, Lorg/andengine/entity/primitive/Line;->mShaderProgram:Lorg/andengine/opengl/shader/ShaderProgram;

    invoke-interface {v0, p1, v1}, Lorg/andengine/entity/primitive/vbo/ILineVertexBufferObject;->unbind(Lorg/andengine/opengl/util/GLState;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 243
    invoke-super {p0, p1, p2}, Lorg/andengine/entity/shape/Shape;->postDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V

    .line 244
    return-void
.end method

.method protected preDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V
    .locals 2
    .parameter "pGLState"
    .parameter "pCamera"

    .prologue
    .line 227
    invoke-super {p0, p1, p2}, Lorg/andengine/entity/shape/Shape;->preDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V

    .line 229
    iget v0, p0, Lorg/andengine/entity/primitive/Line;->mLineWidth:F

    invoke-virtual {p1, v0}, Lorg/andengine/opengl/util/GLState;->lineWidth(F)V

    .line 231
    iget-object v0, p0, Lorg/andengine/entity/primitive/Line;->mLineVertexBufferObject:Lorg/andengine/entity/primitive/vbo/ILineVertexBufferObject;

    iget-object v1, p0, Lorg/andengine/entity/primitive/Line;->mShaderProgram:Lorg/andengine/opengl/shader/ShaderProgram;

    invoke-interface {v0, p1, v1}, Lorg/andengine/entity/primitive/vbo/ILineVertexBufferObject;->bind(Lorg/andengine/opengl/util/GLState;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 232
    return-void
.end method

.method public setLineWidth(F)V
    .locals 0
    .parameter "pLineWidth"

    .prologue
    .line 158
    iput p1, p0, Lorg/andengine/entity/primitive/Line;->mLineWidth:F

    .line 159
    return-void
.end method

.method public setPosition(FF)V
    .locals 3
    .parameter "pX"
    .parameter "pY"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 193
    iget v2, p0, Lorg/andengine/entity/primitive/Line;->mX:F

    sub-float v0, v2, p1

    .line 194
    .local v0, dX:F
    iget v2, p0, Lorg/andengine/entity/primitive/Line;->mY:F

    sub-float v1, v2, p2

    .line 196
    .local v1, dY:F
    invoke-super {p0, p1, p2}, Lorg/andengine/entity/shape/Shape;->setPosition(FF)V

    .line 198
    iget v2, p0, Lorg/andengine/entity/primitive/Line;->mX2:F

    add-float/2addr v2, v0

    iput v2, p0, Lorg/andengine/entity/primitive/Line;->mX2:F

    .line 199
    iget v2, p0, Lorg/andengine/entity/primitive/Line;->mY2:F

    add-float/2addr v2, v1

    iput v2, p0, Lorg/andengine/entity/primitive/Line;->mY2:F

    .line 200
    return-void
.end method

.method public setPosition(FFFF)V
    .locals 0
    .parameter "pX1"
    .parameter "pY1"
    .parameter "pX2"
    .parameter "pY2"

    .prologue
    .line 203
    iput p3, p0, Lorg/andengine/entity/primitive/Line;->mX2:F

    .line 204
    iput p4, p0, Lorg/andengine/entity/primitive/Line;->mY2:F

    .line 206
    invoke-super {p0, p1, p2}, Lorg/andengine/entity/shape/Shape;->setPosition(FF)V

    .line 208
    invoke-virtual {p0}, Lorg/andengine/entity/primitive/Line;->onUpdateVertices()V

    .line 209
    return-void
.end method

.method public setX(F)V
    .locals 2
    .parameter "pX"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 167
    iget v1, p0, Lorg/andengine/entity/primitive/Line;->mX:F

    sub-float v0, v1, p1

    .line 169
    .local v0, dX:F
    invoke-super {p0, p1}, Lorg/andengine/entity/shape/Shape;->setX(F)V

    .line 171
    iget v1, p0, Lorg/andengine/entity/primitive/Line;->mX2:F

    add-float/2addr v1, v0

    iput v1, p0, Lorg/andengine/entity/primitive/Line;->mX2:F

    .line 172
    return-void
.end method

.method public setY(F)V
    .locals 2
    .parameter "pY"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 180
    iget v1, p0, Lorg/andengine/entity/primitive/Line;->mY:F

    sub-float v0, v1, p1

    .line 182
    .local v0, dY:F
    invoke-super {p0, p1}, Lorg/andengine/entity/shape/Shape;->setY(F)V

    .line 184
    iget v1, p0, Lorg/andengine/entity/primitive/Line;->mY2:F

    add-float/2addr v1, v0

    iput v1, p0, Lorg/andengine/entity/primitive/Line;->mY2:F

    .line 185
    return-void
.end method
