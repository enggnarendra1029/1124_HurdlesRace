.class public Lorg/andengine/extension/physics/box2d/util/hull/QuickHull;
.super Lorg/andengine/extension/physics/box2d/util/hull/BaseHullAlgorithm;
.source "QuickHull.java"


# static fields
.field private static final EPSILON:F = 0.001f


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lorg/andengine/extension/physics/box2d/util/hull/BaseHullAlgorithm;-><init>()V

    return-void
.end method

.method private computeHullVertices(Lorg/andengine/extension/physics/box2d/util/hull/Vector2Line;II)V
    .locals 7
    .parameter "pLine"
    .parameter "pIndexFrom"
    .parameter "pIndexTo"

    .prologue
    .line 61
    if-le p2, p3, :cond_0

    .line 84
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/andengine/extension/physics/box2d/util/hull/QuickHull;->indexOfFurthestVertex(Lorg/andengine/extension/physics/box2d/util/hull/Vector2Line;II)I

    move-result v2

    .line 66
    .local v2, k:I
    new-instance v3, Lorg/andengine/extension/physics/box2d/util/hull/Vector2Line;

    iget-object v5, p1, Lorg/andengine/extension/physics/box2d/util/hull/Vector2Line;->mVertexA:Lcom/badlogic/gdx/math/Vector2;

    iget-object v6, p0, Lorg/andengine/extension/physics/box2d/util/hull/QuickHull;->mVertices:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v6, v6, v2

    invoke-direct {v3, v5, v6}, Lorg/andengine/extension/physics/box2d/util/hull/Vector2Line;-><init>(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)V

    .line 67
    .local v3, lineA:Lorg/andengine/extension/physics/box2d/util/hull/Vector2Line;
    new-instance v4, Lorg/andengine/extension/physics/box2d/util/hull/Vector2Line;

    iget-object v5, p0, Lorg/andengine/extension/physics/box2d/util/hull/QuickHull;->mVertices:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v5, v5, v2

    iget-object v6, p1, Lorg/andengine/extension/physics/box2d/util/hull/Vector2Line;->mVertexB:Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v4, v5, v6}, Lorg/andengine/extension/physics/box2d/util/hull/Vector2Line;-><init>(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)V

    .line 68
    .local v4, lineB:Lorg/andengine/extension/physics/box2d/util/hull/Vector2Line;
    invoke-virtual {p0, v2, p3}, Lorg/andengine/extension/physics/box2d/util/hull/QuickHull;->swap(II)V

    .line 70
    add-int/lit8 v5, p3, -0x1

    invoke-direct {p0, v3, p2, v5}, Lorg/andengine/extension/physics/box2d/util/hull/QuickHull;->partition(Lorg/andengine/extension/physics/box2d/util/hull/Vector2Line;II)I

    move-result v0

    .line 73
    .local v0, i:I
    add-int/lit8 v5, v0, -0x1

    invoke-direct {p0, v3, p2, v5}, Lorg/andengine/extension/physics/box2d/util/hull/QuickHull;->computeHullVertices(Lorg/andengine/extension/physics/box2d/util/hull/Vector2Line;II)V

    .line 76
    invoke-virtual {p0, p3, v0}, Lorg/andengine/extension/physics/box2d/util/hull/QuickHull;->swap(II)V

    .line 77
    iget v5, p0, Lorg/andengine/extension/physics/box2d/util/hull/QuickHull;->mHullVertexCount:I

    invoke-virtual {p0, v0, v5}, Lorg/andengine/extension/physics/box2d/util/hull/QuickHull;->swap(II)V

    .line 78
    iget v5, p0, Lorg/andengine/extension/physics/box2d/util/hull/QuickHull;->mHullVertexCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/andengine/extension/physics/box2d/util/hull/QuickHull;->mHullVertexCount:I

    .line 80
    add-int/lit8 v5, v0, 0x1

    invoke-direct {p0, v4, v5, p3}, Lorg/andengine/extension/physics/box2d/util/hull/QuickHull;->partition(Lorg/andengine/extension/physics/box2d/util/hull/Vector2Line;II)I

    move-result v1

    .line 83
    .local v1, j:I
    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v6, v1, -0x1

    invoke-direct {p0, v4, v5, v6}, Lorg/andengine/extension/physics/box2d/util/hull/QuickHull;->computeHullVertices(Lorg/andengine/extension/physics/box2d/util/hull/Vector2Line;II)V

    goto :goto_0
