.class public Lorg/andengine/extension/physics/box2d/util/hull/GrahamScan;
.super Lorg/andengine/extension/physics/box2d/util/hull/BaseHullAlgorithm;
.source "GrahamScan.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lorg/andengine/extension/physics/box2d/util/hull/BaseHullAlgorithm;-><init>()V

    return-void
.end method

.method private grahamScan()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 51
    invoke-virtual {p0}, Lorg/andengine/extension/physics/box2d/util/hull/GrahamScan;->indexOfLowestVertex()I

    move-result v4

    invoke-virtual {p0, v5, v4}, Lorg/andengine/extension/physics/box2d/util/hull/GrahamScan;->swap(II)V

    .line 52
    new-instance v3, Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, p0, Lorg/andengine/extension/physics/box2d/util/hull/GrahamScan;->mVertices:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v4, v4, v5

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/math/Vector2;-><init>(Lcom/badlogic/gdx/math/Vector2;)V

    .line 53
    .local v3, pl:Lcom/badlogic/gdx/math/Vector2;
    invoke-direct {p0, v3}, Lorg/andengine/extension/physics/box2d/util/hull/GrahamScan;->makeAllVerticesRelativeTo(Lcom/badlogic/gdx/math/Vector2;)V

    .line 54
    invoke-direct {p0}, Lorg/andengine/extension/physics/box2d/util/hull/GrahamScan;->sort()V

    .line 55
    new-instance v4, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v4, v3}, Lcom/badlogic/gdx/math/Vector2;-><init>(Lcom/badlogic/gdx/math/Vector2;)V

    const/high16 v5, -0x4080

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector2;->mul(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/andengine/extension/physics/box2d/util/hull/GrahamScan;->makeAllVerticesRelativeTo(Lcom/badlogic/gdx/math/Vector2;)V

    .line 56
    const/4 v0, 0x3

    .line 57
    .local v0, i:I
    const/4 v2, 0x3

    .line 58
    .local v2, k:I
    :goto_0
    iget v4, p0, Lorg/andengine/extension/physics/box2d/util/hull/GrahamScan;->mVertexCount:I

    if-lt v2, v4, :cond_0

    .line 66
    iput v0, p0, Lorg/andengine/extension/physics/box2d/util/hull/GrahamScan;->mHullVertexCount:I

    .line 67
    return-void

    .line 59
    :cond_0
    invoke-virtual {p0, v0, v2}, Lorg/andengine/extension/physics/box2d/util/hull/GrahamScan;->swap(II)V

    .line 60
    :goto_1
    add-int/lit8 v4, v0, -0x1

    invoke-direct {p0, v4}, Lorg/andengine/extension/physics/box2d/util/hull/GrahamScan;->isConvex(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 63
    add-int/lit8 v2, v2, 0x1

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_1
    add-int/lit8 v4, v0, -0x1

    add-int/lit8 v1, v0, -0x1

    .end local v0           #i:I
    .local v1, i:I
    invoke-virtual {p0, v4, v0}, Lorg/andengine/extension/physics/box2d/util/hull/GrahamScan;->swap(II)V

    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_1
.end method

.method private isConvex(I)Z
    .locals 4
    .parameter "pIndex"

    .prologue
    .line 80
    iget-object v0, p0, Lorg/andengine/extension/physics/box2d/util/hull/GrahamScan;->mVertices:[Lcom/badlogic/gdx/math/Vector2;

    .line 81
    .local v0, vertices:[Lcom/badlogic/gdx/math/Vector2;
    aget-object v1, v0, p1

    add-int/lit8 v2, p1, -0x1

    aget-object v2, v0, v2

    add-int/lit8 v3, p1, 0x1

    aget-object v3, v0, v3

    invoke-static {v1, v2, v3}, Lorg/andengine/extension/physics/box2d/util/hull/Vector2Util;->isConvex(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z

    move-result v1

    return v1
.end method

.method private makeAllVerticesRelativeTo(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 5
    .parameter "pVector"

    .prologue
    .line 70
    iget-object v3, p0, Lorg/andengine/extension/physics/box2d/util/hull/GrahamScan;->mVertices:[Lcom/badlogic/gdx/math/Vector2;

    .line 71
    .local v3, vertices:[Lcom/badlogic/gdx/math/Vector2;
    iget v2, p0, Lorg/andengine/extension/physics/box2d/util/hull/GrahamScan;->mVertexCount:I

    .line 73
    .local v2, vertexCount:I
    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v1, p1}, Lcom/badlogic/gdx/math/Vector2;-><init>(Lcom/badlogic/gdx/math/Vector2;)V

    .line 74
    .local v1, vertexCopy:Lcom/badlogic/gdx/math/Vector2;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 77
    return-void

    .line 75
    :cond_0
    aget-object v4, v3, v0

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/math/Vector2;->sub(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private quicksort(II)V
    .locals 7
    .parameter "pFromIndex"
    .parameter "pToIndex"

    .prologue
    .line 89
    iget-object v5, p0, Lorg/andengine/extension/physics/box2d/util/hull/GrahamScan;->mVertices:[Lcom/badlogic/gdx/math/Vector2;

    .line 90
    .local v5, vertices:[Lcom/badlogic/gdx/math/Vector2;
    move v0, p1

    .line 91
    .local v0, i:I
    move v2, p2

    .line 93
    .local v2, j:I
    add-int v6, p1, p2

    div-int/lit8 v6, v6, 0x2

    aget-object v4, v5, v6

    .line 94
    .local v4, q:Lcom/badlogic/gdx/math/Vector2;
    :cond_0
    :goto_0
    if-le v0, v2, :cond_4

    .line 105
    if-ge p1, v2, :cond_1

    .line 106
    invoke-direct {p0, p1, v2}, Lorg/andengine/extension/physics/box2d/util/hull/GrahamScan;->quicksort(II)V

    .line 108
    :cond_1
    if-ge v0, p2, :cond_2

    .line 109
    invoke-direct {p0, v0, p2}, Lorg/andengine/extension/physics/box2d/util/hull/GrahamScan;->quicksort(II)V

    .line 111
    :cond_2
    return-void

    .line 96
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 95
    :cond_4
    aget-object v6, v5, v0

    invoke-static {v6, v4}, Lorg/andengine/extension/physics/box2d/util/hull/Vector2Util;->isLess(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 98
    :goto_1
    aget-object v6, v5, v2

    invoke-static {v4, v6}, Lorg/andengine/extension/physics/box2d/util/hull/Vector2Util;->isLess(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 101
    if-gt v0, v2, :cond_0

    .line 102
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    add-int/lit8 v3, v2, -0x1

    .end local v2           #j:I
    .local v3, j:I
    invoke-virtual {p0, v0, v2}, Lorg/andengine/extension/physics/box2d/util/hull/GrahamScan;->swap(II)V

    move v2, v3

    .end local v3           #j:I
    .restart local v2       #j:I
    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_0

    .line 99
    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method private sort()V
    .locals 2

    .prologue
    .line 85
    const/4 v0, 0x1

    iget v1, p0, Lorg/andengine/extension/physics/box2d/util/hull/GrahamScan;->mVertexCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v1}, Lorg/andengine/extension/physics/box2d/util/hull/GrahamScan;->quicksort(II)V

    .line 86
    return-void
.end method


# virtual methods
.method public computeHull([Lcom/badlogic/gdx/math/Vector2;)I
    .locals 2
    .parameter "pVertices"

    .prologue
    .line 36
    iput-object p1, p0, Lorg/andengine/extension/physics/box2d/util/hull/GrahamScan;->mVertices:[Lcom/badlogic/gdx/math/Vector2;

    .line 37
    array-length v0, p1

    iput v0, p0, Lorg/andengine/extension/physics/box2d/util/hull/GrahamScan;->mVertexCount:I

    .line 38
    iget v0, p0, Lorg/andengine/extension/physics/box2d/util/hull/GrahamScan;->mVertexCount:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 39
    iget v0, p0, Lorg/andengine/extension/physics/box2d/util/hull/GrahamScan;->mVertexCount:I

    .line 43
    :goto_0
    return v0

    .line 41
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/andengine/extension/physics/box2d/util/hull/GrahamScan;->mHullVertexCount:I

    .line 42
    invoke-direct {p0}, Lorg/andengine/extension/physics/box2d/util/hull/GrahamScan;->grahamScan()V

    .line 43
    iget v0, p0, Lorg/andengine/extension/physics/box2d/util/hull/GrahamScan;->mHullVertexCount:I

    goto :goto_0
.end method
