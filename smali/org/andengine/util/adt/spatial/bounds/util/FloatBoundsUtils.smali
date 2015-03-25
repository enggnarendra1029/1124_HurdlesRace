.class public final Lorg/andengine/util/adt/spatial/bounds/util/FloatBoundsUtils;
.super Ljava/lang/Object;
.source "FloatBoundsUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final contains(FFFFFF)Z
    .locals 1
    .parameter "pXMin"
    .parameter "pYMin"
    .parameter "pXMax"
    .parameter "pYMax"
    .parameter "pX"
    .parameter "pY"

    .prologue
    .line 60
    cmpg-float v0, p0, p4

    if-gtz v0, :cond_0

    cmpg-float v0, p1, p5

    if-gtz v0, :cond_0

    cmpl-float v0, p2, p4

    if-ltz v0, :cond_0

    cmpl-float v0, p3, p5

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final contains(FFFFFFFF)Z
    .locals 1
    .parameter "pXMinA"
    .parameter "pYMinA"
    .parameter "pXMaxA"
    .parameter "pYMaxA"
    .parameter "pXMinB"
    .parameter "pYMinB"
    .parameter "pXMaxB"
    .parameter "pYMaxB"

    .prologue
    .line 64
    cmpg-float v0, p0, p4

    if-gtz v0, :cond_0

    cmpg-float v0, p1, p5

    if-gtz v0, :cond_0

    cmpl-float v0, p2, p6

    if-ltz v0, :cond_0

    cmpl-float v0, p3, p7

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final contains(Lorg/andengine/util/adt/bounds/IFloatBounds;FF)Z
    .locals 6
    .parameter "pFloatBounds"
    .parameter "pX"
    .parameter "pY"

    .prologue
    .line 48
    invoke-interface {p0}, Lorg/andengine/util/adt/bounds/IFloatBounds;->getXMin()F

    move-result v0

    invoke-interface {p0}, Lorg/andengine/util/adt/bounds/IFloatBounds;->getYMin()F

    move-result v1

    invoke-interface {p0}, Lorg/andengine/util/adt/bounds/IFloatBounds;->getXMax()F

    move-result v2

    invoke-interface {p0}, Lorg/andengine/util/adt/bounds/IFloatBounds;->getYMax()F

    move-result v3

    move v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lorg/andengine/util/adt/spatial/bounds/util/FloatBoundsUtils;->contains(FFFFFF)Z

    move-result v0

    return v0
.end method

.method public static final contains(Lorg/andengine/util/adt/bounds/IFloatBounds;FFFF)Z
    .locals 8
    .parameter "pFloatBounds"
    .parameter "pXMin"
    .parameter "pYMin"
    .parameter "pXMax"
    .parameter "pYMax"

    .prologue
    .line 56
    invoke-interface {p0}, Lorg/andengine/util/adt/bounds/IFloatBounds;->getXMin()F

    move-result v0

    invoke-interface {p0}, Lorg/andengine/util/adt/bounds/IFloatBounds;->getYMin()F

    move-result v1

    invoke-interface {p0}, Lorg/andengine/util/adt/bounds/IFloatBounds;->getXMax()F

    move-result v2

    invoke-interface {p0}, Lorg/andengine/util/adt/bounds/IFloatBounds;->getYMax()F

    move-result v3

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-static/range {v0 .. v7}, Lorg/andengine/util/adt/spatial/bounds/util/FloatBoundsUtils;->contains(FFFFFFFF)Z

    move-result v0

    return v0
.end method

