.class public final Lorg/andengine/util/adt/spatial/bounds/util/IntBoundsUtils;
.super Ljava/lang/Object;
.source "IntBoundsUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final adjacent(IIIIIIII)Z
    .locals 4
    .parameter "pXMinA"
    .parameter "pYMinA"
    .parameter "pXMaxA"
    .parameter "pYMaxA"
    .parameter "pXMinB"
    .parameter "pYMinB"
    .parameter "pXMaxB"
    .parameter "pYMaxB"

    .prologue
    .line 72
    invoke-static {p2, p6}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {p0, p4}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int v1, v2, v3

    .line 73
    .local v1, width:I
    invoke-static {p3, p7}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {p1, p5}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int v0, v2, v3

    .line 75
    .local v0, height:I
    if-nez v1, :cond_0

    if-gtz v0, :cond_2

    :cond_0
    if-nez v0, :cond_1

    if-gtz v1, :cond_2

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static final adjacent(Lorg/andengine/util/adt/bounds/IIntBounds;Lorg/andengine/util/adt/bounds/IIntBounds;)Z
    .locals 8
    .parameter "pIntBoundsA"
    .parameter "pIntBoundsB"

    .prologue
    .line 68
    invoke-interface {p0}, Lorg/andengine/util/adt/bounds/IIntBounds;->getXMin()I

    move-result v0

    invoke-interface {p0}, Lorg/andengine/util/adt/bounds/IIntBounds;->getYMin()I

    move-result v1

    invoke-interface {p0}, Lorg/andengine/util/adt/bounds/IIntBounds;->getXMax()I

    move-result v2

    invoke-interface {p0}, Lorg/andengine/util/adt/bounds/IIntBounds;->getYMax()I

    move-result v3

    invoke-interface {p1}, Lorg/andengine/util/adt/bounds/IIntBounds;->getXMin()I

    move-result v4

    invoke-interface {p1}, Lorg/andengine/util/adt/bounds/IIntBounds;->getYMin()I

    move-result v5

    invoke-interface {p1}, Lorg/andengine/util/adt/bounds/IIntBounds;->getXMax()I

    move-result v6

    invoke-interface {p1}, Lorg/andengine/util/adt/bounds/IIntBounds;->getYMax()I

    move-result v7

    invoke-static/range {v0 .. v7}, Lorg/andengine/util/adt/spatial/bounds/util/IntBoundsUtils;->adjacent(IIIIIIII)Z

    move-result v0

    return v0
.end method

.method public static final contains(IIIIII)Z
    .locals 1
    .parameter "pXMin"
    .parameter "pYMin"
    .parameter "pXMax"
    .parameter "pYMax"
    .parameter "pX"
    .parameter "pY"

    .prologue
    .line 60
    if-gt p0, p4, :cond_0

    if-gt p1, p5, :cond_0

    if-lt p2, p4, :cond_0

    if-lt p3, p5, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final contains(IIIIIIII)Z
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
    if-gt p0, p4, :cond_0

    if-gt p1, p5, :cond_0

    if-lt p2, p6, :cond_0

    if-lt p3, p7, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final contains(Lorg/andengine/util/adt/bounds/IIntBounds;II)Z
    .locals 6
    .parameter "pIntBounds"
    .parameter "pX"
    .parameter "pY"

    .prologue
    .line 52
    invoke-interface {p0}, Lorg/andengine/util/adt/bounds/IIntBounds;->getXMin()I

    move-result v0

    invoke-interface {p0}, Lorg/andengine/util/adt/bounds/IIntBounds;->getYMin()I

    move-result v1

    invoke-interface {p0}, Lorg/andengine/util/adt/bounds/IIntBounds;->getXMax()I

    move-result v2

    invoke-interface {p0}, Lorg/andengine/util/adt/bounds/IIntBounds;->getYMax()I

    move-result v3

    move v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lorg/andengine/util/adt/spatial/bounds/util/IntBoundsUtils;->contains(IIIIII)Z

    move-result v0

    return v0
.end method

