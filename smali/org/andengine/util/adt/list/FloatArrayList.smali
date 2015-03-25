.class public Lorg/andengine/util/adt/list/FloatArrayList;
.super Ljava/lang/Object;
.source "FloatArrayList.java"

# interfaces
.implements Lorg/andengine/util/adt/list/IFloatList;


# static fields
.field private static final CAPACITY_INITIAL_DEFAULT:I


# instance fields
.field private mItems:[F

.field private mSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/andengine/util/adt/list/FloatArrayList;-><init>(I)V

    .line 31
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "pInitialCapacity"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-array v0, p1, [F

    iput-object v0, p0, Lorg/andengine/util/adt/list/FloatArrayList;->mItems:[F

    .line 35
    return-void
.end method

.method private ensureCapacity(I)V
    .locals 5
    .parameter "pCapacity"

    .prologue
    const/4 v4, 0x0

    .line 109
    iget-object v3, p0, Lorg/andengine/util/adt/list/FloatArrayList;->mItems:[F

    array-length v0, v3

    .line 110
    .local v0, currentCapacity:I
    if-ge v0, p1, :cond_0

    .line 112
    mul-int/lit8 v3, v0, 0x3

    shr-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v3, 0x1

    .line 113
    .local v1, newCapacity:I
    new-array v2, v1, [F

    .line 114
    .local v2, newItems:[F
    iget-object v3, p0, Lorg/andengine/util/adt/list/FloatArrayList;->mItems:[F

    invoke-static {v3, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    iput-object v2, p0, Lorg/andengine/util/adt/list/FloatArrayList;->mItems:[F

    .line 117
    .end local v1           #newCapacity:I
    .end local v2           #newItems:[F
    :cond_0
    return-void
.end method


# virtual methods
.method public add(F)V
    .locals 2
    .parameter "pItem"

    .prologue
    .line 57
    iget v0, p0, Lorg/andengine/util/adt/list/FloatArrayList;->mSize:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/andengine/util/adt/list/FloatArrayList;->ensureCapacity(I)V

    .line 59
    iget-object v0, p0, Lorg/andengine/util/adt/list/FloatArrayList;->mItems:[F

    iget v1, p0, Lorg/andengine/util/adt/list/FloatArrayList;->mSize:I

    aput p1, v0, v1

    .line 60
    iget v0, p0, Lorg/andengine/util/adt/list/FloatArrayList;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/andengine/util/adt/list/FloatArrayList;->mSize:I

    .line 61
    return-void
.end method

.method public add(IF)V
    .locals 4
    .parameter "pIndex"
    .parameter "pItem"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 65
    iget v0, p0, Lorg/andengine/util/adt/list/FloatArrayList;->mSize:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/andengine/util/adt/list/FloatArrayList;->ensureCapacity(I)V

    .line 67
    iget-object v0, p0, Lorg/andengine/util/adt/list/FloatArrayList;->mItems:[F

    iget-object v1, p0, Lorg/andengine/util/adt/list/FloatArrayList;->mItems:[F

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lorg/andengine/util/adt/list/FloatArrayList;->mSize:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    iget-object v0, p0, Lorg/andengine/util/adt/list/FloatArrayList;->mItems:[F

    aput p2, v0, p1

    .line 70
    iget v0, p0, Lorg/andengine/util/adt/list/FloatArrayList;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/andengine/util/adt/list/FloatArrayList;->mSize:I

    .line 71
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lorg/andengine/util/adt/list/FloatArrayList;->mSize:I

    .line 95
    return-void
.end method

.method public get(I)F
    .locals 1
    .parameter "pIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lorg/andengine/util/adt/list/FloatArrayList;->mItems:[F

    aget v0, v0, p1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lorg/andengine/util/adt/list/FloatArrayList;->mSize:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove(I)F
    .locals 5
    .parameter "pIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 75
    iget-object v2, p0, Lorg/andengine/util/adt/list/FloatArrayList;->mItems:[F

    aget v1, v2, p1

    .line 77
    .local v1, oldValue:F
    iget v2, p0, Lorg/andengine/util/adt/list/FloatArrayList;->mSize:I

    sub-int/2addr v2, p1

    add-int/lit8 v0, v2, -0x1

    .line 78
    .local v0, numMoved:I
    if-lez v0, :cond_0

    .line 79
    iget-object v2, p0, Lorg/andengine/util/adt/list/FloatArrayList;->mItems:[F

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Lorg/andengine/util/adt/list/FloatArrayList;->mItems:[F

    invoke-static {v2, v3, v4, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    :cond_0
    iget v2, p0, Lorg/andengine/util/adt/list/FloatArrayList;->mSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/andengine/util/adt/list/FloatArrayList;->mSize:I

    .line 84
    return v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lorg/andengine/util/adt/list/FloatArrayList;->mSize:I

    return v0
.end method

.method public toArray()[F
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 99
    iget v1, p0, Lorg/andengine/util/adt/list/FloatArrayList;->mSize:I

    new-array v0, v1, [F

    .line 100
    .local v0, array:[F
    iget-object v1, p0, Lorg/andengine/util/adt/list/FloatArrayList;->mItems:[F

    iget v2, p0, Lorg/andengine/util/adt/list/FloatArrayList;->mSize:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    return-object v0
.end method
