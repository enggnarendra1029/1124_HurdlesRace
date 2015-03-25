.class public Lorg/andengine/util/adt/bounds/FloatBounds;
.super Ljava/lang/Object;
.source "FloatBounds.java"

# interfaces
.implements Lorg/andengine/util/adt/bounds/IFloatBounds;


# instance fields
.field private mXMax:F

.field private mXMin:F

.field private mYMax:F

.field private mYMin:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .parameter "pX"
    .parameter "pY"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p0, p1, p2}, Lorg/andengine/util/adt/bounds/FloatBounds;->set(FF)V

    .line 31
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .parameter "pXMin"
    .parameter "pYMin"
    .parameter "pXMax"
    .parameter "pYMax"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/andengine/util/adt/bounds/FloatBounds;->set(FFFF)V

    .line 35
    return-void
.end method


# virtual methods
.method public contains(FF)Z
    .locals 6
    .parameter "pX"
    .parameter "pY"

    .prologue
    .line 84
    iget v0, p0, Lorg/andengine/util/adt/bounds/FloatBounds;->mXMin:F

    iget v1, p0, Lorg/andengine/util/adt/bounds/FloatBounds;->mYMin:F

    iget v2, p0, Lorg/andengine/util/adt/bounds/FloatBounds;->mXMax:F

    iget v3, p0, Lorg/andengine/util/adt/bounds/FloatBounds;->mYMax:F

    move v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lorg/andengine/util/adt/spatial/bounds/util/FloatBoundsUtils;->contains(FFFFFF)Z

    move-result v0

    return v0
.end method

.method public getXMax()F
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lorg/andengine/util/adt/bounds/FloatBounds;->mXMax:F

    return v0
.end method

.method public getXMin()F
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lorg/andengine/util/adt/bounds/FloatBounds;->mXMin:F

    return v0
.end method

.method public getYMax()F
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lorg/andengine/util/adt/bounds/FloatBounds;->mYMax:F

    return v0
.end method

.method public getYMin()F
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lorg/andengine/util/adt/bounds/FloatBounds;->mYMin:F

    return v0
.end method

.method public set(FF)V
    .locals 0
    .parameter "pX"
    .parameter "pY"

    .prologue
    .line 62
    invoke-virtual {p0, p1, p2, p1, p2}, Lorg/andengine/util/adt/bounds/FloatBounds;->set(FFFF)V

    .line 63
    return-void
.end method

.method public set(FFFF)V
    .locals 3
    .parameter "pXMin"
    .parameter "pYMin"
    .parameter "pXMax"
    .parameter "pYMax"

    .prologue
    .line 66
    iput p1, p0, Lorg/andengine/util/adt/bounds/FloatBounds;->mXMin:F

    .line 67
    iput p2, p0, Lorg/andengine/util/adt/bounds/FloatBounds;->mYMin:F

    .line 68
    iput p3, p0, Lorg/andengine/util/adt/bounds/FloatBounds;->mXMax:F

    .line 69
    iput p4, p0, Lorg/andengine/util/adt/bounds/FloatBounds;->mYMax:F

    .line 71
    cmpl-float v0, p1, p3

    if-lez v0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pXMin: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' must be smaller or equal to pXMax: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    cmpl-float v0, p2, p4

    if-lez v0, :cond_1

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pYMin: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' must be smaller or equal to pYMax: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_1
    return-void
.end method
