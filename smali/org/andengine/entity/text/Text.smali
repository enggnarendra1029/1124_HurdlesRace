.class public Lorg/andengine/entity/text/Text;
.super Lorg/andengine/entity/shape/RectangularShape;
.source "Text.java"


# static fields
.field public static final COLOR_INDEX:I = 0x2

.field public static final LEADING_DEFAULT:F = 0.0f

.field public static final LETTER_SIZE:I = 0x1e

.field public static final TEXTURECOORDINATES_INDEX_U:I = 0x3

.field public static final TEXTURECOORDINATES_INDEX_V:I = 0x4

.field public static final VERTEXBUFFEROBJECTATTRIBUTES_DEFAULT:Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes; = null

.field public static final VERTEX_INDEX_X:I = 0x0

.field public static final VERTEX_INDEX_Y:I = 0x1

.field public static final VERTEX_SIZE:I = 0x5

.field public static final VERTEX_STRIDE:I = 0x14

.field public static final VERTICES_PER_LETTER:I = 0x6


# instance fields
.field protected final mCharactersMaximum:I

.field protected mCharactersToDraw:I

.field protected final mFont:Lorg/andengine/opengl/font/IFont;

.field protected mLineAlignmentWidth:F

.field protected mLineWidthMaximum:F

.field protected mLineWidths:Lorg/andengine/util/adt/list/IFloatList;

.field protected mLines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field protected mText:Ljava/lang/CharSequence;

.field protected mTextOptions:Lorg/andengine/entity/text/TextOptions;

.field protected final mTextVertexBufferObject:Lorg/andengine/entity/text/vbo/ITextVertexBufferObject;

.field protected final mVertexCount:I

