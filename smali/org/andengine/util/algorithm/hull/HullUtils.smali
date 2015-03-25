.class public Lorg/andengine/util/algorithm/hull/HullUtils;
.super Ljava/lang/Object;
.source "HullUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static indexOfLowestVertex([FIII)I
    .locals 7
    .parameter "pVertices"
    .parameter "pVertexCount"
    .parameter "pVertexOffsetY"
    .parameter "pVertexStride"

    .prologue
    .line 37
    const/4 v4, 0x0

    .line 38
    .local v4, lowestVertexIndex:I
    aget v5, p0, p2

    .line 40
    .local v5, lowestVertexY:F
    mul-int v3, p1, p3

    .line 43
    .local v3, lastVertexOffset:I
    const/4 v0, 0x1

    .line 44
    .local v0, currentVertexIndex:I
    add-int v1, p3, p2

    .line 47
    .local v1, currentVertexOffsetY:I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 58
    return v4

    .line 48
    :cond_0
    aget v2, p0, v1

    .line 51
    .local v2, currentVertexY:F
    cmpg-float v6, v2, v5

    if-gez v6, :cond_1

    .line 52
    move v4, v0

    .line 53
    move v5, v2

    .line 55
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 56
    add-int/2addr v1, p3

    goto :goto_0
.end method

.method public static swap([FIII)V
    .locals 6
    .parameter "pVertices"
    .parameter "pVertexStride"
    .parameter "pVertexIndexA"
    .parameter "pVertexIndexB"

    .prologue
    .line 62
    mul-int v2, p2, p1

    .line 63
    .local v2, vertexOffsetA:I
    mul-int v3, p3, p1

    .line 65
    .local v3, vertexOffsetB:I
    add-int/lit8 v0, p1, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 70
    return-void

    .line 66
    :cond_0
    add-int v4, v2, v0

    aget v1, p0, v4

    .line 67
    .local v1, tmp:F
    add-int v4, v2, v0

    add-int v5, v3, v0

    aget v5, p0, v5

    aput v5, p0, v4

    .line 68
    add-int v4, v3, v0

    aput v1, p0, v4

    .line 65
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
