.class public Lorg/andengine/entity/sprite/DiamondSprite;
.super Lorg/andengine/entity/sprite/Sprite;
.source "DiamondSprite.java"


# direct methods
.method public constructor <init>(FFFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/entity/sprite/vbo/IDiamondSpriteVertexBufferObject;)V
    .locals 0
    .parameter "pX"
    .parameter "pY"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pTextureRegion"
    .parameter "pDiamondSpriteVertexBufferObject"

    .prologue
    .line 84
    invoke-direct/range {p0 .. p6}, Lorg/andengine/entity/sprite/Sprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/entity/sprite/vbo/ISpriteVertexBufferObject;)V

    .line 85
    return-void
.end method

.method public constructor <init>(FFFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/entity/sprite/vbo/IDiamondSpriteVertexBufferObject;Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 0
    .parameter "pX"
    .parameter "pY"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pTextureRegion"
    .parameter "pDiamondSpriteVertexBufferObject"
    .parameter "pShaderProgram"

    .prologue
    .line 88
    invoke-direct/range {p0 .. p7}, Lorg/andengine/entity/sprite/Sprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/entity/sprite/vbo/ISpriteVertexBufferObject;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 89
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
    .line 68
    sget-object v7, Lorg/andengine/opengl/vbo/DrawType;->STATIC:Lorg/andengine/opengl/vbo/DrawType;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/andengine/entity/sprite/DiamondSprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V

    .line 69
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
    .line 72
    sget-object v7, Lorg/andengine/opengl/vbo/DrawType;->STATIC:Lorg/andengine/opengl/vbo/DrawType;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/andengine/entity/sprite/DiamondSprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 73
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
    .line 76
    new-instance v0, Lorg/andengine/entity/sprite/vbo/HighPerformanceDiamondSpriteVertexBufferObject;

    const/16 v2, 0x14

    const/4 v4, 0x1

    sget-object v5, Lorg/andengine/entity/sprite/Sprite;->VERTEXBUFFEROBJECTATTRIBUTES_DEFAULT:Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;

    move-object v1, p6

    move-object v3, p7

    invoke-direct/range {v0 .. v5}, Lorg/andengine/entity/sprite/vbo/HighPerformanceDiamondSpriteVertexBufferObject;-><init>(Lorg/andengine/opengl/vbo/VertexBufferObjectManager;ILorg/andengine/opengl/vbo/DrawType;ZLorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;)V

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lorg/andengine/entity/sprite/DiamondSprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/entity/sprite/vbo/IDiamondSpriteVertexBufferObject;)V

    .line 77
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
    .line 80
    new-instance v0, Lorg/andengine/entity/sprite/vbo/HighPerformanceDiamondSpriteVertexBufferObject;

    const/16 v2, 0x14

    const/4 v4, 0x1

    sget-object v5, Lorg/andengine/entity/sprite/Sprite;->VERTEXBUFFEROBJECTATTRIBUTES_DEFAULT:Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;

    move-object v1, p6

    move-object/from16 v3, p7

    invoke-direct/range {v0 .. v5}, Lorg/andengine/entity/sprite/vbo/HighPerformanceDiamondSpriteVertexBufferObject;-><init>(Lorg/andengine/opengl/vbo/VertexBufferObjectManager;ILorg/andengine/opengl/vbo/DrawType;ZLorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;)V

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, v0

    move-object/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Lorg/andengine/entity/sprite/DiamondSprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/entity/sprite/vbo/IDiamondSpriteVertexBufferObject;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 81
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/entity/sprite/vbo/IDiamondSpriteVertexBufferObject;)V
    .locals 7
    .parameter "pX"
    .parameter "pY"
    .parameter "pTextureRegion"
    .parameter "pDiamondSpriteVertexBufferObject"

    .prologue
    .line 60
    invoke-interface {p3}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getWidth()F

    move-result v3

    invoke-interface {p3}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getHeight()F

    move-result v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/andengine/entity/sprite/DiamondSprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/entity/sprite/vbo/IDiamondSpriteVertexBufferObject;)V

    .line 61
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/entity/sprite/vbo/IDiamondSpriteVertexBufferObject;Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 8
    .parameter "pX"
    .parameter "pY"
    .parameter "pTextureRegion"
    .parameter "pDiamondSpriteVertexBufferObject"
    .parameter "pShaderProgram"

    .prologue
    .line 64
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

    invoke-direct/range {v0 .. v7}, Lorg/andengine/entity/sprite/DiamondSprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/entity/sprite/vbo/IDiamondSpriteVertexBufferObject;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 65
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;)V
    .locals 8
    .parameter "pX"
    .parameter "pY"
    .parameter "pTextureRegion"
    .parameter "pVertexBufferObjectManager"

    .prologue
    .line 44
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

    invoke-direct/range {v0 .. v7}, Lorg/andengine/entity/sprite/DiamondSprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V

    .line 45
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
    .line 48
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

    invoke-direct/range {v0 .. v8}, Lorg/andengine/entity/sprite/DiamondSprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 49
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
    .line 52
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

    invoke-direct/range {v0 .. v7}, Lorg/andengine/entity/sprite/DiamondSprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V

    .line 53
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
    .line 56
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

    invoke-direct/range {v0 .. v8}, Lorg/andengine/entity/sprite/DiamondSprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 57
    return-void
.end method