.field protected mVertexCountToDraw:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/16 v4, 0x1406

    const/4 v11, 0x3

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

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
    sput-object v0, Lorg/andengine/entity/text/Text;->VERTEXBUFFEROBJECTATTRIBUTES_DEFAULT:Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;

    .line 58
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;ILorg/andengine/entity/text/TextOptions;Lorg/andengine/entity/text/vbo/ITextVertexBufferObject;)V
    .locals 9
    .parameter "pX"
    .parameter "pY"
    .parameter "pFont"
    .parameter "pText"
    .parameter "pCharactersMaximum"
    .parameter "pTextOptions"
    .parameter "pTextVertexBufferObject"

    .prologue
    .line 146
    invoke-static {}, Lorg/andengine/opengl/shader/PositionColorTextureCoordinatesShaderProgram;->getInstance()Lorg/andengine/opengl/shader/PositionColorTextureCoordinatesShaderProgram;

    move-result-object v8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lorg/andengine/entity/text/Text;-><init>(FFLorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;ILorg/andengine/entity/text/TextOptions;Lorg/andengine/entity/text/vbo/ITextVertexBufferObject;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 147
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;ILorg/andengine/entity/text/TextOptions;Lorg/andengine/entity/text/vbo/ITextVertexBufferObject;Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 7
    .parameter "pX"
    .parameter "pY"
    .parameter "pFont"
    .parameter "pText"
    .parameter "pCharactersMaximum"
    .parameter "pTextOptions"
    .parameter "pTextVertexBufferObject"
    .parameter "pShaderProgram"

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 150
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move-object v5, p8

    invoke-direct/range {v0 .. v5}, Lorg/andengine/entity/shape/RectangularShape;-><init>(FFFFLorg/andengine/opengl/shader/ShaderProgram;)V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/andengine/entity/text/Text;->mLines:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Lorg/andengine/util/adt/list/FloatArrayList;

    invoke-direct {v0, v6}, Lorg/andengine/util/adt/list/FloatArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/andengine/entity/text/Text;->mLineWidths:Lorg/andengine/util/adt/list/IFloatList;

    .line 152
    iput-object p3, p0, Lorg/andengine/entity/text/Text;->mFont:Lorg/andengine/opengl/font/IFont;

    .line 153
    iput-object p6, p0, Lorg/andengine/entity/text/Text;->mTextOptions:Lorg/andengine/entity/text/TextOptions;

    .line 154
    iput p5, p0, Lorg/andengine/entity/text/Text;->mCharactersMaximum:I

    .line 155
    iget v0, p0, Lorg/andengine/entity/text/Text;->mCharactersMaximum:I

    mul-int/lit8 v0, v0, 0x6

    iput v0, p0, Lorg/andengine/entity/text/Text;->mVertexCount:I

    .line 156
    iput-object p7, p0, Lorg/andengine/entity/text/Text;->mTextVertexBufferObject:Lorg/andengine/entity/text/vbo/ITextVertexBufferObject;

    .line 158
    invoke-virtual {p0}, Lorg/andengine/entity/text/Text;->onUpdateColor()V

    .line 159
    invoke-virtual {p0, p4}, Lorg/andengine/entity/text/Text;->setText(Ljava/lang/CharSequence;)V

    .line 161
    invoke-virtual {p0, v6}, Lorg/andengine/entity/text/Text;->setBlendingEnabled(Z)V

    .line 162
    iget-object v0, p0, Lorg/andengine/entity/text/Text;->mFont:Lorg/andengine/opengl/font/IFont;

    invoke-interface {v0}, Lorg/andengine/opengl/font/IFont;->getTexture()Lorg/andengine/opengl/texture/ITexture;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/andengine/entity/text/Text;->initBlendFunction(Lorg/andengine/opengl/texture/ITexture;)V

    .line 163
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;ILorg/andengine/entity/text/TextOptions;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;)V
    .locals 9
    .parameter "pX"
    .parameter "pY"
    .parameter "pFont"
    .parameter "pText"
    .parameter "pCharactersMaximum"
    .parameter "pTextOptions"
    .parameter "pVertexBufferObjectManager"

    .prologue
    .line 134
    sget-object v8, Lorg/andengine/opengl/vbo/DrawType;->STATIC:Lorg/andengine/opengl/vbo/DrawType;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lorg/andengine/entity/text/Text;-><init>(FFLorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;ILorg/andengine/entity/text/TextOptions;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V

    .line 135
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;ILorg/andengine/entity/text/TextOptions;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V
    .locals 9
    .parameter "pX"
    .parameter "pY"
    .parameter "pFont"
    .parameter "pText"
    .parameter "pCharactersMaximum"
    .parameter "pTextOptions"
    .parameter "pVertexBufferObjectManager"
    .parameter "pDrawType"

    .prologue
    .line 138
    new-instance v0, Lorg/andengine/entity/text/vbo/HighPerformanceTextVertexBufferObject;

    mul-int/lit8 v2, p5, 0x1e

    const/4 v4, 0x1

    sget-object v5, Lorg/andengine/entity/text/Text;->VERTEXBUFFEROBJECTATTRIBUTES_DEFAULT:Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;

    move-object/from16 v1, p7

    move-object/from16 v3, p8

    invoke-direct/range {v0 .. v5}, Lorg/andengine/entity/text/vbo/HighPerformanceTextVertexBufferObject;-><init>(Lorg/andengine/opengl/vbo/VertexBufferObjectManager;ILorg/andengine/opengl/vbo/DrawType;ZLorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;)V

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    move-object v8, v0

    invoke-direct/range {v1 .. v8}, Lorg/andengine/entity/text/Text;-><init>(FFLorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;ILorg/andengine/entity/text/TextOptions;Lorg/andengine/entity/text/vbo/ITextVertexBufferObject;)V

    .line 139
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;ILorg/andengine/entity/text/TextOptions;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 10
    .parameter "pX"
    .parameter "pY"
    .parameter "pFont"
    .parameter "pText"
    .parameter "pCharactersMaximum"
    .parameter "pTextOptions"
    .parameter "pVertexBufferObjectManager"
    .parameter "pDrawType"
    .parameter "pShaderProgram"

    .prologue
    .line 142
    new-instance v0, Lorg/andengine/entity/text/vbo/HighPerformanceTextVertexBufferObject;

    mul-int/lit8 v2, p5, 0x1e

    const/4 v4, 0x1

    sget-object v5, Lorg/andengine/entity/text/Text;->VERTEXBUFFEROBJECTATTRIBUTES_DEFAULT:Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;

    move-object/from16 v1, p7

    move-object/from16 v3, p8

    invoke-direct/range {v0 .. v5}, Lorg/andengine/entity/text/vbo/HighPerformanceTextVertexBufferObject;-><init>(Lorg/andengine/opengl/vbo/VertexBufferObjectManager;ILorg/andengine/opengl/vbo/DrawType;ZLorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;)V

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move-object v8, v0

    move-object/from16 v9, p9

    invoke-direct/range {v1 .. v9}, Lorg/andengine/entity/text/Text;-><init>(FFLorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;ILorg/andengine/entity/text/TextOptions;Lorg/andengine/entity/text/vbo/ITextVertexBufferObject;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 143
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;ILorg/andengine/opengl/vbo/VertexBufferObjectManager;)V
    .locals 8
    .parameter "pX"
    .parameter "pY"
    .parameter "pFont"
    .parameter "pText"
    .parameter "pCharactersMaximum"
    .parameter "pVertexBufferObjectManager"

    .prologue
    .line 118
    sget-object v7, Lorg/andengine/opengl/vbo/DrawType;->STATIC:Lorg/andengine/opengl/vbo/DrawType;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/andengine/entity/text/Text;-><init>(FFLorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;ILorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V

    .line 119
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;ILorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 9
    .parameter "pX"
    .parameter "pY"
    .parameter "pFont"
    .parameter "pText"
    .parameter "pCharactersMaximum"
    .parameter "pVertexBufferObjectManager"
    .parameter "pShaderProgram"

    .prologue
    .line 122
    sget-object v7, Lorg/andengine/opengl/vbo/DrawType;->STATIC:Lorg/andengine/opengl/vbo/DrawType;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/andengine/entity/text/Text;-><init>(FFLorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;ILorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 123
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;ILorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V
    .locals 9
    .parameter "pX"
    .parameter "pY"
    .parameter "pFont"
    .parameter "pText"
    .parameter "pCharactersMaximum"
    .parameter "pVertexBufferObjectManager"
    .parameter "pDrawType"

    .prologue
    .line 126
    new-instance v6, Lorg/andengine/entity/text/TextOptions;

    invoke-direct {v6}, Lorg/andengine/entity/text/TextOptions;-><init>()V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/andengine/entity/text/Text;-><init>(FFLorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;ILorg/andengine/entity/text/TextOptions;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V

    .line 127
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;ILorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 10
    .parameter "pX"
    .parameter "pY"
    .parameter "pFont"
    .parameter "pText"
    .parameter "pCharactersMaximum"
    .parameter "pVertexBufferObjectManager"
    .parameter "pDrawType"
    .parameter "pShaderProgram"

    .prologue
    .line 130
    new-instance v6, Lorg/andengine/entity/text/TextOptions;

    invoke-direct {v6}, Lorg/andengine/entity/text/TextOptions;-><init>()V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lorg/andengine/entity/text/Text;-><init>(FFLorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;ILorg/andengine/entity/text/TextOptions;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 131
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;Lorg/andengine/entity/text/TextOptions;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;)V
    .locals 8
    .parameter "pX"
    .parameter "pY"
    .parameter "pFont"
    .parameter "pText"
    .parameter "pTextOptions"
    .parameter "pVertexBufferObjectManager"

    .prologue
    .line 102
    sget-object v7, Lorg/andengine/opengl/vbo/DrawType;->STATIC:Lorg/andengine/opengl/vbo/DrawType;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/andengine/entity/text/Text;-><init>(FFLorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;Lorg/andengine/entity/text/TextOptions;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V

    .line 103
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;Lorg/andengine/entity/text/TextOptions;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 9
    .parameter "pX"
    .parameter "pY"
    .parameter "pFont"
    .parameter "pText"
    .parameter "pTextOptions"
    .parameter "pVertexBufferObjectManager"
    .parameter "pShaderProgram"

    .prologue
    .line 106
    sget-object v7, Lorg/andengine/opengl/vbo/DrawType;->STATIC:Lorg/andengine/opengl/vbo/DrawType;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/andengine/entity/text/Text;-><init>(FFLorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;Lorg/andengine/entity/text/TextOptions;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 107
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;Lorg/andengine/entity/text/TextOptions;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V
    .locals 9
    .parameter "pX"
    .parameter "pY"
    .parameter "pFont"
    .parameter "pText"
    .parameter "pTextOptions"
    .parameter "pVertexBufferObjectManager"
    .parameter "pDrawType"

    .prologue
    .line 110
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/andengine/entity/text/Text;-><init>(FFLorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;ILorg/andengine/entity/text/TextOptions;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V

    .line 111
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;Lorg/andengine/entity/text/TextOptions;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 10
    .parameter "pX"
    .parameter "pY"
    .parameter "pFont"
    .parameter "pText"
    .parameter "pTextOptions"
    .parameter "pVertexBufferObjectManager"
    .parameter "pDrawType"
    .parameter "pShaderProgram"

    .prologue
    .line 114
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lorg/andengine/entity/text/Text;-><init>(FFLorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;ILorg/andengine/entity/text/TextOptions;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 115
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;)V
    .locals 7
    .parameter "pX"
    .parameter "pY"
    .parameter "pFont"
    .parameter "pText"
    .parameter "pVertexBufferObjectManager"

    .prologue
    .line 86
    sget-object v6, Lorg/andengine/opengl/vbo/DrawType;->STATIC:Lorg/andengine/opengl/vbo/DrawType;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/andengine/entity/text/Text;-><init>(FFLorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V

    .line 87
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 8
    .parameter "pX"
    .parameter "pY"
    .parameter "pFont"
    .parameter "pText"
    .parameter "pVertexBufferObjectManager"
    .parameter "pShaderProgram"

    .prologue
    .line 90
    sget-object v6, Lorg/andengine/opengl/vbo/DrawType;->STATIC:Lorg/andengine/opengl/vbo/DrawType;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/andengine/entity/text/Text;-><init>(FFLorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 91
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V
    .locals 8
    .parameter "pX"
    .parameter "pY"
    .parameter "pFont"
    .parameter "pText"
    .parameter "pVertexBufferObjectManager"
    .parameter "pDrawType"

    .prologue
    .line 94
    new-instance v5, Lorg/andengine/entity/text/TextOptions;

    invoke-direct {v5}, Lorg/andengine/entity/text/TextOptions;-><init>()V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/andengine/entity/text/Text;-><init>(FFLorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;Lorg/andengine/entity/text/TextOptions;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V

    .line 95
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 9
    .parameter "pX"
    .parameter "pY"
    .parameter "pFont"
    .parameter "pText"
    .parameter "pVertexBufferObjectManager"
    .parameter "pDrawType"
    .parameter "pShaderProgram"

    .prologue
    .line 98
    new-instance v5, Lorg/andengine/entity/text/TextOptions;

    invoke-direct {v5}, Lorg/andengine/entity/text/TextOptions;-><init>()V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/andengine/entity/text/Text;-><init>(FFLorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;Lorg/andengine/entity/text/TextOptions;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 99
    return-void
.end method


# virtual methods
.method protected draw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V
    .locals 3
    .parameter "pGLState"
    .parameter "pCamera"

    .prologue
    .line 318
    iget-object v0, p0, Lorg/andengine/entity/text/Text;->mTextVertexBufferObject:Lorg/andengine/entity/text/vbo/ITextVertexBufferObject;

    const/4 v1, 0x4

    iget v2, p0, Lorg/andengine/entity/text/Text;->mVertexCountToDraw:I

    invoke-interface {v0, v1, v2}, Lorg/andengine/entity/text/vbo/ITextVertexBufferObject;->draw(II)V

    .line 319
    return-void
.end method

.method public getAutoWrap()Lorg/andengine/entity/text/AutoWrap;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lorg/andengine/entity/text/Text;->mTextOptions:Lorg/andengine/entity/text/TextOptions;

    iget-object v0, v0, Lorg/andengine/entity/text/TextOptions;->mAutoWrap:Lorg/andengine/entity/text/AutoWrap;

    return-object v0
.end method

.method public getAutoWrapWidth()F
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lorg/andengine/entity/text/Text;->mTextOptions:Lorg/andengine/entity/text/TextOptions;

    iget v0, v0, Lorg/andengine/entity/text/TextOptions;->mAutoWrapWidth:F

    return v0
.end method

.method public getCharactersMaximum()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lorg/andengine/entity/text/Text;->mCharactersMaximum:I

    return v0
.end method

.method public getFont()Lorg/andengine/opengl/font/IFont;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lorg/andengine/entity/text/Text;->mFont:Lorg/andengine/opengl/font/IFont;

    return-object v0
.end method

.method public getHorizontalAlign()Lorg/andengine/util/HorizontalAlign;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lorg/andengine/entity/text/Text;->mTextOptions:Lorg/andengine/entity/text/TextOptions;

    iget-object v0, v0, Lorg/andengine/entity/text/TextOptions;->mHorizontalAlign:Lorg/andengine/util/HorizontalAlign;

    return-object v0
.end method

.method public getLeading()F
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lorg/andengine/entity/text/Text;->mTextOptions:Lorg/andengine/entity/text/TextOptions;

    iget v0, v0, Lorg/andengine/entity/text/TextOptions;->mLeading:F

    return v0
.end method

.method public getLineAlignmentWidth()F
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lorg/andengine/entity/text/Text;->mLineAlignmentWidth:F

    return v0
.end method

.method public getLineWidthMaximum()F
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lorg/andengine/entity/text/Text;->mLineWidthMaximum:F

    return v0
.end method

.method public getLineWidths()Lorg/andengine/util/adt/list/IFloatList;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lorg/andengine/entity/text/Text;->mLineWidths:Lorg/andengine/util/adt/list/IFloatList;

    return-object v0
.end method

.method public getLines()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Lorg/andengine/entity/text/Text;->mLines:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lorg/andengine/entity/text/Text;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextOptions()Lorg/andengine/entity/text/TextOptions;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lorg/andengine/entity/text/Text;->mTextOptions:Lorg/andengine/entity/text/TextOptions;

    return-object v0
.end method

.method public getVertexBufferObject()Lorg/andengine/entity/text/vbo/ITextVertexBufferObject;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lorg/andengine/entity/text/Text;->mTextVertexBufferObject:Lorg/andengine/entity/text/vbo/ITextVertexBufferObject;

    return-object v0
.end method

.method public bridge synthetic getVertexBufferObject()Lorg/andengine/opengl/vbo/IVertexBufferObject;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/entity/text/Text;->getVertexBufferObject()Lorg/andengine/entity/text/vbo/ITextVertexBufferObject;

    move-result-object v0

    return-object v0
.end method

.method public invalidateText()V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lorg/andengine/entity/text/Text;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lorg/andengine/entity/text/Text;->setText(Ljava/lang/CharSequence;)V

    .line 344
    return-void
.end method

.method protected onUpdateColor()V
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lorg/andengine/entity/text/Text;->mTextVertexBufferObject:Lorg/andengine/entity/text/vbo/ITextVertexBufferObject;

    invoke-interface {v0, p0}, Lorg/andengine/entity/text/vbo/ITextVertexBufferObject;->onUpdateColor(Lorg/andengine/entity/text/Text;)V

    .line 331
    return-void
.end method

.method protected onUpdateVertices()V
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lorg/andengine/entity/text/Text;->mTextVertexBufferObject:Lorg/andengine/entity/text/vbo/ITextVertexBufferObject;

    invoke-interface {v0, p0}, Lorg/andengine/entity/text/vbo/ITextVertexBufferObject;->onUpdateVertices(Lorg/andengine/entity/text/Text;)V

    .line 336
    return-void
.end method

.method protected postDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V
    .locals 2
    .parameter "pGLState"
    .parameter "pCamera"

    .prologue
    .line 323
    iget-object v0, p0, Lorg/andengine/entity/text/Text;->mTextVertexBufferObject:Lorg/andengine/entity/text/vbo/ITextVertexBufferObject;

    iget-object v1, p0, Lorg/andengine/entity/text/Text;->mShaderProgram:Lorg/andengine/opengl/shader/ShaderProgram;

    invoke-interface {v0, p1, v1}, Lorg/andengine/entity/text/vbo/ITextVertexBufferObject;->unbind(Lorg/andengine/opengl/util/GLState;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 325
    invoke-super {p0, p1, p2}, Lorg/andengine/entity/shape/RectangularShape;->postDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V

    .line 326
    return-void
.end method

.method protected preDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V
    .locals 2
    .parameter "pGLState"
    .parameter "pCamera"

    .prologue
    .line 309
    invoke-super {p0, p1, p2}, Lorg/andengine/entity/shape/RectangularShape;->preDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V

    .line 311
    iget-object v0, p0, Lorg/andengine/entity/text/Text;->mFont:Lorg/andengine/opengl/font/IFont;

    invoke-interface {v0}, Lorg/andengine/opengl/font/IFont;->getTexture()Lorg/andengine/opengl/texture/ITexture;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/andengine/opengl/texture/ITexture;->bind(Lorg/andengine/opengl/util/GLState;)V

    .line 313
    iget-object v0, p0, Lorg/andengine/entity/text/Text;->mTextVertexBufferObject:Lorg/andengine/entity/text/vbo/ITextVertexBufferObject;

    iget-object v1, p0, Lorg/andengine/entity/text/Text;->mShaderProgram:Lorg/andengine/opengl/shader/ShaderProgram;

    invoke-interface {v0, p1, v1}, Lorg/andengine/entity/text/vbo/ITextVertexBufferObject;->bind(Lorg/andengine/opengl/util/GLState;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 314
    return-void
.end method

.method public setAutoWrap(Lorg/andengine/entity/text/AutoWrap;)V
    .locals 1
    .parameter "pAutoWrap"

    .prologue
    .line 267
    iget-object v0, p0, Lorg/andengine/entity/text/Text;->mTextOptions:Lorg/andengine/entity/text/TextOptions;

    iput-object p1, v0, Lorg/andengine/entity/text/TextOptions;->mAutoWrap:Lorg/andengine/entity/text/AutoWrap;

    .line 269
    invoke-virtual {p0}, Lorg/andengine/entity/text/Text;->invalidateText()V

    .line 270
    return-void
.end method

.method public setAutoWrapWidth(F)V
    .locals 1
    .parameter "pAutoWrapWidth"

    .prologue
    .line 277
    iget-object v0, p0, Lorg/andengine/entity/text/Text;->mTextOptions:Lorg/andengine/entity/text/TextOptions;

    iput p1, v0, Lorg/andengine/entity/text/TextOptions;->mAutoWrapWidth:F

    .line 279
    invoke-virtual {p0}, Lorg/andengine/entity/text/Text;->invalidateText()V

    .line 280
    return-void
.end method

.method public setCharactersToDraw(I)V
    .locals 3
    .parameter "pCharactersToDraw"

    .prologue
    .line 291
    iget v0, p0, Lorg/andengine/entity/text/Text;->mCharactersMaximum:I

    if-le p1, v0, :cond_0

    .line 292
    new-instance v0, Lorg/andengine/entity/text/exception/OutOfCharactersException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Characters: maximum: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/andengine/entity/text/Text;->mCharactersMaximum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' required: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/andengine/entity/text/exception/OutOfCharactersException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_0
    iput p1, p0, Lorg/andengine/entity/text/Text;->mCharactersToDraw:I

    .line 295
    mul-int/lit8 v0, p1, 0x6

    iput v0, p0, Lorg/andengine/entity/text/Text;->mVertexCountToDraw:I

    .line 296
    return-void
.end method

.method public setHorizontalAlign(Lorg/andengine/util/HorizontalAlign;)V
    .locals 1
    .parameter "pHorizontalAlign"

    .prologue
    .line 257
    iget-object v0, p0, Lorg/andengine/entity/text/Text;->mTextOptions:Lorg/andengine/entity/text/TextOptions;

    iput-object p1, v0, Lorg/andengine/entity/text/TextOptions;->mHorizontalAlign:Lorg/andengine/util/HorizontalAlign;

    .line 259
    invoke-virtual {p0}, Lorg/andengine/entity/text/Text;->invalidateText()V

    .line 260
    return-void
.end method

.method public setLeading(F)V
    .locals 1
    .parameter "pLeading"

    .prologue
    .line 247
    iget-object v0, p0, Lorg/andengine/entity/text/Text;->mTextOptions:Lorg/andengine/entity/text/TextOptions;

    iput p1, v0, Lorg/andengine/entity/text/TextOptions;->mLeading:F

    .line 249
    invoke-virtual {p0}, Lorg/andengine/entity/text/Text;->invalidateText()V

    .line 250
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 11
    .parameter "pText"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/entity/text/exception/OutOfCharactersException;
        }
    .end annotation

    .prologue
    const/high16 v10, 0x3f00

    .line 186
    iput-object p1, p0, Lorg/andengine/entity/text/Text;->mText:Ljava/lang/CharSequence;

    .line 187
    iget-object v0, p0, Lorg/andengine/entity/text/Text;->mFont:Lorg/andengine/opengl/font/IFont;

    .line 189
    .local v0, font:Lorg/andengine/opengl/font/IFont;
    iget-object v5, p0, Lorg/andengine/entity/text/Text;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 190
    iget-object v5, p0, Lorg/andengine/entity/text/Text;->mLineWidths:Lorg/andengine/util/adt/list/IFloatList;

    invoke-interface {v5}, Lorg/andengine/util/adt/list/IFloatList;->clear()V

    .line 192
    iget-object v5, p0, Lorg/andengine/entity/text/Text;->mTextOptions:Lorg/andengine/entity/text/TextOptions;

    iget-object v5, v5, Lorg/andengine/entity/text/TextOptions;->mAutoWrap:Lorg/andengine/entity/text/AutoWrap;

    sget-object v6, Lorg/andengine/entity/text/AutoWrap;->NONE:Lorg/andengine/entity/text/AutoWrap;

    if-ne v5, v6, :cond_0

    .line 193
    iget-object v5, p0, Lorg/andengine/entity/text/Text;->mText:Ljava/lang/CharSequence;

    iget-object v6, p0, Lorg/andengine/entity/text/Text;->mLines:Ljava/util/ArrayList;

    invoke-static {v5, v6}, Lorg/andengine/opengl/font/FontUtils;->splitLines(Ljava/lang/CharSequence;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    iput-object v5, p0, Lorg/andengine/entity/text/Text;->mLines:Ljava/util/ArrayList;

    .line 198
    :goto_0
    iget-object v5, p0, Lorg/andengine/entity/text/Text;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 199
    .local v2, lineCount:I
    const/4 v4, 0x0

    .line 200
    .local v4, maximumLineWidth:F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-lt v1, v2, :cond_1

    .line 206
    iput v4, p0, Lorg/andengine/entity/text/Text;->mLineWidthMaximum:F

    .line 208
    iget-object v5, p0, Lorg/andengine/entity/text/Text;->mTextOptions:Lorg/andengine/entity/text/TextOptions;

    iget-object v5, v5, Lorg/andengine/entity/text/TextOptions;->mAutoWrap:Lorg/andengine/entity/text/AutoWrap;

    sget-object v6, Lorg/andengine/entity/text/AutoWrap;->NONE:Lorg/andengine/entity/text/AutoWrap;

    if-ne v5, v6, :cond_2

    .line 209
    iget v5, p0, Lorg/andengine/entity/text/Text;->mLineWidthMaximum:F

    iput v5, p0, Lorg/andengine/entity/text/Text;->mLineAlignmentWidth:F

    .line 214
    :goto_2
    iget v5, p0, Lorg/andengine/entity/text/Text;->mLineAlignmentWidth:F

    iput v5, p0, Lorg/andengine/entity/shape/RectangularShape;->mWidth:F

    .line 215
    int-to-float v5, v2

    invoke-interface {v0}, Lorg/andengine/opengl/font/IFont;->getLineHeight()F

    move-result v6

    mul-float/2addr v5, v6

    add-int/lit8 v6, v2, -0x1

    int-to-float v6, v6

    iget-object v7, p0, Lorg/andengine/entity/text/Text;->mTextOptions:Lorg/andengine/entity/text/TextOptions;

    iget v7, v7, Lorg/andengine/entity/text/TextOptions;->mLeading:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, p0, Lorg/andengine/entity/shape/RectangularShape;->mHeight:F

    .line 217
    iget v5, p0, Lorg/andengine/entity/shape/RectangularShape;->mWidth:F

    mul-float/2addr v5, v10

    iput v5, p0, Lorg/andengine/entity/text/Text;->mRotationCenterX:F

    .line 218
    iget v5, p0, Lorg/andengine/entity/shape/RectangularShape;->mHeight:F

    mul-float/2addr v5, v10

    iput v5, p0, Lorg/andengine/entity/text/Text;->mRotationCenterY:F

    .line 220
    iget v5, p0, Lorg/andengine/entity/text/Text;->mRotationCenterX:F

    iput v5, p0, Lorg/andengine/entity/text/Text;->mScaleCenterX:F

    .line 221
    iget v5, p0, Lorg/andengine/entity/text/Text;->mRotationCenterY:F

    iput v5, p0, Lorg/andengine/entity/text/Text;->mScaleCenterY:F

    .line 223
    invoke-virtual {p0}, Lorg/andengine/entity/text/Text;->onUpdateVertices()V

    .line 224
    return-void

    .line 195
    .end local v1           #i:I
    .end local v2           #lineCount:I
    .end local v4           #maximumLineWidth:F
    :cond_0
    iget-object v5, p0, Lorg/andengine/entity/text/Text;->mFont:Lorg/andengine/opengl/font/IFont;

    iget-object v6, p0, Lorg/andengine/entity/text/Text;->mText:Ljava/lang/CharSequence;

    iget-object v7, p0, Lorg/andengine/entity/text/Text;->mLines:Ljava/util/ArrayList;

    iget-object v8, p0, Lorg/andengine/entity/text/Text;->mTextOptions:Lorg/andengine/entity/text/TextOptions;

    iget-object v8, v8, Lorg/andengine/entity/text/TextOptions;->mAutoWrap:Lorg/andengine/entity/text/AutoWrap;

    iget-object v9, p0, Lorg/andengine/entity/text/Text;->mTextOptions:Lorg/andengine/entity/text/TextOptions;

    iget v9, v9, Lorg/andengine/entity/text/TextOptions;->mAutoWrapWidth:F

    invoke-static {v5, v6, v7, v8, v9}, Lorg/andengine/opengl/font/FontUtils;->splitLines(Lorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;Ljava/util/List;Lorg/andengine/entity/text/AutoWrap;F)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    iput-object v5, p0, Lorg/andengine/entity/text/Text;->mLines:Ljava/util/ArrayList;

    goto :goto_0

    .line 201
    .restart local v1       #i:I
    .restart local v2       #lineCount:I
    .restart local v4       #maximumLineWidth:F
    :cond_1
    iget-object v5, p0, Lorg/andengine/entity/text/Text;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v0, v5}, Lorg/andengine/opengl/font/FontUtils;->measureText(Lorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;)F

    move-result v3

    .line 202
    .local v3, lineWidth:F
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 204
    iget-object v5, p0, Lorg/andengine/entity/text/Text;->mLineWidths:Lorg/andengine/util/adt/list/IFloatList;

    invoke-interface {v5, v3}, Lorg/andengine/util/adt/list/IFloatList;->add(F)V

    .line 200
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 211
    .end local v3           #lineWidth:F
    :cond_2
    iget-object v5, p0, Lorg/andengine/entity/text/Text;->mTextOptions:Lorg/andengine/entity/text/TextOptions;

    iget v5, v5, Lorg/andengine/entity/text/TextOptions;->mAutoWrapWidth:F

    iput v5, p0, Lorg/andengine/entity/text/Text;->mLineAlignmentWidth:F

    goto :goto_2
.end method

.method public setTextOptions(Lorg/andengine/entity/text/TextOptions;)V
    .locals 0
    .parameter "pTextOptions"

    .prologue
    .line 287
    iput-object p1, p0, Lorg/andengine/entity/text/Text;->mTextOptions:Lorg/andengine/entity/text/TextOptions;

    .line 288
    return-void
.end method
