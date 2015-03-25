.class public Lorg/andengine/util/algorithm/collision/ShapeCollisionChecker;
.super Lorg/andengine/util/algorithm/collision/BaseCollisionChecker;
.source "ShapeCollisionChecker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lorg/andengine/util/algorithm/collision/BaseCollisionChecker;-><init>()V

    return-void
.end method

.method public static checkCollision([FIIII[FIIII)Z
    .locals 19
    .parameter "pVerticesA"
    .parameter "pVertexCountA"
    .parameter "pVertexOffsetXA"
    .parameter "pVertexOffsetYA"
    .parameter "pVertexStrideA"
    .parameter "pVerticesB"
    .parameter "pVertexCountB"
    .parameter "pVertexOffsetXB"
    .parameter "pVertexOffsetYB"
    .parameter "pVertexStrideB"

    .prologue
    .line 66
    add-int/lit8 v7, p1, -0x2

    .local v7, a:I
    :goto_0
    if-gez v7, :cond_0

    .line 73
    add-int/lit8 v12, p1, -0x1

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v14, p5

    move/from16 v15, p6

    move/from16 v16, p7

    move/from16 v17, p8

    move/from16 v18, p9

    invoke-static/range {v8 .. v18}, Lorg/andengine/util/algorithm/collision/ShapeCollisionChecker;->checkCollisionSub([FIIIII[FIIII)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 74
    const/4 v3, 0x1

    .line 83
    :goto_1
    return v3

    .line 68
    :cond_0
    add-int/lit8 v8, v7, 0x1

    move-object/from16 v3, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    invoke-static/range {v3 .. v13}, Lorg/andengine/util/algorithm/collision/ShapeCollisionChecker;->checkCollisionSub([FIIIII[FIIII)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 69
    const/4 v3, 0x1

    goto :goto_1

    .line 66
    :cond_1
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 78
    :cond_2
    const/4 v3, 0x0

    move-object/from16 v0, p5

    move/from16 v1, p7

    move/from16 v2, p9

    invoke-static {v0, v1, v2, v3}, Lorg/andengine/opengl/util/VertexUtils;->getVertex([FIII)F

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v0, p5

    move/from16 v1, p8

    move/from16 v2, p9

    invoke-static {v0, v1, v2, v4}, Lorg/andengine/opengl/util/VertexUtils;->getVertex([FIII)F

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v1, v3, v4}, Lorg/andengine/util/algorithm/collision/ShapeCollisionChecker;->checkContains([FIFF)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 79
    const/4 v3, 0x1

    goto :goto_1

    .line 80
    :cond_3
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p4

    invoke-static {v0, v1, v2, v3}, Lorg/andengine/opengl/util/VertexUtils;->getVertex([FIII)F

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-static {v0, v1, v2, v4}, Lorg/andengine/opengl/util/VertexUtils;->getVertex([FIII)F

    move-result v4

    move-object/from16 v0, p5

    move/from16 v1, p6

    invoke-static {v0, v1, v3, v4}, Lorg/andengine/util/algorithm/collision/ShapeCollisionChecker;->checkContains([FIFF)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 81
    const/4 v3, 0x1

    goto :goto_1

    .line 83
    :cond_4
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static checkCollision([FI[FI)Z
    .locals 10
    .parameter "pVerticesA"
    .parameter "pVertexCountA"
    .parameter "pVerticesB"
    .parameter "pVertexCountB"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    move-object v0, p0

    move v1, p1

    move-object v5, p2

    move v6, p3

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-static/range {v0 .. v9}, Lorg/andengine/util/algorithm/collision/ShapeCollisionChecker;->checkCollision([FIIII[FIIII)Z

    move-result v0

    return v0
.end method

.method private static checkCollisionSub([FIIIII[FIIII)Z
    .locals 13
    .parameter "pVerticesA"
    .parameter "pVertexOffsetXA"
    .parameter "pVertexOffsetYA"
    .parameter "pVertexStrideA"
    .parameter "pVertexIndexA1"
    .parameter "pVertexIndexA2"
    .parameter "pVerticesB"
    .parameter "pVertexCountB"
    .parameter "pVertexOffsetXB"
    .parameter "pVertexOffsetYB"
    .parameter "pVertexStrideB"

    .prologue
    .line 106
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {p0, p1, v0, v1}, Lorg/andengine/opengl/util/VertexUtils;->getVertex([FIII)F

    move-result v3

    .line 107
    .local v3, vertexA1X:F
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {p0, p2, v0, v1}, Lorg/andengine/opengl/util/VertexUtils;->getVertex([FIII)F

    move-result v4

    .line 108
    .local v4, vertexA1Y:F
    move/from16 v0, p3

    move/from16 v1, p5

    invoke-static {p0, p1, v0, v1}, Lorg/andengine/opengl/util/VertexUtils;->getVertex([FIII)F

    move-result v5

    .line 109
    .local v5, vertexA2X:F
    move/from16 v0, p3

    move/from16 v1, p5

    invoke-static {p0, p2, v0, v1}, Lorg/andengine/opengl/util/VertexUtils;->getVertex([FIII)F

    move-result v6

    .line 111
    .local v6, vertexA2Y:F
    add-int/lit8 v11, p7, -0x2

    .local v11, b:I
    :goto_0
    if-gez v11, :cond_0

    .line 121
    add-int/lit8 v12, p7, -0x1

    move-object/from16 v0, p6

    move/from16 v1, p8

    move/from16 v2, p10

    invoke-static {v0, v1, v2, v12}, Lorg/andengine/opengl/util/VertexUtils;->getVertex([FIII)F

    move-result v7

    .line 122
    .local v7, vertexB1X:F
    add-int/lit8 v12, p7, -0x1

    move-object/from16 v0, p6

    move/from16 v1, p9

    move/from16 v2, p10

    invoke-static {v0, v1, v2, v12}, Lorg/andengine/opengl/util/VertexUtils;->getVertex([FIII)F

    move-result v8

    .line 123
    .local v8, vertexB1Y:F
    const/4 v12, 0x0

    move-object/from16 v0, p6

    move/from16 v1, p8

    move/from16 v2, p10

    invoke-static {v0, v1, v2, v12}, Lorg/andengine/opengl/util/VertexUtils;->getVertex([FIII)F

    move-result v9

    .line 124
    .local v9, vertexB2X:F
    const/4 v12, 0x0

    move-object/from16 v0, p6

    move/from16 v1, p9

    move/from16 v2, p10

    invoke-static {v0, v1, v2, v12}, Lorg/andengine/opengl/util/VertexUtils;->getVertex([FIII)F

    move-result v10

    .line 125
    .local v10, vertexB2Y:F
    invoke-static/range {v3 .. v10}, Lorg/andengine/util/algorithm/collision/LineCollisionChecker;->checkLineCollision(FFFFFFFF)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 126
    const/4 v12, 0x1

    .line 128
    :goto_1
    return v12

    .line 112
    .end local v7           #vertexB1X:F
    .end local v8           #vertexB1Y:F
    .end local v9           #vertexB2X:F
    .end local v10           #vertexB2Y:F
    :cond_0
    move-object/from16 v0, p6

    move/from16 v1, p8

    move/from16 v2, p10

    invoke-static {v0, v1, v2, v11}, Lorg/andengine/opengl/util/VertexUtils;->getVertex([FIII)F

    move-result v7

    .line 113
    .restart local v7       #vertexB1X:F
    move-object/from16 v0, p6

    move/from16 v1, p9

    move/from16 v2, p10

    invoke-static {v0, v1, v2, v11}, Lorg/andengine/opengl/util/VertexUtils;->getVertex([FIII)F

    move-result v8

    .line 114
    .restart local v8       #vertexB1Y:F
    add-int/lit8 v12, v11, 0x1

    move-object/from16 v0, p6

    move/from16 v1, p8

    move/from16 v2, p10

    invoke-static {v0, v1, v2, v12}, Lorg/andengine/opengl/util/VertexUtils;->getVertex([FIII)F

    move-result v9

    .line 115
    .restart local v9       #vertexB2X:F
    add-int/lit8 v12, v11, 0x1

    move-object/from16 v0, p6

    move/from16 v1, p9

    move/from16 v2, p10

    invoke-static {v0, v1, v2, v12}, Lorg/andengine/opengl/util/VertexUtils;->getVertex([FIII)F

    move-result v10

    .line 116
    .restart local v10       #vertexB2Y:F
    invoke-static/range {v3 .. v10}, Lorg/andengine/util/algorithm/collision/LineCollisionChecker;->checkLineCollision(FFFFFFFF)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 117
    const/4 v12, 0x1

    goto :goto_1

    .line 111
    :cond_1
    add-int/lit8 v11, v11, -0x1

    goto :goto_0

    .line 128
    :cond_2
    const/4 v12, 0x0

    goto :goto_1
.end method

.method public static checkContains([FIFF)Z
    .locals 7
    .parameter "pVertices"
    .parameter "pVertexCount"
    .parameter "pX"
    .parameter "pY"

    .prologue
    .line 141
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    move-object v0, p0

    move v1, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lorg/andengine/util/algorithm/collision/ShapeCollisionChecker;->checkContains([FIIIIFF)Z

    move-result v0

    return v0
.end method

.method public static checkContains([FIIIIFF)Z
    .locals 9
    .parameter "pVertices"
    .parameter "pVertexCount"
    .parameter "pVertexOffsetX"
    .parameter "pVertexOffsetY"
    .parameter "pVertexStride"
    .parameter "pX"
    .parameter "pY"

    .prologue
    .line 159
    const/4 v2, 0x0

    .line 161
    .local v2, odd:Z
    add-int/lit8 v1, p1, -0x1

    .line 162
    .local v1, j:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 174
    return v2

    .line 163
    :cond_0
    invoke-static {p0, p2, p4, v0}, Lorg/andengine/opengl/util/VertexUtils;->getVertex([FIII)F

    move-result v3

    .line 164
    .local v3, vertexXI:F
    invoke-static {p0, p3, p4, v0}, Lorg/andengine/opengl/util/VertexUtils;->getVertex([FIII)F

    move-result v5

    .line 165
    .local v5, vertexYI:F
    invoke-static {p0, p2, p4, v1}, Lorg/andengine/opengl/util/VertexUtils;->getVertex([FIII)F

    move-result v4

    .line 166
    .local v4, vertexXJ:F
    invoke-static {p0, p3, p4, v1}, Lorg/andengine/opengl/util/VertexUtils;->getVertex([FIII)F

    move-result v6

    .line 168
    .local v6, vertexYJ:F
    cmpg-float v7, v5, p6

    if-gez v7, :cond_1

    cmpl-float v7, v6, p6

    if-gez v7, :cond_2

    :cond_1
    cmpg-float v7, v6, p6

    if-gez v7, :cond_4

    cmpl-float v7, v5, p6

    if-ltz v7, :cond_4

    :cond_2
    cmpg-float v7, v3, p5

    if-lez v7, :cond_3

    cmpg-float v7, v4, p5

    if-gtz v7, :cond_4

    .line 169
    :cond_3
    sub-float v7, p6, v5

    sub-float v8, v6, v5

    div-float/2addr v7, v8

    sub-float v8, v4, v3

    mul-float/2addr v7, v8

    add-float/2addr v7, v3

    cmpg-float v7, v7, p5

    if-gez v7, :cond_5

    const/4 v7, 0x1

    :goto_1
    xor-int/2addr v2, v7

    .line 171
    :cond_4
    move v1, v0

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_5
    const/4 v7, 0x0

    goto :goto_1
.end method
