.class public Lorg/andengine/util/adt/list/CircularList;
.super Ljava/lang/Object;
.source "CircularList.java"

# interfaces
.implements Lorg/andengine/util/adt/list/IList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/andengine/util/adt/list/IList",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final CAPACITY_INITIAL_DEFAULT:I = 0x1

.field private static final INDEX_INVALID:I = -0x1


# instance fields
.field private mHead:I

.field private mItems:[Ljava/lang/Object;

.field private mSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    .local p0, this:Lorg/andengine/util/adt/list/CircularList;,"Lorg/andengine/util/adt/list/CircularList<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/andengine/util/adt/list/CircularList;-><init>(I)V

    .line 40
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "pInitialCapacity"

    .prologue
    .line 42
    .local p0, this:Lorg/andengine/util/adt/list/CircularList;,"Lorg/andengine/util/adt/list/CircularList<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/andengine/util/adt/list/CircularList;->mItems:[Ljava/lang/Object;

    .line 44
    return-void
.end method

.method private encodeToInternalIndex(I)I
    .locals 2
    .parameter "pIndex"

    .prologue
    .line 248
    .local p0, this:Lorg/andengine/util/adt/list/CircularList;,"Lorg/andengine/util/adt/list/CircularList<TT;>;"
    iget v1, p0, Lorg/andengine/util/adt/list/CircularList;->mHead:I

    add-int v0, v1, p1

    .line 249
    .local v0, internalIndex:I
    iget-object v1, p0, Lorg/andengine/util/adt/list/CircularList;->mItems:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 250
    iget-object v1, p0, Lorg/andengine/util/adt/list/CircularList;->mItems:[Ljava/lang/Object;

    array-length v1, v1

    sub-int/2addr v0, v1

    .line 252
    :cond_0
    return v0
.end method

.method private ensureCapacity()V
    .locals 8

    .prologue
    .local p0, this:Lorg/andengine/util/adt/list/CircularList;,"Lorg/andengine/util/adt/list/CircularList<TT;>;"
    const/4 v7, 0x0

    .line 234
    iget-object v3, p0, Lorg/andengine/util/adt/list/CircularList;->mItems:[Ljava/lang/Object;

    array-length v0, v3

    .line 235
    .local v0, currentCapacity:I
    iget v3, p0, Lorg/andengine/util/adt/list/CircularList;->mSize:I

    if-ne v3, v0, :cond_0

    .line 236
    mul-int/lit8 v3, v0, 0x3

    shr-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v3, 0x1

    .line 237
    .local v1, newCapacity:I
    new-array v2, v1, [Ljava/lang/Object;

    .line 239
    .local v2, newItems:[Ljava/lang/Object;
    iget-object v3, p0, Lorg/andengine/util/adt/list/CircularList;->mItems:[Ljava/lang/Object;

    iget v4, p0, Lorg/andengine/util/adt/list/CircularList;->mHead:I

    iget v5, p0, Lorg/andengine/util/adt/list/CircularList;->mSize:I

    iget v6, p0, Lorg/andengine/util/adt/list/CircularList;->mHead:I

    sub-int/2addr v5, v6

    invoke-static {v3, v4, v2, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 240
    iget-object v3, p0, Lorg/andengine/util/adt/list/CircularList;->mItems:[Ljava/lang/Object;

    iget v4, p0, Lorg/andengine/util/adt/list/CircularList;->mSize:I

    iget v5, p0, Lorg/andengine/util/adt/list/CircularList;->mHead:I

    sub-int/2addr v4, v5

    iget v5, p0, Lorg/andengine/util/adt/list/CircularList;->mHead:I

    invoke-static {v3, v7, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 242
    iput-object v2, p0, Lorg/andengine/util/adt/list/CircularList;->mItems:[Ljava/lang/Object;

    .line 243
    iput v7, p0, Lorg/andengine/util/adt/list/CircularList;->mHead:I

    .line 245
    .end local v1           #newCapacity:I
    .end local v2           #newItems:[Ljava/lang/Object;
    :cond_0
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 7
    .parameter "pIndex"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lorg/andengine/util/adt/list/CircularList;,"Lorg/andengine/util/adt/list/CircularList<TT;>;"
    .local p2, pItem:Ljava/lang/Object;,"TT;"
    const/4 v6, -0x1

    .line 98
    invoke-direct {p0, p1}, Lorg/andengine/util/adt/list/CircularList;->encodeToInternalIndex(I)I

    move-result v0

    .line 100
    .local v0, internalIndex:I
    invoke-direct {p0}, Lorg/andengine/util/adt/list/CircularList;->ensureCapacity()V

    .line 102
    iget v2, p0, Lorg/andengine/util/adt/list/CircularList;->mSize:I

    invoke-direct {p0, v2}, Lorg/andengine/util/adt/list/CircularList;->encodeToInternalIndex(I)I

    move-result v1

    .line 103
    .local v1, internalTail:I
    if-eq v0, v1, :cond_1

    .line 105
    iget v2, p0, Lorg/andengine/util/adt/list/CircularList;->mHead:I

    if-ne v0, v2, :cond_2

    .line 106
    iget v2, p0, Lorg/andengine/util/adt/list/CircularList;->mHead:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/andengine/util/adt/list/CircularList;->mHead:I

    .line 107
    iget v2, p0, Lorg/andengine/util/adt/list/CircularList;->mHead:I

    if-ne v2, v6, :cond_0

    .line 108
    iget-object v2, p0, Lorg/andengine/util/adt/list/CircularList;->mItems:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/andengine/util/adt/list/CircularList;->mHead:I

    .line 110
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 111
    if-ne v0, v6, :cond_1

    .line 112
    iget-object v2, p0, Lorg/andengine/util/adt/list/CircularList;->mItems:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    .line 139
    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/andengine/util/adt/list/CircularList;->mItems:[Ljava/lang/Object;

    aput-object p2, v2, v0

    .line 140
    iget v2, p0, Lorg/andengine/util/adt/list/CircularList;->mSize:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/andengine/util/adt/list/CircularList;->mSize:I

    .line 141
    return-void

    .line 114
    :cond_2
    iget v2, p0, Lorg/andengine/util/adt/list/CircularList;->mHead:I

    if-lt v0, v2, :cond_3

    iget v2, p0, Lorg/andengine/util/adt/list/CircularList;->mHead:I

    if-nez v2, :cond_4

    .line 115
    :cond_3
    iget-object v2, p0, Lorg/andengine/util/adt/list/CircularList;->mItems:[Ljava/lang/Object;

    iget-object v3, p0, Lorg/andengine/util/adt/list/CircularList;->mItems:[Ljava/lang/Object;

    add-int/lit8 v4, v0, 0x1

    sub-int v5, v1, v0

    invoke-static {v2, v0, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 116
    :cond_4
    if-le v0, v1, :cond_6

    .line 117
    iget-object v2, p0, Lorg/andengine/util/adt/list/CircularList;->mItems:[Ljava/lang/Object;

    iget v3, p0, Lorg/andengine/util/adt/list/CircularList;->mHead:I

    iget-object v4, p0, Lorg/andengine/util/adt/list/CircularList;->mItems:[Ljava/lang/Object;

    iget v5, p0, Lorg/andengine/util/adt/list/CircularList;->mHead:I

    add-int/lit8 v5, v5, -0x1

    invoke-static {v2, v3, v4, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    iget v2, p0, Lorg/andengine/util/adt/list/CircularList;->mHead:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/andengine/util/adt/list/CircularList;->mHead:I

    .line 119
    iget v2, p0, Lorg/andengine/util/adt/list/CircularList;->mHead:I

    if-ne v2, v6, :cond_5

    .line 120
    iget-object v2, p0, Lorg/andengine/util/adt/list/CircularList;->mItems:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/andengine/util/adt/list/CircularList;->mHead:I

    .line 122
    :cond_5
    add-int/lit8 v0, v0, -0x1

    .line 123
    if-ne v0, v6, :cond_1

    .line 124
    iget-object v2, p0, Lorg/andengine/util/adt/list/CircularList;->mItems:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    .line 126
    goto :goto_0

    :cond_6
    iget v2, p0, Lorg/andengine/util/adt/list/CircularList;->mSize:I

    shr-int/lit8 v2, v2, 0x1

    if-ge p1, v2, :cond_8

    .line 127
    iget-object v2, p0, Lorg/andengine/util/adt/list/CircularList;->mItems:[Ljava/lang/Object;

    iget v3, p0, Lorg/andengine/util/adt/list/CircularList;->mHead:I

    iget-object v4, p0, Lorg/andengine/util/adt/list/CircularList;->mItems:[Ljava/lang/Object;

    iget v5, p0, Lorg/andengine/util/adt/list/CircularList;->mHead:I

    add-int/lit8 v5, v5, -0x1

    invoke-static {v2, v3, v4, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    iget v2, p0, Lorg/andengine/util/adt/list/CircularList;->mHead:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/andengine/util/adt/list/CircularList;->mHead:I

    .line 129
    iget v2, p0, Lorg/andengine/util/adt/list/CircularList;->mHead:I

    if-ne v2, v6, :cond_7

    .line 130
    iget-object v2, p0, Lorg/andengine/util/adt/list/CircularList;->mItems:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/andengine/util/adt/list/CircularList;->mHead:I

    .line 132
    :cond_7
    add-int/lit8 v0, v0, -0x1

    .line 133
    if-ne v0, v6, :cond_1

    .line 134
    iget-object v2, p0, Lorg/andengine/util/adt/list/CircularList;->mItems:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    .line 136
    goto :goto_0

    .line 137
    :cond_8
    iget-object v2, p0, Lorg/andengine/util/adt/list/CircularList;->mItems:[Ljava/lang/Object;

    iget-object v3, p0, Lorg/andengine/util/adt/list/CircularList;->mItems:[Ljava/lang/Object;

    add-int/lit8 v4, v0, 0x1

    sub-int v5, v1, v0

    invoke-static {v2, v0, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0
.end method

.method public add(Ljava/lang/Object;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, this:Lorg/andengine/util/adt/list/CircularList;,"Lorg/andengine/util/adt/list/CircularList<TT;>;"
    .local p1, pItem:Ljava/lang/Object;,"TT;"
    invoke-direct {p0}, Lorg/andengine/util/adt/list/CircularList;->ensureCapacity()V

    .line 62
    iget-object v0, p0, Lorg/andengine/util/adt/list/CircularList;->mItems:[Ljava/lang/Object;

    iget v1, p0, Lorg/andengine/util/adt/list/CircularList;->mSize:I

    invoke-direct {p0, v1}, Lorg/andengine/util/adt/list/CircularList;->encodeToInternalIndex(I)I

    move-result v1

    aput-object p1, v0, v1

    .line 63
    iget v0, p0, Lorg/andengine/util/adt/list/CircularList;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/andengine/util/adt/list/CircularList;->mSize:I

    .line 64
    return-void
.end method

.method public clear()V
    .locals 7

    .prologue
    .local p0, this:Lorg/andengine/util/adt/list/CircularList;,"Lorg/andengine/util/adt/list/CircularList<TT;>;"
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 213
    iget v3, p0, Lorg/andengine/util/adt/list/CircularList;->mHead:I

    iget v4, p0, Lorg/andengine/util/adt/list/CircularList;->mSize:I

    add-int v2, v3, v4

    .line 214
    .local v2, tail:I
    iget-object v3, p0, Lorg/andengine/util/adt/list/CircularList;->mItems:[Ljava/lang/Object;

    array-length v0, v3

    .line 216
    .local v0, capacity:I
    if-gt v2, v0, :cond_0

    .line 217
    iget-object v3, p0, Lorg/andengine/util/adt/list/CircularList;->mItems:[Ljava/lang/Object;

    iget v4, p0, Lorg/andengine/util/adt/list/CircularList;->mHead:I

    invoke-static {v3, v4, v2, v6}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 225
    :goto_0
    iput v5, p0, Lorg/andengine/util/adt/list/CircularList;->mHead:I

    .line 226
    iput v5, p0, Lorg/andengine/util/adt/list/CircularList;->mSize:I

    .line 227
    return-void

    .line 219
    :cond_0
    iget v3, p0, Lorg/andengine/util/adt/list/CircularList;->mHead:I

    sub-int v1, v0, v3

    .line 221
    .local v1, headToCapacity:I
    iget-object v3, p0, Lorg/andengine/util/adt/list/CircularList;->mItems:[Ljava/lang/Object;

    iget v4, p0, Lorg/andengine/util/adt/list/CircularList;->mHead:I

    invoke-static {v3, v4, v0, v6}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 223
    iget-object v3, p0, Lorg/andengine/util/adt/list/CircularList;->mItems:[Ljava/lang/Object;

    iget v4, p0, Lorg/andengine/util/adt/list/CircularList;->mSize:I

    sub-int/2addr v4, v1

    invoke-static {v3, v5, v4, v6}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    goto :goto_0
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
    .line 69
    .local p0, this:Lorg/andengine/util/adt/list/CircularList;,"Lorg/andengine/util/adt/list/CircularList<TT;>;"
    iget-object v0, p0, Lorg/andengine/util/adt/list/CircularList;->mItems:[Ljava/lang/Object;

    invoke-direct {p0, p1}, Lorg/andengine/util/adt/list/CircularList;->encodeToInternalIndex(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, this:Lorg/andengine/util/adt/list/CircularList;,"Lorg/andengine/util/adt/list/CircularList<TT;>;"
    .local p1, pItem:Ljava/lang/Object;,"TT;"
    invoke-virtual {p0}, Lorg/andengine/util/adt/list/CircularList;->size()I

    move-result v1

    .line 80
    .local v1, size:I
    if-nez p1, :cond_3

    .line 81
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 93
    :cond_0
    const/4 v2, -0x1

    :goto_1
    return v2

    .line 82
    :cond_1
    invoke-virtual {p0, v0}, Lorg/andengine/util/adt/list/CircularList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v0

    .line 83
    goto :goto_1

    .line 81
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    .end local v0           #i:I
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    if-ge v0, v1, :cond_0

    .line 88
    invoke-virtual {p0, v0}, Lorg/andengine/util/adt/list/CircularList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v0

    .line 89
    goto :goto_1

    .line 87
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 56
    .local p0, this:Lorg/andengine/util/adt/list/CircularList;,"Lorg/andengine/util/adt/list/CircularList<TT;>;"
    iget v0, p0, Lorg/andengine/util/adt/list/CircularList;->mSize:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 9
    .parameter "pIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .local p0, this:Lorg/andengine/util/adt/list/CircularList;,"Lorg/andengine/util/adt/list/CircularList<TT;>;"
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 167
    invoke-direct {p0, p1}, Lorg/andengine/util/adt/list/CircularList;->encodeToInternalIndex(I)I

    move-result v0

    .line 168
    .local v0, internalIndex:I
    iget-object v3, p0, Lorg/andengine/util/adt/list/CircularList;->mItems:[Ljava/lang/Object;

    aget-object v2, v3, v0

    .line 170
    .local v2, removed:Ljava/lang/Object;,"TT;"
    iget v3, p0, Lorg/andengine/util/adt/list/CircularList;->mSize:I

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, v3}, Lorg/andengine/util/adt/list/CircularList;->encodeToInternalIndex(I)I

    move-result v1

    .line 172
    .local v1, internalTail:I
    if-ne v0, v1, :cond_1

    .line 173
    iget-object v3, p0, Lorg/andengine/util/adt/list/CircularList;->mItems:[Ljava/lang/Object;

    aput-object v7, v3, v1

    .line 201
    :cond_0
    :goto_0
    iget v3, p0, Lorg/andengine/util/adt/list/CircularList;->mSize:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/andengine/util/adt/list/CircularList;->mSize:I

    .line 203
    return-object v2

    .line 174
    :cond_1
    iget v3, p0, Lorg/andengine/util/adt/list/CircularList;->mHead:I

    if-ne v0, v3, :cond_2

    .line 175
    iget-object v3, p0, Lorg/andengine/util/adt/list/CircularList;->mItems:[Ljava/lang/Object;

    iget v4, p0, Lorg/andengine/util/adt/list/CircularList;->mHead:I

    aput-object v7, v3, v4

    .line 176
    iget v3, p0, Lorg/andengine/util/adt/list/CircularList;->mHead:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/andengine/util/adt/list/CircularList;->mHead:I

    .line 177
    iget v3, p0, Lorg/andengine/util/adt/list/CircularList;->mHead:I

    iget-object v4, p0, Lorg/andengine/util/adt/list/CircularList;->mItems:[Ljava/lang/Object;

    array-length v4, v4

    if-ne v3, v4, :cond_0

    .line 178
    iput v8, p0, Lorg/andengine/util/adt/list/CircularList;->mHead:I

    goto :goto_0

    .line 180
    :cond_2
    iget v3, p0, Lorg/andengine/util/adt/list/CircularList;->mHead:I

    if-ge v0, v3, :cond_3

    .line 181
    iget-object v3, p0, Lorg/andengine/util/adt/list/CircularList;->mItems:[Ljava/lang/Object;

    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Lorg/andengine/util/adt/list/CircularList;->mItems:[Ljava/lang/Object;

    sub-int v6, v1, v0

    invoke-static {v3, v4, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    iget-object v3, p0, Lorg/andengine/util/adt/list/CircularList;->mItems:[Ljava/lang/Object;

    aput-object v7, v3, v1

    goto :goto_0

    .line 183
    :cond_3
    if-le v0, v1, :cond_4

    .line 184
    iget-object v3, p0, Lorg/andengine/util/adt/list/CircularList;->mItems:[Ljava/lang/Object;

    iget v4, p0, Lorg/andengine/util/adt/list/CircularList;->mHead:I

    iget-object v5, p0, Lorg/andengine/util/adt/list/CircularList;->mItems:[Ljava/lang/Object;

    iget v6, p0, Lorg/andengine/util/adt/list/CircularList;->mHead:I

    add-int/lit8 v6, v6, 0x1

    invoke-static {v3, v4, v5, v6, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    iget-object v3, p0, Lorg/andengine/util/adt/list/CircularList;->mItems:[Ljava/lang/Object;

    iget v4, p0, Lorg/andengine/util/adt/list/CircularList;->mHead:I

    aput-object v7, v3, v4

    .line 186
    iget v3, p0, Lorg/andengine/util/adt/list/CircularList;->mHead:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/andengine/util/adt/list/CircularList;->mHead:I

    .line 187
    iget v3, p0, Lorg/andengine/util/adt/list/CircularList;->mHead:I

    iget-object v4, p0, Lorg/andengine/util/adt/list/CircularList;->mItems:[Ljava/lang/Object;

    array-length v4, v4

    if-ne v3, v4, :cond_0

    .line 188
    iput v8, p0, Lorg/andengine/util/adt/list/CircularList;->mHead:I

    goto :goto_0

    .line 190
    :cond_4
    iget v3, p0, Lorg/andengine/util/adt/list/CircularList;->mSize:I

    shr-int/lit8 v3, v3, 0x1

    if-ge p1, v3, :cond_5

    .line 191
    iget-object v3, p0, Lorg/andengine/util/adt/list/CircularList;->mItems:[Ljava/lang/Object;

    iget v4, p0, Lorg/andengine/util/adt/list/CircularList;->mHead:I

    iget-object v5, p0, Lorg/andengine/util/adt/list/CircularList;->mItems:[Ljava/lang/Object;

    iget v6, p0, Lorg/andengine/util/adt/list/CircularList;->mHead:I

    add-int/lit8 v6, v6, 0x1

    invoke-static {v3, v4, v5, v6, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    iget-object v3, p0, Lorg/andengine/util/adt/list/CircularList;->mItems:[Ljava/lang/Object;

    iget v4, p0, Lorg/andengine/util/adt/list/CircularList;->mHead:I

    aput-object v7, v3, v4

    .line 193
    iget v3, p0, Lorg/andengine/util/adt/list/CircularList;->mHead:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/andengine/util/adt/list/CircularList;->mHead:I

    .line 194
    iget v3, p0, Lorg/andengine/util/adt/list/CircularList;->mHead:I

    iget-object v4, p0, Lorg/andengine/util/adt/list/CircularList;->mItems:[Ljava/lang/Object;

    array-length v4, v4

    if-ne v3, v4, :cond_0

    .line 195
    iput v8, p0, Lorg/andengine/util/adt/list/CircularList;->mHead:I

    goto/16 :goto_0

    .line 198
    :cond_5
    iget-object v3, p0, Lorg/andengine/util/adt/list/CircularList;->mItems:[Ljava/lang/Object;

    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Lorg/andengine/util/adt/list/CircularList;->mItems:[Ljava/lang/Object;

    sub-int v6, v1, v0

    invoke-static {v3, v4, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 199
    iget-object v3, p0, Lorg/andengine/util/adt/list/CircularList;->mItems:[Ljava/lang/Object;

    aput-object v7, v3, v1

    goto/16 :goto_0
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
    .line 155
    .local p0, this:Lorg/andengine/util/adt/list/CircularList;,"Lorg/andengine/util/adt/list/CircularList<TT;>;"
    .local p1, pItem:Ljava/lang/Object;,"TT;"
    invoke-virtual {p0, p1}, Lorg/andengine/util/adt/list/CircularList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 156
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 157
    invoke-virtual {p0, v0}, Lorg/andengine/util/adt/list/CircularList;->remove(I)Ljava/lang/Object;

    .line 158
    const/4 v1, 0x1

    .line 160
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
    .line 145
    .local p0, this:Lorg/andengine/util/adt/list/CircularList;,"Lorg/andengine/util/adt/list/CircularList<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/andengine/util/adt/list/CircularList;->remove(I)Ljava/lang/Object;

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
    .line 150
    .local p0, this:Lorg/andengine/util/adt/list/CircularList;,"Lorg/andengine/util/adt/list/CircularList<TT;>;"
    invoke-virtual {p0}, Lorg/andengine/util/adt/list/CircularList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/andengine/util/adt/list/CircularList;->remove(I)Ljava/lang/Object;

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
    .line 74
    .local p0, this:Lorg/andengine/util/adt/list/CircularList;,"Lorg/andengine/util/adt/list/CircularList<TT;>;"
    .local p2, pItem:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lorg/andengine/util/adt/list/CircularList;->mItems:[Ljava/lang/Object;

    invoke-direct {p0, p1}, Lorg/andengine/util/adt/list/CircularList;->encodeToInternalIndex(I)I

    move-result v1

    aput-object p2, v0, v1

    .line 75
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 208
    .local p0, this:Lorg/andengine/util/adt/list/CircularList;,"Lorg/andengine/util/adt/list/CircularList<TT;>;"
    iget v0, p0, Lorg/andengine/util/adt/list/CircularList;->mSize:I

    return v0
.end method
