.class public Lcom/badlogic/gdx/utils/LongArray;
.super Ljava/lang/Object;
.source "LongArray.java"


# instance fields
.field public items:[J

.field public ordered:Z

.field public size:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    const/4 v0, 0x1

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/LongArray;-><init>(ZI)V

    .line 34
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "capacity"

    .prologue
    .line 38
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/utils/LongArray;-><init>(ZI)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/LongArray;)V
    .locals 4
    .parameter "array"

    .prologue
    const/4 v3, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iget-boolean v0, p1, Lcom/badlogic/gdx/utils/LongArray;->ordered:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/LongArray;->ordered:Z

    .line 54
    iget v0, p1, Lcom/badlogic/gdx/utils/LongArray;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    .line 55
    iget v0, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    .line 56
    iget-object v0, p1, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    iget v2, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 1
    .parameter "ordered"
    .parameter "capacity"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/LongArray;->ordered:Z

    .line 46
    new-array v0, p2, [J

    iput-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    .line 47
    return-void
.end method

.method public constructor <init>(Z[J)V
    .locals 3
    .parameter "ordered"
    .parameter "array"

    .prologue
    const/4 v2, 0x0

    .line 70
    array-length v0, p2

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/LongArray;-><init>(ZI)V

    .line 71
    array-length v0, p2

    iput v0, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    .line 72
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    iget v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    return-void
.end method

.method public constructor <init>([J)V
    .locals 1
    .parameter "array"

    .prologue
    .line 62
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/utils/LongArray;-><init>(Z[J)V

    .line 63
    return-void
.end method


# virtual methods
.method public add(J)V
    .locals 4
    .parameter "value"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    .line 77
    .local v0, items:[J
    iget v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    array-length v2, v0

    if-ne v1, v2, :cond_0

    const/16 v1, 0x8

    iget v2, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    int-to-float v2, v2

    const/high16 v3, 0x3fe0

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/LongArray;->resize(I)[J

    move-result-object v0

    .line 78
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    aput-wide p1, v0, v1

    .line 79
    return-void
.end method

.method public addAll(Lcom/badlogic/gdx/utils/LongArray;)V
    .locals 2
    .parameter "array"

    .prologue
    .line 82
    const/4 v0, 0x0

    iget v1, p1, Lcom/badlogic/gdx/utils/LongArray;->size:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/utils/LongArray;->addAll(Lcom/badlogic/gdx/utils/LongArray;II)V

    .line 83
    return-void
.end method

.method public addAll(Lcom/badlogic/gdx/utils/LongArray;II)V
    .locals 3
    .parameter "array"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 86
    add-int v0, p2, p3

    iget v1, p1, Lcom/badlogic/gdx/utils/LongArray;->size:I

    if-le v0, v1, :cond_0

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "offset + length must be <= size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " <= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/badlogic/gdx/utils/LongArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    iget-object v0, p1, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    invoke-virtual {p0, v0, p2, p3}, Lcom/badlogic/gdx/utils/LongArray;->addAll([JII)V

    .line 89
    return-void
.end method

.method public addAll([J)V
    .locals 2
    .parameter "array"

    .prologue
    .line 92
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/utils/LongArray;->addAll([JII)V

    .line 93
    return-void
.end method

.method public addAll([JII)V
    .locals 5
    .parameter "array"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    .line 97
    .local v0, items:[J
    iget v2, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    add-int/2addr v2, p3

    sub-int v1, v2, p2

    .line 98
    .local v1, sizeNeeded:I
    array-length v2, v0

    if-lt v1, v2, :cond_0

    const/16 v2, 0x8

    int-to-float v3, v1

    const/high16 v4, 0x3fe0

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/LongArray;->resize(I)[J

    move-result-object v0

    .line 99
    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    iget v2, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    add-int/2addr v2, p3

    iput v2, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    .line 101
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    .line 196
    return-void
.end method

.method public contains(J)Z
    .locals 5
    .parameter "value"

    .prologue
    .line 134
    iget v3, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    add-int/lit8 v0, v3, -0x1

    .line 135
    .local v0, i:I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    .local v2, items:[J
    move v1, v0

    .line 136
    .end local v0           #i:I
    .local v1, i:I
    :goto_0
    if-gez v1, :cond_0

    .line 138
    const/4 v3, 0x0

    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    :goto_1
    return v3

    .line 137
    .end local v0           #i:I
    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v0, v1, -0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    aget-wide v3, v2, v1

    cmp-long v3, v3, p1

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    move v1, v0

    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_0
.end method

.method public ensureCapacity(I)[J
    .locals 2
    .parameter "additionalCapacity"

    .prologue
    .line 208
    iget v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    add-int v0, v1, p1

    .line 209
    .local v0, sizeNeeded:I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/16 v1, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/LongArray;->resize(I)[J

    .line 210
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .parameter "object"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 262
    if-ne p1, p0, :cond_1

    .line 269
    :cond_0
    :goto_0
    return v3

    .line 263
    :cond_1
    instance-of v5, p1, Lcom/badlogic/gdx/utils/LongArray;

    if-nez v5, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 264
    check-cast v0, Lcom/badlogic/gdx/utils/LongArray;

    .line 265
    .local v0, array:Lcom/badlogic/gdx/utils/LongArray;
    iget v2, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    .line 266
    .local v2, n:I
    iget v5, v0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    if-eq v2, v5, :cond_3

    move v3, v4

    goto :goto_0

    .line 267
    :cond_3
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 268
    iget-object v5, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    aget-wide v5, v5, v1

    iget-object v7, v0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    aget-wide v7, v7, v1

    cmp-long v5, v5, v7

    if-eqz v5, :cond_4

    move v3, v4

    goto :goto_0

    .line 267
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public first()J
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public get(I)J
    .locals 2
    .parameter "index"

    .prologue
    .line 104
    iget v0, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public indexOf(J)I
    .locals 5
    .parameter "value"

    .prologue
    .line 142
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    .line 143
    .local v1, items:[J
    const/4 v0, 0x0

    .local v0, i:I
    iget v2, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    .local v2, n:I
    :goto_0
    if-lt v0, v2, :cond_1

    .line 145
    const/4 v0, -0x1

    .end local v0           #i:I
    :cond_0
    return v0

    .line 144
    .restart local v0       #i:I
    :cond_1
    aget-wide v3, v1, v0

    cmp-long v3, v3, p1

    if-eqz v3, :cond_0

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public insert(IJ)V
    .locals 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    .line 115
    .local v0, items:[J
    iget v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    array-length v2, v0

    if-ne v1, v2, :cond_0

    const/16 v1, 0x8

    iget v2, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    int-to-float v2, v2

    const/high16 v3, 0x3fe0

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/LongArray;->resize(I)[J

    move-result-object v0

    .line 116
    :cond_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/LongArray;->ordered:Z

    if-eqz v1, :cond_1

    .line 117
    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    :goto_0
    iget v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    .line 121
    aput-wide p2, v0, p1

    .line 122
    return-void

    .line 119
    :cond_1
    iget v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    aget-wide v2, v0, p1

    aput-wide v2, v0, v1

    goto :goto_0
.end method

.method public lastIndexOf(C)I
    .locals 6
    .parameter "value"

    .prologue
    .line 149
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    .line 150
    .local v1, items:[J
    iget v2, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_1

    .line 152
    const/4 v0, -0x1

    .end local v0           #i:I
    :cond_0
    return v0

    .line 151
    .restart local v0       #i:I
    :cond_1
    aget-wide v2, v1, v0

    int-to-long v4, p1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 150
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public peek()J
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    iget v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public pop()J
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    iget v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public random()J
    .locals 3

    .prologue
    .line 251
    iget v0, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 252
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    const/4 v1, 0x0

    iget v2, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Lcom/badlogic/gdx/math/MathUtils;->random(II)I

    move-result v1

    aget-wide v0, v0, v1

    goto :goto_0
.end method

.method public removeIndex(I)J
    .locals 5
    .parameter "index"

    .prologue
    .line 168
    iget v3, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    if-lt p1, v3, :cond_0

    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    .line 170
    .local v0, items:[J
    aget-wide v1, v0, p1

    .line 171
    .local v1, value:J
    iget v3, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    .line 172
    iget-boolean v3, p0, Lcom/badlogic/gdx/utils/LongArray;->ordered:Z

    if-eqz v3, :cond_1

    .line 173
    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    sub-int/2addr v4, p1

    invoke-static {v0, v3, v0, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    :goto_0
    return-wide v1

    .line 175
    :cond_1
    iget v3, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    aget-wide v3, v0, v3

    aput-wide v3, v0, p1

    goto :goto_0
.end method

.method public removeValue(J)Z
    .locals 5
    .parameter "value"

    .prologue
    .line 156
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    .line 157
    .local v1, items:[J
    const/4 v0, 0x0

    .local v0, i:I
    iget v2, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    .local v2, n:I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 163
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 158
    :cond_0
    aget-wide v3, v1, v0

    cmp-long v3, v3, p1

    if-nez v3, :cond_1

    .line 159
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/LongArray;->removeIndex(I)J

    .line 160
    const/4 v3, 0x1

    goto :goto_1

    .line 157
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected resize(I)[J
    .locals 5
    .parameter "newSize"

    .prologue
    const/4 v4, 0x0

    .line 214
    new-array v1, p1, [J

    .line 215
    .local v1, newItems:[J
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    .line 216
    .local v0, items:[J
    iget v2, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    array-length v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 217
    iput-object v1, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    .line 218
    return-object v1
.end method

.method public reverse()V
    .locals 9

    .prologue
    .line 226
    const/4 v0, 0x0

    .local v0, i:I
    iget v6, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    add-int/lit8 v2, v6, -0x1

    .local v2, lastIndex:I
    iget v6, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    div-int/lit8 v3, v6, 0x2

    .local v3, n:I
    :goto_0
    if-lt v0, v3, :cond_0

    .line 232
    return-void

    .line 227
    :cond_0
    sub-int v1, v2, v0

    .line 228
    .local v1, ii:I
    iget-object v6, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    aget-wide v4, v6, v0

    .line 229
    .local v4, temp:J
    iget-object v6, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    iget-object v7, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    aget-wide v7, v7, v1

    aput-wide v7, v6, v0

    .line 230
    iget-object v6, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    aput-wide v4, v6, v1

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public set(IJ)V
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 109
    iget v0, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    aput-wide p2, v0, p1

    .line 111
    return-void
.end method

.method public shrink()V
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/LongArray;->resize(I)[J

    .line 202
    return-void
.end method

.method public shuffle()V
    .locals 7

    .prologue
    .line 235
    iget v4, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    add-int/lit8 v0, v4, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 241
    return-void

    .line 236
    :cond_0
    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v1

    .line 237
    .local v1, ii:I
    iget-object v4, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    aget-wide v2, v4, v0

    .line 238
    .local v2, temp:J
    iget-object v4, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    iget-object v5, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    aget-wide v5, v5, v1

    aput-wide v5, v4, v0

    .line 239
    iget-object v4, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    aput-wide v2, v4, v1

    .line 235
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public sort()V
    .locals 3

    .prologue
    .line 222
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    const/4 v1, 0x0

    iget v2, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->sort([JII)V

    .line 223
    return-void
.end method

.method public swap(II)V
    .locals 5
    .parameter "first"
    .parameter "second"

    .prologue
    .line 125
    iget v3, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    if-lt p1, v3, :cond_0

    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 126
    :cond_0
    iget v3, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    if-lt p2, v3, :cond_1

    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 127
    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    .line 128
    .local v2, items:[J
    aget-wide v0, v2, p1

    .line 129
    .local v0, firstValue:J
    aget-wide v3, v2, p2

    aput-wide v3, v2, p1

    .line 130
    aput-wide v0, v2, p2

    .line 131
    return-void
.end method

.method public toArray()[J
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 256
    iget v1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    new-array v0, v1, [J

    .line 257
    .local v0, array:[J
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    iget v2, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 258
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 273
    iget v3, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    if-nez v3, :cond_0

    const-string v3, "[]"

    .line 283
    :goto_0
    return-object v3

    .line 274
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    .line 275
    .local v2, items:[J
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 276
    .local v0, buffer:Ljava/lang/StringBuilder;
    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 277
    const/4 v3, 0x0

    aget-wide v3, v2, v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 278
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1
    iget v3, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    if-lt v1, v3, :cond_1

    .line 282
    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 279
    :cond_1
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    aget-wide v3, v2, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 278
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "separator"

    .prologue
    .line 287
    iget v3, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    if-nez v3, :cond_0

    const-string v3, ""

    .line 295
    :goto_0
    return-object v3

    .line 288
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    .line 289
    .local v2, items:[J
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 290
    .local v0, buffer:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    aget-wide v3, v2, v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 291
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1
    iget v3, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    if-lt v1, v3, :cond_1

    .line 295
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 292
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    aget-wide v3, v2, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 291
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public truncate(I)V
    .locals 1
    .parameter "newSize"

    .prologue
    .line 246
    iget v0, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    if-le v0, p1, :cond_0

    iput p1, p0, Lcom/badlogic/gdx/utils/LongArray;->size:I

    .line 247
    :cond_0
    return-void
.end method
