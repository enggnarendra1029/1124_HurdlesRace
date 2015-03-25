.class public Lorg/andengine/util/algorithm/path/Path;
.super Ljava/lang/Object;
.source "Path.java"


# instance fields
.field private final mXs:[I

.field private final mYs:[I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "pLength"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/andengine/util/algorithm/path/Path;->mXs:[I

    .line 29
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/andengine/util/algorithm/path/Path;->mYs:[I

    .line 30
    return-void
.end method


# virtual methods
.method public contains(II)Z
    .locals 4
    .parameter "pX"
    .parameter "pY"

    .prologue
    .line 78
    iget-object v1, p0, Lorg/andengine/util/algorithm/path/Path;->mXs:[I

    .line 79
    .local v1, xs:[I
    iget-object v2, p0, Lorg/andengine/util/algorithm/path/Path;->mYs:[I

    .line 80
    .local v2, ys:[I
    invoke-virtual {p0}, Lorg/andengine/util/algorithm/path/Path;->getLength()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 85
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 81
    :cond_0
    aget v3, v1, v0

    if-ne v3, p1, :cond_1

    aget v3, v2, v0

    if-ne v3, p2, :cond_1

    .line 82
    const/4 v3, 0x1

    goto :goto_1

    .line 80
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getDirectionToNextStep(I)Lorg/andengine/util/algorithm/path/Direction;
    .locals 4
    .parameter "pIndex"

    .prologue
    .line 99
    invoke-virtual {p0}, Lorg/andengine/util/algorithm/path/Path;->getLength()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_0

    .line 100
    const/4 v2, 0x0

    .line 104
    :goto_0
    return-object v2

    .line 102
    :cond_0
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Lorg/andengine/util/algorithm/path/Path;->getX(I)I

    move-result v2

    invoke-virtual {p0, p1}, Lorg/andengine/util/algorithm/path/Path;->getX(I)I

    move-result v3

    sub-int v0, v2, v3

    .line 103
    .local v0, dX:I
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Lorg/andengine/util/algorithm/path/Path;->getY(I)I

    move-result v2

    invoke-virtual {p0, p1}, Lorg/andengine/util/algorithm/path/Path;->getY(I)I

    move-result v3

    sub-int v1, v2, v3

    .line 104
    .local v1, dY:I
    invoke-static {v0, v1}, Lorg/andengine/util/algorithm/path/Direction;->fromDelta(II)Lorg/andengine/util/algorithm/path/Direction;

    move-result-object v2

    goto :goto_0
.end method

.method public getDirectionToPreviousStep(I)Lorg/andengine/util/algorithm/path/Direction;
    .locals 4
    .parameter "pIndex"

    .prologue
    .line 89
    if-nez p1, :cond_0

    .line 90
    const/4 v2, 0x0

    .line 94
    :goto_0
    return-object v2

    .line 92
    :cond_0
    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p0, v2}, Lorg/andengine/util/algorithm/path/Path;->getX(I)I

    move-result v2

    invoke-virtual {p0, p1}, Lorg/andengine/util/algorithm/path/Path;->getX(I)I

    move-result v3

    sub-int v0, v2, v3

    .line 93
    .local v0, dX:I
    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p0, v2}, Lorg/andengine/util/algorithm/path/Path;->getY(I)I

    move-result v2

    invoke-virtual {p0, p1}, Lorg/andengine/util/algorithm/path/Path;->getY(I)I

    move-result v3

    sub-int v1, v2, v3

    .line 94
    .local v1, dY:I
    invoke-static {v0, v1}, Lorg/andengine/util/algorithm/path/Direction;->fromDelta(II)Lorg/andengine/util/algorithm/path/Direction;

    move-result-object v2

    goto :goto_0
.end method

.method public getFromX()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/andengine/util/algorithm/path/Path;->getX(I)I

    move-result v0

    return v0
.end method

.method public getFromY()I
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/andengine/util/algorithm/path/Path;->getY(I)I

    move-result v0

    return v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lorg/andengine/util/algorithm/path/Path;->mXs:[I

    array-length v0, v0

    return v0
.end method

.method public getToX()I
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lorg/andengine/util/algorithm/path/Path;->getLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/andengine/util/algorithm/path/Path;->getX(I)I

    move-result v0

    return v0
.end method

.method public getToY()I
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lorg/andengine/util/algorithm/path/Path;->getLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/andengine/util/algorithm/path/Path;->getY(I)I

    move-result v0

    return v0
.end method

.method public getX(I)I
    .locals 1
    .parameter "pIndex"

    .prologue
    .line 57
    iget-object v0, p0, Lorg/andengine/util/algorithm/path/Path;->mXs:[I

    aget v0, v0, p1

    return v0
.end method

.method public getY(I)I
    .locals 1
    .parameter "pIndex"

    .prologue
    .line 61
    iget-object v0, p0, Lorg/andengine/util/algorithm/path/Path;->mYs:[I

    aget v0, v0, p1

    return v0
.end method

.method public set(III)V
    .locals 1
    .parameter "pIndex"
    .parameter "pX"
    .parameter "pY"

    .prologue
    .line 73
    iget-object v0, p0, Lorg/andengine/util/algorithm/path/Path;->mXs:[I

    aput p2, v0, p1

    .line 74
    iget-object v0, p0, Lorg/andengine/util/algorithm/path/Path;->mYs:[I

    aput p3, v0, p1

    .line 75
    return-void
.end method
