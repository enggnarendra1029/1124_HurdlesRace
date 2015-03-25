.class public Lorg/andengine/util/algorithm/collision/TriangleCollisionChecker;
.super Ljava/lang/Object;
.source "TriangleCollisionChecker.java"


# static fields
.field public static final TRIANGLE_VERTEX_COUNT:I = 0x3

.field private static final VERTICES_CONTAINS_TMP:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x6

    new-array v0, v0, [F

    sput-object v0, Lorg/andengine/util/algorithm/collision/TriangleCollisionChecker;->VERTICES_CONTAINS_TMP:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkContains(FFFFFFFF)Z
    .locals 17
    .parameter "pX1"
    .parameter "pY1"
    .parameter "pX2"
    .parameter "pY2"
    .parameter "pX3"
    .parameter "pY3"
    .parameter "pX"
    .parameter "pY"

    .prologue
    .line 42
    sub-float v8, p4, p0

    .line 43
    .local v8, v0x:F
    sub-float v9, p5, p1

    .line 44
    .local v9, v0y:F
    sub-float v10, p2, p0

    .line 45
    .local v10, v1x:F
    sub-float v11, p3, p1

    .line 46
    .local v11, v1y:F
    sub-float v12, p6, p0

    .line 47
    .local v12, v2x:F
    sub-float v13, p7, p1

    .line 50
    .local v13, v2y:F
    mul-float v14, v8, v8

    mul-float v15, v9, v9

    add-float v0, v14, v15

    .line 51
    .local v0, dot00:F
    mul-float v14, v8, v10

    mul-float v15, v9, v11

    add-float v1, v14, v15

    .line 52
    .local v1, dot01:F
    mul-float v14, v8, v12

    mul-float v15, v9, v13

    add-float v2, v14, v15

    .line 53
    .local v2, dot02:F
    mul-float v14, v10, v10

    mul-float v15, v11, v11

    add-float v3, v14, v15

    .line 54
    .local v3, dot11:F
    mul-float v14, v10, v12

    mul-float v15, v11, v13

    add-float v4, v14, v15

    .line 57
    .local v4, dot12:F
    const/high16 v14, 0x3f80

    mul-float v15, v0, v3

    mul-float v16, v1, v1

    sub-float v15, v15, v16

    div-float v5, v14, v15

    .line 58
    .local v5, invDenom:F
    mul-float v14, v3, v2

    mul-float v15, v1, v4

    sub-float/2addr v14, v15

    mul-float v6, v14, v5

    .line 59
    .local v6, u:F
    mul-float v14, v0, v4

    mul-float v15, v1, v2

    sub-float/2addr v14, v15

    mul-float v7, v14, v5

    .line 62
    .local v7, v:F
    const/4 v14, 0x0

    cmpl-float v14, v6, v14

    if-lez v14, :cond_0

    const/4 v14, 0x0

    cmpl-float v14, v7, v14

    if-lez v14, :cond_0

    add-float v14, v6, v7

    const/high16 v15, 0x3f80

    cmpg-float v14, v14, v15

    if-gez v14, :cond_0

    const/4 v14, 0x1

    :goto_0
    return v14

    :cond_0
    const/4 v14, 0x0

    goto :goto_0
.end method

.method public static checkContains(FFFFFFLorg/andengine/util/adt/transformation/Transformation;FF)Z
    .locals 8
    .parameter "pX1"
    .parameter "pY1"
    .parameter "pX2"
    .parameter "pY2"
    .parameter "pX3"
    .parameter "pY3"
    .parameter "pTransformation"
    .parameter "pX"
    .parameter "pY"

    .prologue
    .line 66
    sget-object v6, Lorg/andengine/util/algorithm/collision/TriangleCollisionChecker;->VERTICES_CONTAINS_TMP:[F

    const/4 v7, 0x0

    aput p0, v6, v7

    .line 67
    sget-object v6, Lorg/andengine/util/algorithm/collision/TriangleCollisionChecker;->VERTICES_CONTAINS_TMP:[F

    const/4 v7, 0x1

    aput p1, v6, v7

    .line 69
    sget-object v6, Lorg/andengine/util/algorithm/collision/TriangleCollisionChecker;->VERTICES_CONTAINS_TMP:[F

    const/4 v7, 0x2

    aput p2, v6, v7

    .line 70
    sget-object v6, Lorg/andengine/util/algorithm/collision/TriangleCollisionChecker;->VERTICES_CONTAINS_TMP:[F

    const/4 v7, 0x3

    aput p3, v6, v7

    .line 72
    sget-object v6, Lorg/andengine/util/algorithm/collision/TriangleCollisionChecker;->VERTICES_CONTAINS_TMP:[F

    const/4 v7, 0x4

    aput p4, v6, v7

    .line 73
    sget-object v6, Lorg/andengine/util/algorithm/collision/TriangleCollisionChecker;->VERTICES_CONTAINS_TMP:[F

    const/4 v7, 0x5

    aput p5, v6, v7

    .line 75
    sget-object v6, Lorg/andengine/util/algorithm/collision/TriangleCollisionChecker;->VERTICES_CONTAINS_TMP:[F

    invoke-virtual {p6, v6}, Lorg/andengine/util/adt/transformation/Transformation;->transform([F)V

    .line 77
    sget-object v6, Lorg/andengine/util/algorithm/collision/TriangleCollisionChecker;->VERTICES_CONTAINS_TMP:[F

    const/4 v7, 0x0

    aget v0, v6, v7

    .line 78
    .local v0, x1:F
    sget-object v6, Lorg/andengine/util/algorithm/collision/TriangleCollisionChecker;->VERTICES_CONTAINS_TMP:[F

    const/4 v7, 0x1

    aget v1, v6, v7

    .line 79
    .local v1, y1:F
    sget-object v6, Lorg/andengine/util/algorithm/collision/TriangleCollisionChecker;->VERTICES_CONTAINS_TMP:[F

    const/4 v7, 0x2

    aget v2, v6, v7

    .line 80
    .local v2, x2:F
    sget-object v6, Lorg/andengine/util/algorithm/collision/TriangleCollisionChecker;->VERTICES_CONTAINS_TMP:[F

    const/4 v7, 0x3

    aget v3, v6, v7

    .line 81
    .local v3, y2:F
    sget-object v6, Lorg/andengine/util/algorithm/collision/TriangleCollisionChecker;->VERTICES_CONTAINS_TMP:[F

    const/4 v7, 0x4

    aget v4, v6, v7

    .line 82
    .local v4, x3:F
    sget-object v6, Lorg/andengine/util/algorithm/collision/TriangleCollisionChecker;->VERTICES_CONTAINS_TMP:[F

    const/4 v7, 0x5

    aget v5, v6, v7

    .local v5, y3:F
    move v6, p7

    move/from16 v7, p8

    .line 84
    invoke-static/range {v0 .. v7}, Lorg/andengine/util/algorithm/collision/TriangleCollisionChecker;->checkContains(FFFFFFFF)Z

    move-result v6

    return v6
.end method
