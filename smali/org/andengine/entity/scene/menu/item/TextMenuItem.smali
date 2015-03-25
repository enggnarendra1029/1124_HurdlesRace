.class public Lorg/andengine/entity/scene/menu/item/TextMenuItem;
.super Lorg/andengine/entity/text/Text;
.source "TextMenuItem.java"

# interfaces
.implements Lorg/andengine/entity/scene/menu/item/IMenuItem;


# instance fields
.field private final mID:I


# direct methods
.method public constructor <init>(ILorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;ILorg/andengine/entity/text/TextOptions;Lorg/andengine/entity/text/vbo/ITextVertexBufferObject;)V
    .locals 8
    .parameter "pID"
    .parameter "pFont"
    .parameter "pText"
    .parameter "pCharactersMaximum"
    .parameter "pTextOptions"
    .parameter "pTextVertexBufferObject"

    .prologue
    const/4 v1, 0x0

    .line 124
    move-object v0, p0

    move v2, v1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/andengine/entity/text/Text;-><init>(FFLorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;ILorg/andengine/entity/text/TextOptions;Lorg/andengine/entity/text/vbo/ITextVertexBufferObject;)V

    .line 126
    iput p1, p0, Lorg/andengine/entity/scene/menu/item/TextMenuItem;->mID:I

    .line 127
    return-void
.end method

