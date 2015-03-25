.class public Lcom/badlogic/gdx/utils/Array;
.super Ljava/lang/Object;
.source "Array.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/Array$ArrayIterable;,
        Lcom/badlogic/gdx/utils/Array$ArrayIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field public items:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private iterator:Lcom/badlogic/gdx/utils/Array$ArrayIterator;

.field public ordered:Z

.field public size:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    .local p0, this:Lcom/badlogic/gdx/utils/Array;,"Lcom/badlogic/gdx/utils/Array<TT;>;"
    const/4 v0, 0x1

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZI)V

    .line 41
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "capacity"

    .prologue
    .line 45
    .local p0, this:Lcom/badlogic/gdx/utils/Array;,"Lcom/badlogic/gdx/utils/Array<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZI)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/Array;)V
    .locals 4
    .parameter "array"

    .prologue
    .local p0, this:Lcom/badlogic/gdx/utils/Array;,"Lcom/badlogic/gdx/utils/Array<TT;>;"
    const/4 v3, 0x0

    .line 74
    iget-boolean v0, p1, Lcom/badlogic/gdx/utils/Array;->ordered:Z

    iget v1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    iget-object v2, p1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    .line 75
    iget v0, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 76
    iget-object v0, p1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, this:Lcom/badlogic/gdx/utils/Array;,"Lcom/badlogic/gdx/utils/Array<TT;>;"
    .local p1, arrayType:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v0, 0x1

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    .line 68
    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 1
    .parameter "ordered"
    .parameter "capacity"

    .prologue
    .line 51
    .local p0, this:Lcom/badlogic/gdx/utils/Array;,"Lcom/badlogic/gdx/utils/Array<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/Array;->ordered:Z

    .line 53
    new-array v0, p2, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 54
    return-void
.end method