.method public static final contains(Lorg/andengine/util/adt/bounds/IFloatBounds;Lorg/andengine/util/adt/bounds/IFloatBounds;)Z
    .locals 8
    .parameter "pFloatBoundsA"
    .parameter "pFloatBoundsB"

    .prologue
    .line 52
    invoke-interface {p0}, Lorg/andengine/util/adt/bounds/IFloatBounds;->getXMin()F

    move-result v0

    invoke-interface {p0}, Lorg/andengine/util/adt/bounds/IFloatBounds;->getYMin()F

    move-result v1

    invoke-interface {p0}, Lorg/andengine/util/adt/bounds/IFloatBounds;->getXMax()F

    move-result v2

    invoke-interface {p0}, Lorg/andengine/util/adt/bounds/IFloatBounds;->getYMax()F

    move-result v3

    invoke-interface {p1}, Lorg/andengine/util/adt/bounds/IFloatBounds;->getXMin()F

    move-result v4

    invoke-interface {p1}, Lorg/andengine/util/adt/bounds/IFloatBounds;->getYMin()F

    move-result v5

    invoke-interface {p1}, Lorg/andengine/util/adt/bounds/IFloatBounds;->getXMax()F

    move-result v6

    invoke-interface {p1}, Lorg/andengine/util/adt/bounds/IFloatBounds;->getYMax()F

    move-result v7

    invoke-static/range {v0 .. v7}, Lorg/andengine/util/adt/spatial/bounds/util/FloatBoundsUtils;->contains(FFFFFFFF)Z

    move-result v0

    return v0
.end method

.method public static final intersects(FFFFFFFF)Z
    .locals 8
    .parameter "pXMinA"
    .parameter "pYMinA"
    .parameter "pXMaxA"
    .parameter "pYMaxA"
    .parameter "pXMinB"
    .parameter "pYMinB"
    .parameter "pXMaxB"
    .parameter "pYMaxB"

    .prologue
    .line 42
    cmpg-float v0, p0, p6

    if-gez v0, :cond_0

    cmpg-float v0, p4, p2

    if-gez v0, :cond_0

    cmpg-float v0, p1, p7

    if-gez v0, :cond_0

    cmpg-float v0, p5, p3

    if-ltz v0, :cond_1

    .line 43
    :cond_0
    invoke-static/range {p0 .. p7}, Lorg/andengine/util/adt/spatial/bounds/util/FloatBoundsUtils;->contains(FFFFFFFF)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, p4

    move v1, p5

    move v2, p6

    move v3, p7

    move v4, p0

    move v5, p1

    move v6, p2

    move v7, p3

    .line 44
    invoke-static/range {v0 .. v7}, Lorg/andengine/util/adt/spatial/bounds/util/FloatBoundsUtils;->contains(FFFFFFFF)Z

    move-result v0

    if-nez v0, :cond_1

    .line 42
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final intersects(Lorg/andengine/util/adt/bounds/IFloatBounds;Lorg/andengine/util/adt/bounds/IFloatBounds;)Z
    .locals 8
    .parameter "pFloatBoundsA"
    .parameter "pFloatBoundsB"

    .prologue
    .line 38
    invoke-interface {p0}, Lorg/andengine/util/adt/bounds/IFloatBounds;->getXMin()F

    move-result v0

    invoke-interface {p0}, Lorg/andengine/util/adt/bounds/IFloatBounds;->getYMin()F

    move-result v1

    invoke-interface {p0}, Lorg/andengine/util/adt/bounds/IFloatBounds;->getXMax()F

    move-result v2

    invoke-interface {p0}, Lorg/andengine/util/adt/bounds/IFloatBounds;->getYMax()F

    move-result v3

    invoke-interface {p1}, Lorg/andengine/util/adt/bounds/IFloatBounds;->getXMin()F

    move-result v4

    invoke-interface {p1}, Lorg/andengine/util/adt/bounds/IFloatBounds;->getYMin()F

    move-result v5

    invoke-interface {p1}, Lorg/andengine/util/adt/bounds/IFloatBounds;->getXMax()F

    move-result v6

    invoke-interface {p1}, Lorg/andengine/util/adt/bounds/IFloatBounds;->getYMax()F

    move-result v7

    invoke-static/range {v0 .. v7}, Lorg/andengine/util/adt/spatial/bounds/util/FloatBoundsUtils;->intersects(FFFFFFFF)Z

    move-result v0

    return v0
.end method
