.class public Lorg/andengine/entity/sprite/TiledSprite;
.super Lorg/andengine/entity/sprite/Sprite;
.source "TiledSprite.java"


# static fields
.field public static final TILEDSPRITE_SIZE:I = 0x1e

.field public static final VERTEX_SIZE:I = 0x5

.field public static final VERTICES_PER_TILEDSPRITE:I = 0x6


# instance fields
.field private mCurrentTileIndex:I

.field private final mTiledSpriteVertexBufferObject:Lorg/andengine/entity/sprite/vbo/ITiledSpriteVertexBufferObject;


# direct methods
.method public constructor <init>(FFFFLorg/andengine/opengl/texture/region/ITiledTextureRegion;Lorg/andengine/entity/sprite/vbo/ITiledSpriteVertexBufferObject;)V
    .locals 8
    .parameter "pX"
    .parameter "pY"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pTiledTextureRegion"
    .parameter "pTiledSpriteVertexBufferObject"

    .prologue
    .line 84
    invoke-static {}, Lorg/andengine/opengl/shader/PositionColorTextureCoordinatesShaderProgram;->getInstance()Lorg/andengine/opengl/shader/PositionColorTextureCoordinatesShaderProgram;

    move-result-object v7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/andengine/entity/sprite/TiledSprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITiledTextureRegion;Lorg/andengine/entity/sprite/vbo/ITiledSpriteVertexBufferObject;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 85
    return-void
.end method

