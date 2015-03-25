.class public Lorg/andengine/entity/sprite/batch/SpriteBatch;
.super Lorg/andengine/entity/shape/Shape;
.source "SpriteBatch.java"


# static fields
.field public static final COLOR_INDEX:I = 0x2

.field public static final SPRITE_SIZE:I = 0x1e

.field public static final TEXTURECOORDINATES_INDEX_U:I = 0x3

.field public static final TEXTURECOORDINATES_INDEX_V:I = 0x4

.field private static final TRANSFORATION_TMP:Lorg/andengine/util/adt/transformation/Transformation; = null

.field public static final VERTEXBUFFEROBJECTATTRIBUTES_DEFAULT:Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes; = null

.field public static final VERTEX_INDEX_X:I = 0x0

.field public static final VERTEX_INDEX_Y:I = 0x1

.field public static final VERTEX_SIZE:I = 0x5

.field public static final VERTICES_PER_SPRITE:I = 0x6

.field private static final VERTICES_TMP:[F


# instance fields
.field protected final mCapacity:I

.field protected mIndex:I

.field protected final mSpriteBatchVertexBufferObject:Lorg/andengine/entity/sprite/batch/vbo/ISpriteBatchVertexBufferObject;

.field protected mTexture:Lorg/andengine/opengl/texture/ITexture;

.field protected mVertices:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/16 v4, 0x1406

    const/4 v11, 0x3

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 40
    const/16 v0, 0x8

    new-array v0, v0, [F

    sput-object v0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->VERTICES_TMP:[F

    .line 42
    new-instance v0, Lorg/andengine/util/adt/transformation/Transformation;

    invoke-direct {v0}, Lorg/andengine/util/adt/transformation/Transformation;-><init>()V

    sput-object v0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->TRANSFORATION_TMP:Lorg/andengine/util/adt/transformation/Transformation;

    .line 54
    new-instance v0, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;

    invoke-direct {v0, v11}, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;-><init>(I)V

    .line 55
    const-string v2, "a_position"

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;->add(ILjava/lang/String;IIZ)Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;

    move-result-object v5

    .line 56
    const-string v7, "a_color"

    const/4 v8, 0x4

    const/16 v9, 0x1401

    move v10, v6

    invoke-virtual/range {v5 .. v10}, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;->add(ILjava/lang/String;IIZ)Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;

    move-result-object v5

    .line 57
    const-string v7, "a_textureCoordinates"

    move v6, v11

    move v8, v3

    move v9, v4

    move v10, v1

    invoke-virtual/range {v5 .. v10}, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;->add(ILjava/lang/String;IIZ)Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;->build()Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;

    move-result-object v0

    .line 54
    sput-object v0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->VERTEXBUFFEROBJECTATTRIBUTES_DEFAULT:Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;

    .line 58
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/texture/ITexture;ILorg/andengine/entity/sprite/batch/vbo/ISpriteBatchVertexBufferObject;)V
    .locals 7
    .parameter "pX"
    .parameter "pY"
    .parameter "pTexture"
    .parameter "pCapacity"
    .parameter "pSpriteBatchVertexBufferObject"

    .prologue
    .line 112
    invoke-static {}, Lorg/andengine/opengl/shader/PositionColorTextureCoordinatesShaderProgram;->getInstance()Lorg/andengine/opengl/shader/PositionColorTextureCoordinatesShaderProgram;

    move-result-object v6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/andengine/entity/sprite/batch/SpriteBatch;-><init>(FFLorg/andengine/opengl/texture/ITexture;ILorg/andengine/entity/sprite/batch/vbo/ISpriteBatchVertexBufferObject;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 113
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/texture/ITexture;ILorg/andengine/entity/sprite/batch/vbo/ISpriteBatchVertexBufferObject;Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 1
    .parameter "pX"
    .parameter "pY"
    .parameter "pTexture"
    .parameter "pCapacity"
    .parameter "pSpriteBatchVertexBufferObject"
    .parameter "pShaderProgram"

    .prologue
    .line 120
    invoke-direct {p0, p1, p2, p6}, Lorg/andengine/entity/shape/Shape;-><init>(FFLorg/andengine/opengl/shader/ShaderProgram;)V

    .line 122
    iput-object p3, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mTexture:Lorg/andengine/opengl/texture/ITexture;

    .line 123
    iput p4, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mCapacity:I

    .line 124
    iput-object p5, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchVertexBufferObject:Lorg/andengine/entity/sprite/batch/vbo/ISpriteBatchVertexBufferObject;

    .line 126
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/andengine/entity/sprite/batch/SpriteBatch;->setBlendingEnabled(Z)V

    .line 127
    iget-object v0, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mTexture:Lorg/andengine/opengl/texture/ITexture;

    invoke-virtual {p0, v0}, Lorg/andengine/entity/sprite/batch/SpriteBatch;->initBlendFunction(Lorg/andengine/opengl/texture/ITexture;)V

    .line 128
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/texture/ITexture;ILorg/andengine/opengl/vbo/VertexBufferObjectManager;)V
    .locals 7
    .parameter "pX"
    .parameter "pY"
    .parameter "pTexture"
    .parameter "pCapacity"
    .parameter "pVertexBufferObjectManager"

    .prologue
    .line 80
    sget-object v6, Lorg/andengine/opengl/vbo/DrawType;->STATIC:Lorg/andengine/opengl/vbo/DrawType;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/andengine/entity/sprite/batch/SpriteBatch;-><init>(FFLorg/andengine/opengl/texture/ITexture;ILorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V

    .line 81
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/texture/ITexture;ILorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V
    .locals 7
    .parameter "pX"
    .parameter "pY"
    .parameter "pTexture"
    .parameter "pCapacity"
    .parameter "pVertexBufferObjectManager"
    .parameter "pDrawType"

    .prologue
    .line 88
    new-instance v0, Lorg/andengine/entity/sprite/batch/vbo/HighPerformanceSpriteBatchVertexBufferObject;

    mul-int/lit8 v2, p4, 0x1e

    const/4 v4, 0x1

    sget-object v5, Lorg/andengine/entity/sprite/batch/SpriteBatch;->VERTEXBUFFEROBJECTATTRIBUTES_DEFAULT:Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;

    move-object v1, p5

    move-object v3, p6

    invoke-direct/range {v0 .. v5}, Lorg/andengine/entity/sprite/batch/vbo/HighPerformanceSpriteBatchVertexBufferObject;-><init>(Lorg/andengine/opengl/vbo/VertexBufferObjectManager;ILorg/andengine/opengl/vbo/DrawType;ZLorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;)V

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lorg/andengine/entity/sprite/batch/SpriteBatch;-><init>(FFLorg/andengine/opengl/texture/ITexture;ILorg/andengine/entity/sprite/batch/vbo/ISpriteBatchVertexBufferObject;)V

    .line 89
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/texture/ITexture;ILorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 8
    .parameter "pX"
    .parameter "pY"
    .parameter "pTexture"
    .parameter "pCapacity"
    .parameter "pVertexBufferObjectManager"
    .parameter "pDrawType"
    .parameter "pShaderProgram"

    .prologue
    .line 104
    new-instance v0, Lorg/andengine/entity/sprite/batch/vbo/HighPerformanceSpriteBatchVertexBufferObject;

    mul-int/lit8 v2, p4, 0x1e

    const/4 v4, 0x1

    sget-object v5, Lorg/andengine/entity/sprite/batch/SpriteBatch;->VERTEXBUFFEROBJECTATTRIBUTES_DEFAULT:Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;

    move-object v1, p5

    move-object v3, p6

    invoke-direct/range {v0 .. v5}, Lorg/andengine/entity/sprite/batch/vbo/HighPerformanceSpriteBatchVertexBufferObject;-><init>(Lorg/andengine/opengl/vbo/VertexBufferObjectManager;ILorg/andengine/opengl/vbo/DrawType;ZLorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;)V

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, v0

    move-object v7, p7

    invoke-direct/range {v1 .. v7}, Lorg/andengine/entity/sprite/batch/SpriteBatch;-><init>(FFLorg/andengine/opengl/texture/ITexture;ILorg/andengine/entity/sprite/batch/vbo/ISpriteBatchVertexBufferObject;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 105
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/texture/ITexture;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;ILorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 8
    .parameter "pX"
    .parameter "pY"
    .parameter "pTexture"
    .parameter "pVertexBufferObjectManager"
    .parameter "pCapacity"
    .parameter "pShaderProgram"

    .prologue
    .line 96
    sget-object v6, Lorg/andengine/opengl/vbo/DrawType;->STATIC:Lorg/andengine/opengl/vbo/DrawType;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p5

    move-object v5, p4

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/andengine/entity/sprite/batch/SpriteBatch;-><init>(FFLorg/andengine/opengl/texture/ITexture;ILorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/ITexture;ILorg/andengine/entity/sprite/batch/vbo/ISpriteBatchVertexBufferObject;)V
    .locals 1
    .parameter "pTexture"
    .parameter "pCapacity"
    .parameter "pSpriteBatchVertexBufferObject"

    .prologue
    .line 108
    invoke-static {}, Lorg/andengine/opengl/shader/PositionColorTextureCoordinatesShaderProgram;->getInstance()Lorg/andengine/opengl/shader/PositionColorTextureCoordinatesShaderProgram;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/andengine/entity/sprite/batch/SpriteBatch;-><init>(Lorg/andengine/opengl/texture/ITexture;ILorg/andengine/entity/sprite/batch/vbo/ISpriteBatchVertexBufferObject;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/ITexture;ILorg/andengine/entity/sprite/batch/vbo/ISpriteBatchVertexBufferObject;Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 7
    .parameter "pTexture"
    .parameter "pCapacity"
    .parameter "pSpriteBatchVertexBufferObject"
    .parameter "pShaderProgram"

    .prologue
    const/4 v1, 0x0

    .line 116
    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/andengine/entity/sprite/batch/SpriteBatch;-><init>(FFLorg/andengine/opengl/texture/ITexture;ILorg/andengine/entity/sprite/batch/vbo/ISpriteBatchVertexBufferObject;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/ITexture;ILorg/andengine/opengl/vbo/VertexBufferObjectManager;)V
    .locals 1
    .parameter "pTexture"
    .parameter "pCapacity"
    .parameter "pVertexBufferObjectManager"

    .prologue
    .line 76
    sget-object v0, Lorg/andengine/opengl/vbo/DrawType;->STATIC:Lorg/andengine/opengl/vbo/DrawType;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/andengine/entity/sprite/batch/SpriteBatch;-><init>(Lorg/andengine/opengl/texture/ITexture;ILorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/ITexture;ILorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 6
    .parameter "pTexture"
    .parameter "pCapacity"
    .parameter "pVertexBufferObjectManager"
    .parameter "pShaderProgram"

    .prologue
    .line 92
    sget-object v4, Lorg/andengine/opengl/vbo/DrawType;->STATIC:Lorg/andengine/opengl/vbo/DrawType;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/andengine/entity/sprite/batch/SpriteBatch;-><init>(Lorg/andengine/opengl/texture/ITexture;ILorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/ITexture;ILorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V
    .locals 6
    .parameter "pTexture"
    .parameter "pCapacity"
    .parameter "pVertexBufferObjectManager"
    .parameter "pDrawType"

    .prologue
    .line 84
    new-instance v0, Lorg/andengine/entity/sprite/batch/vbo/HighPerformanceSpriteBatchVertexBufferObject;

    mul-int/lit8 v2, p2, 0x1e

    const/4 v4, 0x1

    sget-object v5, Lorg/andengine/entity/sprite/batch/SpriteBatch;->VERTEXBUFFEROBJECTATTRIBUTES_DEFAULT:Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;

    move-object v1, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lorg/andengine/entity/sprite/batch/vbo/HighPerformanceSpriteBatchVertexBufferObject;-><init>(Lorg/andengine/opengl/vbo/VertexBufferObjectManager;ILorg/andengine/opengl/vbo/DrawType;ZLorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;)V

    invoke-direct {p0, p1, p2, v0}, Lorg/andengine/entity/sprite/batch/SpriteBatch;-><init>(Lorg/andengine/opengl/texture/ITexture;ILorg/andengine/entity/sprite/batch/vbo/ISpriteBatchVertexBufferObject;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/ITexture;ILorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 6
    .parameter "pTexture"
    .parameter "pCapacity"
    .parameter "pVertexBufferObjectManager"
    .parameter "pDrawType"
    .parameter "pShaderProgram"

    .prologue
    .line 100
    new-instance v0, Lorg/andengine/entity/sprite/batch/vbo/HighPerformanceSpriteBatchVertexBufferObject;

    mul-int/lit8 v2, p2, 0x1e

    const/4 v4, 0x1

    sget-object v5, Lorg/andengine/entity/sprite/batch/SpriteBatch;->VERTEXBUFFEROBJECTATTRIBUTES_DEFAULT:Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;

    move-object v1, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lorg/andengine/entity/sprite/batch/vbo/HighPerformanceSpriteBatchVertexBufferObject;-><init>(Lorg/andengine/opengl/vbo/VertexBufferObjectManager;ILorg/andengine/opengl/vbo/DrawType;ZLorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;)V

    invoke-direct {p0, p1, p2, v0, p5}, Lorg/andengine/entity/sprite/batch/SpriteBatch;-><init>(Lorg/andengine/opengl/texture/ITexture;ILorg/andengine/entity/sprite/batch/vbo/ISpriteBatchVertexBufferObject;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 101
    return-void
.end method

.method private addInner(Lorg/andengine/opengl/texture/region/ITextureRegion;FFFFFFFF)V
    .locals 7
    .parameter "pTextureRegion"
    .parameter "pX1"
    .parameter "pY1"
    .parameter "pX2"
    .parameter "pY2"
    .parameter "pRed"
    .parameter "pGreen"
    .parameter "pBlue"
    .parameter "pAlpha"

    .prologue
    .line 742
    iget-object v0, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchVertexBufferObject:Lorg/andengine/entity/sprite/batch/vbo/ISpriteBatchVertexBufferObject;

    invoke-static/range {p6 .. p9}, Lorg/andengine/util/color/ColorUtils;->convertRGBAToABGRPackedFloat(FFFF)F

    move-result v6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v6}, Lorg/andengine/entity/sprite/batch/vbo/ISpriteBatchVertexBufferObject;->addWithPackedColor(Lorg/andengine/opengl/texture/region/ITextureRegion;FFFFF)V

    .line 743
    return-void
.end method

.method private addInner(Lorg/andengine/opengl/texture/region/ITextureRegion;FFFFFFFFFFFF)V
    .locals 11
    .parameter "pTextureRegion"
    .parameter "pX1"
    .parameter "pY1"
    .parameter "pX2"
    .parameter "pY2"
    .parameter "pX3"
    .parameter "pY3"
    .parameter "pX4"
    .parameter "pY4"
    .parameter "pRed"
    .parameter "pGreen"
    .parameter "pBlue"
    .parameter "pAlpha"

    .prologue
    .line 751
    iget-object v0, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchVertexBufferObject:Lorg/andengine/entity/sprite/batch/vbo/ISpriteBatchVertexBufferObject;

    invoke-static/range {p10 .. p13}, Lorg/andengine/util/color/ColorUtils;->convertRGBAToABGRPackedFloat(FFFF)F

    move-result v10

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-interface/range {v0 .. v10}, Lorg/andengine/entity/sprite/batch/vbo/ISpriteBatchVertexBufferObject;->addWithPackedColor(Lorg/andengine/opengl/texture/region/ITextureRegion;FFFFFFFFF)V

    .line 752
    return-void
.end method

.method private assertCapacity()V
    .locals 3

    .prologue
    .line 476
    iget v0, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    iget v1, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mCapacity:I

    if-ne v0, v1, :cond_0

    .line 477
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This SpriteBatch has already reached its capacity ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mCapacity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 479
    :cond_0
    return-void
.end method

.method private assertCapacity(I)V
    .locals 3
    .parameter "pIndex"

    .prologue
    .line 470
    iget v0, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mCapacity:I

    if-lt p1, v0, :cond_0

    .line 471
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This supplied pIndex: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is exceeding the capacity: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mCapacity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' of this SpriteBatch!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 473
    :cond_0
    return-void
.end method


# virtual methods
.method protected add(Lorg/andengine/opengl/texture/region/ITextureRegion;FFFFF)V
    .locals 7
    .parameter "pTextureRegion"
    .parameter "pX"
    .parameter "pY"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pColorABGRPackedInt"

    .prologue
    .line 721
    iget-object v0, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchVertexBufferObject:Lorg/andengine/entity/sprite/batch/vbo/ISpriteBatchVertexBufferObject;

    add-float v4, p2, p4

    add-float v5, p3, p5

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lorg/andengine/entity/sprite/batch/vbo/ISpriteBatchVertexBufferObject;->addWithPackedColor(Lorg/andengine/opengl/texture/region/ITextureRegion;FFFFF)V

    .line 722
    return-void
.end method

.method protected add(Lorg/andengine/opengl/texture/region/ITextureRegion;FFFFFFFF)V
    .locals 10
    .parameter "pTextureRegion"
    .parameter "pX"
    .parameter "pY"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pRed"
    .parameter "pGreen"
    .parameter "pBlue"
    .parameter "pAlpha"

    .prologue
    .line 709
    add-float v4, p2, p4

    add-float v5, p3, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lorg/andengine/entity/sprite/batch/SpriteBatch;->addInner(Lorg/andengine/opengl/texture/region/ITextureRegion;FFFFFFFF)V

    .line 710
    return-void
.end method

.method protected add(Lorg/andengine/opengl/texture/region/ITextureRegion;FFFFFFFFF)V
    .locals 12
    .parameter "pTextureRegion"
    .parameter "pX"
    .parameter "pY"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pRotation"
    .parameter "pRed"
    .parameter "pGreen"
    .parameter "pBlue"
    .parameter "pAlpha"

    .prologue
    .line 500
    const/high16 v1, 0x3f00

    mul-float v11, p4, v1

    .line 501
    .local v11, widthHalf:F
    const/high16 v1, 0x3f00

    mul-float v10, p5, v1

    .line 503
    .local v10, heightHalf:F
    sget-object v1, Lorg/andengine/entity/sprite/batch/SpriteBatch;->TRANSFORATION_TMP:Lorg/andengine/util/adt/transformation/Transformation;

    invoke-virtual {v1}, Lorg/andengine/util/adt/transformation/Transformation;->setToIdentity()V

    .line 505
    sget-object v1, Lorg/andengine/entity/sprite/batch/SpriteBatch;->TRANSFORATION_TMP:Lorg/andengine/util/adt/transformation/Transformation;

    neg-float v2, v11

    neg-float v3, v10

    invoke-virtual {v1, v2, v3}, Lorg/andengine/util/adt/transformation/Transformation;->postTranslate(FF)V

    .line 506
    sget-object v1, Lorg/andengine/entity/sprite/batch/SpriteBatch;->TRANSFORATION_TMP:Lorg/andengine/util/adt/transformation/Transformation;

    move/from16 v0, p6

    invoke-virtual {v1, v0}, Lorg/andengine/util/adt/transformation/Transformation;->postRotate(F)V

    .line 507
    sget-object v1, Lorg/andengine/entity/sprite/batch/SpriteBatch;->TRANSFORATION_TMP:Lorg/andengine/util/adt/transformation/Transformation;

    invoke-virtual {v1, v11, v10}, Lorg/andengine/util/adt/transformation/Transformation;->postTranslate(FF)V

    .line 508
    sget-object v1, Lorg/andengine/entity/sprite/batch/SpriteBatch;->TRANSFORATION_TMP:Lorg/andengine/util/adt/transformation/Transformation;

    invoke-virtual {v1, p2, p3}, Lorg/andengine/util/adt/transformation/Transformation;->postTranslate(FF)V

    .line 510
    sget-object v5, Lorg/andengine/entity/sprite/batch/SpriteBatch;->TRANSFORATION_TMP:Lorg/andengine/util/adt/transformation/Transformation;

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    invoke-virtual/range {v1 .. v9}, Lorg/andengine/entity/sprite/batch/SpriteBatch;->add(Lorg/andengine/opengl/texture/region/ITextureRegion;FFLorg/andengine/util/adt/transformation/Transformation;FFFF)V

    .line 511
    return-void
.end method

.method protected add(Lorg/andengine/opengl/texture/region/ITextureRegion;FFFFFFFFFF)V
    .locals 13
    .parameter "pTextureRegion"
    .parameter "pX"
    .parameter "pY"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pScaleX"
    .parameter "pScaleY"
    .parameter "pRed"
    .parameter "pGreen"
    .parameter "pBlue"
    .parameter "pAlpha"

    .prologue
    .line 551
    const/high16 v2, 0x3f00

    mul-float v12, p4, v2

    .line 552
    .local v12, widthHalf:F
    const/high16 v2, 0x3f00

    mul-float v11, p5, v2

    .line 554
    .local v11, heightHalf:F
    sget-object v2, Lorg/andengine/entity/sprite/batch/SpriteBatch;->TRANSFORATION_TMP:Lorg/andengine/util/adt/transformation/Transformation;

    invoke-virtual {v2}, Lorg/andengine/util/adt/transformation/Transformation;->setToIdentity()V

    .line 556
    sget-object v2, Lorg/andengine/entity/sprite/batch/SpriteBatch;->TRANSFORATION_TMP:Lorg/andengine/util/adt/transformation/Transformation;

    neg-float v3, v12

    neg-float v4, v11

    invoke-virtual {v2, v3, v4}, Lorg/andengine/util/adt/transformation/Transformation;->postTranslate(FF)V

    .line 557
    sget-object v2, Lorg/andengine/entity/sprite/batch/SpriteBatch;->TRANSFORATION_TMP:Lorg/andengine/util/adt/transformation/Transformation;

    move/from16 v0, p6

    move/from16 v1, p7

    invoke-virtual {v2, v0, v1}, Lorg/andengine/util/adt/transformation/Transformation;->postScale(FF)V

    .line 558
    sget-object v2, Lorg/andengine/entity/sprite/batch/SpriteBatch;->TRANSFORATION_TMP:Lorg/andengine/util/adt/transformation/Transformation;

    invoke-virtual {v2, v12, v11}, Lorg/andengine/util/adt/transformation/Transformation;->postTranslate(FF)V

    .line 559
    sget-object v2, Lorg/andengine/entity/sprite/batch/SpriteBatch;->TRANSFORATION_TMP:Lorg/andengine/util/adt/transformation/Transformation;

    move/from16 v0, p3

    invoke-virtual {v2, p2, v0}, Lorg/andengine/util/adt/transformation/Transformation;->postTranslate(FF)V

    .line 561
    sget-object v6, Lorg/andengine/entity/sprite/batch/SpriteBatch;->TRANSFORATION_TMP:Lorg/andengine/util/adt/transformation/Transformation;

    move-object v2, p0

    move-object v3, p1

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    invoke-virtual/range {v2 .. v10}, Lorg/andengine/entity/sprite/batch/SpriteBatch;->add(Lorg/andengine/opengl/texture/region/ITextureRegion;FFLorg/andengine/util/adt/transformation/Transformation;FFFF)V

    .line 562
    return-void
.end method

.method protected add(Lorg/andengine/opengl/texture/region/ITextureRegion;FFFFFFFFFFF)V
    .locals 13
    .parameter "pTextureRegion"
    .parameter "pX"
    .parameter "pY"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pRotation"
    .parameter "pScaleX"
    .parameter "pScaleY"
    .parameter "pRed"
    .parameter "pGreen"
    .parameter "pBlue"
    .parameter "pAlpha"

    .prologue
    .line 604
    const/high16 v2, 0x3f00

    mul-float v12, p4, v2

    .line 605
    .local v12, widthHalf:F
    const/high16 v2, 0x3f00

    mul-float v11, p5, v2

    .line 607
    .local v11, heightHalf:F
    sget-object v2, Lorg/andengine/entity/sprite/batch/SpriteBatch;->TRANSFORATION_TMP:Lorg/andengine/util/adt/transformation/Transformation;

    invoke-virtual {v2}, Lorg/andengine/util/adt/transformation/Transformation;->setToIdentity()V

    .line 609
    sget-object v2, Lorg/andengine/entity/sprite/batch/SpriteBatch;->TRANSFORATION_TMP:Lorg/andengine/util/adt/transformation/Transformation;

    neg-float v3, v12

    neg-float v4, v11

    invoke-virtual {v2, v3, v4}, Lorg/andengine/util/adt/transformation/Transformation;->postTranslate(FF)V

    .line 610
    sget-object v2, Lorg/andengine/entity/sprite/batch/SpriteBatch;->TRANSFORATION_TMP:Lorg/andengine/util/adt/transformation/Transformation;

    move/from16 v0, p7

    move/from16 v1, p8

    invoke-virtual {v2, v0, v1}, Lorg/andengine/util/adt/transformation/Transformation;->postScale(FF)V

    .line 611
    sget-object v2, Lorg/andengine/entity/sprite/batch/SpriteBatch;->TRANSFORATION_TMP:Lorg/andengine/util/adt/transformation/Transformation;

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Lorg/andengine/util/adt/transformation/Transformation;->postRotate(F)V

    .line 612
    sget-object v2, Lorg/andengine/entity/sprite/batch/SpriteBatch;->TRANSFORATION_TMP:Lorg/andengine/util/adt/transformation/Transformation;

    invoke-virtual {v2, v12, v11}, Lorg/andengine/util/adt/transformation/Transformation;->postTranslate(FF)V

    .line 613
    sget-object v2, Lorg/andengine/entity/sprite/batch/SpriteBatch;->TRANSFORATION_TMP:Lorg/andengine/util/adt/transformation/Transformation;

    move/from16 v0, p3

    invoke-virtual {v2, p2, v0}, Lorg/andengine/util/adt/transformation/Transformation;->postTranslate(FF)V

    .line 615
    sget-object v6, Lorg/andengine/entity/sprite/batch/SpriteBatch;->TRANSFORATION_TMP:Lorg/andengine/util/adt/transformation/Transformation;

    move-object v2, p0

    move-object v3, p1

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v7, p9

    move/from16 v8, p10

    move/from16 v9, p11

    move/from16 v10, p12

    invoke-virtual/range {v2 .. v10}, Lorg/andengine/entity/sprite/batch/SpriteBatch;->add(Lorg/andengine/opengl/texture/region/ITextureRegion;FFLorg/andengine/util/adt/transformation/Transformation;FFFF)V

    .line 616
    return-void
.end method

.method protected add(Lorg/andengine/opengl/texture/region/ITextureRegion;FFLorg/andengine/util/adt/transformation/Transformation;FFFF)V
    .locals 15
    .parameter "pTextureRegion"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pTransformation"
    .parameter "pRed"
    .parameter "pGreen"
    .parameter "pBlue"
    .parameter "pAlpha"

    .prologue
    .line 655
    sget-object v1, Lorg/andengine/entity/sprite/batch/SpriteBatch;->VERTICES_TMP:[F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 656
    sget-object v1, Lorg/andengine/entity/sprite/batch/SpriteBatch;->VERTICES_TMP:[F

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 658
    sget-object v1, Lorg/andengine/entity/sprite/batch/SpriteBatch;->VERTICES_TMP:[F

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 659
    sget-object v1, Lorg/andengine/entity/sprite/batch/SpriteBatch;->VERTICES_TMP:[F

    const/4 v2, 0x3

    aput p3, v1, v2

    .line 661
    sget-object v1, Lorg/andengine/entity/sprite/batch/SpriteBatch;->VERTICES_TMP:[F

    const/4 v2, 0x4

    aput p2, v1, v2

    .line 662
    sget-object v1, Lorg/andengine/entity/sprite/batch/SpriteBatch;->VERTICES_TMP:[F

    const/4 v2, 0x5

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 664
    sget-object v1, Lorg/andengine/entity/sprite/batch/SpriteBatch;->VERTICES_TMP:[F

    const/4 v2, 0x6

    aput p2, v1, v2

    .line 665
    sget-object v1, Lorg/andengine/entity/sprite/batch/SpriteBatch;->VERTICES_TMP:[F

    const/4 v2, 0x7

    aput p3, v1, v2

    .line 667
    sget-object v1, Lorg/andengine/entity/sprite/batch/SpriteBatch;->VERTICES_TMP:[F

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Lorg/andengine/util/adt/transformation/Transformation;->transform([F)V

    .line 669
    sget-object v1, Lorg/andengine/entity/sprite/batch/SpriteBatch;->VERTICES_TMP:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    sget-object v1, Lorg/andengine/entity/sprite/batch/SpriteBatch;->VERTICES_TMP:[F

    const/4 v2, 0x1

    aget v4, v1, v2

    sget-object v1, Lorg/andengine/entity/sprite/batch/SpriteBatch;->VERTICES_TMP:[F

    const/4 v2, 0x2

    aget v5, v1, v2

    sget-object v1, Lorg/andengine/entity/sprite/batch/SpriteBatch;->VERTICES_TMP:[F

    const/4 v2, 0x3

    aget v6, v1, v2

    sget-object v1, Lorg/andengine/entity/sprite/batch/SpriteBatch;->VERTICES_TMP:[F

    const/4 v2, 0x4

    aget v7, v1, v2

    sget-object v1, Lorg/andengine/entity/sprite/batch/SpriteBatch;->VERTICES_TMP:[F

    const/4 v2, 0x5

    aget v8, v1, v2

    sget-object v1, Lorg/andengine/entity/sprite/batch/SpriteBatch;->VERTICES_TMP:[F

    const/4 v2, 0x6

    aget v9, v1, v2

    sget-object v1, Lorg/andengine/entity/sprite/batch/SpriteBatch;->VERTICES_TMP:[F

    const/4 v2, 0x7

    aget v10, v1, v2

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, p8

    invoke-direct/range {v1 .. v14}, Lorg/andengine/entity/sprite/batch/SpriteBatch;->addInner(Lorg/andengine/opengl/texture/region/ITextureRegion;FFFFFFFFFFFF)V

    .line 670
    return-void
.end method

.method protected addWithPackedColor(Lorg/andengine/opengl/texture/region/ITextureRegion;FFFFF)V
    .locals 7
    .parameter "pTextureRegion"
    .parameter "pX"
    .parameter "pY"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pColorABGRPackedInt"

    .prologue
    .line 733
    iget-object v0, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchVertexBufferObject:Lorg/andengine/entity/sprite/batch/vbo/ISpriteBatchVertexBufferObject;

    add-float v4, p2, p4

    add-float v5, p3, p5

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lorg/andengine/entity/sprite/batch/vbo/ISpriteBatchVertexBufferObject;->addWithPackedColor(Lorg/andengine/opengl/texture/region/ITextureRegion;FFFFF)V

    .line 734
    return-void
.end method

.method protected addWithPackedColor(Lorg/andengine/opengl/texture/region/ITextureRegion;FFFFFF)V
    .locals 8
    .parameter "pTextureRegion"
    .parameter "pX"
    .parameter "pY"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pRotation"
    .parameter "pColorABGRPackedInt"

    .prologue
    const/high16 v0, 0x3f00

    .line 523
    mul-float v7, p4, v0

    .line 524
    .local v7, widthHalf:F
    mul-float v6, p5, v0

    .line 526
    .local v6, heightHalf:F
    sget-object v0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->TRANSFORATION_TMP:Lorg/andengine/util/adt/transformation/Transformation;

    invoke-virtual {v0}, Lorg/andengine/util/adt/transformation/Transformation;->setToIdentity()V

    .line 528
    sget-object v0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->TRANSFORATION_TMP:Lorg/andengine/util/adt/transformation/Transformation;

    neg-float v1, v7

    neg-float v2, v6

    invoke-virtual {v0, v1, v2}, Lorg/andengine/util/adt/transformation/Transformation;->postTranslate(FF)V

    .line 529
    sget-object v0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->TRANSFORATION_TMP:Lorg/andengine/util/adt/transformation/Transformation;

    invoke-virtual {v0, p6}, Lorg/andengine/util/adt/transformation/Transformation;->postRotate(F)V

    .line 530
    sget-object v0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->TRANSFORATION_TMP:Lorg/andengine/util/adt/transformation/Transformation;

    invoke-virtual {v0, v7, v6}, Lorg/andengine/util/adt/transformation/Transformation;->postTranslate(FF)V

    .line 531
    sget-object v0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->TRANSFORATION_TMP:Lorg/andengine/util/adt/transformation/Transformation;

    invoke-virtual {v0, p2, p3}, Lorg/andengine/util/adt/transformation/Transformation;->postTranslate(FF)V

    .line 533
    sget-object v4, Lorg/andengine/entity/sprite/batch/SpriteBatch;->TRANSFORATION_TMP:Lorg/andengine/util/adt/transformation/Transformation;

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move v3, p5

    move v5, p7

    invoke-virtual/range {v0 .. v5}, Lorg/andengine/entity/sprite/batch/SpriteBatch;->addWithPackedColor(Lorg/andengine/opengl/texture/region/ITextureRegion;FFLorg/andengine/util/adt/transformation/Transformation;F)V

    .line 534
    return-void
.end method

.method protected addWithPackedColor(Lorg/andengine/opengl/texture/region/ITextureRegion;FFFFFFF)V
    .locals 8
    .parameter "pTextureRegion"
    .parameter "pX"
    .parameter "pY"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pScaleX"
    .parameter "pScaleY"
    .parameter "pColorABGRPackedInt"

    .prologue
    .line 576
    const/high16 v0, 0x3f00

    mul-float v7, p4, v0

    .line 577
    .local v7, widthHalf:F
    const/high16 v0, 0x3f00

    mul-float v6, p5, v0

    .line 579
    .local v6, heightHalf:F
    sget-object v0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->TRANSFORATION_TMP:Lorg/andengine/util/adt/transformation/Transformation;

    invoke-virtual {v0}, Lorg/andengine/util/adt/transformation/Transformation;->setToIdentity()V

    .line 581
    sget-object v0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->TRANSFORATION_TMP:Lorg/andengine/util/adt/transformation/Transformation;

    neg-float v1, v7

    neg-float v2, v6

    invoke-virtual {v0, v1, v2}, Lorg/andengine/util/adt/transformation/Transformation;->postTranslate(FF)V

    .line 582
    sget-object v0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->TRANSFORATION_TMP:Lorg/andengine/util/adt/transformation/Transformation;

    invoke-virtual {v0, p6, p7}, Lorg/andengine/util/adt/transformation/Transformation;->postScale(FF)V

    .line 583
    sget-object v0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->TRANSFORATION_TMP:Lorg/andengine/util/adt/transformation/Transformation;

    invoke-virtual {v0, v7, v6}, Lorg/andengine/util/adt/transformation/Transformation;->postTranslate(FF)V

    .line 584
    sget-object v0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->TRANSFORATION_TMP:Lorg/andengine/util/adt/transformation/Transformation;

    invoke-virtual {v0, p2, p3}, Lorg/andengine/util/adt/transformation/Transformation;->postTranslate(FF)V

    .line 586
    sget-object v4, Lorg/andengine/entity/sprite/batch/SpriteBatch;->TRANSFORATION_TMP:Lorg/andengine/util/adt/transformation/Transformation;

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move v3, p5

    move/from16 v5, p8

    invoke-virtual/range {v0 .. v5}, Lorg/andengine/entity/sprite/batch/SpriteBatch;->addWithPackedColor(Lorg/andengine/opengl/texture/region/ITextureRegion;FFLorg/andengine/util/adt/transformation/Transformation;F)V

    .line 587
    return-void
.end method

.method protected addWithPackedColor(Lorg/andengine/opengl/texture/region/ITextureRegion;FFFFFFFF)V
    .locals 10
    .parameter "pTextureRegion"
    .parameter "pX"
    .parameter "pY"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pRotation"
    .parameter "pScaleX"
    .parameter "pScaleY"
    .parameter "pColorABGRPackedInt"

    .prologue
    .line 630
    const/high16 v2, 0x3f00

    mul-float v9, p4, v2

    .line 631
    .local v9, widthHalf:F
    const/high16 v2, 0x3f00

    mul-float v8, p5, v2

    .line 633
    .local v8, heightHalf:F
    sget-object v2, Lorg/andengine/entity/sprite/batch/SpriteBatch;->TRANSFORATION_TMP:Lorg/andengine/util/adt/transformation/Transformation;

    invoke-virtual {v2}, Lorg/andengine/util/adt/transformation/Transformation;->setToIdentity()V

    .line 635
    sget-object v2, Lorg/andengine/entity/sprite/batch/SpriteBatch;->TRANSFORATION_TMP:Lorg/andengine/util/adt/transformation/Transformation;

    neg-float v3, v9

    neg-float v4, v8

    invoke-virtual {v2, v3, v4}, Lorg/andengine/util/adt/transformation/Transformation;->postTranslate(FF)V

    .line 636
    sget-object v2, Lorg/andengine/entity/sprite/batch/SpriteBatch;->TRANSFORATION_TMP:Lorg/andengine/util/adt/transformation/Transformation;

    move/from16 v0, p7

    move/from16 v1, p8

    invoke-virtual {v2, v0, v1}, Lorg/andengine/util/adt/transformation/Transformation;->postScale(FF)V

    .line 637
    sget-object v2, Lorg/andengine/entity/sprite/batch/SpriteBatch;->TRANSFORATION_TMP:Lorg/andengine/util/adt/transformation/Transformation;

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Lorg/andengine/util/adt/transformation/Transformation;->postRotate(F)V

    .line 638
    sget-object v2, Lorg/andengine/entity/sprite/batch/SpriteBatch;->TRANSFORATION_TMP:Lorg/andengine/util/adt/transformation/Transformation;

    invoke-virtual {v2, v9, v8}, Lorg/andengine/util/adt/transformation/Transformation;->postTranslate(FF)V

    .line 639
    sget-object v2, Lorg/andengine/entity/sprite/batch/SpriteBatch;->TRANSFORATION_TMP:Lorg/andengine/util/adt/transformation/Transformation;

    invoke-virtual {v2, p2, p3}, Lorg/andengine/util/adt/transformation/Transformation;->postTranslate(FF)V

    .line 641
    sget-object v6, Lorg/andengine/entity/sprite/batch/SpriteBatch;->TRANSFORATION_TMP:Lorg/andengine/util/adt/transformation/Transformation;

    move-object v2, p0

    move-object v3, p1

    move v4, p4

    move v5, p5

    move/from16 v7, p9

    invoke-virtual/range {v2 .. v7}, Lorg/andengine/entity/sprite/batch/SpriteBatch;->addWithPackedColor(Lorg/andengine/opengl/texture/region/ITextureRegion;FFLorg/andengine/util/adt/transformation/Transformation;F)V

    .line 642
    return-void
.end method

.method protected addWithPackedColor(Lorg/andengine/opengl/texture/region/ITextureRegion;FFLorg/andengine/util/adt/transformation/Transformation;F)V
    .locals 11
    .parameter "pTextureRegion"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pTransformation"
    .parameter "pColorABGRPackedInt"

    .prologue
    .line 680
    sget-object v0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->VERTICES_TMP:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 681
    sget-object v0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->VERTICES_TMP:[F

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 683
    sget-object v0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->VERTICES_TMP:[F

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 684
    sget-object v0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->VERTICES_TMP:[F

    const/4 v1, 0x3

    aput p3, v0, v1

    .line 686
    sget-object v0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->VERTICES_TMP:[F

    const/4 v1, 0x4

    aput p2, v0, v1

    .line 687
    sget-object v0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->VERTICES_TMP:[F

    const/4 v1, 0x5

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 689
    sget-object v0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->VERTICES_TMP:[F

    const/4 v1, 0x6

    aput p2, v0, v1

    .line 690
    sget-object v0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->VERTICES_TMP:[F

    const/4 v1, 0x7

    aput p3, v0, v1

    .line 692
    sget-object v0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->VERTICES_TMP:[F

    invoke-virtual {p4, v0}, Lorg/andengine/util/adt/transformation/Transformation;->transform([F)V

    .line 694
    iget-object v0, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchVertexBufferObject:Lorg/andengine/entity/sprite/batch/vbo/ISpriteBatchVertexBufferObject;

    sget-object v1, Lorg/andengine/entity/sprite/batch/SpriteBatch;->VERTICES_TMP:[F

    const/4 v2, 0x0

    aget v2, v1, v2

    sget-object v1, Lorg/andengine/entity/sprite/batch/SpriteBatch;->VERTICES_TMP:[F

    const/4 v3, 0x1

    aget v3, v1, v3

    sget-object v1, Lorg/andengine/entity/sprite/batch/SpriteBatch;->VERTICES_TMP:[F

    const/4 v4, 0x2

    aget v4, v1, v4

    sget-object v1, Lorg/andengine/entity/sprite/batch/SpriteBatch;->VERTICES_TMP:[F

    const/4 v5, 0x3

    aget v5, v1, v5

    sget-object v1, Lorg/andengine/entity/sprite/batch/SpriteBatch;->VERTICES_TMP:[F

    const/4 v6, 0x4

    aget v6, v1, v6

    sget-object v1, Lorg/andengine/entity/sprite/batch/SpriteBatch;->VERTICES_TMP:[F

    const/4 v7, 0x5

    aget v7, v1, v7

    sget-object v1, Lorg/andengine/entity/sprite/batch/SpriteBatch;->VERTICES_TMP:[F

    const/4 v8, 0x6

    aget v8, v1, v8

    sget-object v1, Lorg/andengine/entity/sprite/batch/SpriteBatch;->VERTICES_TMP:[F

    const/4 v9, 0x7

    aget v9, v1, v9

    move-object v1, p1

    move/from16 v10, p5

    invoke-interface/range {v0 .. v10}, Lorg/andengine/entity/sprite/batch/vbo/ISpriteBatchVertexBufferObject;->addWithPackedColor(Lorg/andengine/opengl/texture/region/ITextureRegion;FFFFFFFFF)V

    .line 695
    return-void
.end method

.method protected assertTexture(Lorg/andengine/opengl/texture/region/ITextureRegion;)V
    .locals 2
    .parameter "pTextureRegion"

    .prologue
    .line 482
    invoke-interface {p1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getTexture()Lorg/andengine/opengl/texture/ITexture;

    move-result-object v0

    iget-object v1, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mTexture:Lorg/andengine/opengl/texture/ITexture;

    if-eq v0, v1, :cond_0

    .line 483
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The supplied Texture does match the Texture of this SpriteBatch!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 485
    :cond_0
    return-void
.end method

.method protected begin()V
    .locals 0

    .prologue
    .line 236
    return-void
.end method

.method public collidesWith(Lorg/andengine/entity/shape/IShape;)Z
    .locals 1
    .parameter "pOtherShape"

    .prologue
    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method public contains(FF)Z
    .locals 1
    .parameter "pX"
    .parameter "pY"

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 223
    invoke-super {p0}, Lorg/andengine/entity/shape/Shape;->dispose()V

    .line 225
    iget-object v0, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchVertexBufferObject:Lorg/andengine/entity/sprite/batch/vbo/ISpriteBatchVertexBufferObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchVertexBufferObject:Lorg/andengine/entity/sprite/batch/vbo/ISpriteBatchVertexBufferObject;

    invoke-interface {v0}, Lorg/andengine/entity/sprite/batch/vbo/ISpriteBatchVertexBufferObject;->isAutoDispose()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchVertexBufferObject:Lorg/andengine/entity/sprite/batch/vbo/ISpriteBatchVertexBufferObject;

    invoke-interface {v0}, Lorg/andengine/entity/sprite/batch/vbo/ISpriteBatchVertexBufferObject;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    iget-object v0, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchVertexBufferObject:Lorg/andengine/entity/sprite/batch/vbo/ISpriteBatchVertexBufferObject;

    invoke-interface {v0}, Lorg/andengine/entity/sprite/batch/vbo/ISpriteBatchVertexBufferObject;->dispose()V

    .line 228
    :cond_0
    return-void
.end method

.method public draw(Lorg/andengine/entity/sprite/Sprite;)V
    .locals 6
    .parameter "pSprite"

    .prologue
    .line 354
    invoke-virtual {p1}, Lorg/andengine/entity/sprite/Sprite;->getTextureRegion()Lorg/andengine/opengl/texture/region/ITextureRegion;

    move-result-object v1

    invoke-virtual {p1}, Lorg/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v3

    invoke-virtual {p1}, Lorg/andengine/entity/sprite/Sprite;->getHeight()F

    move-result v4

    invoke-virtual {p1}, Lorg/andengine/entity/sprite/Sprite;->getColor()Lorg/andengine/util/color/Color;

    move-result-object v0

    invoke-virtual {v0}, Lorg/andengine/util/color/Color;->getABGRPackedFloat()F

    move-result v5

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lorg/andengine/entity/sprite/batch/SpriteBatch;->draw(Lorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/entity/IEntity;FFF)V

    .line 355
    return-void
.end method

.method public draw(Lorg/andengine/entity/sprite/Sprite;F)V
    .locals 6
    .parameter "pSprite"
    .parameter "pColorABGRPackedInt"

    .prologue
    .line 376
    invoke-virtual {p1}, Lorg/andengine/entity/sprite/Sprite;->getTextureRegion()Lorg/andengine/opengl/texture/region/ITextureRegion;

    move-result-object v1

    invoke-virtual {p1}, Lorg/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v3

    invoke-virtual {p1}, Lorg/andengine/entity/sprite/Sprite;->getHeight()F

    move-result v4

    move-object v0, p0

    move-object v2, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/andengine/entity/sprite/batch/SpriteBatch;->draw(Lorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/entity/IEntity;FFF)V

    .line 377
    return-void
.end method

.method public draw(Lorg/andengine/entity/sprite/Sprite;FFFF)V
    .locals 9
    .parameter "pSprite"
    .parameter "pRed"
    .parameter "pGreen"
    .parameter "pBlue"
    .parameter "pAlpha"

    .prologue
    .line 365
    invoke-virtual {p1}, Lorg/andengine/entity/sprite/Sprite;->getTextureRegion()Lorg/andengine/opengl/texture/region/ITextureRegion;

    move-result-object v1

    invoke-virtual {p1}, Lorg/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v3

    invoke-virtual {p1}, Lorg/andengine/entity/sprite/Sprite;->getHeight()F

    move-result v4

    move-object v0, p0

    move-object v2, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-virtual/range {v0 .. v8}, Lorg/andengine/entity/sprite/batch/SpriteBatch;->draw(Lorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/entity/IEntity;FFFFFF)V

    .line 366
    return-void
.end method

.method public draw(Lorg/andengine/opengl/texture/region/ITextureRegion;FFFFF)V
    .locals 1
    .parameter "pTextureRegion"
    .parameter "pX"
    .parameter "pY"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pColorABGRPackedInt"

    .prologue
    .line 264
    invoke-direct {p0}, Lorg/andengine/entity/sprite/batch/SpriteBatch;->assertCapacity()V

    .line 265
    invoke-virtual {p0, p1}, Lorg/andengine/entity/sprite/batch/SpriteBatch;->assertTexture(Lorg/andengine/opengl/texture/region/ITextureRegion;)V

    .line 267
    invoke-virtual/range {p0 .. p6}, Lorg/andengine/entity/sprite/batch/SpriteBatch;->add(Lorg/andengine/opengl/texture/region/ITextureRegion;FFFFF)V

    .line 269
    iget v0, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    .line 270
    return-void
.end method

.method public draw(Lorg/andengine/opengl/texture/region/ITextureRegion;FFFFFFFF)V
    .locals 1
    .parameter "pTextureRegion"
    .parameter "pX"
    .parameter "pY"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pRed"
    .parameter "pGreen"
    .parameter "pBlue"
    .parameter "pAlpha"

    .prologue
    .line 246
    invoke-direct {p0}, Lorg/andengine/entity/sprite/batch/SpriteBatch;->assertCapacity()V

    .line 247
    invoke-virtual {p0, p1}, Lorg/andengine/entity/sprite/batch/SpriteBatch;->assertTexture(Lorg/andengine/opengl/texture/region/ITextureRegion;)V

    .line 249
    invoke-virtual/range {p0 .. p9}, Lorg/andengine/entity/sprite/batch/SpriteBatch;->add(Lorg/andengine/opengl/texture/region/ITextureRegion;FFFFFFFF)V

    .line 251
    iget v0, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    .line 252
    return-void
.end method

.method public draw(Lorg/andengine/opengl/texture/region/ITextureRegion;FFFFFFFFF)V
    .locals 1
    .parameter "pTextureRegion"
    .parameter "pX"
    .parameter "pY"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pRotation"
    .parameter "pRed"
    .parameter "pGreen"
    .parameter "pBlue"
    .parameter "pAlpha"

    .prologue
    .line 282
    invoke-direct {p0}, Lorg/andengine/entity/sprite/batch/SpriteBatch;->assertCapacity()V

    .line 283
    invoke-virtual {p0, p1}, Lorg/andengine/entity/sprite/batch/SpriteBatch;->assertTexture(Lorg/andengine/opengl/texture/region/ITextureRegion;)V

    .line 285
    invoke-virtual/range {p0 .. p10}, Lorg/andengine/entity/sprite/batch/SpriteBatch;->add(Lorg/andengine/opengl/texture/region/ITextureRegion;FFFFFFFFF)V

    .line 287
    iget v0, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    .line 288
    return-void
.end method

.method public draw(Lorg/andengine/opengl/texture/region/ITextureRegion;FFFFFFFFFF)V
    .locals 1
    .parameter "pTextureRegion"
    .parameter "pX"
    .parameter "pY"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pScaleX"
    .parameter "pScaleY"
    .parameter "pRed"
    .parameter "pGreen"
    .parameter "pBlue"
    .parameter "pAlpha"

    .prologue
    .line 300
    invoke-direct {p0}, Lorg/andengine/entity/sprite/batch/SpriteBatch;->assertCapacity()V

    .line 301
    invoke-virtual {p0, p1}, Lorg/andengine/entity/sprite/batch/SpriteBatch;->assertTexture(Lorg/andengine/opengl/texture/region/ITextureRegion;)V

    .line 303
    invoke-virtual/range {p0 .. p11}, Lorg/andengine/entity/sprite/batch/SpriteBatch;->add(Lorg/andengine/opengl/texture/region/ITextureRegion;FFFFFFFFFF)V

    .line 305
    iget v0, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    .line 306
    return-void
.end method

.method public draw(Lorg/andengine/opengl/texture/region/ITextureRegion;FFFFFFFFFFF)V
    .locals 1
    .parameter "pTextureRegion"
    .parameter "pX"
    .parameter "pY"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pRotation"
    .parameter "pScaleX"
    .parameter "pScaleY"
    .parameter "pRed"
    .parameter "pGreen"
    .parameter "pBlue"
    .parameter "pAlpha"

    .prologue
    .line 318
    invoke-direct {p0}, Lorg/andengine/entity/sprite/batch/SpriteBatch;->assertCapacity()V

    .line 319
    invoke-virtual {p0, p1}, Lorg/andengine/entity/sprite/batch/SpriteBatch;->assertTexture(Lorg/andengine/opengl/texture/region/ITextureRegion;)V

    .line 321
    invoke-virtual/range {p0 .. p12}, Lorg/andengine/entity/sprite/batch/SpriteBatch;->add(Lorg/andengine/opengl/texture/region/ITextureRegion;FFFFFFFFFFF)V

    .line 323
    iget v0, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    .line 324
    return-void
.end method

.method public draw(Lorg/andengine/opengl/texture/region/ITextureRegion;FFFFFFFFFFFF)V
    .locals 1
    .parameter "pTextureRegion"
    .parameter "pX1"
    .parameter "pY1"
    .parameter "pX2"
    .parameter "pY2"
    .parameter "pX3"
    .parameter "pY3"
    .parameter "pX4"
    .parameter "pY4"
    .parameter "pRed"
    .parameter "pGreen"
    .parameter "pBlue"
    .parameter "pAlpha"

    .prologue
    .line 336
    invoke-direct {p0}, Lorg/andengine/entity/sprite/batch/SpriteBatch;->assertCapacity()V

    .line 337
    invoke-virtual {p0, p1}, Lorg/andengine/entity/sprite/batch/SpriteBatch;->assertTexture(Lorg/andengine/opengl/texture/region/ITextureRegion;)V

    .line 339
    invoke-direct/range {p0 .. p13}, Lorg/andengine/entity/sprite/batch/SpriteBatch;->addInner(Lorg/andengine/opengl/texture/region/ITextureRegion;FFFFFFFFFFFF)V

    .line 341
    iget v0, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    .line 342
    return-void
.end method

.method public draw(Lorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/entity/IEntity;FF)V
    .locals 6
    .parameter "pTextureRegion"
    .parameter "pEntity"
    .parameter "pWidth"
    .parameter "pHeight"

    .prologue
    .line 387
    invoke-interface {p2}, Lorg/andengine/entity/IEntity;->getColor()Lorg/andengine/util/color/Color;

    move-result-object v0

    invoke-virtual {v0}, Lorg/andengine/util/color/Color;->getABGRPackedFloat()F

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/andengine/entity/sprite/batch/SpriteBatch;->draw(Lorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/entity/IEntity;FFF)V

    .line 388
    return-void
.end method

.method public draw(Lorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/entity/IEntity;FFF)V
    .locals 7
    .parameter "pTextureRegion"
    .parameter "pEntity"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pColorABGRPackedInt"

    .prologue
    .line 429
    invoke-interface {p2}, Lorg/andengine/entity/IEntity;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    invoke-direct {p0}, Lorg/andengine/entity/sprite/batch/SpriteBatch;->assertCapacity()V

    .line 432
    invoke-virtual {p0, p1}, Lorg/andengine/entity/sprite/batch/SpriteBatch;->assertTexture(Lorg/andengine/opengl/texture/region/ITextureRegion;)V

    .line 434
    invoke-interface {p2}, Lorg/andengine/entity/IEntity;->isRotatedOrScaledOrSkewed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 435
    invoke-interface {p2}, Lorg/andengine/entity/IEntity;->getLocalToParentTransformation()Lorg/andengine/util/adt/transformation/Transformation;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/andengine/entity/sprite/batch/SpriteBatch;->addWithPackedColor(Lorg/andengine/opengl/texture/region/ITextureRegion;FFLorg/andengine/util/adt/transformation/Transformation;F)V

    .line 440
    :goto_0
    iget v0, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    .line 442
    :cond_0
    return-void

    .line 437
    :cond_1
    invoke-interface {p2}, Lorg/andengine/entity/IEntity;->getX()F

    move-result v2

    invoke-interface {p2}, Lorg/andengine/entity/IEntity;->getY()F

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/andengine/entity/sprite/batch/SpriteBatch;->addWithPackedColor(Lorg/andengine/opengl/texture/region/ITextureRegion;FFFFF)V

    goto :goto_0
.end method

.method public draw(Lorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/entity/IEntity;FFFFFF)V
    .locals 10
    .parameter "pTextureRegion"
    .parameter "pEntity"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pRed"
    .parameter "pGreen"
    .parameter "pBlue"
    .parameter "pAlpha"

    .prologue
    .line 398
    invoke-interface {p2}, Lorg/andengine/entity/IEntity;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    invoke-direct {p0}, Lorg/andengine/entity/sprite/batch/SpriteBatch;->assertCapacity()V

    .line 401
    invoke-virtual {p0, p1}, Lorg/andengine/entity/sprite/batch/SpriteBatch;->assertTexture(Lorg/andengine/opengl/texture/region/ITextureRegion;)V

    .line 403
    invoke-interface {p2}, Lorg/andengine/entity/IEntity;->isRotatedOrScaledOrSkewed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 404
    invoke-interface {p2}, Lorg/andengine/entity/IEntity;->getLocalToParentTransformation()Lorg/andengine/util/adt/transformation/Transformation;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lorg/andengine/entity/sprite/batch/SpriteBatch;->add(Lorg/andengine/opengl/texture/region/ITextureRegion;FFLorg/andengine/util/adt/transformation/Transformation;FFFF)V

    .line 409
    :goto_0
    iget v0, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    .line 411
    :cond_0
    return-void

    .line 406
    :cond_1
    invoke-interface {p2}, Lorg/andengine/entity/IEntity;->getX()F

    move-result v2

    invoke-interface {p2}, Lorg/andengine/entity/IEntity;->getY()F

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lorg/andengine/entity/sprite/batch/SpriteBatch;->add(Lorg/andengine/opengl/texture/region/ITextureRegion;FFFFFFFF)V

    goto :goto_0
.end method

.method protected draw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V
    .locals 3
    .parameter "pGLState"
    .parameter "pCamera"

    .prologue
    .line 196
    invoke-virtual {p0}, Lorg/andengine/entity/sprite/batch/SpriteBatch;->begin()V

    .line 198
    iget-object v0, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchVertexBufferObject:Lorg/andengine/entity/sprite/batch/vbo/ISpriteBatchVertexBufferObject;

    const/4 v1, 0x4

    iget v2, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mVertices:I

    invoke-interface {v0, v1, v2}, Lorg/andengine/entity/sprite/batch/vbo/ISpriteBatchVertexBufferObject;->draw(II)V

    .line 200
    invoke-virtual {p0}, Lorg/andengine/entity/sprite/batch/SpriteBatch;->end()V

    .line 201
    return-void
.end method

.method public drawWithoutChecks(Lorg/andengine/entity/sprite/Sprite;)V
    .locals 6
    .parameter "pSprite"

    .prologue
    .line 358
    invoke-virtual {p1}, Lorg/andengine/entity/sprite/Sprite;->getTextureRegion()Lorg/andengine/opengl/texture/region/ITextureRegion;

    move-result-object v1

    invoke-virtual {p1}, Lorg/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v3

    invoke-virtual {p1}, Lorg/andengine/entity/sprite/Sprite;->getHeight()F

    move-result v4

    invoke-virtual {p1}, Lorg/andengine/entity/sprite/Sprite;->getColor()Lorg/andengine/util/color/Color;

    move-result-object v0

    invoke-virtual {v0}, Lorg/andengine/util/color/Color;->getABGRPackedFloat()F

    move-result v5

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lorg/andengine/entity/sprite/batch/SpriteBatch;->drawWithoutChecks(Lorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/entity/IEntity;FFF)V

    .line 359
    return-void
.end method

.method public drawWithoutChecks(Lorg/andengine/entity/sprite/Sprite;F)V
    .locals 6
    .parameter "pSprite"
    .parameter "pColorABGRPackedInt"

    .prologue
    .line 380
    invoke-virtual {p1}, Lorg/andengine/entity/sprite/Sprite;->getTextureRegion()Lorg/andengine/opengl/texture/region/ITextureRegion;

    move-result-object v1

    invoke-virtual {p1}, Lorg/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v3

    invoke-virtual {p1}, Lorg/andengine/entity/sprite/Sprite;->getHeight()F

    move-result v4

    move-object v0, p0

    move-object v2, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/andengine/entity/sprite/batch/SpriteBatch;->drawWithoutChecks(Lorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/entity/IEntity;FFF)V

    .line 381
    return-void
.end method

.method public drawWithoutChecks(Lorg/andengine/entity/sprite/Sprite;FFFF)V
    .locals 9
    .parameter "pSprite"
    .parameter "pRed"
    .parameter "pGreen"
    .parameter "pBlue"
    .parameter "pAlpha"

    .prologue
    .line 369
    invoke-virtual {p1}, Lorg/andengine/entity/sprite/Sprite;->getTextureRegion()Lorg/andengine/opengl/texture/region/ITextureRegion;

    move-result-object v1

    invoke-virtual {p1}, Lorg/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v3

    invoke-virtual {p1}, Lorg/andengine/entity/sprite/Sprite;->getHeight()F

    move-result v4

    move-object v0, p0

    move-object v2, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-virtual/range {v0 .. v8}, Lorg/andengine/entity/sprite/batch/SpriteBatch;->drawWithoutChecks(Lorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/entity/IEntity;FFFFFF)V

    .line 370
    return-void
.end method

.method public drawWithoutChecks(Lorg/andengine/opengl/texture/region/ITextureRegion;FFFFF)V
    .locals 1
    .parameter "pTextureRegion"
    .parameter "pX"
    .parameter "pY"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pColorABGRPackedInt"

    .prologue
    .line 273
    invoke-virtual/range {p0 .. p6}, Lorg/andengine/entity/sprite/batch/SpriteBatch;->add(Lorg/andengine/opengl/texture/region/ITextureRegion;FFFFF)V

    .line 275
    iget v0, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    .line 276
    return-void
.end method

.method public drawWithoutChecks(Lorg/andengine/opengl/texture/region/ITextureRegion;FFFFFFFF)V
    .locals 1
    .parameter "pTextureRegion"
    .parameter "pX"
    .parameter "pY"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pRed"
    .parameter "pGreen"
    .parameter "pBlue"
    .parameter "pAlpha"

    .prologue
    .line 255
    invoke-virtual/range {p0 .. p9}, Lorg/andengine/entity/sprite/batch/SpriteBatch;->add(Lorg/andengine/opengl/texture/region/ITextureRegion;FFFFFFFF)V

    .line 257
    iget v0, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    .line 258
    return-void
.end method

.method public drawWithoutChecks(Lorg/andengine/opengl/texture/region/ITextureRegion;FFFFFFFFF)V
    .locals 1
    .parameter "pTextureRegion"
    .parameter "pX"
    .parameter "pY"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pRotation"
    .parameter "pRed"
    .parameter "pGreen"
    .parameter "pBlue"
    .parameter "pAlpha"

    .prologue
    .line 291
    invoke-virtual/range {p0 .. p10}, Lorg/andengine/entity/sprite/batch/SpriteBatch;->add(Lorg/andengine/opengl/texture/region/ITextureRegion;FFFFFFFFF)V

    .line 293
    iget v0, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    .line 294
    return-void
.end method

.method public drawWithoutChecks(Lorg/andengine/opengl/texture/region/ITextureRegion;FFFFFFFFFF)V
    .locals 1
    .parameter "pTextureRegion"
    .parameter "pX"
    .parameter "pY"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pScaleX"
    .parameter "pScaleY"
    .parameter "pRed"
    .parameter "pGreen"
    .parameter "pBlue"
    .parameter "pAlpha"

    .prologue
    .line 309
    invoke-virtual/range {p0 .. p11}, Lorg/andengine/entity/sprite/batch/SpriteBatch;->add(Lorg/andengine/opengl/texture/region/ITextureRegion;FFFFFFFFFF)V

    .line 311
    iget v0, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    .line 312
    return-void
.end method

.method public drawWithoutChecks(Lorg/andengine/opengl/texture/region/ITextureRegion;FFFFFFFFFFF)V
    .locals 1
    .parameter "pTextureRegion"
    .parameter "pX"
    .parameter "pY"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pRotation"
    .parameter "pScaleX"
    .parameter "pScaleY"
    .parameter "pRed"
    .parameter "pGreen"
    .parameter "pBlue"
    .parameter "pAlpha"

    .prologue
    .line 327
    invoke-virtual/range {p0 .. p12}, Lorg/andengine/entity/sprite/batch/SpriteBatch;->add(Lorg/andengine/opengl/texture/region/ITextureRegion;FFFFFFFFFFF)V

    .line 329
    iget v0, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    .line 330
    return-void
.end method

.method public drawWithoutChecks(Lorg/andengine/opengl/texture/region/ITextureRegion;FFFFFFFFFFFF)V
    .locals 1
    .parameter "pTextureRegion"
    .parameter "pX1"
    .parameter "pY1"
    .parameter "pX2"
    .parameter "pY2"
    .parameter "pX3"
    .parameter "pY3"
    .parameter "pX4"
    .parameter "pY4"
    .parameter "pRed"
    .parameter "pGreen"
    .parameter "pBlue"
    .parameter "pAlpha"

    .prologue
    .line 345
    invoke-direct/range {p0 .. p13}, Lorg/andengine/entity/sprite/batch/SpriteBatch;->addInner(Lorg/andengine/opengl/texture/region/ITextureRegion;FFFFFFFFFFFF)V

    .line 347
    iget v0, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    .line 348
    return-void
.end method

.method public drawWithoutChecks(Lorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/entity/IEntity;FF)V
    .locals 6
    .parameter "pTextureRegion"
    .parameter "pEntity"
    .parameter "pWidth"
    .parameter "pHeight"

    .prologue
    .line 391
    invoke-interface {p2}, Lorg/andengine/entity/IEntity;->getColor()Lorg/andengine/util/color/Color;

    move-result-object v0

    invoke-virtual {v0}, Lorg/andengine/util/color/Color;->getABGRPackedFloat()F

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/andengine/entity/sprite/batch/SpriteBatch;->drawWithoutChecks(Lorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/entity/IEntity;FFF)V

    .line 392
    return-void
.end method

.method public drawWithoutChecks(Lorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/entity/IEntity;FFF)V
    .locals 7
    .parameter "pTextureRegion"
    .parameter "pEntity"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pColorABGRPackedInt"

    .prologue
    .line 445
    invoke-interface {p2}, Lorg/andengine/entity/IEntity;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    invoke-interface {p2}, Lorg/andengine/entity/IEntity;->isRotatedOrScaledOrSkewed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 447
    invoke-interface {p2}, Lorg/andengine/entity/IEntity;->getLocalToParentTransformation()Lorg/andengine/util/adt/transformation/Transformation;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/andengine/entity/sprite/batch/SpriteBatch;->addWithPackedColor(Lorg/andengine/opengl/texture/region/ITextureRegion;FFLorg/andengine/util/adt/transformation/Transformation;F)V

    .line 452
    :goto_0
    iget v0, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    .line 454
    :cond_0
    return-void

    .line 449
    :cond_1
    invoke-interface {p2}, Lorg/andengine/entity/IEntity;->getX()F

    move-result v2

    invoke-interface {p2}, Lorg/andengine/entity/IEntity;->getY()F

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/andengine/entity/sprite/batch/SpriteBatch;->addWithPackedColor(Lorg/andengine/opengl/texture/region/ITextureRegion;FFFFF)V

    goto :goto_0
.end method

.method public drawWithoutChecks(Lorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/entity/IEntity;FFFFFF)V
    .locals 10
    .parameter "pTextureRegion"
    .parameter "pEntity"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pRed"
    .parameter "pGreen"
    .parameter "pBlue"
    .parameter "pAlpha"

    .prologue
    .line 414
    invoke-interface {p2}, Lorg/andengine/entity/IEntity;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    invoke-interface {p2}, Lorg/andengine/entity/IEntity;->isRotatedOrScaledOrSkewed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 416
    invoke-interface {p2}, Lorg/andengine/entity/IEntity;->getLocalToParentTransformation()Lorg/andengine/util/adt/transformation/Transformation;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lorg/andengine/entity/sprite/batch/SpriteBatch;->add(Lorg/andengine/opengl/texture/region/ITextureRegion;FFLorg/andengine/util/adt/transformation/Transformation;FFFF)V

    .line 421
    :goto_0
    iget v0, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    .line 423
    :cond_0
    return-void

    .line 418
    :cond_1
    invoke-interface {p2}, Lorg/andengine/entity/IEntity;->getX()F

    move-result v2

    invoke-interface {p2}, Lorg/andengine/entity/IEntity;->getY()F

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lorg/andengine/entity/sprite/batch/SpriteBatch;->add(Lorg/andengine/opengl/texture/region/ITextureRegion;FFFFFFFF)V

    goto :goto_0
.end method

.method protected end()V
    .locals 0

    .prologue
    .line 240
    return-void
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    return v0
.end method

.method public getTexture()Lorg/andengine/opengl/texture/ITexture;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mTexture:Lorg/andengine/opengl/texture/ITexture;

    return-object v0
.end method

.method public getVertexBufferObject()Lorg/andengine/entity/sprite/batch/vbo/ISpriteBatchVertexBufferObject;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchVertexBufferObject:Lorg/andengine/entity/sprite/batch/vbo/ISpriteBatchVertexBufferObject;

    return-object v0
.end method

.method public bridge synthetic getVertexBufferObject()Lorg/andengine/opengl/vbo/IVertexBufferObject;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/entity/sprite/batch/SpriteBatch;->getVertexBufferObject()Lorg/andengine/entity/sprite/batch/vbo/ISpriteBatchVertexBufferObject;

    move-result-object v0

    return-object v0
.end method

.method protected onSubmit()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 461
    iget v0, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    mul-int/lit8 v0, v0, 0x6

    iput v0, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mVertices:I

    .line 463
    iget-object v0, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchVertexBufferObject:Lorg/andengine/entity/sprite/batch/vbo/ISpriteBatchVertexBufferObject;

    invoke-interface {v0}, Lorg/andengine/entity/sprite/batch/vbo/ISpriteBatchVertexBufferObject;->setDirtyOnHardware()V

    .line 465
    iput v1, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    .line 466
    iget-object v0, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchVertexBufferObject:Lorg/andengine/entity/sprite/batch/vbo/ISpriteBatchVertexBufferObject;

    invoke-interface {v0, v1}, Lorg/andengine/entity/sprite/batch/vbo/ISpriteBatchVertexBufferObject;->setBufferDataOffset(I)V

    .line 467
    return-void
.end method

.method protected onUpdateVertices()V
    .locals 0

    .prologue
    .line 178
    return-void
.end method

.method protected postDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V
    .locals 2
    .parameter "pGLState"
    .parameter "pCamera"

    .prologue
    .line 205
    iget-object v0, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchVertexBufferObject:Lorg/andengine/entity/sprite/batch/vbo/ISpriteBatchVertexBufferObject;

    iget-object v1, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mShaderProgram:Lorg/andengine/opengl/shader/ShaderProgram;

    invoke-interface {v0, p1, v1}, Lorg/andengine/entity/sprite/batch/vbo/ISpriteBatchVertexBufferObject;->unbind(Lorg/andengine/opengl/util/GLState;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 207
    iget-boolean v0, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mBlendingEnabled:Z

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {p1}, Lorg/andengine/opengl/util/GLState;->disableBlend()Z

    .line 211
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/andengine/entity/shape/Shape;->postDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V

    .line 212
    return-void
.end method

.method protected preDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V
    .locals 2
    .parameter "pGLState"
    .parameter "pCamera"

    .prologue
    .line 182
    invoke-super {p0, p1, p2}, Lorg/andengine/entity/shape/Shape;->preDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V

    .line 184
    iget-boolean v0, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mBlendingEnabled:Z

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {p1}, Lorg/andengine/opengl/util/GLState;->enableBlend()Z

    .line 186
    iget v0, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mBlendFunctionSource:I

    iget v1, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mBlendFunctionDestination:I

    invoke-virtual {p1, v0, v1}, Lorg/andengine/opengl/util/GLState;->blendFunction(II)V

    .line 189
    :cond_0
    iget-object v0, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mTexture:Lorg/andengine/opengl/texture/ITexture;

    invoke-interface {v0, p1}, Lorg/andengine/opengl/texture/ITexture;->bind(Lorg/andengine/opengl/util/GLState;)V

    .line 191
    iget-object v0, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchVertexBufferObject:Lorg/andengine/entity/sprite/batch/vbo/ISpriteBatchVertexBufferObject;

    iget-object v1, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mShaderProgram:Lorg/andengine/opengl/shader/ShaderProgram;

    invoke-interface {v0, p1, v1}, Lorg/andengine/entity/sprite/batch/vbo/ISpriteBatchVertexBufferObject;->bind(Lorg/andengine/opengl/util/GLState;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 192
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 216
    invoke-super {p0}, Lorg/andengine/entity/shape/Shape;->reset()V

    .line 218
    iget-object v0, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mTexture:Lorg/andengine/opengl/texture/ITexture;

    invoke-virtual {p0, v0}, Lorg/andengine/entity/sprite/batch/SpriteBatch;->initBlendFunction(Lorg/andengine/opengl/texture/ITexture;)V

    .line 219
    return-void
.end method

.method public setIndex(I)V
    .locals 2
    .parameter "pIndex"

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lorg/andengine/entity/sprite/batch/SpriteBatch;->assertCapacity(I)V

    .line 149
    iput p1, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    .line 151
    mul-int/lit8 v0, p1, 0x1e

    .line 153
    .local v0, bufferDataOffset:I
    iget-object v1, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchVertexBufferObject:Lorg/andengine/entity/sprite/batch/vbo/ISpriteBatchVertexBufferObject;

    invoke-interface {v1, v0}, Lorg/andengine/entity/sprite/batch/vbo/ISpriteBatchVertexBufferObject;->setBufferDataOffset(I)V

    .line 154
    return-void
.end method

.method public setTexture(Lorg/andengine/opengl/texture/ITexture;)V
    .locals 0
    .parameter "pTexture"

    .prologue
    .line 143
    iput-object p1, p0, Lorg/andengine/entity/sprite/batch/SpriteBatch;->mTexture:Lorg/andengine/opengl/texture/ITexture;

    .line 144
    return-void
.end method

.method public submit()V
    .locals 0

    .prologue
    .line 457
    invoke-virtual {p0}, Lorg/andengine/entity/sprite/batch/SpriteBatch;->onSubmit()V

    .line 458
    return-void
.end method
