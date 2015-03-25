.class public Lorg/andengine/entity/sprite/Sprite;
.super Lorg/andengine/entity/shape/RectangularShape;
.source "Sprite.java"


# static fields
.field public static final COLOR_INDEX:I = 0x2

.field public static final SPRITE_SIZE:I = 0x14

.field public static final TEXTURECOORDINATES_INDEX_U:I = 0x3

.field public static final TEXTURECOORDINATES_INDEX_V:I = 0x4

.field public static final VERTEXBUFFEROBJECTATTRIBUTES_DEFAULT:Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes; = null

.field public static final VERTEX_INDEX_X:I = 0x0

.field public static final VERTEX_INDEX_Y:I = 0x1

.field public static final VERTEX_SIZE:I = 0x5

.field public static final VERTICES_PER_SPRITE:I = 0x4


# instance fields
.field protected mFlippedHorizontal:Z

.field protected mFlippedVertical:Z

.field protected final mSpriteVertexBufferObject:Lorg/andengine/entity/sprite/vbo/ISpriteVertexBufferObject;

.field protected final mTextureRegion:Lorg/andengine/opengl/texture/region/ITextureRegion;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/16 v4, 0x1406

    const/4 v11, 0x3

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 41
    new-instance v0, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;

    invoke-direct {v0, v11}, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;-><init>(I)V

    .line 42
    const-string v2, "a_position"

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;->add(ILjava/lang/String;IIZ)Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;

    move-result-object v5

    .line 43
    const-string v7, "a_color"

    const/4 v8, 0x4

    const/16 v9, 0x1401

    move v10, v6

    invoke-virtual/range {v5 .. v10}, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;->add(ILjava/lang/String;IIZ)Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;

    move-result-object v5

    .line 44
    const-string v7, "a_textureCoordinates"

    move v6, v11

    move v8, v3

    move v9, v4

    move v10, v1

    invoke-virtual/range {v5 .. v10}, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;->add(ILjava/lang/String;IIZ)Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;->build()Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;

    move-result-object v0

    .line 41
    sput-object v0, Lorg/andengine/entity/sprite/Sprite;->VERTEXBUFFEROBJECTATTRIBUTES_DEFAULT:Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;

    .line 45
    return-void
.end method

.method public constructor <init>(FFFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/entity/sprite/vbo/ISpriteVertexBufferObject;)V
    .locals 8
    .parameter "pX"
    .parameter "pY"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pTextureRegion"
    .parameter "pSpriteVertexBufferObject"

    .prologue
    .line 102
    invoke-static {}, Lorg/andengine/opengl/shader/PositionColorTextureCoordinatesShaderProgram;->getInstance()Lorg/andengine/opengl/shader/PositionColorTextureCoordinatesShaderProgram;

    move-result-object v7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/andengine/entity/sprite/Sprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/entity/sprite/vbo/ISpriteVertexBufferObject;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 103
    return-void
.end method