.method public constructor <init>(FFFFLorg/andengine/opengl/texture/region/ITiledTextureRegion;Lorg/andengine/entity/sprite/vbo/ITiledSpriteVertexBufferObject;Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 0
    .parameter "pX"
    .parameter "pY"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pTiledTextureRegion"
    .parameter "pTiledSpriteVertexBufferObject"
    .parameter "pShaderProgram"

    .prologue
    .line 88
    invoke-direct/range {p0 .. p7}, Lorg/andengine/entity/sprite/Sprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/entity/sprite/vbo/ISpriteVertexBufferObject;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 90
    iput-object p6, p0, Lorg/andengine/entity/sprite/TiledSprite;->mTiledSpriteVertexBufferObject:Lorg/andengine/entity/sprite/vbo/ITiledSpriteVertexBufferObject;

    .line 91
    return-void
.end method

.method public constructor <init>(FFFFLorg/andengine/opengl/texture/region/ITiledTextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;)V
    .locals 8
    .parameter "pX"
    .parameter "pY"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pTiledTextureRegion"
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

    invoke-direct/range {v0 .. v7}, Lorg/andengine/entity/sprite/TiledSprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITiledTextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V

    .line 69
    return-void
.end method

.method public constructor <init>(FFFFLorg/andengine/opengl/texture/region/ITiledTextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 9
    .parameter "pX"
    .parameter "pY"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pTiledTextureRegion"
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

    invoke-direct/range {v0 .. v8}, Lorg/andengine/entity/sprite/TiledSprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITiledTextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 73
    return-void
.end method

.method public constructor <init>(FFFFLorg/andengine/opengl/texture/region/ITiledTextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V
    .locals 8
    .parameter "pX"
    .parameter "pY"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pTiledTextureRegion"
    .parameter "pVertexBufferObjectManager"
    .parameter "pDrawType"

    .prologue
    .line 76
    new-instance v0, Lorg/andengine/entity/sprite/vbo/HighPerformanceTiledSpriteVertexBufferObject;

    invoke-interface {p5}, Lorg/andengine/opengl/texture/region/ITiledTextureRegion;->getTileCount()I

    move-result v1

    mul-int/lit8 v2, v1, 0x1e

    const/4 v4, 0x1

    sget-object v5, Lorg/andengine/entity/sprite/Sprite;->VERTEXBUFFEROBJECTATTRIBUTES_DEFAULT:Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;

    move-object v1, p6

    move-object v3, p7

    invoke-direct/range {v0 .. v5}, Lorg/andengine/entity/sprite/vbo/HighPerformanceTiledSpriteVertexBufferObject;-><init>(Lorg/andengine/opengl/vbo/VertexBufferObjectManager;ILorg/andengine/opengl/vbo/DrawType;ZLorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;)V

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lorg/andengine/entity/sprite/TiledSprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITiledTextureRegion;Lorg/andengine/entity/sprite/vbo/ITiledSpriteVertexBufferObject;)V

    .line 77
    return-void
.end method

.method public constructor <init>(FFFFLorg/andengine/opengl/texture/region/ITiledTextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 9
    .parameter "pX"
    .parameter "pY"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pTiledTextureRegion"
    .parameter "pVertexBufferObjectManager"
    .parameter "pDrawType"
    .parameter "pShaderProgram"

    .prologue
    .line 80
    new-instance v0, Lorg/andengine/entity/sprite/vbo/HighPerformanceTiledSpriteVertexBufferObject;

    invoke-interface {p5}, Lorg/andengine/opengl/texture/region/ITiledTextureRegion;->getTileCount()I

    move-result v1

    mul-int/lit8 v2, v1, 0x1e

    const/4 v4, 0x1

    sget-object v5, Lorg/andengine/entity/sprite/Sprite;->VERTEXBUFFEROBJECTATTRIBUTES_DEFAULT:Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;

    move-object v1, p6

    move-object/from16 v3, p7

    invoke-direct/range {v0 .. v5}, Lorg/andengine/entity/sprite/vbo/HighPerformanceTiledSpriteVertexBufferObject;-><init>(Lorg/andengine/opengl/vbo/VertexBufferObjectManager;ILorg/andengine/opengl/vbo/DrawType;ZLorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;)V

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, v0

    move-object/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Lorg/andengine/entity/sprite/TiledSprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITiledTextureRegion;Lorg/andengine/entity/sprite/vbo/ITiledSpriteVertexBufferObject;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 81
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/texture/region/ITiledTextureRegion;Lorg/andengine/entity/sprite/vbo/ITiledSpriteVertexBufferObject;)V
    .locals 7
    .parameter "pX"
    .parameter "pY"
    .parameter "pTiledTextureRegion"
    .parameter "pTiledSpriteVertexBufferObject"

    .prologue
    .line 60
    invoke-interface {p3}, Lorg/andengine/opengl/texture/region/ITiledTextureRegion;->getWidth()F

    move-result v3

    invoke-interface {p3}, Lorg/andengine/opengl/texture/region/ITiledTextureRegion;->getHeight()F

    move-result v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/andengine/entity/sprite/TiledSprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITiledTextureRegion;Lorg/andengine/entity/sprite/vbo/ITiledSpriteVertexBufferObject;)V

    .line 61
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/texture/region/ITiledTextureRegion;Lorg/andengine/entity/sprite/vbo/ITiledSpriteVertexBufferObject;Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 8
    .parameter "pX"
    .parameter "pY"
    .parameter "pTiledTextureRegion"
    .parameter "pTiledSpriteVertexBufferObject"
    .parameter "pShaderProgram"

    .prologue
    .line 64
    invoke-interface {p3}, Lorg/andengine/opengl/texture/region/ITiledTextureRegion;->getWidth()F

    move-result v3

    invoke-interface {p3}, Lorg/andengine/opengl/texture/region/ITiledTextureRegion;->getHeight()F

    move-result v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/andengine/entity/sprite/TiledSprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITiledTextureRegion;Lorg/andengine/entity/sprite/vbo/ITiledSpriteVertexBufferObject;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 65
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/texture/region/ITiledTextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;)V
    .locals 6
    .parameter "pX"
    .parameter "pY"
    .parameter "pTiledTextureRegion"
    .parameter "pVertexBufferObjectManager"

    .prologue
    .line 44
    sget-object v5, Lorg/andengine/opengl/vbo/DrawType;->STATIC:Lorg/andengine/opengl/vbo/DrawType;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/andengine/entity/sprite/TiledSprite;-><init>(FFLorg/andengine/opengl/texture/region/ITiledTextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V

    .line 45
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/texture/region/ITiledTextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 7
    .parameter "pX"
    .parameter "pY"
    .parameter "pTiledTextureRegion"
    .parameter "pVertexBufferObjectManager"
    .parameter "pShaderProgram"

    .prologue
    .line 48
    sget-object v5, Lorg/andengine/opengl/vbo/DrawType;->STATIC:Lorg/andengine/opengl/vbo/DrawType;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/andengine/entity/sprite/TiledSprite;-><init>(FFLorg/andengine/opengl/texture/region/ITiledTextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 49
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/texture/region/ITiledTextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V
    .locals 8
    .parameter "pX"
    .parameter "pY"
    .parameter "pTiledTextureRegion"
    .parameter "pVertexBufferObjectManager"
    .parameter "pDrawType"

    .prologue
    .line 52
    invoke-interface {p3}, Lorg/andengine/opengl/texture/region/ITiledTextureRegion;->getWidth()F

    move-result v3

    invoke-interface {p3}, Lorg/andengine/opengl/texture/region/ITiledTextureRegion;->getHeight()F

    move-result v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/andengine/entity/sprite/TiledSprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITiledTextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V

    .line 53
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/texture/region/ITiledTextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 9
    .parameter "pX"
    .parameter "pY"
    .parameter "pTiledTextureRegion"
    .parameter "pVertexBufferObjectManager"
    .parameter "pDrawType"
    .parameter "pShaderProgram"

    .prologue
    .line 56
    invoke-interface {p3}, Lorg/andengine/opengl/texture/region/ITiledTextureRegion;->getWidth()F

    move-result v3

    invoke-interface {p3}, Lorg/andengine/opengl/texture/region/ITiledTextureRegion;->getHeight()F

    move-result v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lorg/andengine/entity/sprite/TiledSprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITiledTextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 57
    return-void
.end method


# virtual methods
.method protected draw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V
    .locals 4
    .parameter "pGLState"
    .parameter "pCamera"

    .prologue
    .line 117
    iget-object v0, p0, Lorg/andengine/entity/sprite/TiledSprite;->mTiledSpriteVertexBufferObject:Lorg/andengine/entity/sprite/vbo/ITiledSpriteVertexBufferObject;

    const/4 v1, 0x4

    iget v2, p0, Lorg/andengine/entity/sprite/TiledSprite;->mCurrentTileIndex:I

    mul-int/lit8 v2, v2, 0x6

    const/4 v3, 0x6

    invoke-interface {v0, v1, v2, v3}, Lorg/andengine/entity/sprite/vbo/ITiledSpriteVertexBufferObject;->draw(III)V

    .line 118
    return-void
.end method

.method public getCurrentTileIndex()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lorg/andengine/entity/sprite/TiledSprite;->mCurrentTileIndex:I

    return v0
.end method

.method public getTextureRegion()Lorg/andengine/opengl/texture/region/ITextureRegion;
    .locals 2

    .prologue
    .line 103
    invoke-virtual {p0}, Lorg/andengine/entity/sprite/TiledSprite;->getTiledTextureRegion()Lorg/andengine/opengl/texture/region/ITiledTextureRegion;

    move-result-object v0

    iget v1, p0, Lorg/andengine/entity/sprite/TiledSprite;->mCurrentTileIndex:I

    invoke-interface {v0, v1}, Lorg/andengine/opengl/texture/region/ITiledTextureRegion;->getTextureRegion(I)Lorg/andengine/opengl/texture/region/ITextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public getTileCount()I
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p0}, Lorg/andengine/entity/sprite/TiledSprite;->getTiledTextureRegion()Lorg/andengine/opengl/texture/region/ITiledTextureRegion;

    move-result-object v0

    invoke-interface {v0}, Lorg/andengine/opengl/texture/region/ITiledTextureRegion;->getTileCount()I

    move-result v0

    return v0
.end method

.method public getTiledTextureRegion()Lorg/andengine/opengl/texture/region/ITiledTextureRegion;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/andengine/entity/sprite/TiledSprite;->mTextureRegion:Lorg/andengine/opengl/texture/region/ITextureRegion;

    check-cast v0, Lorg/andengine/opengl/texture/region/ITiledTextureRegion;

    return-object v0
.end method

.method public bridge synthetic getVertexBufferObject()Lorg/andengine/entity/sprite/vbo/ISpriteVertexBufferObject;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/entity/sprite/TiledSprite;->getVertexBufferObject()Lorg/andengine/entity/sprite/vbo/ITiledSpriteVertexBufferObject;

    move-result-object v0

    return-object v0
.end method

.method public getVertexBufferObject()Lorg/andengine/entity/sprite/vbo/ITiledSpriteVertexBufferObject;
    .locals 1

    .prologue
    .line 112
    invoke-super {p0}, Lorg/andengine/entity/sprite/Sprite;->getVertexBufferObject()Lorg/andengine/entity/sprite/vbo/ISpriteVertexBufferObject;

    move-result-object v0

    check-cast v0, Lorg/andengine/entity/sprite/vbo/ITiledSpriteVertexBufferObject;

    return-object v0
.end method

.method public bridge synthetic getVertexBufferObject()Lorg/andengine/opengl/vbo/IVertexBufferObject;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/entity/sprite/TiledSprite;->getVertexBufferObject()Lorg/andengine/entity/sprite/vbo/ITiledSpriteVertexBufferObject;

    move-result-object v0

    return-object v0
.end method

.method protected onUpdateColor()V
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lorg/andengine/entity/sprite/TiledSprite;->getVertexBufferObject()Lorg/andengine/entity/sprite/vbo/ITiledSpriteVertexBufferObject;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/andengine/entity/sprite/vbo/ITiledSpriteVertexBufferObject;->onUpdateColor(Lorg/andengine/entity/sprite/TiledSprite;)V

    .line 123
    return-void
.end method

.method protected onUpdateTextureCoordinates()V
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0}, Lorg/andengine/entity/sprite/TiledSprite;->getVertexBufferObject()Lorg/andengine/entity/sprite/vbo/ITiledSpriteVertexBufferObject;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/andengine/entity/sprite/vbo/ITiledSpriteVertexBufferObject;->onUpdateTextureCoordinates(Lorg/andengine/entity/sprite/TiledSprite;)V

    .line 133
    return-void
.end method

.method protected onUpdateVertices()V
    .locals 1

    .prologue
    .line 127
    invoke-virtual {p0}, Lorg/andengine/entity/sprite/TiledSprite;->getVertexBufferObject()Lorg/andengine/entity/sprite/vbo/ITiledSpriteVertexBufferObject;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/andengine/entity/sprite/vbo/ITiledSpriteVertexBufferObject;->onUpdateVertices(Lorg/andengine/entity/sprite/TiledSprite;)V

    .line 128
    return-void
.end method

.method public setCurrentTileIndex(I)V
    .locals 0
    .parameter "pCurrentTileIndex"

    .prologue
    .line 144
    iput p1, p0, Lorg/andengine/entity/sprite/TiledSprite;->mCurrentTileIndex:I

    .line 145
    return-void
.end method
