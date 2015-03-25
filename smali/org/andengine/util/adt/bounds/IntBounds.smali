.class public Lorg/andengine/util/adt/bounds/IntBounds;
.super Ljava/lang/Object;
.source "IntBounds.java"

# interfaces
.implements Lorg/andengine/util/adt/bounds/IIntBounds;


# instance fields
.field private mXMax:I

.field private mXMin:I

.field private mYMax:I

.field private mYMin:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "pX"
    .parameter "pY"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p0, p1, p2}, Lorg/andengine/util/adt/bounds/IntBounds;->set(II)V

    .line 31
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .parameter "pXMin"
    .parameter "pYMin"
    .parameter "pXMax"
    .parameter "pYMax"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/andengine/util/adt/bounds/IntBounds;->set(IIII)V

    .line 35
    return-void
.end method


# virtual methods
.method public contains(II)Z
    .locals 6
    .parameter "pX"
    .parameter "pY"

    .prologue
    .line 84
    iget v0, p0, Lorg/andengine/util/adt/bounds/IntBounds;->mXMin:I

    iget v1, p0, Lorg/andengine/util/adt/bounds/IntBounds;->mYMin:I

    iget v2, p0, Lorg/andengine/util/adt/bounds/IntBounds;->mXMax:I

    iget v3, p0, Lorg/andengine/util/adt/bounds/IntBounds;->mYMax:I

    move v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lorg/andengine/util/adt/spatial/bounds/util/IntBoundsUtils;->contains(IIIIII)Z

    move-result v0

    return v0
.end method

.method public getXMax()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lorg/andengine/util/adt/bounds/IntBounds;->mXMax:I

    return v0
.end method

.method public getXMin()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lorg/andengine/util/adt/bounds/IntBounds;->mXMin:I

    return v0
.end method

.method public getYMax()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lorg/andengine/util/adt/bounds/IntBounds;->mYMax:I

    return v0
.end method

.method public getYMin()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lorg/andengine/util/adt/bounds/IntBounds;->mYMin:I

    return v0
.end method

.method public set(II)V
    .locals 0
    .parameter "pX"
    .parameter "pY"

    .prologue
    .line 62
    invoke-virtual {p0, p1, p2, p1, p2}, Lorg/andengine/util/adt/bounds/IntBounds;->set(IIII)V

    .line 63
    return-void
.end method

.method public set(IIII)V
    .locals 3
    .parameter "pXMin"
    .parameter "pYMin"
    .parameter "pXMax"
    .parameter "pYMax"

    .prologue
    .line 66
    iput p1, p0, Lorg/andengine/util/adt/bounds/IntBounds;->mXMin:I

    .line 67
    iput p2, p0, Lorg/andengine/util/adt/bounds/IntBounds;->mYMin:I

    .line 68
    iput p3, p0, Lorg/andengine/util/adt/bounds/IntBounds;->mXMax:I

    .line 69
    iput p4, p0, Lorg/andengine/util/adt/bounds/IntBounds;->mYMax:I

    .line 71
    if-le p1, p3, :cond_0

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pXMin: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' must be smaller or equal to pXMax: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
    if-le p2, p4, :cond_1

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pYMin: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' must be smaller or equal to pYMax: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
