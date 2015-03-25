.class public Lorg/andengine/entity/text/vbo/HighPerformanceTextVertexBufferObject;
.super Lorg/andengine/opengl/vbo/HighPerformanceVertexBufferObject;
.source "HighPerformanceTextVertexBufferObject.java"

# interfaces
.implements Lorg/andengine/entity/text/vbo/ITextVertexBufferObject;


# static fields
.field private static synthetic $SWITCH_TABLE$org$andengine$util$HorizontalAlign:[I


# direct methods
.method static synthetic $SWITCH_TABLE$org$andengine$util$HorizontalAlign()[I
    .locals 3

    .prologue
    .line 20
    sget-object v0, Lorg/andengine/entity/text/vbo/HighPerformanceTextVertexBufferObject;->$SWITCH_TABLE$org$andengine$util$HorizontalAlign:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/andengine/util/HorizontalAlign;->values()[Lorg/andengine/util/HorizontalAlign;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/andengine/util/HorizontalAlign;->CENTER:Lorg/andengine/util/HorizontalAlign;

    invoke-virtual {v1}, Lorg/andengine/util/HorizontalAlign;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lorg/andengine/util/HorizontalAlign;->LEFT:Lorg/andengine/util/HorizontalAlign;

    invoke-virtual {v1}, Lorg/andengine/util/HorizontalAlign;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lorg/andengine/util/HorizontalAlign;->RIGHT:Lorg/andengine/util/HorizontalAlign;

    invoke-virtual {v1}, Lorg/andengine/util/HorizontalAlign;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lorg/andengine/entity/text/vbo/HighPerformanceTextVertexBufferObject;->$SWITCH_TABLE$org$andengine$util$HorizontalAlign:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Lorg/andengine/opengl/vbo/VertexBufferObjectManager;ILorg/andengine/opengl/vbo/DrawType;ZLorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;)V
    .locals 0
    .parameter "pVertexBufferObjectManager"
    .parameter "pCapacity"
    .parameter "pDrawType"
    .parameter "pAutoDispose"
    .parameter "pVertexBufferObjectAttributes"

    .prologue
    .line 34
    invoke-direct/range {p0 .. p5}, Lorg/andengine/opengl/vbo/HighPerformanceVertexBufferObject;-><init>(Lorg/andengine/opengl/vbo/VertexBufferObjectManager;ILorg/andengine/opengl/vbo/DrawType;ZLorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;)V

    .line 35
    return-void
.end method


# virtual methods
.method public onUpdateColor(Lorg/andengine/entity/text/Text;)V
    .locals 6
    .parameter "pText"

    .prologue
    .line 47
    iget-object v0, p0, Lorg/andengine/entity/text/vbo/HighPerformanceTextVertexBufferObject;->mBufferData:[F

    .line 49
    .local v0, bufferData:[F
    invoke-virtual {p1}, Lorg/andengine/entity/text/Text;->getColor()Lorg/andengine/util/color/Color;

    move-result-object v5

    invoke-virtual {v5}, Lorg/andengine/util/color/Color;->getABGRPackedFloat()F

    move-result v4

    .line 51
    .local v4, packedColor:F
    const/4 v1, 0x0

    .line 52
    .local v1, bufferDataOffset:I
    invoke-virtual {p1}, Lorg/andengine/entity/text/Text;->getCharactersMaximum()I

    move-result v2

    .line 53
    .local v2, charactersMaximum:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-lt v3, v2, :cond_0

    .line 64
    invoke-virtual {p0}, Lorg/andengine/entity/text/vbo/HighPerformanceTextVertexBufferObject;->setDirtyOnHardware()V

    .line 65
    return-void

    .line 54
    :cond_0
    add-int/lit8 v5, v1, 0x0

    add-int/lit8 v5, v5, 0x2

    aput v4, v0, v5

    .line 55
    add-int/lit8 v5, v1, 0x5

    add-int/lit8 v5, v5, 0x2

    aput v4, v0, v5

    .line 56
    add-int/lit8 v5, v1, 0xa

    add-int/lit8 v5, v5, 0x2

    aput v4, v0, v5

    .line 57
    add-int/lit8 v5, v1, 0xf

    add-int/lit8 v5, v5, 0x2

    aput v4, v0, v5

    .line 58
    add-int/lit8 v5, v1, 0x14

    add-int/lit8 v5, v5, 0x2

    aput v4, v0, v5

    .line 59
    add-int/lit8 v5, v1, 0x19

    add-int/lit8 v5, v5, 0x2

    aput v4, v0, v5

    .line 61
    add-int/lit8 v1, v1, 0x1e

    .line 53
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public onUpdateVertices(Lorg/andengine/entity/text/Text;)V
    .locals 28
    .parameter "pText"

    .prologue
    .line 69
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/andengine/entity/text/vbo/HighPerformanceTextVertexBufferObject;->mBufferData:[F

    .line 72
    .local v1, bufferData:[F
    invoke-virtual/range {p1 .. p1}, Lorg/andengine/entity/text/Text;->getFont()Lorg/andengine/opengl/font/IFont;

    move-result-object v4

    .line 73
    .local v4, font:Lorg/andengine/opengl/font/IFont;
    invoke-virtual/range {p1 .. p1}, Lorg/andengine/entity/text/Text;->getLines()Ljava/util/ArrayList;

    move-result-object v13

    .line 74
    .local v13, lines:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-interface {v4}, Lorg/andengine/opengl/font/IFont;->getLineHeight()F

    move-result v10

    .line 75
    .local v10, lineHeight:F
    invoke-virtual/range {p1 .. p1}, Lorg/andengine/entity/text/Text;->getLineWidths()Lorg/andengine/util/adt/list/IFloatList;

    move-result-object v12

    .line 77
    .local v12, lineWidths:Lorg/andengine/util/adt/list/IFloatList;
    invoke-virtual/range {p1 .. p1}, Lorg/andengine/entity/text/Text;->getLineAlignmentWidth()F

    move-result v8

    .line 79
    .local v8, lineAlignmentWidth:F
    const/4 v3, 0x0

    .line 80
    .local v3, charactersToDraw:I
    const/4 v2, 0x0

    .line 82
    .local v2, bufferDataOffset:I
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 83
    .local v9, lineCount:I
    const/4 v15, 0x0

    .local v15, row:I
    :goto_0
    if-lt v15, v9, :cond_0

    .line 160
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/andengine/entity/text/Text;->setCharactersToDraw(I)V

    .line 162
    invoke-virtual/range {p0 .. p0}, Lorg/andengine/entity/text/vbo/HighPerformanceTextVertexBufferObject;->setDirtyOnHardware()V

    .line 163
    return-void

    .line 84
    :cond_0
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    .line 87
    .local v7, line:Ljava/lang/CharSequence;
    invoke-static {}, Lorg/andengine/entity/text/vbo/HighPerformanceTextVertexBufferObject;->$SWITCH_TABLE$org$andengine$util$HorizontalAlign()[I

    move-result-object v26

    invoke-virtual/range {p1 .. p1}, Lorg/andengine/entity/text/Text;->getHorizontalAlign()Lorg/andengine/util/HorizontalAlign;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lorg/andengine/util/HorizontalAlign;->ordinal()I

    move-result v27

    aget v26, v26, v27

    packed-switch v26, :pswitch_data_0

    .line 96
    const/16 v22, 0x0

    .line 99
    .local v22, xBase:F
    :goto_1
    int-to-float v0, v15

    move/from16 v26, v0

    invoke-virtual/range {p1 .. p1}, Lorg/andengine/entity/text/Text;->getLeading()F

    move-result v27

    add-float v27, v27, v10

    mul-float v25, v26, v27

    .line 101
    .local v25, yBase:F
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v11

    .line 102
    .local v11, lineLength:I
    const/4 v14, 0x0

    .line 103
    .local v14, previousLetter:Lorg/andengine/opengl/font/Letter;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    if-lt v5, v11, :cond_1

    .line 83
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 89
    .end local v5           #i:I
    .end local v11           #lineLength:I
    .end local v14           #previousLetter:Lorg/andengine/opengl/font/Letter;
    .end local v22           #xBase:F
    .end local v25           #yBase:F
    :pswitch_0
    invoke-interface {v12, v15}, Lorg/andengine/util/adt/list/IFloatList;->get(I)F

    move-result v26

    sub-float v22, v8, v26

    .line 90
    .restart local v22       #xBase:F
    goto :goto_1

    .line 92
    .end local v22           #xBase:F
    :pswitch_1
    invoke-interface {v12, v15}, Lorg/andengine/util/adt/list/IFloatList;->get(I)F

    move-result v26

    sub-float v26, v8, v26

    const/high16 v27, 0x3f00

    mul-float v22, v26, v27

    .line 93
    .restart local v22       #xBase:F
    goto :goto_1

    .line 104
    .restart local v5       #i:I
    .restart local v11       #lineLength:I
    .restart local v14       #previousLetter:Lorg/andengine/opengl/font/Letter;
    .restart local v25       #yBase:F
    :cond_1
    invoke-interface {v7, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v26

    move/from16 v0, v26

    invoke-interface {v4, v0}, Lorg/andengine/opengl/font/IFont;->getLetter(C)Lorg/andengine/opengl/font/Letter;

    move-result-object v6

    .line 105
    .local v6, letter:Lorg/andengine/opengl/font/Letter;
    if-eqz v14, :cond_2

    .line 106
    iget-char v0, v6, Lorg/andengine/opengl/font/Letter;->mCharacter:C

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-virtual {v14, v0}, Lorg/andengine/opengl/font/Letter;->getKerning(I)I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    add-float v22, v22, v26

    .line 109
    :cond_2
    invoke-virtual {v6}, Lorg/andengine/opengl/font/Letter;->isWhitespace()Z

    move-result v26

    if-nez v26, :cond_3

    .line 110
    iget v0, v6, Lorg/andengine/opengl/font/Letter;->mOffsetX:F

    move/from16 v26, v0

    add-float v20, v22, v26

    .line 111
    .local v20, x:F
    iget v0, v6, Lorg/andengine/opengl/font/Letter;->mOffsetY:F

    move/from16 v26, v0

    add-float v23, v25, v26

    .line 113
    .local v23, y:F
    iget v0, v6, Lorg/andengine/opengl/font/Letter;->mHeight:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    add-float v24, v23, v26

    .line 114
    .local v24, y2:F
    iget v0, v6, Lorg/andengine/opengl/font/Letter;->mWidth:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    add-float v21, v20, v26

    .line 116
    .local v21, x2:F
    iget v0, v6, Lorg/andengine/opengl/font/Letter;->mU:F

    move/from16 v16, v0

    .line 117
    .local v16, u:F
    iget v0, v6, Lorg/andengine/opengl/font/Letter;->mV:F

    move/from16 v18, v0

    .line 118
    .local v18, v:F
    iget v0, v6, Lorg/andengine/opengl/font/Letter;->mU2:F

    move/from16 v17, v0

    .line 119
    .local v17, u2:F
    iget v0, v6, Lorg/andengine/opengl/font/Letter;->mV2:F

    move/from16 v19, v0

    .line 121
    .local v19, v2:F
    add-int/lit8 v26, v2, 0x0

    add-int/lit8 v26, v26, 0x0

    aput v20, v1, v26

    .line 122
    add-int/lit8 v26, v2, 0x0

    add-int/lit8 v26, v26, 0x1

    aput v23, v1, v26

    .line 123
    add-int/lit8 v26, v2, 0x0

    add-int/lit8 v26, v26, 0x3

    aput v16, v1, v26

    .line 124
    add-int/lit8 v26, v2, 0x0

    add-int/lit8 v26, v26, 0x4

    aput v18, v1, v26

    .line 126
    add-int/lit8 v26, v2, 0x5

    add-int/lit8 v26, v26, 0x0

    aput v20, v1, v26

    .line 127
    add-int/lit8 v26, v2, 0x5

    add-int/lit8 v26, v26, 0x1

    aput v24, v1, v26

    .line 128
    add-int/lit8 v26, v2, 0x5

    add-int/lit8 v26, v26, 0x3

    aput v16, v1, v26

    .line 129
    add-int/lit8 v26, v2, 0x5

    add-int/lit8 v26, v26, 0x4

    aput v19, v1, v26

    .line 131
    add-int/lit8 v26, v2, 0xa

    add-int/lit8 v26, v26, 0x0

    aput v21, v1, v26

    .line 132
    add-int/lit8 v26, v2, 0xa

    add-int/lit8 v26, v26, 0x1

    aput v24, v1, v26

    .line 133
    add-int/lit8 v26, v2, 0xa

    add-int/lit8 v26, v26, 0x3

    aput v17, v1, v26

    .line 134
    add-int/lit8 v26, v2, 0xa

    add-int/lit8 v26, v26, 0x4

    aput v19, v1, v26

    .line 136
    add-int/lit8 v26, v2, 0xf

    add-int/lit8 v26, v26, 0x0

    aput v21, v1, v26

    .line 137
    add-int/lit8 v26, v2, 0xf

    add-int/lit8 v26, v26, 0x1

    aput v24, v1, v26

    .line 138
    add-int/lit8 v26, v2, 0xf

    add-int/lit8 v26, v26, 0x3

    aput v17, v1, v26

    .line 139
    add-int/lit8 v26, v2, 0xf

    add-int/lit8 v26, v26, 0x4

    aput v19, v1, v26

    .line 141
    add-int/lit8 v26, v2, 0x14

    add-int/lit8 v26, v26, 0x0

    aput v21, v1, v26

    .line 142
    add-int/lit8 v26, v2, 0x14

    add-int/lit8 v26, v26, 0x1

    aput v23, v1, v26

    .line 143
    add-int/lit8 v26, v2, 0x14

    add-int/lit8 v26, v26, 0x3

    aput v17, v1, v26

    .line 144
    add-int/lit8 v26, v2, 0x14

    add-int/lit8 v26, v26, 0x4

    aput v18, v1, v26

    .line 146
    add-int/lit8 v26, v2, 0x19

    add-int/lit8 v26, v26, 0x0

    aput v20, v1, v26

    .line 147
    add-int/lit8 v26, v2, 0x19

    add-int/lit8 v26, v26, 0x1

    aput v23, v1, v26

    .line 148
    add-int/lit8 v26, v2, 0x19

    add-int/lit8 v26, v26, 0x3

    aput v16, v1, v26

    .line 149
    add-int/lit8 v26, v2, 0x19

    add-int/lit8 v26, v26, 0x4

    aput v18, v1, v26

    .line 151
    add-int/lit8 v2, v2, 0x1e

    .line 152
    add-int/lit8 v3, v3, 0x1

    .line 155
    .end local v16           #u:F
    .end local v17           #u2:F
    .end local v18           #v:F
    .end local v19           #v2:F
    .end local v20           #x:F
    .end local v21           #x2:F
    .end local v23           #y:F
    .end local v24           #y2:F
    :cond_3
    iget v0, v6, Lorg/andengine/opengl/font/Letter;->mAdvance:F

    move/from16 v26, v0

    add-float v22, v22, v26

    .line 157
    move-object v14, v6

    .line 103
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
