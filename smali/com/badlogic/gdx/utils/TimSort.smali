.class Lcom/badlogic/gdx/utils/TimSort;
.super Ljava/lang/Object;
.source "TimSort.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final INITIAL_TMP_STORAGE_LENGTH:I = 0x100

.field private static final MIN_GALLOP:I = 0x7

.field private static final MIN_MERGE:I = 0x20


# instance fields
.field private a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private minGallop:I

.field private final runBase:[I

.field private final runLen:[I

.field private stackSize:I

.field private tmp:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private tmpCount:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .local p0, this:Lcom/badlogic/gdx/utils/TimSort;,"Lcom/badlogic/gdx/utils/TimSort<TT;>;"
    const/16 v1, 0x28

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x7

    iput v0, p0, Lcom/badlogic/gdx/utils/TimSort;->minGallop:I

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/TimSort;->stackSize:I

    .line 91
    const/16 v0, 0x100

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->tmp:[Ljava/lang/Object;

    .line 92
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->runBase:[I

    .line 93
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    .line 94
    return-void
.end method

.method private constructor <init>([Ljava/lang/Object;Ljava/util/Comparator;)V
    .locals 4
    .parameter "a"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, this:Lcom/badlogic/gdx/utils/TimSort;,"Lcom/badlogic/gdx/utils/TimSort<TT;>;"
    .local p2, c:Ljava/util/Comparator;,"Ljava/util/Comparator<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v3, 0x7

    iput v3, p0, Lcom/badlogic/gdx/utils/TimSort;->minGallop:I

    .line 82
    const/4 v3, 0x0

    iput v3, p0, Lcom/badlogic/gdx/utils/TimSort;->stackSize:I

    .line 153
    iput-object p1, p0, Lcom/badlogic/gdx/utils/TimSort;->a:[Ljava/lang/Object;

    .line 154
    iput-object p2, p0, Lcom/badlogic/gdx/utils/TimSort;->c:Ljava/util/Comparator;

    .line 157
    array-length v0, p1

    .line 158
    .local v0, len:I
    const/16 v3, 0x200

    if-ge v0, v3, :cond_0

    ushr-int/lit8 v3, v0, 0x1

    :goto_0
    new-array v1, v3, [Ljava/lang/Object;

    .line 159
    .local v1, newArray:[Ljava/lang/Object;
    iput-object v1, p0, Lcom/badlogic/gdx/utils/TimSort;->tmp:[Ljava/lang/Object;

    .line 168
    const/16 v3, 0x78

    if-ge v0, v3, :cond_1

    const/4 v2, 0x5

    .line 169
    .local v2, stackLen:I
    :goto_1
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/badlogic/gdx/utils/TimSort;->runBase:[I

    .line 170
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    .line 171
    return-void

    .line 158
    .end local v1           #newArray:[Ljava/lang/Object;
    .end local v2           #stackLen:I
    :cond_0
    const/16 v3, 0x100

    goto :goto_0

    .line 168
    .restart local v1       #newArray:[Ljava/lang/Object;
    :cond_1
    const/16 v3, 0x606

    if-ge v0, v3, :cond_2

    const/16 v2, 0xa

    goto :goto_1

    :cond_2
    const v3, 0x1d16f

    if-ge v0, v3, :cond_3

    const/16 v2, 0x13

    goto :goto_1

    :cond_3
    const/16 v2, 0x28

    goto :goto_1
.end method

.method private static binarySort([Ljava/lang/Object;IIILjava/util/Comparator;)V
    .locals 7
    .parameter "a"
    .parameter "lo"
    .parameter "hi"
    .parameter "start"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;III",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 243
    .local p4, c:Ljava/util/Comparator;,"Ljava/util/Comparator<-TT;>;"
    if-ne p3, p1, :cond_0

    add-int/lit8 p3, p3, 0x1

    .line 244
    :cond_0
    :goto_0
    if-lt p3, p2, :cond_1

    .line 281
    return-void

    .line 245
    :cond_1
    aget-object v3, p0, p3

    .line 248
    .local v3, pivot:Ljava/lang/Object;,"TT;"
    move v0, p1

    .line 249
    .local v0, left:I
    move v4, p3

    .line 254
    .local v4, right:I
    :goto_1
    if-lt v0, v4, :cond_2

    .line 268
    sub-int v2, p3, v0

    .line 270
    .local v2, n:I
    packed-switch v2, :pswitch_data_0

    .line 277
    add-int/lit8 v5, v0, 0x1

    invoke-static {p0, v0, p0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 279
    :goto_2
    aput-object v3, p0, v0

    .line 244
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 255
    .end local v2           #n:I
    :cond_2
    add-int v5, v0, v4

    ushr-int/lit8 v1, v5, 0x1

    .line 256
    .local v1, mid:I
    aget-object v5, p0, v1

    invoke-interface {p4, v3, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_3

    .line 257
    move v4, v1

    goto :goto_1

    .line 259
    :cond_3
    add-int/lit8 v0, v1, 0x1

    goto :goto_1

    .line 272
    .end local v1           #mid:I
    .restart local v2       #n:I
    :pswitch_0
    add-int/lit8 v5, v0, 0x2

    add-int/lit8 v6, v0, 0x1

    aget-object v6, p0, v6

    aput-object v6, p0, v5

    .line 274
    :pswitch_1
    add-int/lit8 v5, v0, 0x1

    aget-object v6, p0, v0

    aput-object v6, p0, v5

    goto :goto_2

    .line 270
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static countRunAndMakeAscending([Ljava/lang/Object;IILjava/util/Comparator;)I
    .locals 4
    .parameter "a"
    .parameter "lo"
    .parameter "hi"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II",
            "Ljava/util/Comparator",
            "<-TT;>;)I"
        }
    .end annotation

    .prologue
    .line 304
    .local p3, c:Ljava/util/Comparator;,"Ljava/util/Comparator<-TT;>;"
    add-int/lit8 v0, p1, 0x1

    .line 305
    .local v0, runHi:I
    if-ne v0, p2, :cond_0

    const/4 v2, 0x1

    .line 317
    :goto_0
    return v2

    .line 308
    :cond_0
    add-int/lit8 v1, v0, 0x1

    .end local v0           #runHi:I
    .local v1, runHi:I
    aget-object v2, p0, v0

    aget-object v3, p0, p1

    invoke-interface {p3, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_5

    move v0, v1

    .line 309
    .end local v1           #runHi:I
    .restart local v0       #runHi:I
    :goto_1
    if-ge v0, p2, :cond_1

    aget-object v2, p0, v0

    add-int/lit8 v3, v0, -0x1

    aget-object v3, p0, v3

    invoke-interface {p3, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_3

    .line 311
    :cond_1
    invoke-static {p0, p1, v0}, Lcom/badlogic/gdx/utils/TimSort;->reverseRange([Ljava/lang/Object;II)V

    .line 317
    :cond_2
    :goto_2
    sub-int v2, v0, p1

    goto :goto_0

    .line 310
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 314
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 313
    :goto_3
    if-ge v0, p2, :cond_2

    aget-object v2, p0, v0

    add-int/lit8 v3, v0, -0x1

    aget-object v3, p0, v3

    invoke-interface {p3, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_4

    goto :goto_2

    .end local v0           #runHi:I
    .restart local v1       #runHi:I
    :cond_5
    move v0, v1

    .end local v1           #runHi:I
    .restart local v0       #runHi:I
    goto :goto_3
.end method

.method private ensureCapacity(I)[Ljava/lang/Object;
    .locals 3
    .parameter "minCapacity"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    .prologue
    .line 801
    .local p0, this:Lcom/badlogic/gdx/utils/TimSort;,"Lcom/badlogic/gdx/utils/TimSort<TT;>;"
    iget v2, p0, Lcom/badlogic/gdx/utils/TimSort;->tmpCount:I

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/utils/TimSort;->tmpCount:I

    .line 802
    iget-object v2, p0, Lcom/badlogic/gdx/utils/TimSort;->tmp:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v2, p1, :cond_0

    .line 804
    move v1, p1

    .line 805
    .local v1, newSize:I
    shr-int/lit8 v2, v1, 0x1

    or-int/2addr v1, v2

    .line 806
    shr-int/lit8 v2, v1, 0x2

    or-int/2addr v1, v2

    .line 807
    shr-int/lit8 v2, v1, 0x4

    or-int/2addr v1, v2

    .line 808
    shr-int/lit8 v2, v1, 0x8

    or-int/2addr v1, v2

    .line 809
    shr-int/lit8 v2, v1, 0x10

    or-int/2addr v1, v2

    .line 810
    add-int/lit8 v1, v1, 0x1

    .line 812
    if-gez v1, :cond_1

    .line 813
    move v1, p1

    .line 817
    :goto_0
    new-array v0, v1, [Ljava/lang/Object;

    .line 818
    .local v0, newArray:[Ljava/lang/Object;
    iput-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->tmp:[Ljava/lang/Object;

    .line 820
    .end local v0           #newArray:[Ljava/lang/Object;
    .end local v1           #newSize:I
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/TimSort;->tmp:[Ljava/lang/Object;

    return-object v2

    .line 815
    .restart local v1       #newSize:I
    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/utils/TimSort;->a:[Ljava/lang/Object;

    array-length v2, v2

    ushr-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0
.end method

.method private static gallopLeft(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I
    .locals 6
    .parameter
    .parameter "a"
    .parameter "base"
    .parameter "len"
    .parameter "hint"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;[TT;III",
            "Ljava/util/Comparator",
            "<-TT;>;)I"
        }
    .end annotation

    .prologue
    .line 463
    .local p0, key:Ljava/lang/Object;,"TT;"
    .local p5, c:Ljava/util/Comparator;,"Ljava/util/Comparator<-TT;>;"
    const/4 v0, 0x0

    .line 464
    .local v0, lastOfs:I
    const/4 v3, 0x1

    .line 465
    .local v3, ofs:I
    add-int v5, p2, p4

    aget-object v5, p1, v5

    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_4

    .line 467
    sub-int v2, p3, p4

    .line 468
    .local v2, maxOfs:I
    :cond_0
    :goto_0
    if-ge v3, v2, :cond_1

    add-int v5, p2, p4

    add-int/2addr v5, v3

    aget-object v5, p1, v5

    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_3

    .line 474
    :cond_1
    if-le v3, v2, :cond_2

    move v3, v2

    .line 477
    :cond_2
    add-int/2addr v0, p4

    .line 478
    add-int/2addr v3, p4

    .line 501
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 502
    :goto_2
    if-lt v0, v3, :cond_9

    .line 511
    return v3

    .line 469
    :cond_3
    move v0, v3

    .line 470
    shl-int/lit8 v5, v3, 0x1

    add-int/lit8 v3, v5, 0x1

    .line 471
    if-gtz v3, :cond_0

    .line 472
    move v3, v2

    goto :goto_0

    .line 481
    .end local v2           #maxOfs:I
    :cond_4
    add-int/lit8 v2, p4, 0x1

    .line 482
    .restart local v2       #maxOfs:I
    :cond_5
    :goto_3
    if-ge v3, v2, :cond_6

    add-int v5, p2, p4

    sub-int/2addr v5, v3

    aget-object v5, p1, v5

    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_8

    .line 488
    :cond_6
    if-le v3, v2, :cond_7

    move v3, v2

    .line 491
    :cond_7
    move v4, v0

    .line 492
    .local v4, tmp:I
    sub-int v0, p4, v3

    .line 493
    sub-int v3, p4, v4

    goto :goto_1

    .line 483
    .end local v4           #tmp:I
    :cond_8
    move v0, v3

    .line 484
    shl-int/lit8 v5, v3, 0x1

    add-int/lit8 v3, v5, 0x1

    .line 485
    if-gtz v3, :cond_5

    .line 486
    move v3, v2

    goto :goto_3

    .line 503
    :cond_9
    sub-int v5, v3, v0

    ushr-int/lit8 v5, v5, 0x1

    add-int v1, v0, v5

    .line 505
    .local v1, m:I
    add-int v5, p2, v1

    aget-object v5, p1, v5

    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_a

    .line 506
    add-int/lit8 v0, v1, 0x1

    goto :goto_2

    .line 508
    :cond_a
    move v3, v1

    goto :goto_2
.end method

.method private static gallopRight(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I
    .locals 6
    .parameter
    .parameter "a"
    .parameter "base"
    .parameter "len"
    .parameter "hint"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;[TT;III",
            "Ljava/util/Comparator",
            "<-TT;>;)I"
        }
    .end annotation

    .prologue
    .line 528
    .local p0, key:Ljava/lang/Object;,"TT;"
    .local p5, c:Ljava/util/Comparator;,"Ljava/util/Comparator<-TT;>;"
    const/4 v3, 0x1

    .line 529
    .local v3, ofs:I
    const/4 v0, 0x0

    .line 530
    .local v0, lastOfs:I
    add-int v5, p2, p4

    aget-object v5, p1, v5

    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_4

    .line 532
    add-int/lit8 v2, p4, 0x1

    .line 533
    .local v2, maxOfs:I
    :cond_0
    :goto_0
    if-ge v3, v2, :cond_1

    add-int v5, p2, p4

    sub-int/2addr v5, v3

    aget-object v5, p1, v5

    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_3

    .line 539
    :cond_1
    if-le v3, v2, :cond_2

    move v3, v2

    .line 542
    :cond_2
    move v4, v0

    .line 543
    .local v4, tmp:I
    sub-int v0, p4, v3

    .line 544
    sub-int v3, p4, v4

    .line 566
    .end local v4           #tmp:I
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 567
    :goto_2
    if-lt v0, v3, :cond_9

    .line 576
    return v3

    .line 534
    :cond_3
    move v0, v3

    .line 535
    shl-int/lit8 v5, v3, 0x1

    add-int/lit8 v3, v5, 0x1

    .line 536
    if-gtz v3, :cond_0

    .line 537
    move v3, v2

    goto :goto_0

    .line 547
    .end local v2           #maxOfs:I
    :cond_4
    sub-int v2, p3, p4

    .line 548
    .restart local v2       #maxOfs:I
    :cond_5
    :goto_3
    if-ge v3, v2, :cond_6

    add-int v5, p2, p4

    add-int/2addr v5, v3

    aget-object v5, p1, v5

    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_8

    .line 554
    :cond_6
    if-le v3, v2, :cond_7

    move v3, v2

    .line 557
    :cond_7
    add-int/2addr v0, p4

    .line 558
    add-int/2addr v3, p4

    goto :goto_1

    .line 549
    :cond_8
    move v0, v3

    .line 550
    shl-int/lit8 v5, v3, 0x1

    add-int/lit8 v3, v5, 0x1

    .line 551
    if-gtz v3, :cond_5

    .line 552
    move v3, v2

    goto :goto_3

    .line 568
    :cond_9
    sub-int v5, v3, v0

    ushr-int/lit8 v5, v5, 0x1

    add-int v1, v0, v5

    .line 570
    .local v1, m:I
    add-int v5, p2, v1

    aget-object v5, p1, v5

    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_a

    .line 571
    move v3, v1

    goto :goto_2

    .line 573
    :cond_a
    add-int/lit8 v0, v1, 0x1

    goto :goto_2
.end method

.method private mergeAt(I)V
    .locals 11
    .parameter "i"

    .prologue
    .line 405
    .local p0, this:Lcom/badlogic/gdx/utils/TimSort;,"Lcom/badlogic/gdx/utils/TimSort<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->runBase:[I

    aget v2, v0, p1

    .line 406
    .local v2, base1:I
    iget-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    aget v3, v0, p1

    .line 407
    .local v3, len1:I
    iget-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->runBase:[I

    add-int/lit8 v1, p1, 0x1

    aget v6, v0, v1

    .line 408
    .local v6, base2:I
    iget-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    add-int/lit8 v1, p1, 0x1

    aget v7, v0, v1

    .line 416
    .local v7, len2:I
    iget-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    add-int v1, v3, v7

    aput v1, v0, p1

    .line 417
    iget v0, p0, Lcom/badlogic/gdx/utils/TimSort;->stackSize:I

    add-int/lit8 v0, v0, -0x3

    if-ne p1, v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->runBase:[I

    add-int/lit8 v1, p1, 0x1

    iget-object v4, p0, Lcom/badlogic/gdx/utils/TimSort;->runBase:[I

    add-int/lit8 v5, p1, 0x2

    aget v4, v4, v5

    aput v4, v0, v1

    .line 419
    iget-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    add-int/lit8 v1, p1, 0x1

    iget-object v4, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    add-int/lit8 v5, p1, 0x2

    aget v4, v4, v5

    aput v4, v0, v1

    .line 421
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/TimSort;->stackSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/TimSort;->stackSize:I

    .line 427
    iget-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->a:[Ljava/lang/Object;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/badlogic/gdx/utils/TimSort;->a:[Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/badlogic/gdx/utils/TimSort;->c:Ljava/util/Comparator;

    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/utils/TimSort;->gallopRight(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v10

    .line 429
    .local v10, k:I
    add-int/2addr v2, v10

    .line 430
    sub-int/2addr v3, v10

    .line 431
    if-nez v3, :cond_2

    .line 446
    :cond_1
    :goto_0
    return-void

    .line 437
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->a:[Ljava/lang/Object;

    add-int v1, v2, v3

    add-int/lit8 v1, v1, -0x1

    aget-object v4, v0, v1

    iget-object v5, p0, Lcom/badlogic/gdx/utils/TimSort;->a:[Ljava/lang/Object;

    add-int/lit8 v8, v7, -0x1

    iget-object v9, p0, Lcom/badlogic/gdx/utils/TimSort;->c:Ljava/util/Comparator;

    invoke-static/range {v4 .. v9}, Lcom/badlogic/gdx/utils/TimSort;->gallopLeft(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v7

    .line 439
    if-eqz v7, :cond_1

    .line 442
    if-gt v3, v7, :cond_3

    .line 443
    invoke-direct {p0, v2, v3, v6, v7}, Lcom/badlogic/gdx/utils/TimSort;->mergeLo(IIII)V

    goto :goto_0

    .line 445
    :cond_3
    invoke-direct {p0, v2, v3, v6, v7}, Lcom/badlogic/gdx/utils/TimSort;->mergeHi(IIII)V

    goto :goto_0
.end method

.method private mergeCollapse()V
    .locals 5

    .prologue
    .line 374
    .local p0, this:Lcom/badlogic/gdx/utils/TimSort;,"Lcom/badlogic/gdx/utils/TimSort<TT;>;"
    :goto_0
    iget v1, p0, Lcom/badlogic/gdx/utils/TimSort;->stackSize:I

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    .line 385
    :cond_0
    return-void

    .line 375
    :cond_1
    iget v1, p0, Lcom/badlogic/gdx/utils/TimSort;->stackSize:I

    add-int/lit8 v0, v1, -0x2

    .line 376
    .local v0, n:I
    if-lez v0, :cond_3

    iget-object v1, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    add-int/2addr v2, v3

    if-gt v1, v2, :cond_3

    .line 377
    iget-object v1, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-ge v1, v2, :cond_2

    add-int/lit8 v0, v0, -0x1

    .line 378
    :cond_2
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/TimSort;->mergeAt(I)V

    goto :goto_0

    .line 379
    :cond_3
    iget-object v1, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-gt v1, v2, :cond_0

    .line 380
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/TimSort;->mergeAt(I)V

    goto :goto_0
.end method

.method private mergeForceCollapse()V
    .locals 4

    .prologue
    .line 389
    .local p0, this:Lcom/badlogic/gdx/utils/TimSort;,"Lcom/badlogic/gdx/utils/TimSort<TT;>;"
    :goto_0
    iget v1, p0, Lcom/badlogic/gdx/utils/TimSort;->stackSize:I

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    .line 394
    return-void

    .line 390
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/TimSort;->stackSize:I

    add-int/lit8 v0, v1, -0x2

    .line 391
    .local v0, n:I
    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-ge v1, v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 392
    :cond_1
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/TimSort;->mergeAt(I)V

    goto :goto_0
.end method

.method private mergeHi(IIII)V
    .locals 23
    .parameter "base1"
    .parameter "len1"
    .parameter "base2"
    .parameter "len2"

    .prologue
    .line 698
    .local p0, this:Lcom/badlogic/gdx/utils/TimSort;,"Lcom/badlogic/gdx/utils/TimSort<TT;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/TimSort;->a:[Ljava/lang/Object;

    .line 699
    .local v3, a:[Ljava/lang/Object;
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/TimSort;->ensureCapacity(I)[Ljava/lang/Object;

    move-result-object v9

    .line 700
    .local v9, tmp:[Ljava/lang/Object;
    const/4 v2, 0x0

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v3, v0, v9, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 702
    add-int v2, p1, p2

    add-int/lit8 v16, v2, -0x1

    .line 703
    .local v16, cursor1:I
    add-int/lit8 v18, p4, -0x1

    .line 704
    .local v18, cursor2:I
    add-int v2, p3, p4

    add-int/lit8 v20, v2, -0x1

    .line 707
    .local v20, dest:I
    add-int/lit8 v21, v20, -0x1

    .end local v20           #dest:I
    .local v21, dest:I
    add-int/lit8 v17, v16, -0x1

    .end local v16           #cursor1:I
    .local v17, cursor1:I
    aget-object v2, v3, v16

    aput-object v2, v3, v20

    .line 708
    add-int/lit8 p2, p2, -0x1

    if-nez p2, :cond_0

    .line 709
    const/4 v2, 0x0

    add-int/lit8 v4, p4, -0x1

    sub-int v4, v21, v4

    move/from16 v0, p4

    invoke-static {v9, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 v20, v21

    .end local v21           #dest:I
    .restart local v20       #dest:I
    move/from16 v16, v17

    .line 793
    .end local v17           #cursor1:I
    .restart local v16       #cursor1:I
    :goto_0
    return-void

    .line 712
    .end local v16           #cursor1:I
    .end local v20           #dest:I
    .restart local v17       #cursor1:I
    .restart local v21       #dest:I
    :cond_0
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_1

    .line 713
    sub-int v20, v21, p2

    .line 714
    .end local v21           #dest:I
    .restart local v20       #dest:I
    sub-int v16, v17, p2

    .line 715
    .end local v17           #cursor1:I
    .restart local v16       #cursor1:I
    add-int/lit8 v2, v16, 0x1

    add-int/lit8 v4, v20, 0x1

    move/from16 v0, p2

    invoke-static {v3, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 716
    aget-object v2, v9, v18

    aput-object v2, v3, v20

    goto :goto_0

    .line 720
    .end local v16           #cursor1:I
    .end local v20           #dest:I
    .restart local v17       #cursor1:I
    .restart local v21       #dest:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/badlogic/gdx/utils/TimSort;->c:Ljava/util/Comparator;

    .line 721
    .local v7, c:Ljava/util/Comparator;,"Ljava/util/Comparator<-TT;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/TimSort;->minGallop:I

    move/from16 v22, v0

    .local v22, minGallop:I
    move/from16 v20, v21

    .end local v21           #dest:I
    .restart local v20       #dest:I
    move/from16 v16, v17

    .line 724
    .end local v17           #cursor1:I
    .restart local v16       #cursor1:I
    :goto_1
    const/4 v14, 0x0

    .line 725
    .local v14, count1:I
    const/4 v15, 0x0

    .line 732
    .local v15, count2:I
    :cond_2
    aget-object v2, v9, v18

    aget-object v4, v3, v16

    invoke-interface {v7, v2, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_5

    .line 733
    add-int/lit8 v21, v20, -0x1

    .end local v20           #dest:I
    .restart local v21       #dest:I
    add-int/lit8 v17, v16, -0x1

    .end local v16           #cursor1:I
    .restart local v17       #cursor1:I
    aget-object v2, v3, v16

    aput-object v2, v3, v20

    .line 734
    add-int/lit8 v14, v14, 0x1

    .line 735
    const/4 v15, 0x0

    .line 736
    add-int/lit8 p2, p2, -0x1

    if-nez p2, :cond_11

    move/from16 v20, v21

    .end local v21           #dest:I
    .restart local v20       #dest:I
    move/from16 v16, v17

    .line 778
    .end local v17           #cursor1:I
    .restart local v16       #cursor1:I
    :cond_3
    :goto_2
    const/4 v2, 0x1

    move/from16 v0, v22

    if-ge v0, v2, :cond_4

    const/16 v22, 0x1

    .end local v22           #minGallop:I
    :cond_4
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/utils/TimSort;->minGallop:I

    .line 780
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_d

    .line 782
    sub-int v20, v20, p2

    .line 783
    sub-int v16, v16, p2

    .line 784
    add-int/lit8 v2, v16, 0x1

    add-int/lit8 v4, v20, 0x1

    move/from16 v0, p2

    invoke-static {v3, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 785
    aget-object v2, v9, v18

    aput-object v2, v3, v20

    goto :goto_0

    .line 738
    .restart local v22       #minGallop:I
    :cond_5
    add-int/lit8 v21, v20, -0x1

    .end local v20           #dest:I
    .restart local v21       #dest:I
    add-int/lit8 v19, v18, -0x1

    .end local v18           #cursor2:I
    .local v19, cursor2:I
    aget-object v2, v9, v18

    aput-object v2, v3, v20

    .line 739
    add-int/lit8 v15, v15, 0x1

    .line 740
    const/4 v14, 0x0

    .line 741
    add-int/lit8 p4, p4, -0x1

    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_6

    move/from16 v20, v21

    .end local v21           #dest:I
    .restart local v20       #dest:I
    move/from16 v18, v19

    .end local v19           #cursor2:I
    .restart local v18       #cursor2:I
    goto :goto_2

    .end local v18           #cursor2:I
    .end local v20           #dest:I
    .restart local v19       #cursor2:I
    .restart local v21       #dest:I
    :cond_6
    move/from16 v20, v21

    .end local v21           #dest:I
    .restart local v20       #dest:I
    move/from16 v18, v19

    .line 743
    .end local v19           #cursor2:I
    .restart local v18       #cursor2:I
    :goto_3
    or-int v2, v14, v15

    .line 730
    move/from16 v0, v22

    if-lt v2, v0, :cond_2

    .line 751
    :goto_4
    aget-object v2, v9, v18

    add-int/lit8 v6, p2, -0x1

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-static/range {v2 .. v7}, Lcom/badlogic/gdx/utils/TimSort;->gallopRight(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v2

    sub-int v14, p2, v2

    .line 752
    if-eqz v14, :cond_7

    .line 753
    sub-int v20, v20, v14

    .line 754
    sub-int v16, v16, v14

    .line 755
    sub-int p2, p2, v14

    .line 756
    add-int/lit8 v2, v16, 0x1

    add-int/lit8 v4, v20, 0x1

    invoke-static {v3, v2, v3, v4, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 757
    if-eqz p2, :cond_3

    .line 759
    :cond_7
    add-int/lit8 v21, v20, -0x1

    .end local v20           #dest:I
    .restart local v21       #dest:I
    add-int/lit8 v19, v18, -0x1

    .end local v18           #cursor2:I
    .restart local v19       #cursor2:I
    aget-object v2, v9, v18

    aput-object v2, v3, v20

    .line 760
    add-int/lit8 p4, p4, -0x1

    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_8

    move/from16 v20, v21

    .end local v21           #dest:I
    .restart local v20       #dest:I
    move/from16 v18, v19

    .end local v19           #cursor2:I
    .restart local v18       #cursor2:I
    goto :goto_2

    .line 762
    .end local v18           #cursor2:I
    .end local v20           #dest:I
    .restart local v19       #cursor2:I
    .restart local v21       #dest:I
    :cond_8
    aget-object v8, v3, v16

    const/4 v10, 0x0

    add-int/lit8 v12, p4, -0x1

    move/from16 v11, p4

    move-object v13, v7

    invoke-static/range {v8 .. v13}, Lcom/badlogic/gdx/utils/TimSort;->gallopLeft(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v2

    sub-int v15, p4, v2

    .line 763
    if-eqz v15, :cond_10

    .line 764
    sub-int v20, v21, v15

    .line 765
    .end local v21           #dest:I
    .restart local v20       #dest:I
    sub-int v18, v19, v15

    .line 766
    .end local v19           #cursor2:I
    .restart local v18       #cursor2:I
    sub-int p4, p4, v15

    .line 767
    add-int/lit8 v2, v18, 0x1

    add-int/lit8 v4, v20, 0x1

    invoke-static {v9, v2, v3, v4, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 768
    const/4 v2, 0x1

    move/from16 v0, p4

    if-le v0, v2, :cond_3

    .line 771
    :goto_5
    add-int/lit8 v21, v20, -0x1

    .end local v20           #dest:I
    .restart local v21       #dest:I
    add-int/lit8 v17, v16, -0x1

    .end local v16           #cursor1:I
    .restart local v17       #cursor1:I
    aget-object v2, v3, v16

    aput-object v2, v3, v20

    .line 772
    add-int/lit8 p2, p2, -0x1

    if-nez p2, :cond_9

    move/from16 v20, v21

    .end local v21           #dest:I
    .restart local v20       #dest:I
    move/from16 v16, v17

    .end local v17           #cursor1:I
    .restart local v16       #cursor1:I
    goto/16 :goto_2

    .line 773
    .end local v16           #cursor1:I
    .end local v20           #dest:I
    .restart local v17       #cursor1:I
    .restart local v21       #dest:I
    :cond_9
    add-int/lit8 v22, v22, -0x1

    .line 774
    const/4 v2, 0x7

    if-lt v14, v2, :cond_b

    const/4 v2, 0x1

    move v4, v2

    :goto_6
    const/4 v2, 0x7

    if-lt v15, v2, :cond_c

    const/4 v2, 0x1

    .line 749
    :goto_7
    or-int/2addr v2, v4

    if-nez v2, :cond_f

    .line 775
    if-gez v22, :cond_a

    const/16 v22, 0x0

    .line 776
    :cond_a
    add-int/lit8 v22, v22, 0x2

    move/from16 v20, v21

    .end local v21           #dest:I
    .restart local v20       #dest:I
    move/from16 v16, v17

    .line 723
    .end local v17           #cursor1:I
    .restart local v16       #cursor1:I
    goto/16 :goto_1

    .line 774
    .end local v16           #cursor1:I
    .end local v20           #dest:I
    .restart local v17       #cursor1:I
    .restart local v21       #dest:I
    :cond_b
    const/4 v2, 0x0

    move v4, v2

    goto :goto_6

    :cond_c
    const/4 v2, 0x0

    goto :goto_7

    .line 786
    .end local v17           #cursor1:I
    .end local v21           #dest:I
    .end local v22           #minGallop:I
    .restart local v16       #cursor1:I
    .restart local v20       #dest:I
    :cond_d
    if-nez p4, :cond_e

    .line 787
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Comparison method violates its general contract!"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 791
    :cond_e
    const/4 v2, 0x0

    add-int/lit8 v4, p4, -0x1

    sub-int v4, v20, v4

    move/from16 v0, p4

    invoke-static {v9, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    .end local v16           #cursor1:I
    .end local v20           #dest:I
    .restart local v17       #cursor1:I
    .restart local v21       #dest:I
    .restart local v22       #minGallop:I
    :cond_f
    move/from16 v20, v21

    .end local v21           #dest:I
    .restart local v20       #dest:I
    move/from16 v16, v17

    .end local v17           #cursor1:I
    .restart local v16       #cursor1:I
    goto/16 :goto_4

    .end local v18           #cursor2:I
    .end local v20           #dest:I
    .restart local v19       #cursor2:I
    .restart local v21       #dest:I
    :cond_10
    move/from16 v20, v21

    .end local v21           #dest:I
    .restart local v20       #dest:I
    move/from16 v18, v19

    .end local v19           #cursor2:I
    .restart local v18       #cursor2:I
    goto :goto_5

    .end local v16           #cursor1:I
    .end local v20           #dest:I
    .restart local v17       #cursor1:I
    .restart local v21       #dest:I
    :cond_11
    move/from16 v20, v21

    .end local v21           #dest:I
    .restart local v20       #dest:I
    move/from16 v16, v17

    .end local v17           #cursor1:I
    .restart local v16       #cursor1:I
    goto/16 :goto_3
.end method

.method private mergeLo(IIII)V
    .locals 22
    .parameter "base1"
    .parameter "len1"
    .parameter "base2"
    .parameter "len2"

    .prologue
    .line 594
    .local p0, this:Lcom/badlogic/gdx/utils/TimSort;,"Lcom/badlogic/gdx/utils/TimSort<TT;>;"
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/badlogic/gdx/utils/TimSort;->a:[Ljava/lang/Object;

    .line 595
    .local v10, a:[Ljava/lang/Object;
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/TimSort;->ensureCapacity(I)[Ljava/lang/Object;

    move-result-object v4

    .line 596
    .local v4, tmp:[Ljava/lang/Object;
    const/4 v3, 0x0

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v10, v0, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 598
    const/4 v5, 0x0

    .line 599
    .local v5, cursor1:I
    move/from16 v11, p3

    .line 600
    .local v11, cursor2:I
    move/from16 v19, p1

    .line 603
    .local v19, dest:I
    add-int/lit8 v20, v19, 0x1

    .end local v19           #dest:I
    .local v20, dest:I
    add-int/lit8 v18, v11, 0x1

    .end local v11           #cursor2:I
    .local v18, cursor2:I
    aget-object v3, v10, v11

    aput-object v3, v10, v19

    .line 604
    add-int/lit8 p4, p4, -0x1

    if-nez p4, :cond_0

    .line 605
    move/from16 v0, v20

    move/from16 v1, p2

    invoke-static {v4, v5, v10, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 v19, v20

    .end local v20           #dest:I
    .restart local v19       #dest:I
    move/from16 v11, v18

    .line 685
    .end local v18           #cursor2:I
    .restart local v11       #cursor2:I
    :goto_0
    return-void

    .line 608
    .end local v11           #cursor2:I
    .end local v19           #dest:I
    .restart local v18       #cursor2:I
    .restart local v20       #dest:I
    :cond_0
    const/4 v3, 0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_1

    .line 609
    move/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, p4

    invoke-static {v10, v0, v10, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 610
    add-int v3, v20, p4

    aget-object v6, v4, v5

    aput-object v6, v10, v3

    move/from16 v19, v20

    .end local v20           #dest:I
    .restart local v19       #dest:I
    move/from16 v11, v18

    .line 611
    .end local v18           #cursor2:I
    .restart local v11       #cursor2:I
    goto :goto_0

    .line 614
    .end local v11           #cursor2:I
    .end local v19           #dest:I
    .restart local v18       #cursor2:I
    .restart local v20       #dest:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/badlogic/gdx/utils/TimSort;->c:Ljava/util/Comparator;

    .line 615
    .local v8, c:Ljava/util/Comparator;,"Ljava/util/Comparator<-TT;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/TimSort;->minGallop:I

    move/from16 v21, v0

    .local v21, minGallop:I
    move/from16 v19, v20

    .end local v20           #dest:I
    .restart local v19       #dest:I
    move/from16 v11, v18

    .line 618
    .end local v18           #cursor2:I
    .restart local v11       #cursor2:I
    :goto_1
    const/4 v15, 0x0

    .line 619
    .local v15, count1:I
    const/16 v16, 0x0

    .line 626
    .local v16, count2:I
    :cond_2
    aget-object v3, v10, v11

    aget-object v6, v4, v5

    invoke-interface {v8, v3, v6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_5

    .line 627
    add-int/lit8 v20, v19, 0x1

    .end local v19           #dest:I
    .restart local v20       #dest:I
    add-int/lit8 v18, v11, 0x1

    .end local v11           #cursor2:I
    .restart local v18       #cursor2:I
    aget-object v3, v10, v11

    aput-object v3, v10, v19

    .line 628
    add-int/lit8 v16, v16, 0x1

    .line 629
    const/4 v15, 0x0

    .line 630
    add-int/lit8 p4, p4, -0x1

    if-nez p4, :cond_11

    move/from16 v19, v20

    .end local v20           #dest:I
    .restart local v19       #dest:I
    move/from16 v11, v18

    .line 672
    .end local v18           #cursor2:I
    .restart local v11       #cursor2:I
    :cond_3
    :goto_2
    const/4 v3, 0x1

    move/from16 v0, v21

    if-ge v0, v3, :cond_4

    const/16 v21, 0x1

    .end local v21           #minGallop:I
    :cond_4
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/utils/TimSort;->minGallop:I

    .line 674
    const/4 v3, 0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_d

    .line 676
    move/from16 v0, v19

    move/from16 v1, p4

    invoke-static {v10, v11, v10, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 677
    add-int v3, v19, p4

    aget-object v6, v4, v5

    aput-object v6, v10, v3

    goto :goto_0

    .line 632
    .restart local v21       #minGallop:I
    :cond_5
    add-int/lit8 v20, v19, 0x1

    .end local v19           #dest:I
    .restart local v20       #dest:I
    add-int/lit8 v17, v5, 0x1

    .end local v5           #cursor1:I
    .local v17, cursor1:I
    aget-object v3, v4, v5

    aput-object v3, v10, v19

    .line 633
    add-int/lit8 v15, v15, 0x1

    .line 634
    const/16 v16, 0x0

    .line 635
    add-int/lit8 p2, p2, -0x1

    const/4 v3, 0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_6

    move/from16 v19, v20

    .end local v20           #dest:I
    .restart local v19       #dest:I
    move/from16 v5, v17

    .end local v17           #cursor1:I
    .restart local v5       #cursor1:I
    goto :goto_2

    .end local v5           #cursor1:I
    .end local v19           #dest:I
    .restart local v17       #cursor1:I
    .restart local v20       #dest:I
    :cond_6
    move/from16 v19, v20

    .end local v20           #dest:I
    .restart local v19       #dest:I
    move/from16 v5, v17

    .line 637
    .end local v17           #cursor1:I
    .restart local v5       #cursor1:I
    :goto_3
    or-int v3, v15, v16

    .line 624
    move/from16 v0, v21

    if-lt v3, v0, :cond_2

    move/from16 v18, v11

    .line 645
    .end local v11           #cursor2:I
    .restart local v18       #cursor2:I
    :goto_4
    aget-object v3, v10, v18

    const/4 v7, 0x0

    move/from16 v6, p2

    invoke-static/range {v3 .. v8}, Lcom/badlogic/gdx/utils/TimSort;->gallopRight(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v15

    .line 646
    if-eqz v15, :cond_7

    .line 647
    move/from16 v0, v19

    invoke-static {v4, v5, v10, v0, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 648
    add-int v19, v19, v15

    .line 649
    add-int/2addr v5, v15

    .line 650
    sub-int p2, p2, v15

    .line 651
    const/4 v3, 0x1

    move/from16 v0, p2

    if-gt v0, v3, :cond_7

    move/from16 v11, v18

    .line 652
    .end local v18           #cursor2:I
    .restart local v11       #cursor2:I
    goto :goto_2

    .line 654
    .end local v11           #cursor2:I
    .restart local v18       #cursor2:I
    :cond_7
    add-int/lit8 v20, v19, 0x1

    .end local v19           #dest:I
    .restart local v20       #dest:I
    add-int/lit8 v11, v18, 0x1

    .end local v18           #cursor2:I
    .restart local v11       #cursor2:I
    aget-object v3, v10, v18

    aput-object v3, v10, v19

    .line 655
    add-int/lit8 p4, p4, -0x1

    if-nez p4, :cond_8

    move/from16 v19, v20

    .end local v20           #dest:I
    .restart local v19       #dest:I
    goto :goto_2

    .line 657
    .end local v19           #dest:I
    .restart local v20       #dest:I
    :cond_8
    aget-object v9, v4, v5

    const/4 v13, 0x0

    move/from16 v12, p4

    move-object v14, v8

    invoke-static/range {v9 .. v14}, Lcom/badlogic/gdx/utils/TimSort;->gallopLeft(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v16

    .line 658
    if-eqz v16, :cond_10

    .line 659
    move/from16 v0, v20

    move/from16 v1, v16

    invoke-static {v10, v11, v10, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 660
    add-int v19, v20, v16

    .line 661
    .end local v20           #dest:I
    .restart local v19       #dest:I
    add-int v11, v11, v16

    .line 662
    sub-int p4, p4, v16

    .line 663
    if-eqz p4, :cond_3

    .line 665
    :goto_5
    add-int/lit8 v20, v19, 0x1

    .end local v19           #dest:I
    .restart local v20       #dest:I
    add-int/lit8 v17, v5, 0x1

    .end local v5           #cursor1:I
    .restart local v17       #cursor1:I
    aget-object v3, v4, v5

    aput-object v3, v10, v19

    .line 666
    add-int/lit8 p2, p2, -0x1

    const/4 v3, 0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_9

    move/from16 v19, v20

    .end local v20           #dest:I
    .restart local v19       #dest:I
    move/from16 v5, v17

    .end local v17           #cursor1:I
    .restart local v5       #cursor1:I
    goto/16 :goto_2

    .line 667
    .end local v5           #cursor1:I
    .end local v19           #dest:I
    .restart local v17       #cursor1:I
    .restart local v20       #dest:I
    :cond_9
    add-int/lit8 v21, v21, -0x1

    .line 668
    const/4 v3, 0x7

    if-lt v15, v3, :cond_b

    const/4 v3, 0x1

    move v6, v3

    :goto_6
    const/4 v3, 0x7

    move/from16 v0, v16

    if-lt v0, v3, :cond_c

    const/4 v3, 0x1

    .line 643
    :goto_7
    or-int/2addr v3, v6

    if-nez v3, :cond_f

    .line 669
    if-gez v21, :cond_a

    const/16 v21, 0x0

    .line 670
    :cond_a
    add-int/lit8 v21, v21, 0x2

    move/from16 v19, v20

    .end local v20           #dest:I
    .restart local v19       #dest:I
    move/from16 v5, v17

    .line 617
    .end local v17           #cursor1:I
    .restart local v5       #cursor1:I
    goto/16 :goto_1

    .line 668
    .end local v5           #cursor1:I
    .end local v19           #dest:I
    .restart local v17       #cursor1:I
    .restart local v20       #dest:I
    :cond_b
    const/4 v3, 0x0

    move v6, v3

    goto :goto_6

    :cond_c
    const/4 v3, 0x0

    goto :goto_7

    .line 678
    .end local v17           #cursor1:I
    .end local v20           #dest:I
    .end local v21           #minGallop:I
    .restart local v5       #cursor1:I
    .restart local v19       #dest:I
    :cond_d
    if-nez p2, :cond_e

    .line 679
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v6, "Comparison method violates its general contract!"

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 683
    :cond_e
    move/from16 v0, v19

    move/from16 v1, p2

    invoke-static {v4, v5, v10, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    .end local v5           #cursor1:I
    .end local v19           #dest:I
    .restart local v17       #cursor1:I
    .restart local v20       #dest:I
    .restart local v21       #minGallop:I
    :cond_f
    move/from16 v19, v20

    .end local v20           #dest:I
    .restart local v19       #dest:I
    move/from16 v18, v11

    .end local v11           #cursor2:I
    .restart local v18       #cursor2:I
    move/from16 v5, v17

    .end local v17           #cursor1:I
    .restart local v5       #cursor1:I
    goto/16 :goto_4

    .end local v18           #cursor2:I
    .end local v19           #dest:I
    .restart local v11       #cursor2:I
    .restart local v20       #dest:I
    :cond_10
    move/from16 v19, v20

    .end local v20           #dest:I
    .restart local v19       #dest:I
    goto :goto_5

    .end local v11           #cursor2:I
    .end local v19           #dest:I
    .restart local v18       #cursor2:I
    .restart local v20       #dest:I
    :cond_11
    move/from16 v19, v20

    .end local v20           #dest:I
    .restart local v19       #dest:I
    move/from16 v11, v18

    .end local v18           #cursor2:I
    .restart local v11       #cursor2:I
    goto/16 :goto_3
.end method

.method private static minRunLength(I)I
    .locals 2
    .parameter "n"

    .prologue
    .line 349
    const/4 v0, 0x0

    .line 350
    .local v0, r:I
    :goto_0
    const/16 v1, 0x20

    if-ge p0, v1, :cond_0

    .line 354
    add-int v1, p0, v0

    return v1

    .line 351
    :cond_0
    and-int/lit8 v1, p0, 0x1

    or-int/2addr v0, v1

    .line 352
    shr-int/lit8 p0, p0, 0x1

    goto :goto_0
.end method

.method private pushRun(II)V
    .locals 2
    .parameter "runBase"
    .parameter "runLen"

    .prologue
    .line 362
    .local p0, this:Lcom/badlogic/gdx/utils/TimSort;,"Lcom/badlogic/gdx/utils/TimSort<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->runBase:[I

    iget v1, p0, Lcom/badlogic/gdx/utils/TimSort;->stackSize:I

    aput p1, v0, v1

    .line 363
    iget-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    iget v1, p0, Lcom/badlogic/gdx/utils/TimSort;->stackSize:I

    aput p2, v0, v1

    .line 364
    iget v0, p0, Lcom/badlogic/gdx/utils/TimSort;->stackSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/TimSort;->stackSize:I

    .line 365
    return-void
.end method

.method private static rangeCheck(III)V
    .locals 3
    .parameter "arrayLen"
    .parameter "fromIndex"
    .parameter "toIndex"

    .prologue
    .line 831
    if-le p1, p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fromIndex("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") > toIndex("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 832
    :cond_0
    if-gez p1, :cond_1

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 833
    :cond_1
    if-le p2, p0, :cond_2

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 834
    :cond_2
    return-void
.end method

.method private static reverseRange([Ljava/lang/Object;II)V
    .locals 4
    .parameter "a"
    .parameter "lo"
    .parameter "hi"

    .prologue
    .line 326
    add-int/lit8 p2, p2, -0x1

    move v0, p2

    .end local p2
    .local v0, hi:I
    move v1, p1

    .line 327
    .end local p1
    .local v1, lo:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 332
    return-void

    .line 328
    :cond_0
    aget-object v2, p0, v1

    .line 329
    .local v2, t:Ljava/lang/Object;
    add-int/lit8 p1, v1, 0x1

    .end local v1           #lo:I
    .restart local p1
    aget-object v3, p0, v0

    aput-object v3, p0, v1

    .line 330
    add-int/lit8 p2, v0, -0x1

    .end local v0           #hi:I
    .restart local p2
    aput-object v2, p0, v0

    move v0, p2

    .end local p2
    .restart local v0       #hi:I
    move v1, p1

    .end local p1
    .restart local v1       #lo:I
    goto :goto_0
.end method

.method static sort([Ljava/lang/Object;IILjava/util/Comparator;)V
    .locals 8
    .parameter "a"
    .parameter "lo"
    .parameter "hi"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p3, c:Ljava/util/Comparator;,"Ljava/util/Comparator<-TT;>;"
    if-nez p3, :cond_1

    .line 184
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;II)V

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    array-length v6, p0

    invoke-static {v6, p1, p2}, Lcom/badlogic/gdx/utils/TimSort;->rangeCheck(III)V

    .line 189
    sub-int v3, p2, p1

    .line 190
    .local v3, nRemaining:I
    const/4 v6, 0x2

    if-lt v3, v6, :cond_0

    .line 193
    const/16 v6, 0x20

    if-ge v3, v6, :cond_2

    .line 194
    invoke-static {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/TimSort;->countRunAndMakeAscending([Ljava/lang/Object;IILjava/util/Comparator;)I

    move-result v1

    .line 195
    .local v1, initRunLen:I
    add-int v6, p1, v1

    invoke-static {p0, p1, p2, v6, p3}, Lcom/badlogic/gdx/utils/TimSort;->binarySort([Ljava/lang/Object;IIILjava/util/Comparator;)V

    goto :goto_0

    .line 201
    .end local v1           #initRunLen:I
    :cond_2
    new-instance v5, Lcom/badlogic/gdx/utils/TimSort;

    invoke-direct {v5, p0, p3}, Lcom/badlogic/gdx/utils/TimSort;-><init>([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 202
    .local v5, ts:Lcom/badlogic/gdx/utils/TimSort;,"Lcom/badlogic/gdx/utils/TimSort<TT;>;"
    invoke-static {v3}, Lcom/badlogic/gdx/utils/TimSort;->minRunLength(I)I

    move-result v2

    .line 205
    .local v2, minRun:I
    :cond_3
    invoke-static {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/TimSort;->countRunAndMakeAscending([Ljava/lang/Object;IILjava/util/Comparator;)I

    move-result v4

    .line 208
    .local v4, runLen:I
    if-ge v4, v2, :cond_4

    .line 209
    if-gt v3, v2, :cond_5

    move v0, v3

    .line 210
    .local v0, force:I
    :goto_1
    add-int v6, p1, v0

    add-int v7, p1, v4

    invoke-static {p0, p1, v6, v7, p3}, Lcom/badlogic/gdx/utils/TimSort;->binarySort([Ljava/lang/Object;IIILjava/util/Comparator;)V

    .line 211
    move v4, v0

    .line 215
    .end local v0           #force:I
    :cond_4
    invoke-direct {v5, p1, v4}, Lcom/badlogic/gdx/utils/TimSort;->pushRun(II)V

    .line 216
    invoke-direct {v5}, Lcom/badlogic/gdx/utils/TimSort;->mergeCollapse()V

    .line 219
    add-int/2addr p1, v4

    .line 220
    sub-int/2addr v3, v4

    .line 221
    if-nez v3, :cond_3

    .line 225
    invoke-direct {v5}, Lcom/badlogic/gdx/utils/TimSort;->mergeForceCollapse()V

    goto :goto_0

    :cond_5
    move v0, v2

    .line 209
    goto :goto_1
.end method

.method static sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    .locals 2
    .parameter "a"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 179
    .local p1, c:Ljava/util/Comparator;,"Ljava/util/Comparator<-TT;>;"
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/badlogic/gdx/utils/TimSort;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 180
    return-void
.end method


# virtual methods
.method public doSort([Ljava/lang/Object;Ljava/util/Comparator;II)V
    .locals 11
    .parameter "a"
    .parameter
    .parameter "lo"
    .parameter "hi"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;",
            "Ljava/util/Comparator",
            "<TT;>;II)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/badlogic/gdx/utils/TimSort;,"Lcom/badlogic/gdx/utils/TimSort<TT;>;"
    .local p2, c:Ljava/util/Comparator;,"Ljava/util/Comparator<TT;>;"
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 97
    iput v9, p0, Lcom/badlogic/gdx/utils/TimSort;->stackSize:I

    .line 98
    array-length v8, p1

    invoke-static {v8, p3, p4}, Lcom/badlogic/gdx/utils/TimSort;->rangeCheck(III)V

    .line 99
    sub-int v5, p4, p3

    .line 100
    .local v5, nRemaining:I
    const/4 v8, 0x2

    if-ge v5, v8, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    const/16 v8, 0x20

    if-ge v5, v8, :cond_2

    .line 104
    invoke-static {p1, p3, p4, p2}, Lcom/badlogic/gdx/utils/TimSort;->countRunAndMakeAscending([Ljava/lang/Object;IILjava/util/Comparator;)I

    move-result v2

    .line 105
    .local v2, initRunLen:I
    add-int v8, p3, v2

    invoke-static {p1, p3, p4, v8, p2}, Lcom/badlogic/gdx/utils/TimSort;->binarySort([Ljava/lang/Object;IIILjava/util/Comparator;)V

    goto :goto_0

    .line 109
    .end local v2           #initRunLen:I
    :cond_2
    iput-object p1, p0, Lcom/badlogic/gdx/utils/TimSort;->a:[Ljava/lang/Object;

    .line 110
    iput-object p2, p0, Lcom/badlogic/gdx/utils/TimSort;->c:Ljava/util/Comparator;

    .line 111
    iput v9, p0, Lcom/badlogic/gdx/utils/TimSort;->tmpCount:I

    .line 115
    invoke-static {v5}, Lcom/badlogic/gdx/utils/TimSort;->minRunLength(I)I

    move-result v3

    .line 118
    .local v3, minRun:I
    :cond_3
    invoke-static {p1, p3, p4, p2}, Lcom/badlogic/gdx/utils/TimSort;->countRunAndMakeAscending([Ljava/lang/Object;IILjava/util/Comparator;)I

    move-result v6

    .line 121
    .local v6, runLen:I
    if-ge v6, v3, :cond_4

    .line 122
    if-gt v5, v3, :cond_5

    move v0, v5

    .line 123
    .local v0, force:I
    :goto_1
    add-int v8, p3, v0

    add-int v9, p3, v6

    invoke-static {p1, p3, v8, v9, p2}, Lcom/badlogic/gdx/utils/TimSort;->binarySort([Ljava/lang/Object;IIILjava/util/Comparator;)V

    .line 124
    move v6, v0

    .line 128
    .end local v0           #force:I
    :cond_4
    invoke-direct {p0, p3, v6}, Lcom/badlogic/gdx/utils/TimSort;->pushRun(II)V

    .line 129
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/TimSort;->mergeCollapse()V

    .line 132
    add-int/2addr p3, v6

    .line 133
    sub-int/2addr v5, v6

    .line 134
    if-nez v5, :cond_3

    .line 138
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/TimSort;->mergeForceCollapse()V

    .line 141
    iput-object v10, p0, Lcom/badlogic/gdx/utils/TimSort;->a:[Ljava/lang/Object;

    .line 142
    iput-object v10, p0, Lcom/badlogic/gdx/utils/TimSort;->c:Ljava/util/Comparator;

    .line 143
    iget-object v7, p0, Lcom/badlogic/gdx/utils/TimSort;->tmp:[Ljava/lang/Object;

    .line 144
    .local v7, tmp:[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, i:I
    iget v4, p0, Lcom/badlogic/gdx/utils/TimSort;->tmpCount:I

    .local v4, n:I
    :goto_2
    if-ge v1, v4, :cond_0

    .line 145
    aput-object v10, v7, v1

    .line 144
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v1           #i:I
    .end local v4           #n:I
    .end local v7           #tmp:[Ljava/lang/Object;
    :cond_5
    move v0, v3

    .line 122
    goto :goto_1
.end method
