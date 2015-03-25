.class public Lorg/andengine/entity/sprite/UncoloredSprite;
.super Lorg/andengine/entity/sprite/Sprite;
.source "UncoloredSprite.java"


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

    .line 37
    new-instance v0, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;

    invoke-direct {v0, v3}, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;-><init>(I)V

    .line 38
    const-string v2, "a_position"

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;->add(ILjava/lang/String;IIZ)Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;

    move-result-object v5

    .line 39
    const/4 v6, 0x3

    const-string v7, "a_textureCoordinates"

    move v8, v3

    move v9, v4

    move v10, v1

    invoke-virtual/range {v5 .. v10}, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;->add(ILjava/lang/String;IIZ)Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;->build()Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;

    move-result-object v0

    .line 37
    sput-object v0, Lorg/andengine/entity/sprite/UncoloredSprite;->VERTEXBUFFEROBJECTATTRIBUTES_DEFAULT:Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;

    .line 40
    return-void
.end method

.method public constructor <init>(FFFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/entity/sprite/vbo/IUncoloredSpriteVertexBufferObject;)V
    .locals 8
    .parameter "pX"
    .parameter "pY"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pTextureRegion"
    .parameter "pUncoloredSpriteVertexBufferObject"

    .prologue
    .line 91
    invoke-static {}, Lorg/andengine/opengl/shader/PositionTextureCoordinatesShaderProgram;->getInstance()Lorg/andengine/opengl/shader/PositionTextureCoordinatesShaderProgram;

    move-result-object v7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/andengine/entity/sprite/UncoloredSprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/entity/sprite/vbo/IUncoloredSpriteVertexBufferObject;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 92
    return-void
.end method

.method public constructor <init>(FFFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/entity/sprite/vbo/IUncoloredSpriteVertexBufferObject;Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 0
    .parameter "pX"
    .parameter "pY"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pTextureRegion"
    .parameter "pUncoloredSpriteVertexBufferObject"
    .parameter "pShaderProgram"

    .prologue
    .line 95
    invoke-direct/range {p0 .. p7}, Lorg/andengine/entity/sprite/Sprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/entity/sprite/vbo/ISpriteVertexBufferObject;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 96
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
    .line 75
    sget-object v7, Lorg/andengine/opengl/vbo/DrawType;->STATIC:Lorg/andengine/opengl/vbo/DrawType;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/andengine/entity/sprite/UncoloredSprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V

    .line 76
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
    .line 79
    sget-object v7, Lorg/andengine/opengl/vbo/DrawType;->STATIC:Lorg/andengine/opengl/vbo/DrawType;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/andengine/entity/sprite/UncoloredSprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 80
    return-void
.end method

.method public constructor <init>(FFFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V
    .locals 8
    .parameter "pX"
    .parameter "pY"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pTextureRegion"
    .parameter "pVertexBufferObjectManager"
    .parameter "pDrawType"

    .prologue
    .line 83
    new-instance v0, Lorg/andengine/entity/sprite/vbo/HighPerformanceUncoloredSpriteVertexBufferObject;

    const/16 v2, 0x10

    const/4 v4, 0x1

    sget-object v5, Lorg/andengine/entity/sprite/UncoloredSprite;->VERTEXBUFFEROBJECTATTRIBUTES_DEFAULT:Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;

    move-object v1, p6

    move-object v3, p7

    invoke-direct/range {v0 .. v5}, Lorg/andengine/entity/sprite/vbo/HighPerformanceUncoloredSpriteVertexBufferObject;-><init>(Lorg/andengine/opengl/vbo/VertexBufferObjectManager;ILorg/andengine/opengl/vbo/DrawType;ZLorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;)V

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lorg/andengine/entity/sprite/UncoloredSprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/entity/sprite/vbo/IUncoloredSpriteVertexBufferObject;)V

    .line 84
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
    .line 87
    new-instance v0, Lorg/andengine/entity/sprite/vbo/HighPerformanceUncoloredSpriteVertexBufferObject;

    const/16 v2, 0x10

    const/4 v4, 0x1

    sget-object v5, Lorg/andengine/entity/sprite/UncoloredSprite;->VERTEXBUFFEROBJECTATTRIBUTES_DEFAULT:Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;

    move-object v1, p6

    move-object/from16 v3, p7

    invoke-direct/range {v0 .. v5}, Lorg/andengine/entity/sprite/vbo/HighPerformanceUncoloredSpriteVertexBufferObject;-><init>(Lorg/andengine/opengl/vbo/VertexBufferObjectManager;ILorg/andengine/opengl/vbo/DrawType;ZLorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;)V

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, v0

    move-object/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Lorg/andengine/entity/sprite/UncoloredSprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/entity/sprite/vbo/IUncoloredSpriteVertexBufferObject;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 88
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/entity/sprite/vbo/IUncoloredSpriteVertexBufferObject;)V
    .locals 7
    .parameter "pX"
    .parameter "pY"
    .parameter "pTextureRegion"
    .parameter "pUncoloredSpriteVertexBufferObject"

    .prologue
    .line 67
    invoke-interface {p3}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getWidth()F

    move-result v3

    invoke-interface {p3}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getHeight()F

    move-result v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/andengine/entity/sprite/UncoloredSprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/entity/sprite/vbo/IUncoloredSpriteVertexBufferObject;)V

    .line 68
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/entity/sprite/vbo/IUncoloredSpriteVertexBufferObject;Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 8
    .parameter "pX"
    .parameter "pY"
    .parameter "pTextureRegion"
    .parameter "pUncoloredSpriteVertexBufferObject"
    .parameter "pShaderProgram"

    .prologue
    .line 71
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

    invoke-direct/range {v0 .. v7}, Lorg/andengine/entity/sprite/UncoloredSprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/entity/sprite/vbo/IUncoloredSpriteVertexBufferObject;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 72
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/shader/ShaderProgram;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;)V
    .locals 9
    .parameter "pX"
    .parameter "pY"
    .parameter "pTextureRegion"
    .parameter "pShaderProgram"
    .parameter "pVertexBufferObjectManager"

    .prologue
    .line 55
    invoke-interface {p3}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getWidth()F

    move-result v3

    invoke-interface {p3}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getHeight()F

    move-result v4

    sget-object v7, Lorg/andengine/opengl/vbo/DrawType;->STATIC:Lorg/andengine/opengl/vbo/DrawType;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    move-object v6, p5

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lorg/andengine/entity/sprite/UncoloredSprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 56
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;)V
    .locals 8
    .parameter "pX"
    .parameter "pY"
    .parameter "pTextureRegion"
    .parameter "pVertexBufferObjectManager"

    .prologue
    .line 51
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

    invoke-direct/range {v0 .. v7}, Lorg/andengine/entity/sprite/UncoloredSprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V

    .line 52
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
    .line 59
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

    invoke-direct/range {v0 .. v7}, Lorg/andengine/entity/sprite/UncoloredSprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V

    .line 60
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
    .line 63
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

    invoke-direct/range {v0 .. v8}, Lorg/andengine/entity/sprite/UncoloredSprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 64
    return-void
.end method


# virtual methods
.method protected onUpdateColor()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method