.end method

.method private indexOfFurthestVertex(Lorg/andengine/extension/physics/box2d/util/hull/Vector2Line;II)I
    .locals 7
    .parameter "pLine"
    .parameter "pFromIndex"
    .parameter "pToIndex"

    .prologue
    .line 87
    iget-object v4, p0, Lorg/andengine/extension/physics/box2d/util/hull/QuickHull;->mVertices:[Lcom/badlogic/gdx/math/Vector2;

    .line 89
    .local v4, vertices:[Lcom/badlogic/gdx/math/Vector2;
    move v1, p2

    .line 90
    .local v1, f:I
    const/4 v3, 0x0

    .line 91
    .local v3, mx:F
    move v2, p2

    .local v2, i:I
    :goto_0
    if-le v2, p3, :cond_0

    .line 98
    return v1

    .line 92
    :cond_0
    aget-object v5, v4, v2

    invoke-static {v5, p1}, Lorg/andengine/extension/physics/box2d/util/hull/Vector2Util;->area2(Lcom/badlogic/gdx/math/Vector2;Lorg/andengine/extension/physics/box2d/util/hull/Vector2Line;)F

    move-result v5

    neg-float v0, v5

    .line 93
    .local v0, d:F
    cmpl-float v5, v0, v3

    if-gtz v5, :cond_1

    cmpl-float v5, v0, v3

    if-nez v5, :cond_2

    aget-object v5, v4, v2

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    aget-object v6, v4, v1

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 94
    :cond_1
    move v3, v0

    .line 95
    move v1, v2

    .line 91
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private partition(Lorg/andengine/extension/physics/box2d/util/hull/Vector2Line;II)I
    .locals 6
    .parameter "pLine"
    .parameter "pFromIndex"
    .parameter "pToIndex"

    .prologue
    .line 102
    iget-object v4, p0, Lorg/andengine/extension/physics/box2d/util/hull/QuickHull;->mVertices:[Lcom/badlogic/gdx/math/Vector2;

    .line 104
    .local v4, vertices:[Lcom/badlogic/gdx/math/Vector2;
    move v0, p2

    .line 105
    .local v0, i:I
    move v2, p3

    .line 106
    .local v2, j:I
    :goto_0
    if-le v0, v2, :cond_5

    .line 117
    return v0

    .line 108
    .end local v0           #i:I
    .local v1, i:I
    :cond_0
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    move v1, v0

    .line 107
    .end local v0           #i:I
    .restart local v1       #i:I
    :goto_1
    if-gt v1, v2, :cond_4

    aget-object v5, v4, v1

    invoke-static {v5, p1}, Lorg/andengine/extension/physics/box2d/util/hull/Vector2Util;->isRightOf(Lcom/badlogic/gdx/math/Vector2;Lorg/andengine/extension/physics/box2d/util/hull/Vector2Line;)Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v2

    .line 110
    .end local v2           #j:I
    .local v3, j:I
    :goto_2
    if-gt v1, v3, :cond_1

    aget-object v5, v4, v3

    invoke-static {v5, p1}, Lorg/andengine/extension/physics/box2d/util/hull/Vector2Util;->isRightOf(Lcom/badlogic/gdx/math/Vector2;Lorg/andengine/extension/physics/box2d/util/hull/Vector2Line;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 113
    :cond_1
    if-gt v1, v3, :cond_3

    .line 114
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    add-int/lit8 v2, v3, -0x1

    .end local v3           #j:I
    .restart local v2       #j:I
    invoke-virtual {p0, v1, v3}, Lorg/andengine/extension/physics/box2d/util/hull/QuickHull;->swap(II)V

    goto :goto_0

    .line 111
    .end local v0           #i:I
    .end local v2           #j:I
    .restart local v1       #i:I
    .restart local v3       #j:I
    :cond_2
    add-int/lit8 v2, v3, -0x1

    .end local v3           #j:I
    .restart local v2       #j:I
    move v3, v2

    .end local v2           #j:I
    .restart local v3       #j:I
    goto :goto_2

    :cond_3
    move v2, v3

    .end local v3           #j:I
    .restart local v2       #j:I
    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_0

    .end local v0           #i:I
    .restart local v1       #i:I
    :cond_4
    move v3, v2

    .end local v2           #j:I
    .restart local v3       #j:I
    goto :goto_2

    .end local v1           #i:I
    .end local v3           #j:I
    .restart local v0       #i:I
    .restart local v2       #j:I
    :cond_5
    move v1, v0

    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_1
.end method

.method private quickHull()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 54
    invoke-virtual {p0}, Lorg/andengine/extension/physics/box2d/util/hull/QuickHull;->indexOfLowestVertex()I

    move-result v1

    invoke-virtual {p0, v4, v1}, Lorg/andengine/extension/physics/box2d/util/hull/QuickHull;->swap(II)V

    .line 55
    iget v1, p0, Lorg/andengine/extension/physics/box2d/util/hull/QuickHull;->mHullVertexCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/andengine/extension/physics/box2d/util/hull/QuickHull;->mHullVertexCount:I

    .line 56
    new-instance v0, Lorg/andengine/extension/physics/box2d/util/hull/Vector2Line;

    iget-object v1, p0, Lorg/andengine/extension/physics/box2d/util/hull/QuickHull;->mVertices:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v1, v1, v4

    new-instance v2, Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, p0, Lorg/andengine/extension/physics/box2d/util/hull/QuickHull;->mVertices:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/math/Vector2;-><init>(Lcom/badlogic/gdx/math/Vector2;)V

    const v3, -0x457ced91

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/math/Vector2;->add(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/andengine/extension/physics/box2d/util/hull/Vector2Line;-><init>(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)V

    .line 57
    .local v0, line:Lorg/andengine/extension/physics/box2d/util/hull/Vector2Line;
    const/4 v1, 0x1

    iget v2, p0, Lorg/andengine/extension/physics/box2d/util/hull/QuickHull;->mVertexCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/andengine/extension/physics/box2d/util/hull/QuickHull;->computeHullVertices(Lorg/andengine/extension/physics/box2d/util/hull/Vector2Line;II)V

    .line 58
    return-void
.end method


# virtual methods
.method public computeHull([Lcom/badlogic/gdx/math/Vector2;)I
    .locals 1
    .parameter "pVectors"

    .prologue
    .line 38
    iput-object p1, p0, Lorg/andengine/extension/physics/box2d/util/hull/QuickHull;->mVertices:[Lcom/badlogic/gdx/math/Vector2;

    .line 39
    iget-object v0, p0, Lorg/andengine/extension/physics/box2d/util/hull/QuickHull;->mVertices:[Lcom/badlogic/gdx/math/Vector2;

    array-length v0, v0

    iput v0, p0, Lorg/andengine/extension/physics/box2d/util/hull/QuickHull;->mVertexCount:I

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lorg/andengine/extension/physics/box2d/util/hull/QuickHull;->mHullVertexCount:I

    .line 41
    invoke-direct {p0}, Lorg/andengine/extension/physics/box2d/util/hull/QuickHull;->quickHull()V

    .line 42
    iget v0, p0, Lorg/andengine/extension/physics/box2d/util/hull/QuickHull;->mHullVertexCount:I

    return v0
.end method
