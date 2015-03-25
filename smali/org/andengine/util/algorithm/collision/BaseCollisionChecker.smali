.class public Lorg/andengine/util/algorithm/collision/BaseCollisionChecker;
.super Ljava/lang/Object;
.source "BaseCollisionChecker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAxisAlignedRectangleCollision(FFFFFFFF)Z
    .locals 1
    .parameter "pLeftA"
    .parameter "pTopA"
    .parameter "pRightA"
    .parameter "pBottomA"
    .parameter "pLeftB"
    .parameter "pTopB"
    .parameter "pRightB"
    .parameter "pBottomB"

    .prologue
    .line 36
    cmpg-float v0, p0, p6

    if-gez v0, :cond_0

    .line 37
    cmpg-float v0, p4, p2

    if-gez v0, :cond_0

    .line 38
    cmpg-float v0, p1, p7

    if-gez v0, :cond_0

    .line 36
    cmpg-float v0, p5, p3

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkAxisAlignedRectangleContains(FFFFFF)Z
    .locals 1
    .parameter "pLeft"
    .parameter "pTop"
    .parameter "pRight"
    .parameter "pBottom"
    .parameter "pX"
    .parameter "pY"

    .prologue
    .line 43
    cmpl-float v0, p4, p0

    if-lez v0, :cond_0

    .line 44
    cmpg-float v0, p4, p2

    if-gez v0, :cond_0

    .line 45
    cmpl-float v0, p5, p1

    if-lez v0, :cond_0

    .line 43
    cmpg-float v0, p5, p3

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static relativeCCW(FFFFFF)I
    .locals 4
    .parameter "pX1"
    .parameter "pY1"
    .parameter "pX2"
    .parameter "pY2"
    .parameter "pPX"
    .parameter "pPY"

    .prologue
    const/4 v3, 0x0

    .line 87
    sub-float/2addr p2, p0

    .line 88
    sub-float/2addr p3, p1

    .line 89
    sub-float/2addr p4, p0

    .line 90
    sub-float/2addr p5, p1

    .line 91
    mul-float v1, p4, p3

    mul-float v2, p5, p2

    sub-float v0, v1, v2

    .line 92
    .local v0, ccw:F
    cmpl-float v1, v0, v3

    if-nez v1, :cond_0

    .line 99
    mul-float v1, p4, p2

    mul-float v2, p5, p3

    add-float v0, v1, v2

    .line 100
    cmpl-float v1, v0, v3

    if-lez v1, :cond_0

    .line 108
    sub-float/2addr p4, p2

    .line 109
    sub-float/2addr p5, p3

    .line 110
    mul-float v1, p4, p2

    mul-float v2, p5, p3

    add-float v0, v1, v2

    .line 111
    cmpg-float v1, v0, v3

    if-gez v1, :cond_0

    .line 112
    const/4 v0, 0x0

    .line 116
    :cond_0
    cmpg-float v1, v0, v3

    if-gez v1, :cond_1

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_1
    cmpl-float v1, v0, v3

    if-lez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
