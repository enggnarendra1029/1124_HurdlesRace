.class public Lorg/andengine/util/adt/list/ShiftList;
.super Ljava/lang/Object;
.source "ShiftList.java"

# interfaces
.implements Lorg/andengine/util/adt/queue/IQueue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/andengine/util/adt/queue/IQueue",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final CAPACITY_INITIAL_DEFAULT:I = 0x1

.field private static final INDEX_INVALID:I = -0x1


# instance fields
.field protected mHead:I

.field protected mItems:[Ljava/lang/Object;

.field protected mTail:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    .local p0, this:Lorg/andengine/util/adt/list/ShiftList;,"Lorg/andengine/util/adt/list/ShiftList<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/andengine/util/adt/list/ShiftList;-><init>(I)V

    .line 44
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "pInitialCapacity"

    .prologue
    .line 46
    .local p0, this:Lorg/andengine/util/adt/list/ShiftList;,"Lorg/andengine/util/adt/list/ShiftList<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/andengine/util/adt/list/ShiftList;->mItems:[Ljava/lang/Object;

    .line 48
    return-void
.end method

.method private ensureShiftableLeft()V
    .locals 8

    .prologue
    .local p0, this:Lorg/andengine/util/adt/list/ShiftList;,"Lorg/andengine/util/adt/list/ShiftList<TT;>;"
    const/4 v6, 0x1

    .line 293
    iget v4, p0, Lorg/andengine/util/adt/list/ShiftList;->mHead:I

    if-nez v4, :cond_0

    .line 294
    iget v4, p0, Lorg/andengine/util/adt/list/ShiftList;->mTail:I

    iget v5, p0, Lorg/andengine/util/adt/list/ShiftList;->mHead:I

    sub-int v3, v4, v5

    .line 295
    .local v3, size:I
    iget-object v4, p0, Lorg/andengine/util/adt/list/ShiftList;->mItems:[Ljava/lang/Object;

    array-length v0, v4

    .line 298
    .local v0, currentCapacity:I
    if-ge v3, v0, :cond_2

    .line 299
    if-nez v3, :cond_1

    .line 300
    iput v6, p0, Lorg/andengine/util/adt/list/ShiftList;->mHead:I

    .line 301
    iput v6, p0, Lorg/andengine/util/adt/list/ShiftList;->mTail:I

    .line 321
    .end local v0           #currentCapacity:I
    .end local v3           #size:I
    :cond_0
    :goto_0
    return-void

    .line 304
    .restart local v0       #currentCapacity:I
    .restart local v3       #size:I
    :cond_1
    iget-object v4, p0, Lorg/andengine/util/adt/list/ShiftList;->mItems:[Ljava/lang/Object;

    iget v5, p0, Lorg/andengine/util/adt/list/ShiftList;->mHead:I

    iget-object v6, p0, Lorg/andengine/util/adt/list/ShiftList;->mItems:[Ljava/lang/Object;

    iget v7, p0, Lorg/andengine/util/adt/list/ShiftList;->mHead:I

    add-int/lit8 v7, v7, 0x1

    invoke-static {v4, v5, v6, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 307
    iget-object v4, p0, Lorg/andengine/util/adt/list/ShiftList;->mItems:[Ljava/lang/Object;

    iget v5, p0, Lorg/andengine/util/adt/list/ShiftList;->mHead:I

    const/4 v6, 0x0

    aput-object v6, v4, v5

    .line 308
    iget v4, p0, Lorg/andengine/util/adt/list/ShiftList;->mHead:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/andengine/util/adt/list/ShiftList;->mHead:I

    .line 309
    iget v4, p0, Lorg/andengine/util/adt/list/ShiftList;->mTail:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/andengine/util/adt/list/ShiftList;->mTail:I

    goto :goto_0

    .line 313
    :cond_2
    mul-int/lit8 v4, v0, 0x3

    shr-int/lit8 v4, v4, 0x1

    add-int/lit8 v1, v4, 0x1

    .line 314
    .local v1, newCapacity:I
    new-array v2, v1, [Ljava/lang/Object;

    .line 315
    .local v2, newItems:[Ljava/lang/Object;
    iget-object v4, p0, Lorg/andengine/util/adt/list/ShiftList;->mItems:[Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v4, v5, v2, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 316
    iput-object v2, p0, Lorg/andengine/util/adt/list/ShiftList;->mItems:[Ljava/lang/Object;

    .line 317
    iget v4, p0, Lorg/andengine/util/adt/list/ShiftList;->mHead:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/andengine/util/adt/list/ShiftList;->mHead:I

    .line 318
    iget v4, p0, Lorg/andengine/util/adt/list/ShiftList;->mTail:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/andengine/util/adt/list/ShiftList;->mTail:I

    goto :goto_0
.end method

.method private ensureShiftableRight()V
    .locals 7

    .prologue
    .local p0, this:Lorg/andengine/util/adt/list/ShiftList;,"Lorg/andengine/util/adt/list/ShiftList<TT;>;"
    const/4 v6, 0x0

    .line 273
    iget-object v4, p0, Lorg/andengine/util/adt/list/ShiftList;->mItems:[Ljava/lang/Object;

    array-length v0, v4

    .line 275
    .local v0, currentCapacity:I
    iget v4, p0, Lorg/andengine/util/adt/list/ShiftList;->mTail:I

    if-ne v4, v0, :cond_0

    .line 276
    iget v4, p0, Lorg/andengine/util/adt/list/ShiftList;->mTail:I

    iget v5, p0, Lorg/andengine/util/adt/list/ShiftList;->mHead:I

    sub-int v3, v4, v5

    .line 279
    .local v3, size:I
    if-eq v3, v0, :cond_1

    .line 280
    invoke-virtual {p0}, Lorg/andengine/util/adt/list/ShiftList;->shift()V

    .line 289
    .end local v3           #size:I
    :cond_0
    :goto_0
    return-void

    .line 283
    .restart local v3       #size:I
    :cond_1
    mul-int/lit8 v4, v0, 0x3

    shr-int/lit8 v4, v4, 0x1

    add-int/lit8 v1, v4, 0x1

    .line 284
    .local v1, newCapacity:I
    new-array v2, v1, [Ljava/lang/Object;

    .line 285
    .local v2, newItems:[Ljava/lang/Object;
    iget-object v4, p0, Lorg/andengine/util/adt/list/ShiftList;->mItems:[Ljava/lang/Object;

    invoke-static {v4, v6, v2, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 286
    iput-object v2, p0, Lorg/andengine/util/adt/list/ShiftList;->mItems:[Ljava/lang/Object;

    goto :goto_0
.end method

.method private enterShiftingLeft(ILjava/lang/Object;)V
    .locals 5
    .parameter "pIndex"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p0, this:Lorg/andengine/util/adt/list/ShiftList;,"Lorg/andengine/util/adt/list/ShiftList<TT;>;"
    .local p2, pItem:Ljava/lang/Object;,"TT;"
    invoke-direct {p0}, Lorg/andengine/util/adt/list/ShiftList;->ensureShiftableLeft()V

    .line 160
    iget v1, p0, Lorg/andengine/util/adt/list/ShiftList;->mHead:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/andengine/util/adt/list/ShiftList;->mHead:I

    .line 163
    if-nez p1, :cond_0

    .line 165
    iget-object v1, p0, Lorg/andengine/util/adt/list/ShiftList;->mItems:[Ljava/lang/Object;

    iget v2, p0, Lorg/andengine/util/adt/list/ShiftList;->mHead:I

    aput-object p2, v1, v2

    .line 172
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v1, p0, Lorg/andengine/util/adt/list/ShiftList;->mItems:[Ljava/lang/Object;

    iget v2, p0, Lorg/andengine/util/adt/list/ShiftList;->mHead:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lorg/andengine/util/adt/list/ShiftList;->mItems:[Ljava/lang/Object;

    iget v4, p0, Lorg/andengine/util/adt/list/ShiftList;->mHead:I

    invoke-static {v1, v2, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    iget v1, p0, Lorg/andengine/util/adt/list/ShiftList;->mHead:I

    add-int v0, v1, p1

    .line 170
    .local v0, internalIndex:I
    iget-object v1, p0, Lorg/andengine/util/adt/list/ShiftList;->mItems:[Ljava/lang/Object;

    aput-object p2, v1, v0

    goto :goto_0
.end method

.method private enterShiftingRight(ILjava/lang/Object;I)V
    .locals 5
    .parameter "pIndex"
    .parameter
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;I)V"
        }
    .end annotation

    .prologue
    .line 140
    .local p0, this:Lorg/andengine/util/adt/list/ShiftList;,"Lorg/andengine/util/adt/list/ShiftList<TT;>;"
    .local p2, pItem:Ljava/lang/Object;,"TT;"
    invoke-direct {p0}, Lorg/andengine/util/adt/list/ShiftList;->ensureShiftableRight()V

    .line 143
    sub-int v1, p3, p1

    .line 144
    .local v1, shiftAmount:I
    if-nez v1, :cond_0

    .line 146
    iget-object v2, p0, Lorg/andengine/util/adt/list/ShiftList;->mItems:[Ljava/lang/Object;

    iget v3, p0, Lorg/andengine/util/adt/list/ShiftList;->mTail:I

    aput-object p2, v2, v3

    .line 154
    :goto_0
    iget v2, p0, Lorg/andengine/util/adt/list/ShiftList;->mTail:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/andengine/util/adt/list/ShiftList;->mTail:I

    .line 155
    return-void

    .line 149
    :cond_0
    iget v2, p0, Lorg/andengine/util/adt/list/ShiftList;->mHead:I

    add-int v0, v2, p1

    .line 150
    .local v0, internalIndex:I
    iget-object v2, p0, Lorg/andengine/util/adt/list/ShiftList;->mItems:[Ljava/lang/Object;

    iget-object v3, p0, Lorg/andengine/util/adt/list/ShiftList;->mItems:[Ljava/lang/Object;

    add-int/lit8 v4, v0, 0x1

    invoke-static {v2, v0, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    iget-object v2, p0, Lorg/andengine/util/adt/list/ShiftList;->mItems:[Ljava/lang/Object;

    aput-object p2, v2, v0

    goto :goto_0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 0
    .parameter "pIndex"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 181
    .local p0, this:Lorg/andengine/util/adt/list/ShiftList;,"Lorg/andengine/util/adt/list/ShiftList<TT;>;"
    .local p2, pItem:Ljava/lang/Object;,"TT;"
    invoke-virtual {p0, p1, p2}, Lorg/andengine/util/adt/list/ShiftList;->enter(ILjava/lang/Object;)V

    .line 182
    return-void
.end method

.method public add(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 176
    .local p0, this:Lorg/andengine/util/adt/list/ShiftList;,"Lorg/andengine/util/adt/list/ShiftList<TT;>;"
    .local p1, pItem:Ljava/lang/Object;,"TT;"
    invoke-virtual {p0, p1}, Lorg/andengine/util/adt/list/ShiftList;->enter(Ljava/lang/Object;)V

    .line 177
    return-void
.end method

.method public clear()V
    .locals 5

    .prologue
    .local p0, this:Lorg/andengine/util/adt/list/ShiftList;,"Lorg/andengine/util/adt/list/ShiftList<TT;>;"
    const/4 v4, 0x0

    .line 242
    iget-object v0, p0, Lorg/andengine/util/adt/list/ShiftList;->mItems:[Ljava/lang/Object;

    iget v1, p0, Lorg/andengine/util/adt/list/ShiftList;->mHead:I

    iget v2, p0, Lorg/andengine/util/adt/list/ShiftList;->mTail:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 243
    iput v4, p0, Lorg/andengine/util/adt/list/ShiftList;->mHead:I

    .line 244
    iput v4, p0, Lorg/andengine/util/adt/list/ShiftList;->mTail:I

    .line 245
    return-void
.end method

.method public enter(ILjava/lang/Object;)V
    .locals 3
    .parameter "pIndex"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 128
    .local p0, this:Lorg/andengine/util/adt/list/ShiftList;,"Lorg/andengine/util/adt/list/ShiftList<TT;>;"
    .local p2, pItem:Ljava/lang/Object;,"TT;"
    iget v1, p0, Lorg/andengine/util/adt/list/ShiftList;->mTail:I

    iget v2, p0, Lorg/andengine/util/adt/list/ShiftList;->mHead:I

    sub-int v0, v1, v2

    .line 130
    .local v0, size:I
    shr-int/lit8 v1, v0, 0x1

    if-ge p1, v1, :cond_0

    .line 132
    invoke-direct {p0, p1, p2}, Lorg/andengine/util/adt/list/ShiftList;->enterShiftingLeft(ILjava/lang/Object;)V

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lorg/andengine/util/adt/list/ShiftList;->enterShiftingRight(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public enter(Ljava/lang/Object;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, this:Lorg/andengine/util/adt/list/ShiftList;,"Lorg/andengine/util/adt/list/ShiftList<TT;>;"
    .local p1, pItem:Ljava/lang/Object;,"TT;"
    invoke-direct {p0}, Lorg/andengine/util/adt/list/ShiftList;->ensureShiftableRight()V

    .line 122
    iget-object v0, p0, Lorg/andengine/util/adt/list/ShiftList;->mItems:[Ljava/lang/Object;

    iget v1, p0, Lorg/andengine/util/adt/list/ShiftList;->mTail:I

    aput-object p1, v0, v1

    .line 123
    iget v0, p0, Lorg/andengine/util/adt/list/ShiftList;->mTail:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/andengine/util/adt/list/ShiftList;->mTail:I

    .line 124
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .parameter "pIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 66
    .local p0, this:Lorg/andengine/util/adt/list/ShiftList;,"Lorg/andengine/util/adt/list/ShiftList<TT;>;"
    iget-object v0, p0, Lorg/andengine/util/adt/list/ShiftList;->mItems:[Ljava/lang/Object;

    iget v1, p0, Lorg/andengine/util/adt/list/ShiftList;->mHead:I

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, this:Lorg/andengine/util/adt/list/ShiftList;,"Lorg/andengine/util/adt/list/ShiftList<TT;>;"
    .local p1, pItem:Ljava/lang/Object;,"TT;"
    if-nez p1, :cond_3

    .line 77
    iget v0, p0, Lorg/andengine/util/adt/list/ShiftList;->mHead:I

    .local v0, i:I
    :goto_0
    iget v1, p0, Lorg/andengine/util/adt/list/ShiftList;->mTail:I

    if-lt v0, v1, :cond_1

    .line 89
    :cond_0
    const/4 v1, -0x1

    :goto_1
    return v1

    .line 78
    :cond_1
    iget-object v1, p0, Lorg/andengine/util/adt/list/ShiftList;->mItems:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-nez v1, :cond_2

    .line 79
    iget v1, p0, Lorg/andengine/util/adt/list/ShiftList;->mHead:I

    sub-int v1, v0, v1

    goto :goto_1

    .line 77
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    .end local v0           #i:I
    :cond_3
    iget v0, p0, Lorg/andengine/util/adt/list/ShiftList;->mHead:I

    .restart local v0       #i:I
    :goto_2
    iget v1, p0, Lorg/andengine/util/adt/list/ShiftList;->mTail:I

    if-ge v0, v1, :cond_0

    .line 84
    iget-object v1, p0, Lorg/andengine/util/adt/list/ShiftList;->mItems:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 85
    iget v1, p0, Lorg/andengine/util/adt/list/ShiftList;->mHead:I

    sub-int v1, v0, v1

    goto :goto_1

    .line 83
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 60
    .local p0, this:Lorg/andengine/util/adt/list/ShiftList;,"Lorg/andengine/util/adt/list/ShiftList<TT;>;"
    iget v0, p0, Lorg/andengine/util/adt/list/ShiftList;->mHead:I

    iget v1, p0, Lorg/andengine/util/adt/list/ShiftList;->mTail:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public peek()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, this:Lorg/andengine/util/adt/list/ShiftList;,"Lorg/andengine/util/adt/list/ShiftList<TT;>;"
    iget v0, p0, Lorg/andengine/util/adt/list/ShiftList;->mHead:I

    iget v1, p0, Lorg/andengine/util/adt/list/ShiftList;->mTail:I

    if-ne v0, v1, :cond_0

    .line 96
    const/4 v0, 0x0

    .line 98
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/andengine/util/adt/list/ShiftList;->mItems:[Ljava/lang/Object;

    iget v1, p0, Lorg/andengine/util/adt/list/ShiftList;->mHead:I

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public poll()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .local p0, this:Lorg/andengine/util/adt/list/ShiftList;,"Lorg/andengine/util/adt/list/ShiftList<TT;>;"
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 105
    iget v2, p0, Lorg/andengine/util/adt/list/ShiftList;->mHead:I

    iget v3, p0, Lorg/andengine/util/adt/list/ShiftList;->mTail:I

    if-ne v2, v3, :cond_1

    move-object v0, v1

    .line 115
    :cond_0
    :goto_0
    return-object v0

    .line 108
    :cond_1
    iget-object v2, p0, Lorg/andengine/util/adt/list/ShiftList;->mItems:[Ljava/lang/Object;

    iget v3, p0, Lorg/andengine/util/adt/list/ShiftList;->mHead:I

    aget-object v0, v2, v3

    .line 109
    .local v0, item:Ljava/lang/Object;,"TT;"
    iget-object v2, p0, Lorg/andengine/util/adt/list/ShiftList;->mItems:[Ljava/lang/Object;

    iget v3, p0, Lorg/andengine/util/adt/list/ShiftList;->mHead:I

    aput-object v1, v2, v3

    .line 110
    iget v1, p0, Lorg/andengine/util/adt/list/ShiftList;->mHead:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/andengine/util/adt/list/ShiftList;->mHead:I

    .line 111
    iget v1, p0, Lorg/andengine/util/adt/list/ShiftList;->mHead:I

    iget v2, p0, Lorg/andengine/util/adt/list/ShiftList;->mTail:I

    if-ne v1, v2, :cond_0

    .line 112
    iput v4, p0, Lorg/andengine/util/adt/list/ShiftList;->mHead:I

    .line 113
    iput v4, p0, Lorg/andengine/util/adt/list/ShiftList;->mTail:I

    goto :goto_0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 10
    .parameter "pIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .local p0, this:Lorg/andengine/util/adt/list/ShiftList;,"Lorg/andengine/util/adt/list/ShiftList<TT;>;"
    const/4 v9, 0x0

    .line 208
    iget v5, p0, Lorg/andengine/util/adt/list/ShiftList;->mHead:I

    add-int v1, v5, p1

    .line 209
    .local v1, internalIndex:I
    iget-object v5, p0, Lorg/andengine/util/adt/list/ShiftList;->mItems:[Ljava/lang/Object;

    aget-object v2, v5, v1

    .line 211
    .local v2, removed:Ljava/lang/Object;,"TT;"
    iget v5, p0, Lorg/andengine/util/adt/list/ShiftList;->mTail:I

    iget v6, p0, Lorg/andengine/util/adt/list/ShiftList;->mHead:I

    sub-int v4, v5, v6

    .line 214
    .local v4, size:I
    shr-int/lit8 v0, v4, 0x1

    .line 215
    .local v0, center:I
    if-ge p1, v0, :cond_1

    .line 217
    iget v5, p0, Lorg/andengine/util/adt/list/ShiftList;->mHead:I

    if-le v1, v5, :cond_0

    .line 218
    iget-object v5, p0, Lorg/andengine/util/adt/list/ShiftList;->mItems:[Ljava/lang/Object;

    iget v6, p0, Lorg/andengine/util/adt/list/ShiftList;->mHead:I

    iget-object v7, p0, Lorg/andengine/util/adt/list/ShiftList;->mItems:[Ljava/lang/Object;

    iget v8, p0, Lorg/andengine/util/adt/list/ShiftList;->mHead:I

    add-int/lit8 v8, v8, 0x1

    invoke-static {v5, v6, v7, v8, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 220
    :cond_0
    iget-object v5, p0, Lorg/andengine/util/adt/list/ShiftList;->mItems:[Ljava/lang/Object;

    iget v6, p0, Lorg/andengine/util/adt/list/ShiftList;->mHead:I

    aput-object v9, v5, v6

    .line 221
    iget v5, p0, Lorg/andengine/util/adt/list/ShiftList;->mHead:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/andengine/util/adt/list/ShiftList;->mHead:I

    .line 232
    :goto_0
    return-object v2

    .line 224
    :cond_1
    sub-int v5, v4, p1

    add-int/lit8 v3, v5, -0x1

    .line 225
    .local v3, shiftAmount:I
    if-lez v3, :cond_2

    .line 226
    iget-object v5, p0, Lorg/andengine/util/adt/list/ShiftList;->mItems:[Ljava/lang/Object;

    add-int/lit8 v6, v1, 0x1

    iget-object v7, p0, Lorg/andengine/util/adt/list/ShiftList;->mItems:[Ljava/lang/Object;

    invoke-static {v5, v6, v7, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 228
    :cond_2
    iget v5, p0, Lorg/andengine/util/adt/list/ShiftList;->mTail:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lorg/andengine/util/adt/list/ShiftList;->mTail:I

    .line 229
    iget-object v5, p0, Lorg/andengine/util/adt/list/ShiftList;->mItems:[Ljava/lang/Object;

    iget v6, p0, Lorg/andengine/util/adt/list/ShiftList;->mTail:I

    aput-object v9, v5, v6

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 196
    .local p0, this:Lorg/andengine/util/adt/list/ShiftList;,"Lorg/andengine/util/adt/list/ShiftList<TT;>;"
    .local p1, pItem:Ljava/lang/Object;,"TT;"
    invoke-virtual {p0, p1}, Lorg/andengine/util/adt/list/ShiftList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 197
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 198
    invoke-virtual {p0, v0}, Lorg/andengine/util/adt/list/ShiftList;->remove(I)Ljava/lang/Object;

    .line 199
    const/4 v1, 0x1

    .line 201
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 186
    .local p0, this:Lorg/andengine/util/adt/list/ShiftList;,"Lorg/andengine/util/adt/list/ShiftList<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/andengine/util/adt/list/ShiftList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 191
    .local p0, this:Lorg/andengine/util/adt/list/ShiftList;,"Lorg/andengine/util/adt/list/ShiftList<TT;>;"
    invoke-virtual {p0}, Lorg/andengine/util/adt/list/ShiftList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/andengine/util/adt/list/ShiftList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public set(ILjava/lang/Object;)V
    .locals 2
    .parameter "pIndex"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 71
    .local p0, this:Lorg/andengine/util/adt/list/ShiftList;,"Lorg/andengine/util/adt/list/ShiftList<TT;>;"
    .local p2, pItem:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lorg/andengine/util/adt/list/ShiftList;->mItems:[Ljava/lang/Object;

    iget v1, p0, Lorg/andengine/util/adt/list/ShiftList;->mHead:I

    add-int/2addr v1, p1

    aput-object p2, v0, v1

    .line 72
    return-void
.end method

.method public shift()V
    .locals 7

    .prologue
    .local p0, this:Lorg/andengine/util/adt/list/ShiftList;,"Lorg/andengine/util/adt/list/ShiftList<TT;>;"
    const/4 v6, 0x0

    .line 252
    iget v3, p0, Lorg/andengine/util/adt/list/ShiftList;->mTail:I

    iget v4, p0, Lorg/andengine/util/adt/list/ShiftList;->mHead:I

    sub-int v1, v3, v4

    .line 253
    .local v1, size:I
    if-nez v1, :cond_0

    .line 254
    iput v6, p0, Lorg/andengine/util/adt/list/ShiftList;->mHead:I

    .line 255
    iput v6, p0, Lorg/andengine/util/adt/list/ShiftList;->mTail:I

    .line 270
    :goto_0
    return-void

    .line 258
    :cond_0
    iget-object v3, p0, Lorg/andengine/util/adt/list/ShiftList;->mItems:[Ljava/lang/Object;

    iget v4, p0, Lorg/andengine/util/adt/list/ShiftList;->mHead:I

    iget-object v5, p0, Lorg/andengine/util/adt/list/ShiftList;->mItems:[Ljava/lang/Object;

    invoke-static {v3, v4, v5, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 261
    iget v3, p0, Lorg/andengine/util/adt/list/ShiftList;->mHead:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 262
    .local v2, start:I
    iget v3, p0, Lorg/andengine/util/adt/list/ShiftList;->mTail:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 263
    .local v0, end:I
    if-ge v2, v0, :cond_1

    .line 264
    iget-object v3, p0, Lorg/andengine/util/adt/list/ShiftList;->mItems:[Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v3, v2, v0, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 267
    :cond_1
    iput v6, p0, Lorg/andengine/util/adt/list/ShiftList;->mHead:I

    .line 268
    iput v1, p0, Lorg/andengine/util/adt/list/ShiftList;->mTail:I

    goto :goto_0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 237
    .local p0, this:Lorg/andengine/util/adt/list/ShiftList;,"Lorg/andengine/util/adt/list/ShiftList<TT;>;"
    iget v0, p0, Lorg/andengine/util/adt/list/ShiftList;->mTail:I

    iget v1, p0, Lorg/andengine/util/adt/list/ShiftList;->mHead:I

    sub-int/2addr v0, v1

    return v0
.end method
