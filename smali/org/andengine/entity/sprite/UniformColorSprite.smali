.class public Lorg/andengine/entity/sprite/UniformColorSprite;
.super Lorg/andengine/entity/sprite/Sprite;
.source "UniformColorSprite.java"


# static fields
.field public static final SPRITE_SIZE:I = 0x10

.field public static final TEXTURECOORDINATES_INDEX_U:I = 0x2

.field public static final TEXTURECOORDINATES_INDEX_V:I = 0x3

.field public static final VERTEXBUFFEROBJECTATTRIBUTES_DEFAULT:Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes; = null

.field public static final VERTEX_INDEX_X:I = 0x0

.field public static final VERTEX_INDEX_Y:I = 0x1

.field public static final VERTEX_SIZE:I = 0x4

.field public static final VERTICES_PER_SPRITE:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/16 v4, 0x1406

    const/4 v3, 0x2

    const/4 v1, 0x0

    .line 39
    new-instance v0, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;

    invoke-direct {v0, v3}, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;-><init>(I)V

    .line 40
    const-string v2, "a_position"

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;->add(ILjava/lang/String;IIZ)Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;

    move-result-object v5

    .line 41
    const/4 v6, 0x3

    const-string v7, "a_textureCoordinates"

    move v8, v3

    move v9, v4

    move v10, v1

    invoke-virtual/range {v5 .. v10}, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;->add(ILjava/lang/String;IIZ)Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;->build()Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;

    move-result-object v0

    .line 39
    sput-object v0, Lorg/andengine/entity/sprite/UniformColorSprite;->VERTEXBUFFEROBJECTATTRIBUTES_DEFAULT:Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;

    .line 42
    return-void
.end method

.method public constructor <init>(FFFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/entity/sprite/vbo/IUniformColorSpriteVertexBufferObject;)V
    .locals 8
    .parameter "pX"
    .parameter "pY"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pTextureRegion"
    .parameter "pUniformColorSpriteVertexBufferObject"

    .prologue
    .line 93
    invoke-static {}, Lorg/andengine/opengl/shader/PositionTextureCoordinatesUniformColorShaderProgram;->getInstance()Lorg/andengine/opengl/shader/PositionTextureCoordinatesUniformColorShaderProgram;

    move-result-object v7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/andengine/entity/sprite/UniformColorSprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/entity/sprite/vbo/IUniformColorSpriteVertexBufferObject;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 94
    return-void
.end method

