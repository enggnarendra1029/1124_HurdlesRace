.class public Lorg/andengine/util/algorithm/sort/InsertionSorter;
.super Lorg/andengine/util/algorithm/sort/Sorter;
.source "InsertionSorter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/andengine/util/algorithm/sort/Sorter",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    .local p0, this:Lorg/andengine/util/algorithm/sort/InsertionSorter;,"Lorg/andengine/util/algorithm/sort/InsertionSorter<TT;>;"
    invoke-direct {p0}, Lorg/andengine/util/algorithm/sort/Sorter;-><init>()V

    return-void
.end method


# virtual methods
.method public sort(Ljava/util/List;IILjava/util/Comparator;)V
    .locals 6
    .parameter
    .parameter "pStart"
    .parameter "pEnd"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;II",
            "Ljava/util/Comparator",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, this:Lorg/andengine/util/algorithm/sort/InsertionSorter;,"Lorg/andengine/util/algorithm/sort/InsertionSorter<TT;>;"
    .local p1, pList:Ljava/util/List;,"Ljava/util/List<TT;>;"
    .local p4, pComparator:Ljava/util/Comparator;,"Ljava/util/Comparator<TT;>;"
    add-int/lit8 v1, p2, 0x1

    .local v1, i:I
    :goto_0
    if-lt v1, p3, :cond_0

    .line 66
    return-void

    .line 56
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 57
    .local v0, current:Ljava/lang/Object;,"TT;"
    add-int/lit8 v5, v1, -0x1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 58
    .local v4, prev:Ljava/lang/Object;,"TT;"
    invoke-interface {p4, v0, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_2

    .line 59
    move v2, v1

    .line 61
    .local v2, j:I
    :goto_1
    add-int/lit8 v3, v2, -0x1

    .end local v2           #j:I
    .local v3, j:I
    invoke-interface {p1, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 62
    if-le v3, p2, :cond_1

    add-int/lit8 v5, v3, -0x1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p4, v0, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    .line 60
    if-ltz v5, :cond_3

    .line 63
    :cond_1
    invoke-interface {p1, v3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 55
    .end local v3           #j:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .restart local v3       #j:I
    :cond_3
    move v2, v3

    .end local v3           #j:I
    .restart local v2       #j:I
    goto :goto_1
.end method

.method public sort(Lorg/andengine/util/adt/list/IList;IILjava/util/Comparator;)V
    .locals 6
    .parameter
    .parameter "pStart"
    .parameter "pEnd"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/adt/list/IList",
            "<TT;>;II",
            "Ljava/util/Comparator",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, this:Lorg/andengine/util/algorithm/sort/InsertionSorter;,"Lorg/andengine/util/algorithm/sort/InsertionSorter<TT;>;"
    .local p1, pList:Lorg/andengine/util/adt/list/IList;,"Lorg/andengine/util/adt/list/IList<TT;>;"
    .local p4, pComparator:Ljava/util/Comparator;,"Ljava/util/Comparator<TT;>;"
    add-int/lit8 v1, p2, 0x1

    .local v1, i:I
    :goto_0
    if-lt v1, p3, :cond_0

    .line 82
    return-void

    .line 72
    :cond_0
    invoke-interface {p1, v1}, Lorg/andengine/util/adt/list/IList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 73
    .local v0, current:Ljava/lang/Object;,"TT;"
    add-int/lit8 v5, v1, -0x1

    invoke-interface {p1, v5}, Lorg/andengine/util/adt/list/IList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 74
    .local v4, prev:Ljava/lang/Object;,"TT;"
    invoke-interface {p4, v0, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_2

    .line 75
    move v2, v1

    .line 77
    .local v2, j:I
    :goto_1
    add-int/lit8 v3, v2, -0x1

    .end local v2           #j:I
    .local v3, j:I
    invoke-interface {p1, v2, v4}, Lorg/andengine/util/adt/list/IList;->set(ILjava/lang/Object;)V

    .line 78
    if-le v3, p2, :cond_1

    add-int/lit8 v5, v3, -0x1

    invoke-interface {p1, v5}, Lorg/andengine/util/adt/list/IList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p4, v0, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    .line 76
    if-ltz v5, :cond_3

    .line 79
    :cond_1
    invoke-interface {p1, v3, v0}, Lorg/andengine/util/adt/list/IList;->set(ILjava/lang/Object;)V

    .line 71
    .end local v3           #j:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .restart local v3       #j:I
    :cond_3
    move v2, v3

    .end local v3           #j:I
    .restart local v2       #j:I
    goto :goto_1
.end method

.method public sort([Ljava/lang/Object;IILjava/util/Comparator;)V
    .locals 6
    .parameter "pArray"
    .parameter "pStart"
    .parameter "pEnd"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;II",
            "Ljava/util/Comparator",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, this:Lorg/andengine/util/algorithm/sort/InsertionSorter;,"Lorg/andengine/util/algorithm/sort/InsertionSorter<TT;>;"
    .local p4, pComparator:Ljava/util/Comparator;,"Ljava/util/Comparator<TT;>;"
    add-int/lit8 v1, p2, 0x1

    .local v1, i:I
    :goto_0
    if-lt v1, p3, :cond_0

    .line 50
    return-void

    .line 40
    :cond_0
    aget-object v0, p1, v1

    .line 41
    .local v0, current:Ljava/lang/Object;,"TT;"
    add-int/lit8 v5, v1, -0x1

    aget-object v4, p1, v5

    .line 42
    .local v4, prev:Ljava/lang/Object;,"TT;"
    invoke-interface {p4, v0, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_2

    .line 43
    move v2, v1

    .line 45
    .local v2, j:I
    :goto_1
    add-int/lit8 v3, v2, -0x1

    .end local v2           #j:I
    .local v3, j:I
    aput-object v4, p1, v2

    .line 46
    if-le v3, p2, :cond_1

    add-int/lit8 v5, v3, -0x1

    aget-object v4, p1, v5

    invoke-interface {p4, v0, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    .line 44
    if-ltz v5, :cond_3

    .line 47
    :cond_1
    aput-object v0, p1, v3

    .line 39
    .end local v3           #j:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .restart local v3       #j:I
    :cond_3
    move v2, v3

    .end local v3           #j:I
    .restart local v2       #j:I
    goto :goto_1
.end method