.method public constructor <init>(ZILjava/lang/Class;)V
    .locals 1
    .parameter "ordered"
    .parameter "capacity"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, this:Lcom/badlogic/gdx/utils/Array;,"Lcom/badlogic/gdx/utils/Array<TT;>;"
    .local p3, arrayType:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/Array;->ordered:Z

    .line 62
    invoke-static {p3, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 63
    return-void
.end method

.method public constructor <init>(Z[Ljava/lang/Object;)V
    .locals 3
    .parameter "ordered"
    .parameter "array"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[TT;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/badlogic/gdx/utils/Array;,"Lcom/badlogic/gdx/utils/Array<TT;>;"
    const/4 v2, 0x0

    .line 91
    array-length v0, p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    .line 92
    array-length v0, p2

    iput v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 93
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 1
    .parameter "array"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, this:Lcom/badlogic/gdx/utils/Array;,"Lcom/badlogic/gdx/utils/Array<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/utils/Array;-><init>(Z[Ljava/lang/Object;)V

    .line 84
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, this:Lcom/badlogic/gdx/utils/Array;,"Lcom/badlogic/gdx/utils/Array<TT;>;"
    .local p1, value:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 98
    .local v0, items:[Ljava/lang/Object;
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    array-length v2, v0

    if-ne v1, v2, :cond_0

    const/16 v1, 0x8

    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    int-to-float v2, v2

    const/high16 v3, 0x3fe0

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/Array;->resize(I)[Ljava/lang/Object;

    move-result-object v0

    .line 99
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    aput-object p1, v0, v1

    .line 100
    return-void
.end method

.method public addAll(Lcom/badlogic/gdx/utils/Array;)V
    .locals 2
    .parameter "array"

    .prologue
    .line 103
    .local p0, this:Lcom/badlogic/gdx/utils/Array;,"Lcom/badlogic/gdx/utils/Array<TT;>;"
    const/4 v0, 0x0

    iget v1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;II)V

    .line 104
    return-void
.end method

.method public addAll(Lcom/badlogic/gdx/utils/Array;II)V
    .locals 3
    .parameter "array"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 107
    .local p0, this:Lcom/badlogic/gdx/utils/Array;,"Lcom/badlogic/gdx/utils/Array<TT;>;"
    add-int v0, p2, p3

    iget v1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-le v0, v1, :cond_0

    .line 108
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

    iget v2, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    iget-object v0, p1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    invoke-virtual {p0, v0, p2, p3}, Lcom/badlogic/gdx/utils/Array;->addAll([Ljava/lang/Object;II)V

    .line 110
    return-void
.end method

.method public addAll([Ljava/lang/Object;)V
    .locals 2
    .parameter "array"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, this:Lcom/badlogic/gdx/utils/Array;,"Lcom/badlogic/gdx/utils/Array<TT;>;"
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/utils/Array;->addAll([Ljava/lang/Object;II)V

    .line 114
    return-void
.end method

.method public addAll([Ljava/lang/Object;II)V
    .locals 5
    .parameter "array"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;II)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, this:Lcom/badlogic/gdx/utils/Array;,"Lcom/badlogic/gdx/utils/Array<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 118
    .local v0, items:[Ljava/lang/Object;
    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int v1, v2, p3

    .line 119
    .local v1, sizeNeeded:I
    array-length v2, v0

    if-le v1, v2, :cond_0

    const/16 v2, 0x8

    int-to-float v3, v1

    const/high16 v4, 0x3fe0

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/Array;->resize(I)[Ljava/lang/Object;

    move-result-object v0

    .line 120
    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/2addr v2, p3

    iput v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 122
    return-void
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 245
    .local p0, this:Lcom/badlogic/gdx/utils/Array;,"Lcom/badlogic/gdx/utils/Array<TT;>;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 246
    .local v1, items:[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, i:I
    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v2, n:I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 248
    const/4 v3, 0x0

    iput v3, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 249
    return-void

    .line 247
    :cond_0
    const/4 v3, 0x0

    aput-object v3, v1, v0

    .line 246
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public contains(Ljava/lang/Object;Z)Z
    .locals 5
    .parameter
    .parameter "identity"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/badlogic/gdx/utils/Array;,"Lcom/badlogic/gdx/utils/Array<TT;>;"
    .local p1, value:Ljava/lang/Object;,"TT;"
    const/4 v3, 0x1

    .line 156
    iget-object v2, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 157
    .local v2, items:[Ljava/lang/Object;
    iget v4, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v0, v4, -0x1

    .line 158
    .local v0, i:I
    if-nez p2, :cond_2

    if-nez p1, :cond_4

    move v1, v0

    .line 159
    .end local v0           #i:I
    .local v1, i:I
    :goto_0
    if-gez v1, :cond_1

    move v0, v1

    .line 165
    .end local v1           #i:I
    .restart local v0       #i:I
    :goto_1
    const/4 v3, 0x0

    :cond_0
    return v3

    .line 160
    .end local v0           #i:I
    .restart local v1       #i:I
    :cond_1
    add-int/lit8 v0, v1, -0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    aget-object v4, v2, v1

    if-eq v4, p1, :cond_0

    :cond_2
    move v1, v0

    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_0

    .line 163
    :cond_3
    add-int/lit8 v0, v1, -0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    aget-object v4, v2, v1

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_4
    move v1, v0

    .line 162
    .end local v0           #i:I
    .restart local v1       #i:I
    if-gez v1, :cond_3

    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_1
.end method

.method public ensureCapacity(I)[Ljava/lang/Object;
    .locals 2
    .parameter "additionalCapacity"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    .prologue
    .line 261
    .local p0, this:Lcom/badlogic/gdx/utils/Array;,"Lcom/badlogic/gdx/utils/Array<TT;>;"
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int v0, v1, p1

    .line 262
    .local v0, sizeNeeded:I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/16 v1, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/Array;->resize(I)[Ljava/lang/Object;

    .line 263
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .parameter "object"

    .prologue
    .local p0, this:Lcom/badlogic/gdx/utils/Array;,"Lcom/badlogic/gdx/utils/Array<TT;>;"
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 340
    if-ne p1, p0, :cond_1

    .line 352
    :cond_0
    :goto_0
    return v7

    .line 341
    :cond_1
    instance-of v9, p1, Lcom/badlogic/gdx/utils/Array;

    if-nez v9, :cond_2

    move v7, v8

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 342
    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    .line 343
    .local v0, array:Lcom/badlogic/gdx/utils/Array;
    iget v4, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 344
    .local v4, n:I
    iget v9, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eq v4, v9, :cond_3

    move v7, v8

    goto :goto_0

    .line 345
    :cond_3
    iget-object v2, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 346
    .local v2, items1:[Ljava/lang/Object;
    iget-object v3, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 347
    .local v3, items2:[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v4, :cond_0

    .line 348
    aget-object v5, v2, v1

    .line 349
    .local v5, o1:Ljava/lang/Object;
    aget-object v6, v3, v1

    .line 350
    .local v6, o2:Ljava/lang/Object;
    if-nez v5, :cond_5

    if-eqz v6, :cond_6

    :cond_4
    move v7, v8

    goto :goto_0

    :cond_5
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 347
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public first()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 241
    .local p0, this:Lcom/badlogic/gdx/utils/Array;,"Lcom/badlogic/gdx/utils/Array<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 125
    .local p0, this:Lcom/badlogic/gdx/utils/Array;,"Lcom/badlogic/gdx/utils/Array<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;Z)I
    .locals 4
    .parameter
    .parameter "identity"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)I"
        }
    .end annotation

    .prologue
    .line 169
    .local p0, this:Lcom/badlogic/gdx/utils/Array;,"Lcom/badlogic/gdx/utils/Array<TT;>;"
    .local p1, value:Ljava/lang/Object;,"TT;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 170
    .local v1, items:[Ljava/lang/Object;
    if-nez p2, :cond_0

    if-nez p1, :cond_4

    .line 171
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v2, n:I
    :goto_0
    if-lt v0, v2, :cond_2

    .line 177
    :cond_1
    const/4 v3, -0x1

    :goto_1
    return v3

    .line 172
    :cond_2
    aget-object v3, v1, v0

    if-ne v3, p1, :cond_3

    move v3, v0

    goto :goto_1

    .line 171
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    .end local v0           #i:I
    .end local v2           #n:I
    :cond_4
    const/4 v0, 0x0

    .restart local v0       #i:I
    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .restart local v2       #n:I
    :goto_2
    if-ge v0, v2, :cond_1

    .line 175
    aget-object v3, v1, v0

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v0

    goto :goto_1

    .line 174
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public insert(ILjava/lang/Object;)V
    .locals 4
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p0, this:Lcom/badlogic/gdx/utils/Array;,"Lcom/badlogic/gdx/utils/Array<TT;>;"
    .local p2, value:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 136
    .local v0, items:[Ljava/lang/Object;
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    array-length v2, v0

    if-ne v1, v2, :cond_0

    const/16 v1, 0x8

    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    int-to-float v2, v2

    const/high16 v3, 0x3fe0

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/Array;->resize(I)[Ljava/lang/Object;

    move-result-object v0

    .line 137
    :cond_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/Array;->ordered:Z

    if-eqz v1, :cond_1

    .line 138
    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    :goto_0
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 142
    aput-object p2, v0, p1

    .line 143
    return-void

    .line 140
    :cond_1
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    aget-object v2, v0, p1

    aput-object v2, v0, v1

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 307
    .local p0, this:Lcom/badlogic/gdx/utils/Array;,"Lcom/badlogic/gdx/utils/Array<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->iterator:Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    if-nez v0, :cond_0

    .line 308
    new-instance v0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/Array$ArrayIterator;-><init>(Lcom/badlogic/gdx/utils/Array;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Array;->iterator:Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    .line 311
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->iterator:Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    return-object v0

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->iterator:Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    const/4 v1, 0x0

    iput v1, v0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->index:I

    goto :goto_0
.end method

.method public lastIndexOf(Ljava/lang/Object;Z)I
    .locals 3
    .parameter
    .parameter "identity"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)I"
        }
    .end annotation

    .prologue
    .line 181
    .local p0, this:Lcom/badlogic/gdx/utils/Array;,"Lcom/badlogic/gdx/utils/Array<TT;>;"
    .local p1, value:Ljava/lang/Object;,"TT;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 182
    .local v1, items:[Ljava/lang/Object;
    if-nez p2, :cond_0

    if-nez p1, :cond_4

    .line 183
    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_2

    .line 189
    :cond_1
    const/4 v2, -0x1

    :goto_1
    return v2

    .line 184
    :cond_2
    aget-object v2, v1, v0

    if-ne v2, p1, :cond_3

    move v2, v0

    goto :goto_1

    .line 183
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 186
    .end local v0           #i:I
    :cond_4
    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v0, v2, -0x1

    .restart local v0       #i:I
    :goto_2
    if-ltz v0, :cond_1

    .line 187
    aget-object v2, v1, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v0

    goto :goto_1

    .line 186
    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method public peek()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 236
    .local p0, this:Lcom/badlogic/gdx/utils/Array;,"Lcom/badlogic/gdx/utils/Array<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public pop()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 228
    .local p0, this:Lcom/badlogic/gdx/utils/Array;,"Lcom/badlogic/gdx/utils/Array<TT;>;"
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 229
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    aget-object v0, v1, v2

    .line 230
    .local v0, item:Ljava/lang/Object;,"TT;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 231
    return-object v0
.end method

.method public random()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 325
    .local p0, this:Lcom/badlogic/gdx/utils/Array;,"Lcom/badlogic/gdx/utils/Array<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 326
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Lcom/badlogic/gdx/math/MathUtils;->random(II)I

    move-result v1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public removeIndex(I)Ljava/lang/Object;
    .locals 4
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 214
    .local p0, this:Lcom/badlogic/gdx/utils/Array;,"Lcom/badlogic/gdx/utils/Array<TT;>;"
    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lt p1, v2, :cond_0

    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 216
    .local v0, items:[Ljava/lang/Object;
    aget-object v1, v0, p1

    .line 217
    .local v1, value:Ljava/lang/Object;,"TT;"
    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 218
    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/Array;->ordered:Z

    if-eqz v2, :cond_1

    .line 219
    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    sub-int/2addr v3, p1

    invoke-static {v0, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    :goto_0
    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v3, 0x0

    aput-object v3, v0, v2

    .line 223
    return-object v1

    .line 221
    :cond_1
    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    aget-object v2, v0, v2

    aput-object v2, v0, p1

    goto :goto_0
.end method

.method public removeValue(Ljava/lang/Object;Z)Z
    .locals 5
    .parameter
    .parameter "identity"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/badlogic/gdx/utils/Array;,"Lcom/badlogic/gdx/utils/Array<TT;>;"
    .local p1, value:Ljava/lang/Object;,"TT;"
    const/4 v3, 0x1

    .line 193
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 194
    .local v1, items:[Ljava/lang/Object;
    if-nez p2, :cond_0

    if-nez p1, :cond_4

    .line 195
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v2, n:I
    :goto_0
    if-lt v0, v2, :cond_2

    .line 209
    :cond_1
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 196
    :cond_2
    aget-object v4, v1, v0

    if-ne v4, p1, :cond_3

    .line 197
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    goto :goto_1

    .line 195
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    .end local v0           #i:I
    .end local v2           #n:I
    :cond_4
    const/4 v0, 0x0

    .restart local v0       #i:I
    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .restart local v2       #n:I
    :goto_2
    if-ge v0, v2, :cond_1

    .line 203
    aget-object v4, v1, v0

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 204
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    goto :goto_1

    .line 202
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method protected resize(I)[Ljava/lang/Object;
    .locals 5
    .parameter "newSize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/badlogic/gdx/utils/Array;,"Lcom/badlogic/gdx/utils/Array<TT;>;"
    const/4 v4, 0x0

    .line 268
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 269
    .local v0, items:[Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 270
    .local v1, newItems:[Ljava/lang/Object;
    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    array-length v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 271
    iput-object v1, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 272
    return-object v1
.end method

.method public reverse()V
    .locals 7

    .prologue
    .line 287
    .local p0, this:Lcom/badlogic/gdx/utils/Array;,"Lcom/badlogic/gdx/utils/Array<TT;>;"
    const/4 v0, 0x0

    .local v0, i:I
    iget v5, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v2, v5, -0x1

    .local v2, lastIndex:I
    iget v5, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    div-int/lit8 v3, v5, 0x2

    .local v3, n:I
    :goto_0
    if-lt v0, v3, :cond_0

    .line 293
    return-void

    .line 288
    :cond_0
    sub-int v1, v2, v0

    .line 289
    .local v1, ii:I
    iget-object v5, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    aget-object v4, v5, v0

    .line 290
    .local v4, temp:Ljava/lang/Object;,"TT;"
    iget-object v5, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    iget-object v6, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    aget-object v6, v6, v1

    aput-object v6, v5, v0

    .line 291
    iget-object v5, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    aput-object v4, v5, v1

    .line 287
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public set(ILjava/lang/Object;)V
    .locals 2
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, this:Lcom/badlogic/gdx/utils/Array;,"Lcom/badlogic/gdx/utils/Array<TT;>;"
    .local p2, value:Ljava/lang/Object;,"TT;"
    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 132
    return-void
.end method

.method public shrink()V
    .locals 1

    .prologue
    .line 254
    .local p0, this:Lcom/badlogic/gdx/utils/Array;,"Lcom/badlogic/gdx/utils/Array<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/Array;->resize(I)[Ljava/lang/Object;

    .line 255
    return-void
.end method

.method public shuffle()V
    .locals 5

    .prologue
    .line 296
    .local p0, this:Lcom/badlogic/gdx/utils/Array;,"Lcom/badlogic/gdx/utils/Array<TT;>;"
    iget v3, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 302
    return-void

    .line 297
    :cond_0
    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v1

    .line 298
    .local v1, ii:I
    iget-object v3, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    aget-object v2, v3, v0

    .line 299
    .local v2, temp:Ljava/lang/Object;,"TT;"
    iget-object v3, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    iget-object v4, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    aget-object v4, v4, v1

    aput-object v4, v3, v0

    .line 300
    iget-object v3, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    aput-object v2, v3, v1

    .line 296
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public sort()V
    .locals 4

    .prologue
    .line 278
    .local p0, this:Lcom/badlogic/gdx/utils/Array;,"Lcom/badlogic/gdx/utils/Array<TT;>;"
    invoke-static {}, Lcom/badlogic/gdx/utils/Sort;->instance()Lcom/badlogic/gdx/utils/Sort;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/utils/Sort;->sort([Ljava/lang/Object;II)V

    .line 279
    return-void
.end method

.method public sort(Ljava/util/Comparator;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 283
    .local p0, this:Lcom/badlogic/gdx/utils/Array;,"Lcom/badlogic/gdx/utils/Array<TT;>;"
    .local p1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<TT;>;"
    invoke-static {}, Lcom/badlogic/gdx/utils/Sort;->instance()Lcom/badlogic/gdx/utils/Sort;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/badlogic/gdx/utils/Sort;->sort([Ljava/lang/Object;Ljava/util/Comparator;II)V

    .line 284
    return-void
.end method

.method public swap(II)V
    .locals 4
    .parameter "first"
    .parameter "second"

    .prologue
    .line 146
    .local p0, this:Lcom/badlogic/gdx/utils/Array;,"Lcom/badlogic/gdx/utils/Array<TT;>;"
    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lt p1, v2, :cond_0

    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 147
    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lt p2, v2, :cond_1

    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 148
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 149
    .local v1, items:[Ljava/lang/Object;
    aget-object v0, v1, p1

    .line 150
    .local v0, firstValue:Ljava/lang/Object;,"TT;"
    aget-object v2, v1, p2

    aput-object v2, v1, p1

    .line 151
    aput-object v0, v1, p2

    .line 152
    return-void
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .prologue
    .line 330
    .local p0, this:Lcom/badlogic/gdx/utils/Array;,"Lcom/badlogic/gdx/utils/Array<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/Array;->toArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray(Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TV;>;)[TV;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/badlogic/gdx/utils/Array;,"Lcom/badlogic/gdx/utils/Array<TT;>;"
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<TV;>;"
    const/4 v3, 0x0

    .line 334
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 335
    .local v0, result:[Ljava/lang/Object;
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 336
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 356
    .local p0, this:Lcom/badlogic/gdx/utils/Array;,"Lcom/badlogic/gdx/utils/Array<TT;>;"
    iget v3, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v3, :cond_0

    const-string v3, "[]"

    .line 366
    :goto_0
    return-object v3

    .line 357
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 358
    .local v2, items:[Ljava/lang/Object;
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 359
    .local v0, buffer:Ljava/lang/StringBuilder;
    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 360
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 361
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1
    iget v3, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lt v1, v3, :cond_1

    .line 365
    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 362
    :cond_1
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    aget-object v3, v2, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 361
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "separator"

    .prologue
    .line 370
    .local p0, this:Lcom/badlogic/gdx/utils/Array;,"Lcom/badlogic/gdx/utils/Array<TT;>;"
    iget v3, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v3, :cond_0

    const-string v3, ""

    .line 378
    :goto_0
    return-object v3

    .line 371
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 372
    .local v2, items:[Ljava/lang/Object;
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 373
    .local v0, buffer:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 374
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1
    iget v3, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lt v1, v3, :cond_1

    .line 378
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 375
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    aget-object v3, v2, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 374
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public truncate(I)V
    .locals 3
    .parameter "newSize"

    .prologue
    .line 317
    .local p0, this:Lcom/badlogic/gdx/utils/Array;,"Lcom/badlogic/gdx/utils/Array<TT;>;"
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-gt v1, p1, :cond_0

    .line 321
    :goto_0
    return-void

    .line 318
    :cond_0
    move v0, p1

    .local v0, i:I
    :goto_1
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lt v0, v1, :cond_1

    .line 320
    iput p1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    goto :goto_0

    .line 319
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 318
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