.method public constructor <init>(ILorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;ILorg/andengine/entity/text/TextOptions;Lorg/andengine/entity/text/vbo/ITextVertexBufferObject;Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 9
    .parameter "pID"
    .parameter "pFont"
    .parameter "pText"
    .parameter "pCharactersMaximum"
    .parameter "pTextOptions"
    .parameter "pTextVertexBufferObject"
    .parameter "pShaderProgram"

    .prologue
    .line 130
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/andengine/entity/text/Text;-><init>(FFLorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;ILorg/andengine/entity/text/TextOptions;Lorg/andengine/entity/text/vbo/ITextVertexBufferObject;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 132
    iput p1, p0, Lorg/andengine/entity/scene/menu/item/TextMenuItem;->mID:I

    .line 133
    return-void
.end method

.method public constructor <init>(ILorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;ILorg/andengine/entity/text/TextOptions;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;)V
    .locals 8
    .parameter "pID"
    .parameter "pFont"
    .parameter "pText"
    .parameter "pCharactersMaximum"
    .parameter "pTextOptions"
    .parameter "pVertexBufferObjectManager"

    .prologue
    const/4 v1, 0x0

    .line 106
    move-object v0, p0

    move v2, v1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/andengine/entity/text/Text;-><init>(FFLorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;ILorg/andengine/entity/text/TextOptions;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;)V

    .line 108
    iput p1, p0, Lorg/andengine/entity/scene/menu/item/TextMenuItem;->mID:I

    .line 109
    return-void
.end method

.method public constructor <init>(ILorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;ILorg/andengine/entity/text/TextOptions;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V
    .locals 9
    .parameter "pID"
    .parameter "pFont"
    .parameter "pText"
    .parameter "pCharactersMaximum"
    .parameter "pTextOptions"
    .parameter "pVertexBufferObjectManager"
    .parameter "pDrawType"

    .prologue
    .line 112
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/andengine/entity/text/Text;-><init>(FFLorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;ILorg/andengine/entity/text/TextOptions;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V

    .line 114
    iput p1, p0, Lorg/andengine/entity/scene/menu/item/TextMenuItem;->mID:I

    .line 115
    return-void
.end method

.method public constructor <init>(ILorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;ILorg/andengine/entity/text/TextOptions;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 10
    .parameter "pID"
    .parameter "pFont"
    .parameter "pText"
    .parameter "pCharactersMaximum"
    .parameter "pTextOptions"
    .parameter "pVertexBufferObjectManager"
    .parameter "pDrawType"
    .parameter "pShaderProgram"

    .prologue
    .line 118
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lorg/andengine/entity/text/Text;-><init>(FFLorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;ILorg/andengine/entity/text/TextOptions;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 120
    iput p1, p0, Lorg/andengine/entity/scene/menu/item/TextMenuItem;->mID:I

    .line 121
    return-void
.end method

.method public constructor <init>(ILorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;ILorg/andengine/opengl/vbo/VertexBufferObjectManager;)V
    .locals 7
    .parameter "pID"
    .parameter "pFont"
    .parameter "pText"
    .parameter "pCharactersMaximum"
    .parameter "pVertexBufferObjectManager"

    .prologue
    const/4 v1, 0x0

    .line 76
    move-object v0, p0

    move v2, v1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/andengine/entity/text/Text;-><init>(FFLorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;ILorg/andengine/opengl/vbo/VertexBufferObjectManager;)V

    .line 78
    iput p1, p0, Lorg/andengine/entity/scene/menu/item/TextMenuItem;->mID:I

    .line 79
    return-void
.end method

.method public constructor <init>(ILorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;ILorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 8
    .parameter "pID"
    .parameter "pFont"
    .parameter "pText"
    .parameter "pCharactersMaximum"
    .parameter "pVertexBufferObjectManager"
    .parameter "pShaderProgram"

    .prologue
    const/4 v1, 0x0

    .line 88
    move-object v0, p0

    move v2, v1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/andengine/entity/text/Text;-><init>(FFLorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;ILorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 90
    iput p1, p0, Lorg/andengine/entity/scene/menu/item/TextMenuItem;->mID:I

    .line 91
    return-void
.end method

.method public constructor <init>(ILorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;ILorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V
    .locals 8
    .parameter "pID"
    .parameter "pFont"
    .parameter "pText"
    .parameter "pCharactersMaximum"
    .parameter "pVertexBufferObjectManager"
    .parameter "pDrawType"

    .prologue
    const/4 v1, 0x0

    .line 94
    move-object v0, p0

    move v2, v1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/andengine/entity/text/Text;-><init>(FFLorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;ILorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V

    .line 96
    iput p1, p0, Lorg/andengine/entity/scene/menu/item/TextMenuItem;->mID:I

    .line 97
    return-void
.end method

.method public constructor <init>(ILorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;ILorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 9
    .parameter "pID"
    .parameter "pFont"
    .parameter "pText"
    .parameter "pCharactersMaximum"
    .parameter "pVertexBufferObjectManager"
    .parameter "pDrawType"
    .parameter "pShaderProgram"

    .prologue
    .line 100
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/andengine/entity/text/Text;-><init>(FFLorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;ILorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 102
    iput p1, p0, Lorg/andengine/entity/scene/menu/item/TextMenuItem;->mID:I

    .line 103
    return-void
.end method

.method public constructor <init>(ILorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;Lorg/andengine/entity/text/TextOptions;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;)V
    .locals 7
    .parameter "pID"
    .parameter "pFont"
    .parameter "pText"
    .parameter "pTextOptions"
    .parameter "pVertexBufferObjectManager"

    .prologue
    const/4 v1, 0x0

    .line 58
    move-object v0, p0

    move v2, v1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/andengine/entity/text/Text;-><init>(FFLorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;Lorg/andengine/entity/text/TextOptions;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;)V

    .line 60
    iput p1, p0, Lorg/andengine/entity/scene/menu/item/TextMenuItem;->mID:I

    .line 61
    return-void
.end method

.method public constructor <init>(ILorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;Lorg/andengine/entity/text/TextOptions;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 8
    .parameter "pID"
    .parameter "pFont"
    .parameter "pText"
    .parameter "pTextOptions"
    .parameter "pVertexBufferObjectManager"
    .parameter "pShaderProgram"

    .prologue
    const/4 v1, 0x0

    .line 64
    move-object v0, p0

    move v2, v1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/andengine/entity/text/Text;-><init>(FFLorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;Lorg/andengine/entity/text/TextOptions;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 66
    iput p1, p0, Lorg/andengine/entity/scene/menu/item/TextMenuItem;->mID:I

    .line 67
    return-void
.end method

.method public constructor <init>(ILorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;Lorg/andengine/entity/text/TextOptions;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V
    .locals 8
    .parameter "pID"
    .parameter "pFont"
    .parameter "pText"
    .parameter "pTextOptions"
    .parameter "pVertexBufferObjectManager"
    .parameter "pDrawType"

    .prologue
    const/4 v1, 0x0

    .line 70
    move-object v0, p0

    move v2, v1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/andengine/entity/text/Text;-><init>(FFLorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;Lorg/andengine/entity/text/TextOptions;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V

    .line 72
    iput p1, p0, Lorg/andengine/entity/scene/menu/item/TextMenuItem;->mID:I

    .line 73
    return-void
.end method

.method public constructor <init>(ILorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;Lorg/andengine/entity/text/TextOptions;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 9
    .parameter "pID"
    .parameter "pFont"
    .parameter "pText"
    .parameter "pTextOptions"
    .parameter "pVertexBufferObjectManager"
    .parameter "pDrawType"
    .parameter "pShaderProgram"

    .prologue
    .line 82
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/andengine/entity/text/Text;-><init>(FFLorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;Lorg/andengine/entity/text/TextOptions;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 84
    iput p1, p0, Lorg/andengine/entity/scene/menu/item/TextMenuItem;->mID:I

    .line 85
    return-void
.end method

.method public constructor <init>(ILorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;)V
    .locals 6
    .parameter "pID"
    .parameter "pFont"
    .parameter "pText"
    .parameter "pVertexBufferObjectManager"

    .prologue
    const/4 v1, 0x0

    .line 34
    move-object v0, p0

    move v2, v1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/andengine/entity/text/Text;-><init>(FFLorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;)V

    .line 36
    iput p1, p0, Lorg/andengine/entity/scene/menu/item/TextMenuItem;->mID:I

    .line 37
    return-void
.end method

.method public constructor <init>(ILorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 7
    .parameter "pID"
    .parameter "pFont"
    .parameter "pText"
    .parameter "pVertexBufferObjectManager"
    .parameter "pShaderProgram"

    .prologue
    const/4 v1, 0x0

    .line 40
    move-object v0, p0

    move v2, v1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/andengine/entity/text/Text;-><init>(FFLorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 42
    iput p1, p0, Lorg/andengine/entity/scene/menu/item/TextMenuItem;->mID:I

    .line 43
    return-void
.end method

.method public constructor <init>(ILorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V
    .locals 7
    .parameter "pID"
    .parameter "pFont"
    .parameter "pText"
    .parameter "pVertexBufferObjectManager"
    .parameter "pDrawType"

    .prologue
    const/4 v1, 0x0

    .line 46
    move-object v0, p0

    move v2, v1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/andengine/entity/text/Text;-><init>(FFLorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V

    .line 48
    iput p1, p0, Lorg/andengine/entity/scene/menu/item/TextMenuItem;->mID:I

    .line 49
    return-void
.end method

.method public constructor <init>(ILorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 8
    .parameter "pID"
    .parameter "pFont"
    .parameter "pText"
    .parameter "pVertexBufferObjectManager"
    .parameter "pDrawType"
    .parameter "pShaderProgram"

    .prologue
    const/4 v1, 0x0

    .line 52
    move-object v0, p0

    move v2, v1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/andengine/entity/text/Text;-><init>(FFLorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 54
    iput p1, p0, Lorg/andengine/entity/scene/menu/item/TextMenuItem;->mID:I

    .line 55
    return-void
.end method


# virtual methods
.method public getID()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lorg/andengine/entity/scene/menu/item/TextMenuItem;->mID:I

    return v0
.end method

.method public onSelected()V
    .locals 0

    .prologue
    .line 155
    return-void
.end method

.method public onUnselected()V
    .locals 0

    .prologue
    .line 160
    return-void
.end method