.method public constructor <init>(FFFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/entity/sprite/vbo/IUniformColorSpriteVertexBufferObject;Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 0
    .parameter "pX"
    .parameter "pY"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pTextureRegion"
    .parameter "pUniformColorSpriteVertexBufferObject"
    .parameter "pShaderProgram"

    .prologue
    .line 97
    invoke-direct/range {p0 .. p7}, Lorg/andengine/entity/sprite/Sprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/entity/sprite/vbo/ISpriteVertexBufferObject;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 98
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
    .line 77
    sget-object v7, Lorg/andengine/opengl/vbo/DrawType;->STATIC:Lorg/andengine/opengl/vbo/DrawType;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/andengine/entity/sprite/UniformColorSprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V

    .line 78
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
    .line 81
    sget-object v7, Lorg/andengine/opengl/vbo/DrawType;->STATIC:Lorg/andengine/opengl/vbo/DrawType;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/andengine/entity/sprite/UniformColorSprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 82
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
    .line 85
    invoke-static {}, Lorg/andengine/opengl/shader/PositionTextureCoordinatesUniformColorShaderProgram;->getInstance()Lorg/andengine/opengl/shader/PositionTextureCoordinatesUniformColorShaderProgram;

    move-result-object v8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lorg/andengine/entity/sprite/UniformColorSprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 86
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
    .line 89
    new-instance v0, Lorg/andengine/entity/sprite/vbo/HighPerformanceUniformColorSpriteVertexBufferObject;

    const/16 v2, 0x10

    const/4 v4, 0x1

    sget-object v5, Lorg/andengine/entity/sprite/UniformColorSprite;->VERTEXBUFFEROBJECTATTRIBUTES_DEFAULT:Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;

    move-object v1, p6

    move-object/from16 v3, p7

    invoke-direct/range {v0 .. v5}, Lorg/andengine/entity/sprite/vbo/HighPerformanceUniformColorSpriteVertexBufferObject;-><init>(Lorg/andengine/opengl/vbo/VertexBufferObjectManager;ILorg/andengine/opengl/vbo/DrawType;ZLorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;)V

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, v0

    move-object/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Lorg/andengine/entity/sprite/UniformColorSprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/entity/sprite/vbo/IUniformColorSpriteVertexBufferObject;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 90
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/entity/sprite/vbo/IUniformColorSpriteVertexBufferObject;)V
    .locals 7
    .parameter "pX"
    .parameter "pY"
    .parameter "pTextureRegion"
    .parameter "pVertexBufferObject"

    .prologue
    .line 69
    invoke-interface {p3}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getWidth()F

    move-result v3

    invoke-interface {p3}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getHeight()F

    move-result v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/andengine/entity/sprite/UniformColorSprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/entity/sprite/vbo/IUniformColorSpriteVertexBufferObject;)V

    .line 70
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/entity/sprite/vbo/IUniformColorSpriteVertexBufferObject;Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 8
    .parameter "pX"
    .parameter "pY"
    .parameter "pTextureRegion"
    .parameter "pVertexBufferObject"
    .parameter "pShaderProgram"

    .prologue
    .line 73
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

    invoke-direct/range {v0 .. v7}, Lorg/andengine/entity/sprite/UniformColorSprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/entity/sprite/vbo/IUniformColorSpriteVertexBufferObject;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 74
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;)V
    .locals 8
    .parameter "pX"
    .parameter "pY"
    .parameter "pTextureRegion"
    .parameter "pVertexBufferObjectManager"

    .prologue
    .line 53
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

    invoke-direct/range {v0 .. v7}, Lorg/andengine/entity/sprite/UniformColorSprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V

    .line 54
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
    .line 57
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

    invoke-direct/range {v0 .. v8}, Lorg/andengine/entity/sprite/UniformColorSprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 58
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
    .line 61
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

    invoke-direct/range {v0 .. v7}, Lorg/andengine/entity/sprite/UniformColorSprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V

    .line 62
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
    .line 65
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

    invoke-direct/range {v0 .. v8}, Lorg/andengine/entity/sprite/UniformColorSprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 66
    return-void
.end method


# virtual methods
.method protected draw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V
    .locals 3
    .parameter "pGLState"
    .parameter "pCamera"

    .prologue
    .line 117
    iget-object v0, p0, Lorg/andengine/entity/sprite/UniformColorSprite;->mSpriteVertexBufferObject:Lorg/andengine/entity/sprite/vbo/ISpriteVertexBufferObject;

    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Lorg/andengine/entity/sprite/vbo/ISpriteVertexBufferObject;->draw(II)V

    .line 118
    return-void
.end method

.method protected preDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V
    .locals 5
    .parameter "pGLState"
    .parameter "pCamera"

    .prologue
    .line 110
    invoke-super {p0, p1, p2}, Lorg/andengine/entity/sprite/Sprite;->preDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V

    .line 112
    sget v0, Lorg/andengine/opengl/shader/PositionTextureCoordinatesUniformColorShaderProgram;->sUniformColorLocation:I

    iget-object v1, p0, Lorg/andengine/entity/sprite/UniformColorSprite;->mColor:Lorg/andengine/util/color/Color;

    invoke-virtual {v1}, Lorg/andengine/util/color/Color;->getRed()F

    move-result v1

    iget-object v2, p0, Lorg/andengine/entity/sprite/UniformColorSprite;->mColor:Lorg/andengine/util/color/Color;

    invoke-virtual {v2}, Lorg/andengine/util/color/Color;->getGreen()F

    move-result v2

    iget-object v3, p0, Lorg/andengine/entity/sprite/UniformColorSprite;->mColor:Lorg/andengine/util/color/Color;

    invoke-virtual {v3}, Lorg/andengine/util/color/Color;->getBlue()F

    move-result v3

    iget-object v4, p0, Lorg/andengine/entity/sprite/UniformColorSprite;->mColor:Lorg/andengine/util/color/Color;

    invoke-virtual {v4}, Lorg/andengine/util/color/Color;->getAlpha()F

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 113
    return-void
.end method