.method public static final contains(Lorg/andengine/util/adt/bounds/IIntBounds;IIII)Z
    .locals 8
    .parameter "pIntBounds"
    .parameter "pXMin"
    .parameter "pYMin"
    .parameter "pXMax"
    .parameter "pYMax"

    .prologue
    .line 56
    invoke-interface {p0}, Lorg/andengine/util/adt/bounds/IIntBounds;->getXMin()I

    move-result v0

    invoke-interface {p0}, Lorg/andengine/util/adt/bounds/IIntBounds;->getYMin()I

    move-result v1

    invoke-interface {p0}, Lorg/andengine/util/adt/bounds/IIntBounds;->getXMax()I

    move-result v2

    invoke-interface {p0}, Lorg/andengine/util/adt/bounds/IIntBounds;->getYMax()I

    move-result v3

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-static/range {v0 .. v7}, Lorg/andengine/util/adt/spatial/bounds/util/IntBoundsUtils;->contains(IIIIIIII)Z

    move-result v0

    return v0
.end method

.method public static final contains(Lorg/andengine/util/adt/bounds/IIntBounds;Lorg/andengine/util/adt/bounds/IIntBounds;)Z
    .locals 8
    .parameter "pIntBoundsA"
    .parameter "pIntBoundsB"

    .prologue
    .line 48
    invoke-interface {p0}, Lorg/andengine/util/adt/bounds/IIntBounds;->getXMin()I

    move-result v0

    invoke-interface {p0}, Lorg/andengine/util/adt/bounds/IIntBounds;->getYMin()I

    move-result v1

    invoke-interface {p0}, Lorg/andengine/util/adt/bounds/IIntBounds;->getXMax()I

    move-result v2

    invoke-interface {p0}, Lorg/andengine/util/adt/bounds/IIntBounds;->getYMax()I

    move-result v3

    invoke-interface {p1}, Lorg/andengine/util/adt/bounds/IIntBounds;->getXMin()I

    move-result v4

    invoke-interface {p1}, Lorg/andengine/util/adt/bounds/IIntBounds;->getYMin()I

    move-result v5

    invoke-interface {p1}, Lorg/andengine/util/adt/bounds/IIntBounds;->getXMax()I

    move-result v6

    invoke-interface {p1}, Lorg/andengine/util/adt/bounds/IIntBounds;->getYMax()I

    move-result v7

    invoke-static/range {v0 .. v7}, Lorg/andengine/util/adt/spatial/bounds/util/IntBoundsUtils;->contains(IIIIIIII)Z

    move-result v0

    return v0
.end method

.method public static final intersects(IIIIIIII)Z
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
    if-ge p0, p6, :cond_0

    if-ge p4, p2, :cond_0

    if-ge p1, p7, :cond_0

    if-lt p5, p3, :cond_1

    .line 43
    :cond_0
    invoke-static/range {p0 .. p7}, Lorg/andengine/util/adt/spatial/bounds/util/IntBoundsUtils;->contains(IIIIIIII)Z

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
    invoke-static/range {v0 .. v7}, Lorg/andengine/util/adt/spatial/bounds/util/IntBoundsUtils;->contains(IIIIIIII)Z

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

.method public static final intersects(Lorg/andengine/util/adt/bounds/IIntBounds;Lorg/andengine/util/adt/bounds/IIntBounds;)Z
    .locals 8
    .parameter "pIntBoundsA"
    .parameter "pIntBoundsB"

    .prologue
    .line 38
    invoke-interface {p0}, Lorg/andengine/util/adt/bounds/IIntBounds;->getXMin()I

    move-result v0

    invoke-interface {p0}, Lorg/andengine/util/adt/bounds/IIntBounds;->getYMin()I

    move-result v1

    invoke-interface {p0}, Lorg/andengine/util/adt/bounds/IIntBounds;->getXMax()I

    move-result v2

    invoke-interface {p0}, Lorg/andengine/util/adt/bounds/IIntBounds;->getYMax()I

    move-result v3

    invoke-interface {p1}, Lorg/andengine/util/adt/bounds/IIntBounds;->getXMin()I

    move-result v4

    invoke-interface {p1}, Lorg/andengine/util/adt/bounds/IIntBounds;->getYMin()I

    move-result v5

    invoke-interface {p1}, Lorg/andengine/util/adt/bounds/IIntBounds;->getXMax()I

    move-result v6

    invoke-interface {p1}, Lorg/andengine/util/adt/bounds/IIntBounds;->getYMax()I

    move-result v7

    invoke-static/range {v0 .. v7}, Lorg/andengine/util/adt/spatial/bounds/util/IntBoundsUtils;->intersects(IIIIIIII)Z

    move-result v0

    return v0
.end method
