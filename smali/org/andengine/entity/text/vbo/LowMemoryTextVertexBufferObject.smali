.class public Lorg/andengine/entity/text/vbo/LowMemoryTextVertexBufferObject;
.super Lorg/andengine/opengl/vbo/LowMemoryVertexBufferObject;
.source "LowMemoryTextVertexBufferObject.java"

# interfaces
.implements Lorg/andengine/entity/text/vbo/ITextVertexBufferObject;


# static fields
.field private static synthetic $SWITCH_TABLE$org$andengine$util$HorizontalAlign:[I


# direct methods
.method static synthetic $SWITCH_TABLE$org$andengine$util$HorizontalAlign()[I
    .locals 3

    .prologue
    .line 21
    sget-object v0, Lorg/andengine/entity/text/vbo/LowMemoryTextVertexBufferObject;->$SWITCH_TABLE$org$andengine$util$HorizontalAlign:[I

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
    sput-object v0, Lorg/andengine/entity/text/vbo/LowMemoryTextVertexBufferObject;->$SWITCH_TABLE$org$andengine$util$HorizontalAlign:[I

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
    .line 35
    invoke-direct/range {p0 .. p5}, Lorg/andengine/opengl/vbo/LowMemoryVertexBufferObject;-><init>(Lorg/andengine/opengl/vbo/VertexBufferObjectManager;ILorg/andengine/opengl/vbo/DrawType;ZLorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;)V

    .line 36
    return-void
.end method


# virtual methods
.method public onUpdateColor(Lorg/andengine/entity/text/Text;)V
    .locals 6
    .parameter "pText"

    .prologue
    .line 48
    iget-object v0, p0, Lorg/andengine/entity/text/vbo/LowMemoryTextVertexBufferObject;->mFloatBuffer:Ljava/nio/FloatBuffer;

    .line 50
    .local v0, bufferData:Ljava/nio/FloatBuffer;
    invoke-virtual {p1}, Lorg/andengine/entity/text/Text;->getColor()Lorg/andengine/util/color/Color;

    move-result-object v5

    invoke-virtual {v5}, Lorg/andengine/util/color/Color;->getABGRPackedFloat()F

    move-result v4

    .line 52
    .local v4, packedColor:F
    const/4 v1, 0x0

    .line 53
    .local v1, bufferDataOffset:I
    invoke-virtual {p1}, Lorg/andengine/entity/text/Text;->getCharactersMaximum()I

    move-result v2

    .line 54
    .local v2, charactersMaximum:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-lt v3, v2, :cond_0

    .line 65
    invoke-virtual {p0}, Lorg/andengine/entity/text/vbo/LowMemoryTextVertexBufferObject;->setDirtyOnHardware()V

    .line 66
    return-void

    .line 55
    :cond_0
    add-int/lit8 v5, v1, 0x0

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v0, v5, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 56
    add-int/lit8 v5, v1, 0x5

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v0, v5, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 57
    add-int/lit8 v5, v1, 0xa

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v0, v5, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 58
    add-int/lit8 v5, v1, 0xf

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v0, v5, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 59
    add-int/lit8 v5, v1, 0x14

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v0, v5, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 60
    add-int/lit8 v5, v1, 0x19

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v0, v5, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 62
    add-int/lit8 v1, v1, 0x1e

    .line 54
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public onUpdateVertices(Lorg/andengine/entity/text/Text;)V
    .locals 29
    .parameter "pText"

    .prologue
    .line 70
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/andengine/entity/text/vbo/LowMemoryTextVertexBufferObject;->mFloatBuffer:Ljava/nio/FloatBuffer;

    .line 73
    .local v2, bufferData:Ljava/nio/FloatBuffer;
    invoke-virtual/range {p1 .. p1}, Lorg/andengine/entity/text/Text;->getFont()Lorg/andengine/opengl/font/IFont;

    move-result-object v5

    .line 74
    .local v5, font:Lorg/andengine/opengl/font/IFont;
    invoke-virtual/range {p1 .. p1}, Lorg/andengine/entity/text/Text;->getLines()Ljava/util/ArrayList;

    move-result-object v15

    .line 75
    .local v15, lines:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-interface {v5}, Lorg/andengine/opengl/font/IFont;->getLineHeight()F

    move-result v12

    .line 76
    .local v12, lineHeight:F
    invoke-virtual/range {p1 .. p1}, Lorg/andengine/entity/text/Text;->getLineWidths()Lorg/andengine/util/adt/list/IFloatList;

    move-result-object v14

    .line 78
    .local v14, lineWidths:Lorg/andengine/util/adt/list/IFloatList;
    invoke-virtual/range {p1 .. p1}, Lorg/andengine/entity/text/Text;->getLineAlignmentWidth()F

    move-result v10

    .line 80
    .local v10, lineAlignmentWidth:F
    const/4 v4, 0x0

    .line 81
    .local v4, charactersToDraw:I
    const/4 v3, 0x0

    .line 83
    .local v3, bufferDataOffset:I
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 84
    .local v11, lineCount:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-lt v6, v11, :cond_0

    .line 162
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/andengine/entity/text/Text;->setCharactersToDraw(I)V

    .line 164
    invoke-virtual/range {p0 .. p0}, Lorg/andengine/entity/text/vbo/LowMemoryTextVertexBufferObject;->setDirtyOnHardware()V

    .line 165
    return-void

    .line 85
    :cond_0
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    .line 89
    .local v9, line:Ljava/lang/CharSequence;
    invoke-static {}, Lorg/andengine/entity/text/vbo/LowMemoryTextVertexBufferObject;->$SWITCH_TABLE$org$andengine$util$HorizontalAlign()[I

    move-result-object v27

    invoke-virtual/range {p1 .. p1}, Lorg/andengine/entity/text/Text;->getHorizontalAlign()Lorg/andengine/util/HorizontalAlign;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lorg/andengine/util/HorizontalAlign;->ordinal()I

    move-result v28

    aget v27, v27, v28

    packed-switch v27, :pswitch_data_0

    .line 98
    const/16 v23, 0x0

    .line 101
    .local v23, xBase:F
    :goto_1
    int-to-float v0, v6

    move/from16 v27, v0

    invoke-virtual/range {p1 .. p1}, Lorg/andengine/entity/text/Text;->getLeading()F

    move-result v28

    add-float v28, v28, v12

    mul-float v26, v27, v28

    .line 103
    .local v26, yBase:F
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v13

    .line 104
    .local v13, lineLength:I
    const/16 v16, 0x0

    .line 105
    .local v16, previousLetter:Lorg/andengine/opengl/font/Letter;
    const/4 v7, 0x0

    .local v7, j:I
    :goto_2
    if-lt v7, v13, :cond_1

    .line 84
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 91
    .end local v7           #j:I
    .end local v13           #lineLength:I
    .end local v16           #previousLetter:Lorg/andengine/opengl/font/Letter;
    .end local v23           #xBase:F
    .end local v26           #yBase:F
    :pswitch_0
    invoke-interface {v14, v6}, Lorg/andengine/util/adt/list/IFloatList;->get(I)F

    move-result v27

    sub-float v23, v10, v27

    .line 92
    .restart local v23       #xBase:F
    goto :goto_1

    .line 94
    .end local v23           #xBase:F
    :pswitch_1
    invoke-interface {v14, v6}, Lorg/andengine/util/adt/list/IFloatList;->get(I)F

    move-result v27

    sub-float v27, v10, v27

    const/high16 v28, 0x3f00

    mul-float v23, v27, v28

    .line 95
    .restart local v23       #xBase:F
    goto :goto_1

    .line 106
    .restart local v7       #j:I
    .restart local v13       #lineLength:I
    .restart local v16       #previousLetter:Lorg/andengine/opengl/font/Letter;
    .restart local v26       #yBase:F
    :cond_1
    invoke-interface {v9, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v27

    move/from16 v0, v27

    invoke-interface {v5, v0}, Lorg/andengine/opengl/font/IFont;->getLetter(C)Lorg/andengine/opengl/font/Letter;

    move-result-object v8

    .line 107
    .local v8, letter:Lorg/andengine/opengl/font/Letter;
    if-eqz v16, :cond_2

    .line 108
    iget-char v0, v8, Lorg/andengine/opengl/font/Letter;->mCharacter:C

    move/from16 v27, v0

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/andengine/opengl/font/Letter;->getKerning(I)I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    add-float v23, v23, v27

    .line 111
    :cond_2
    invoke-virtual {v8}, Lorg/andengine/opengl/font/Letter;->isWhitespace()Z

    move-result v27

    if-nez v27, :cond_3

    .line 112
    iget v0, v8, Lorg/andengine/opengl/font/Letter;->mOffsetX:F

    move/from16 v27, v0

    add-float v21, v23, v27

    .line 113
    .local v21, x:F
    iget v0, v8, Lorg/andengine/opengl/font/Letter;->mOffsetY:F

    move/from16 v27, v0

    add-float v24, v26, v27

    .line 115
    .local v24, y:F
    iget v0, v8, Lorg/andengine/opengl/font/Letter;->mHeight:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    add-float v25, v24, v27

    .line 116
    .local v25, y2:F
    iget v0, v8, Lorg/andengine/opengl/font/Letter;->mWidth:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    add-float v22, v21, v27

    .line 118
    .local v22, x2:F
    iget v0, v8, Lorg/andengine/opengl/font/Letter;->mU:F

    move/from16 v17, v0

    .line 119
    .local v17, u:F
    iget v0, v8, Lorg/andengine/opengl/font/Letter;->mV:F

    move/from16 v19, v0

    .line 120
    .local v19, v:F
    iget v0, v8, Lorg/andengine/opengl/font/Letter;->mU2:F

    move/from16 v18, v0

    .line 121
    .local v18, u2:F
    iget v0, v8, Lorg/andengine/opengl/font/Letter;->mV2:F

    move/from16 v20, v0

    .line 123
    .local v20, v2:F
    add-int/lit8 v27, v3, 0x0

    add-int/lit8 v27, v27, 0x0

    move/from16 v0, v27

    move/from16 v1, v21

    invoke-virtual {v2, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 124
    add-int/lit8 v27, v3, 0x0

    add-int/lit8 v27, v27, 0x1

    move/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v2, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 125
    add-int/lit8 v27, v3, 0x0

    add-int/lit8 v27, v27, 0x3

    move/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 126
    add-int/lit8 v27, v3, 0x0

    add-int/lit8 v27, v27, 0x4

    move/from16 v0, v27

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 128
    add-int/lit8 v27, v3, 0x5

    add-int/lit8 v27, v27, 0x0

    move/from16 v0, v27

    move/from16 v1, v21

    invoke-virtual {v2, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 129
    add-int/lit8 v27, v3, 0x5

    add-int/lit8 v27, v27, 0x1

    move/from16 v0, v27

    move/from16 v1, v25

    invoke-virtual {v2, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 130
    add-int/lit8 v27, v3, 0x5

    add-int/lit8 v27, v27, 0x3

    move/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 131
    add-int/lit8 v27, v3, 0x5

    add-int/lit8 v27, v27, 0x4

    move/from16 v0, v27

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 133
    add-int/lit8 v27, v3, 0xa

    add-int/lit8 v27, v27, 0x0

    move/from16 v0, v27

    move/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 134
    add-int/lit8 v27, v3, 0xa

    add-int/lit8 v27, v27, 0x1

    move/from16 v0, v27

    move/from16 v1, v25

    invoke-virtual {v2, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 135
    add-int/lit8 v27, v3, 0xa

    add-int/lit8 v27, v27, 0x3

    move/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 136
    add-int/lit8 v27, v3, 0xa

    add-int/lit8 v27, v27, 0x4

    move/from16 v0, v27

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 138
    add-int/lit8 v27, v3, 0xf

    add-int/lit8 v27, v27, 0x0

    move/from16 v0, v27

    move/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 139
    add-int/lit8 v27, v3, 0xf

    add-int/lit8 v27, v27, 0x1

    move/from16 v0, v27

    move/from16 v1, v25

    invoke-virtual {v2, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 140
    add-int/lit8 v27, v3, 0xf

    add-int/lit8 v27, v27, 0x3

    move/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 141
    add-int/lit8 v27, v3, 0xf

    add-int/lit8 v27, v27, 0x4

    move/from16 v0, v27

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 143
    add-int/lit8 v27, v3, 0x14

    add-int/lit8 v27, v27, 0x0

    move/from16 v0, v27

    move/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 144
    add-int/lit8 v27, v3, 0x14

    add-int/lit8 v27, v27, 0x1

    move/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v2, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 145
    add-int/lit8 v27, v3, 0x14

    add-int/lit8 v27, v27, 0x3

    move/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 146
    add-int/lit8 v27, v3, 0x14

    add-int/lit8 v27, v27, 0x4

    move/from16 v0, v27

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 148
    add-int/lit8 v27, v3, 0x19

    add-int/lit8 v27, v27, 0x0

    move/from16 v0, v27

    move/from16 v1, v21

    invoke-virtual {v2, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 149
    add-int/lit8 v27, v3, 0x19

    add-int/lit8 v27, v27, 0x1

    move/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v2, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 150
    add-int/lit8 v27, v3, 0x19

    add-int/lit8 v27, v27, 0x3

    move/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 151
    add-int/lit8 v27, v3, 0x19

    add-int/lit8 v27, v27, 0x4

    move/from16 v0, v27

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 153
    add-int/lit8 v3, v3, 0x1e

    .line 154
    add-int/lit8 v4, v4, 0x1

    .line 157
    .end local v17           #u:F
    .end local v18           #u2:F
    .end local v19           #v:F
    .end local v20           #v2:F
    .end local v21           #x:F
    .end local v22           #x2:F
    .end local v24           #y:F
    .end local v25           #y2:F
    :cond_3
    iget v0, v8, Lorg/andengine/opengl/font/Letter;->mAdvance:F

    move/from16 v27, v0

    add-float v23, v23, v27

    .line 159
    move-object/from16 v16, v8

    .line 105
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