.method public constructor <init>(FFFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/entity/sprite/vbo/ISpriteVertexBufferObject;Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 6
    .parameter "pX"
    .parameter "pY"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pTextureRegion"
    .parameter "pSpriteVertexBufferObject"
    .parameter "pShaderProgram"

    .prologue
    .line 106
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lorg/andengine/entity/shape/RectangularShape;-><init>(FFFFLorg/andengine/opengl/shader/ShaderProgram;)V

    .line 108
    iput-object p5, p0, Lorg/andengine/entity/sprite/Sprite;->mTextureRegion:Lorg/andengine/opengl/texture/region/ITextureRegion;

    .line 109
    iput-object p6, p0, Lorg/andengine/entity/sprite/Sprite;->mSpriteVertexBufferObject:Lorg/andengine/entity/sprite/vbo/ISpriteVertexBufferObject;

    .line 111
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/andengine/entity/sprite/Sprite;->setBlendingEnabled(Z)V

    .line 112
    invoke-virtual {p0, p5}, Lorg/andengine/entity/sprite/Sprite;->initBlendFunction(Lorg/andengine/opengl/texture/region/ITextureRegion;)V

    .line 114
    invoke-virtual {p0}, Lorg/andengine/entity/sprite/Sprite;->onUpdateVertices()V

    .line 115
    invoke-virtual {p0}, Lorg/andengine/entity/sprite/Sprite;->onUpdateColor()V

    .line 116
    invoke-virtual {p0}, Lorg/andengine/entity/sprite/Sprite;->onUpdateTextureCoordinates()V

    .line 117
    return-void
.end method

.method public constructor <init>(FFFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;)V
    .locals 8
    .parameter "pX"
    .parameter "pY"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pTextureRegion"
    .parameter "pVertexBufferObjectManager"

    .prologue
    .line 86
    sget-object v7, Lorg/andengine/opengl/vbo/DrawType;->STATIC:Lorg/andengine/opengl/vbo/DrawType;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/andengine/entity/sprite/Sprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V

    .line 87
    return-void
.end method

.method public constructor <init>(FFFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 9
    .parameter "pX"
    .parameter "pY"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pTextureRegion"
    .parameter "pVertexBufferObjectManager"
    .parameter "pShaderProgram"

    .prologue
    .line 90
    sget-object v7, Lorg/andengine/opengl/vbo/DrawType;->STATIC:Lorg/andengine/opengl/vbo/DrawType;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/andengine/entity/sprite/Sprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 91
    return-void
.end method

.method public constructor <init>(FFFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V
    .locals 9
    .parameter "pX"
    .parameter "pY"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pTextureRegion"
    .parameter "pVertexBufferObjectManager"
    .parameter "pDrawType"

    .prologue
    .line 94
    invoke-static {}, Lorg/andengine/opengl/shader/PositionColorTextureCoordinatesShaderProgram;->getInstance()Lorg/andengine/opengl/shader/PositionColorTextureCoordinatesShaderProgram;

    move-result-object v8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lorg/andengine/entity/sprite/Sprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 95
    return-void
.end method

.method public constructor <init>(FFFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 9
    .parameter "pX"
    .parameter "pY"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pTextureRegion"
    .parameter "pVertexBufferObjectManager"
    .parameter "pDrawType"
    .parameter "pShaderProgram"

    .prologue
    .line 98
    new-instance v0, Lorg/andengine/entity/sprite/vbo/HighPerformanceSpriteVertexBufferObject;

    const/16 v2, 0x14

    const/4 v4, 0x1

    sget-object v5, Lorg/andengine/entity/sprite/Sprite;->VERTEXBUFFEROBJECTATTRIBUTES_DEFAULT:Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;

    move-object v1, p6

    move-object/from16 v3, p7

    invoke-direct/range {v0 .. v5}, Lorg/andengine/entity/sprite/vbo/HighPerformanceSpriteVertexBufferObject;-><init>(Lorg/andengine/opengl/vbo/VertexBufferObjectManager;ILorg/andengine/opengl/vbo/DrawType;ZLorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;)V

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, v0

    move-object/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Lorg/andengine/entity/sprite/Sprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/entity/sprite/vbo/ISpriteVertexBufferObject;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 99
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/entity/sprite/vbo/ISpriteVertexBufferObject;)V
    .locals 7
    .parameter "pX"
    .parameter "pY"
    .parameter "pTextureRegion"
    .parameter "pVertexBufferObject"

    .prologue
    .line 78
    invoke-interface {p3}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getWidth()F

    move-result v3

    invoke-interface {p3}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getHeight()F

    move-result v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/andengine/entity/sprite/Sprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/entity/sprite/vbo/ISpriteVertexBufferObject;)V

    .line 79
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/entity/sprite/vbo/ISpriteVertexBufferObject;Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 8
    .parameter "pX"
    .parameter "pY"
    .parameter "pTextureRegion"
    .parameter "pVertexBufferObject"
    .parameter "pShaderProgram"

    .prologue
    .line 82
    invoke-interface {p3}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getWidth()F

    move-result v3

    invoke-interface {p3}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getHeight()F

    move-result v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/andengine/entity/sprite/Sprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/entity/sprite/vbo/ISpriteVertexBufferObject;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 83
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;)V
    .locals 8
    .parameter "pX"
    .parameter "pY"
    .parameter "pTextureRegion"
    .parameter "pVertexBufferObjectManager"

    .prologue
    .line 62
    invoke-interface {p3}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getWidth()F

    move-result v3

    invoke-interface {p3}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getHeight()F

    move-result v4

    sget-object v7, Lorg/andengine/opengl/vbo/DrawType;->STATIC:Lorg/andengine/opengl/vbo/DrawType;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lorg/andengine/entity/sprite/Sprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V

    .line 63
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 9
    .parameter "pX"
    .parameter "pY"
    .parameter "pTextureRegion"
    .parameter "pVertexBufferObjectManager"
    .parameter "pShaderProgram"

    .prologue
    .line 66
    invoke-interface {p3}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getWidth()F

    move-result v3

    invoke-interface {p3}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getHeight()F

    move-result v4

    sget-object v7, Lorg/andengine/opengl/vbo/DrawType;->STATIC:Lorg/andengine/opengl/vbo/DrawType;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    move-object v6, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lorg/andengine/entity/sprite/Sprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 67
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V
    .locals 8
    .parameter "pX"
    .parameter "pY"
    .parameter "pTextureRegion"
    .parameter "pVertexBufferObjectManager"
    .parameter "pDrawType"

    .prologue
    .line 70
    invoke-interface {p3}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getWidth()F

    move-result v3

    invoke-interface {p3}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getHeight()F

    move-result v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/andengine/entity/sprite/Sprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V

    .line 71
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 9
    .parameter "pX"
    .parameter "pY"
    .parameter "pTextureRegion"
    .parameter "pVertexBufferObjectManager"
    .parameter "pDrawType"
    .parameter "pShaderProgram"

    .prologue
    .line 74
    invoke-interface {p3}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getWidth()F

    move-result v3

    invoke-interface {p3}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getHeight()F

    move-result v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lorg/andengine/entity/sprite/Sprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 75
    return-void
.end method


# virtual methods
.method protected draw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V
    .locals 3
    .parameter "pGLState"
    .parameter "pCamera"

    .prologue
    .line 187
    iget-object v0, p0, Lorg/andengine/entity/sprite/Sprite;->mSpriteVertexBufferObject:Lorg/andengine/entity/sprite/vbo/ISpriteVertexBufferObject;

    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Lorg/andengine/entity/sprite/vbo/ISpriteVertexBufferObject;->draw(II)V

    .line 188
    return-void
.end method

.method public getTextureRegion()Lorg/andengine/opengl/texture/region/ITextureRegion;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lorg/andengine/entity/sprite/Sprite;->mTextureRegion:Lorg/andengine/opengl/texture/region/ITextureRegion;

    return-object v0
.end method

.method public getVertexBufferObject()Lorg/andengine/entity/sprite/vbo/ISpriteVertexBufferObject;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lorg/andengine/entity/sprite/Sprite;->mSpriteVertexBufferObject:Lorg/andengine/entity/sprite/vbo/ISpriteVertexBufferObject;

    return-object v0
.end method

.method public bridge synthetic getVertexBufferObject()Lorg/andengine/opengl/vbo/IVertexBufferObject;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/entity/sprite/Sprite;->getVertexBufferObject()Lorg/andengine/entity/sprite/vbo/ISpriteVertexBufferObject;

    move-result-object v0

    return-object v0
.end method

.method public isFlippedHorizontal()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lorg/andengine/entity/sprite/Sprite;->mFlippedHorizontal:Z

    return v0
.end method

.method public isFlippedVertical()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lorg/andengine/entity/sprite/Sprite;->mFlippedVertical:Z

    return v0
.end method

.method protected onUpdateColor()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lorg/andengine/entity/sprite/Sprite;->mSpriteVertexBufferObject:Lorg/andengine/entity/sprite/vbo/ISpriteVertexBufferObject;

    invoke-interface {v0, p0}, Lorg/andengine/entity/sprite/vbo/ISpriteVertexBufferObject;->onUpdateColor(Lorg/andengine/entity/sprite/Sprite;)V

    .line 205
    return-void
.end method

.method protected onUpdateTextureCoordinates()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lorg/andengine/entity/sprite/Sprite;->mSpriteVertexBufferObject:Lorg/andengine/entity/sprite/vbo/ISpriteVertexBufferObject;

    invoke-interface {v0, p0}, Lorg/andengine/entity/sprite/vbo/ISpriteVertexBufferObject;->onUpdateTextureCoordinates(Lorg/andengine/entity/sprite/Sprite;)V

    .line 209
    return-void
.end method

.method protected onUpdateVertices()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lorg/andengine/entity/sprite/Sprite;->mSpriteVertexBufferObject:Lorg/andengine/entity/sprite/vbo/ISpriteVertexBufferObject;

    invoke-interface {v0, p0}, Lorg/andengine/entity/sprite/vbo/ISpriteVertexBufferObject;->onUpdateVertices(Lorg/andengine/entity/sprite/Sprite;)V

    .line 200
    return-void
.end method

.method protected postDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V
    .locals 2
    .parameter "pGLState"
    .parameter "pCamera"

    .prologue
    .line 192
    iget-object v0, p0, Lorg/andengine/entity/sprite/Sprite;->mSpriteVertexBufferObject:Lorg/andengine/entity/sprite/vbo/ISpriteVertexBufferObject;

    iget-object v1, p0, Lorg/andengine/entity/sprite/Sprite;->mShaderProgram:Lorg/andengine/opengl/shader/ShaderProgram;

    invoke-interface {v0, p1, v1}, Lorg/andengine/entity/sprite/vbo/ISpriteVertexBufferObject;->unbind(Lorg/andengine/opengl/util/GLState;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 194
    invoke-super {p0, p1, p2}, Lorg/andengine/entity/shape/RectangularShape;->postDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V

    .line 195
    return-void
.end method

.method protected preDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V
    .locals 2
    .parameter "pGLState"
    .parameter "pCamera"

    .prologue
    .line 178
    invoke-super {p0, p1, p2}, Lorg/andengine/entity/shape/RectangularShape;->preDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V

    .line 180
    invoke-virtual {p0}, Lorg/andengine/entity/sprite/Sprite;->getTextureRegion()Lorg/andengine/opengl/texture/region/ITextureRegion;

    move-result-object v0

    invoke-interface {v0}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getTexture()Lorg/andengine/opengl/texture/ITexture;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/andengine/opengl/texture/ITexture;->bind(Lorg/andengine/opengl/util/GLState;)V

    .line 182
    iget-object v0, p0, Lorg/andengine/entity/sprite/Sprite;->mSpriteVertexBufferObject:Lorg/andengine/entity/sprite/vbo/ISpriteVertexBufferObject;

    iget-object v1, p0, Lorg/andengine/entity/sprite/Sprite;->mShaderProgram:Lorg/andengine/opengl/shader/ShaderProgram;

    invoke-interface {v0, p1, v1}, Lorg/andengine/entity/sprite/vbo/ISpriteVertexBufferObject;->bind(Lorg/andengine/opengl/util/GLState;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 183
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 171
    invoke-super {p0}, Lorg/andengine/entity/shape/RectangularShape;->reset()V

    .line 173
    invoke-virtual {p0}, Lorg/andengine/entity/sprite/Sprite;->getTextureRegion()Lorg/andengine/opengl/texture/region/ITextureRegion;

    move-result-object v0

    invoke-interface {v0}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getTexture()Lorg/andengine/opengl/texture/ITexture;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/andengine/entity/sprite/Sprite;->initBlendFunction(Lorg/andengine/opengl/texture/ITexture;)V

    .line 174
    return-void
.end method

.method public setFlipped(ZZ)V
    .locals 1
    .parameter "pFlippedHorizontal"
    .parameter "pFlippedVertical"

    .prologue
    .line 152
    iget-boolean v0, p0, Lorg/andengine/entity/sprite/Sprite;->mFlippedHorizontal:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lorg/andengine/entity/sprite/Sprite;->mFlippedVertical:Z

    if-eq v0, p2, :cond_1

    .line 153
    :cond_0
    iput-boolean p1, p0, Lorg/andengine/entity/sprite/Sprite;->mFlippedHorizontal:Z

    .line 154
    iput-boolean p2, p0, Lorg/andengine/entity/sprite/Sprite;->mFlippedVertical:Z

    .line 156
    invoke-virtual {p0}, Lorg/andengine/entity/sprite/Sprite;->onUpdateTextureCoordinates()V

    .line 158
    :cond_1
    return-void
.end method

.method public setFlippedHorizontal(Z)V
    .locals 1
    .parameter "pFlippedHorizontal"

    .prologue
    .line 132
    iget-boolean v0, p0, Lorg/andengine/entity/sprite/Sprite;->mFlippedHorizontal:Z

    if-eq v0, p1, :cond_0

    .line 133
    iput-boolean p1, p0, Lorg/andengine/entity/sprite/Sprite;->mFlippedHorizontal:Z

    .line 135
    invoke-virtual {p0}, Lorg/andengine/entity/sprite/Sprite;->onUpdateTextureCoordinates()V

    .line 137
    :cond_0
    return-void
.end method

.method public setFlippedVertical(Z)V
    .locals 1
    .parameter "pFlippedVertical"

    .prologue
    .line 144
    iget-boolean v0, p0, Lorg/andengine/entity/sprite/Sprite;->mFlippedVertical:Z

    if-eq v0, p1, :cond_0

    .line 145
    iput-boolean p1, p0, Lorg/andengine/entity/sprite/Sprite;->mFlippedVertical:Z

    .line 147
    invoke-virtual {p0}, Lorg/andengine/entity/sprite/Sprite;->onUpdateTextureCoordinates()V

    .line 149
    :cond_0
    return-void
.end method
