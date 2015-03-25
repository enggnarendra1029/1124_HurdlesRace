.class public Lorg/andengine/util/algorithm/hull/JarvisMarch;
.super Ljava/lang/Object;
.source "JarvisMarch.java"

# interfaces
.implements Lorg/andengine/util/algorithm/hull/IHullAlgorithm;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static jarvisMarch([FIIII)I
    .locals 21
    .parameter "pVertices"
    .parameter "pVertexCount"
    .parameter "pVertexOffsetX"
    .parameter "pVertexOffsetY"
    .parameter "pVertexStride"

    .prologue
    .line 53
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v3}, Lorg/andengine/util/algorithm/hull/HullUtils;->indexOfLowestVertex([FIII)I

    move-result v10

    .line 54
    .local v10, firstHullVertexIndex:I
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p4

    invoke-static {v0, v1, v2, v10}, Lorg/andengine/opengl/util/VertexUtils;->getVertex([FIII)F

    move-result v11

    .line 55
    .local v11, firstHullVertexX:F
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-static {v0, v1, v2, v10}, Lorg/andengine/opengl/util/VertexUtils;->getVertex([FIII)F

    move-result v12

    .line 57
    .local v12, firstHullVertexY:F
    const/4 v13, 0x0

    .line 58
    .local v13, hullVertexCount:I
    move v7, v10

    .line 59
    .local v7, currentHullVertexIndex:I
    const/4 v6, 0x0

    .line 61
    .local v6, currentHullVertexAngle:F
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-static {v0, v1, v13, v7}, Lorg/andengine/util/algorithm/hull/HullUtils;->swap([FIII)V

    .line 63
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p4

    invoke-static {v0, v1, v2, v13}, Lorg/andengine/opengl/util/VertexUtils;->getVertex([FIII)F

    move-result v4

    .line 64
    .local v4, currentHullPointVertexX:F
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-static {v0, v1, v2, v13}, Lorg/andengine/opengl/util/VertexUtils;->getVertex([FIII)F

    move-result v5

    .line 66
    .local v5, currentHullPointVertexY:F
    add-int/lit8 v13, v13, 0x1

    .line 70
    const/16 v16, 0x0

    .line 71
    .local v16, nextHullVertexIndex:I
    const v15, 0x40c90fdb

    .line 74
    .local v15, nextHullVertexAngle:F
    move v14, v13

    .local v14, j:I
    :goto_0
    move/from16 v0, p1

    if-lt v14, v0, :cond_2

    .line 95
    const/16 v20, 0x1

    move/from16 v0, v20

    if-le v13, v0, :cond_6

    .line 96
    sub-float v8, v11, v4

    .line 97
    .local v8, dX:F
    sub-float v9, v12, v5

    .line 99
    .local v9, dY:F
    invoke-static {v9, v8}, Lorg/andengine/util/math/MathUtils;->atan2(FF)F

    move-result v17

    .line 100
    .local v17, possibleNextHullVertexAngle:F
    const/16 v20, 0x0

    cmpg-float v20, v17, v20

    if-gez v20, :cond_1

    .line 101
    const v20, 0x40c90fdb

    add-float v17, v17, v20

    .line 103
    :cond_1
    cmpl-float v20, v17, v6

    if-ltz v20, :cond_6

    cmpg-float v20, v17, v15

    if-gtz v20, :cond_6

    .line 112
    .end local v8           #dX:F
    .end local v9           #dY:F
    .end local v17           #possibleNextHullVertexAngle:F
    :goto_1
    return v13

    .line 75
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p4

    invoke-static {v0, v1, v2, v14}, Lorg/andengine/opengl/util/VertexUtils;->getVertex([FIII)F

    move-result v18

    .line 76
    .local v18, possibleNextHullVertexX:F
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-static {v0, v1, v2, v14}, Lorg/andengine/opengl/util/VertexUtils;->getVertex([FIII)F

    move-result v19

    .line 79
    .local v19, possibleNextHullVertexY:F
    cmpl-float v20, v4, v18

    if-nez v20, :cond_3

    cmpl-float v20, v5, v19

    if-eqz v20, :cond_5

    .line 80
    :cond_3
    sub-float v8, v18, v4

    .line 81
    .restart local v8       #dX:F
    sub-float v9, v19, v5

    .line 83
    .restart local v9       #dY:F
    invoke-static {v9, v8}, Lorg/andengine/util/math/MathUtils;->atan2(FF)F

    move-result v17

    .line 84
    .restart local v17       #possibleNextHullVertexAngle:F
    const/16 v20, 0x0

    cmpg-float v20, v17, v20

    if-gez v20, :cond_4

    .line 85
    const v20, 0x40c90fdb

    add-float v17, v17, v20

    .line 87
    :cond_4
    cmpl-float v20, v17, v6

    if-ltz v20, :cond_5

    cmpg-float v20, v17, v15

    if-gtz v20, :cond_5

    .line 88
    move/from16 v16, v14

    .line 89
    move/from16 v15, v17

    .line 74
    .end local v8           #dX:F
    .end local v9           #dY:F
    .end local v17           #possibleNextHullVertexAngle:F
    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 108
    .end local v18           #possibleNextHullVertexX:F
    .end local v19           #possibleNextHullVertexY:F
    :cond_6
    move v6, v15

    .line 109
    move/from16 v7, v16

    .line 60
    if-gtz v7, :cond_0

    goto :goto_1
.end method


# virtual methods
.method public computeHull([FIIII)I
    .locals 1
    .parameter "pVertices"
    .parameter "pVertexCount"
    .parameter "pVertexOffsetX"
    .parameter "pVertexOffsetY"
    .parameter "pVertexStride"

    .prologue
    .line 44
    invoke-static {p1, p2, p3, p4, p5}, Lorg/andengine/util/algorithm/hull/JarvisMarch;->jarvisMarch([FIIII)I

    move-result v0

    return v0
.end method
