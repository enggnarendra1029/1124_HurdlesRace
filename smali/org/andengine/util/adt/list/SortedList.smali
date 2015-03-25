.class public Lorg/andengine/util/adt/list/SortedList;
.super Ljava/lang/Object;
.source "SortedList.java"

# interfaces
.implements Lorg/andengine/util/adt/list/ISortedList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/Comparable",
        "<TT;>;>",
        "Ljava/lang/Object;",
        "Lorg/andengine/util/adt/list/ISortedList",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final INDEX_INVALID:I = -0x1


# instance fields
.field private final mList:Lorg/andengine/util/adt/list/IList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/andengine/util/adt/list/IList",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/andengine/util/adt/list/IList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/adt/list/IList",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, this:Lorg/andengine/util/adt/list/SortedList;,"Lorg/andengine/util/adt/list/SortedList<TT;>;"
    .local p1, pList:Lorg/andengine/util/adt/list/IList;,"Lorg/andengine/util/adt/list/IList<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/andengine/util/adt/list/SortedList;->mList:Lorg/andengine/util/adt/list/IList;

    .line 35
    return-void
.end method

.method private binarySearch(IILjava/lang/Comparable;)I
    .locals 6
    .parameter "pStart"
    .parameter "pEnd"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)I"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, this:Lorg/andengine/util/adt/list/SortedList;,"Lorg/andengine/util/adt/list/SortedList<TT;>;"
    .local p3, pItem:Ljava/lang/Comparable;,"TT;"
    move v2, p1

    .line 138
    .local v2, low:I
    add-int/lit8 v1, p2, -0x1

    .line 140
    .local v1, high:I
    :goto_0
    if-le v2, v1, :cond_1

    .line 153
    invoke-static {v2}, Lorg/andengine/util/adt/list/ListUtils;->encodeInsertionIndex(I)I

    move-result v3

    :cond_0
    return v3

    .line 141
    :cond_1
    add-int v5, v2, v1

    ushr-int/lit8 v3, v5, 0x1

    .line 142
    .local v3, mid:I
    iget-object v5, p0, Lorg/andengine/util/adt/list/SortedList;->mList:Lorg/andengine/util/adt/list/IList;

    invoke-interface {v5, v3}, Lorg/andengine/util/adt/list/IList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Comparable;

    .line 144
    .local v4, midVal:Ljava/lang/Comparable;,"TT;"
    invoke-interface {p3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 145
    .local v0, diff:I
    if-lez v0, :cond_2

    .line 146
    add-int/lit8 v2, v3, 0x1

    .line 147
    goto :goto_0

    :cond_2
    if-gez v0, :cond_0

    .line 148
    add-int/lit8 v1, v3, -0x1

    .line 149
    goto :goto_0
.end method

.method private binarySearch(Ljava/lang/Comparable;Z)I
    .locals 6
    .parameter
    .parameter "pReturnSequenceEndIfNoEqualItemFound"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)I"
        }
    .end annotation

    .prologue
    .local p0, this:Lorg/andengine/util/adt/list/SortedList;,"Lorg/andengine/util/adt/list/SortedList<TT;>;"
    .local p1, pItem:Ljava/lang/Comparable;,"TT;"
    const/4 v1, 0x0

    .line 127
    iget-object v0, p0, Lorg/andengine/util/adt/list/SortedList;->mList:Lorg/andengine/util/adt/list/IList;

    invoke-interface {v0}, Lorg/andengine/util/adt/list/IList;->size()I

    move-result v2

    .line 128
    .local v2, size:I
    invoke-direct {p0, v1, v2, p1}, Lorg/andengine/util/adt/list/SortedList;->binarySearch(IILjava/lang/Comparable;)I

    move-result v3

    .line 129
    .local v3, guess:I
    if-ltz v3, :cond_0

    move-object v0, p0

    move-object v4, p1

    move v5, p2

    .line 130
    invoke-direct/range {v0 .. v5}, Lorg/andengine/util/adt/list/SortedList;->scanForEqualItem(IIILjava/lang/Comparable;Z)I

    move-result v3

    .line 132
    .end local v3           #guess:I
    :cond_0
    return v3
.end method

.method private scanForEqualItem(IIILjava/lang/Comparable;Z)I
    .locals 3
    .parameter "pStart"
    .parameter "pEnd"
    .parameter "pGuess"
    .parameter
    .parameter "pReturnSequenceEndIfNoEqualItemFound"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIITT;Z)I"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, this:Lorg/andengine/util/adt/list/SortedList;,"Lorg/andengine/util/adt/list/SortedList<TT;>;"
    .local p4, pItem:Ljava/lang/Comparable;,"TT;"
    add-int/lit8 v0, p3, -0x1

    .line 169
    .local v0, i:I
    :goto_0
    if-lt v0, p1, :cond_0

    iget-object v2, p0, Lorg/andengine/util/adt/list/SortedList;->mList:Lorg/andengine/util/adt/list/IList;

    invoke-interface {v2, v0}, Lorg/andengine/util/adt/list/IList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Comparable;

    invoke-interface {p4, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 172
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 175
    :goto_1
    if-lt v0, p2, :cond_3

    .line 198
    if-eqz p5, :cond_7

    .line 201
    .end local v0           #i:I
    :cond_1
    :goto_2
    return v0

    .line 170
    .restart local v0       #i:I
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 176
    :cond_3
    iget-object v2, p0, Lorg/andengine/util/adt/list/SortedList;->mList:Lorg/andengine/util/adt/list/IList;

    invoke-interface {v2, v0}, Lorg/andengine/util/adt/list/IList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    .line 177
    .local v1, item:Ljava/lang/Comparable;,"TT;"
    if-gt v0, p3, :cond_5

    .line 179
    invoke-virtual {p4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 195
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 185
    :cond_5
    invoke-interface {p4, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_6

    .line 186
    invoke-virtual {p4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    .line 192
    :cond_6
    invoke-static {v0}, Lorg/andengine/util/adt/list/ListUtils;->encodeInsertionIndex(I)I

    move-result v0

    goto :goto_2

    .line 201
    .end local v1           #item:Ljava/lang/Comparable;,"TT;"
    :cond_7
    const/4 v0, -0x1

    goto :goto_2
.end method


# virtual methods
.method public add(ILjava/lang/Comparable;)V
    .locals 1
    .parameter "pIndex"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 69
    .local p0, this:Lorg/andengine/util/adt/list/SortedList;,"Lorg/andengine/util/adt/list/SortedList<TT;>;"
    .local p2, pItem:Ljava/lang/Comparable;,"TT;"
    iget-object v0, p0, Lorg/andengine/util/adt/list/SortedList;->mList:Lorg/andengine/util/adt/list/IList;

    invoke-interface {v0, p2}, Lorg/andengine/util/adt/list/IList;->add(Ljava/lang/Object;)V

    .line 70
    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 1
    check-cast p2, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lorg/andengine/util/adt/list/SortedList;->add(ILjava/lang/Comparable;)V

    return-void
.end method

.method public add(Ljava/lang/Comparable;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, this:Lorg/andengine/util/adt/list/SortedList;,"Lorg/andengine/util/adt/list/SortedList<TT;>;"
    .local p1, pItem:Ljava/lang/Comparable;,"TT;"
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lorg/andengine/util/adt/list/SortedList;->binarySearch(Ljava/lang/Comparable;Z)I

    move-result v0

    .line 75
    .local v0, index:I
    if-gez v0, :cond_0

    .line 76
    iget-object v1, p0, Lorg/andengine/util/adt/list/SortedList;->mList:Lorg/andengine/util/adt/list/IList;

    invoke-static {v0}, Lorg/andengine/util/adt/list/ListUtils;->encodeInsertionIndex(I)I

    move-result v2

    invoke-interface {v1, v2, p1}, Lorg/andengine/util/adt/list/IList;->add(ILjava/lang/Object;)V

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v1, p0, Lorg/andengine/util/adt/list/SortedList;->mList:Lorg/andengine/util/adt/list/IList;

    invoke-interface {v1, v0, p1}, Lorg/andengine/util/adt/list/IList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lorg/andengine/util/adt/list/SortedList;->add(Ljava/lang/Comparable;)V

    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 119
    .local p0, this:Lorg/andengine/util/adt/list/SortedList;,"Lorg/andengine/util/adt/list/SortedList<TT;>;"
    iget-object v0, p0, Lorg/andengine/util/adt/list/SortedList;->mList:Lorg/andengine/util/adt/list/IList;

    invoke-interface {v0}, Lorg/andengine/util/adt/list/IList;->clear()V

    .line 120
    return-void
.end method

.method public get(I)Ljava/lang/Comparable;
    .locals 1
    .parameter "pIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 52
    .local p0, this:Lorg/andengine/util/adt/list/SortedList;,"Lorg/andengine/util/adt/list/SortedList<TT;>;"
    iget-object v0, p0, Lorg/andengine/util/adt/list/SortedList;->mList:Lorg/andengine/util/adt/list/IList;

    invoke-interface {v0, p1}, Lorg/andengine/util/adt/list/IList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lorg/andengine/util/adt/list/SortedList;->get(I)Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(Ljava/lang/Comparable;)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, this:Lorg/andengine/util/adt/list/SortedList;,"Lorg/andengine/util/adt/list/SortedList<TT;>;"
    .local p1, pItem:Ljava/lang/Comparable;,"TT;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/andengine/util/adt/list/SortedList;->binarySearch(Ljava/lang/Comparable;Z)I

    move-result v0

    return v0
.end method

.method public bridge synthetic indexOf(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lorg/andengine/util/adt/list/SortedList;->indexOf(Ljava/lang/Comparable;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 47
    .local p0, this:Lorg/andengine/util/adt/list/SortedList;,"Lorg/andengine/util/adt/list/SortedList<TT;>;"
    iget-object v0, p0, Lorg/andengine/util/adt/list/SortedList;->mList:Lorg/andengine/util/adt/list/IList;

    invoke-interface {v0}, Lorg/andengine/util/adt/list/IList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public remove(I)Ljava/lang/Comparable;
    .locals 1
    .parameter "pIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, this:Lorg/andengine/util/adt/list/SortedList;,"Lorg/andengine/util/adt/list/SortedList<TT;>;"
    iget-object v0, p0, Lorg/andengine/util/adt/list/SortedList;->mList:Lorg/andengine/util/adt/list/IList;

    invoke-interface {v0, p1}, Lorg/andengine/util/adt/list/IList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    return-object v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lorg/andengine/util/adt/list/SortedList;->remove(I)Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Comparable;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Lorg/andengine/util/adt/list/SortedList;,"Lorg/andengine/util/adt/list/SortedList<TT;>;"
    .local p1, pItem:Ljava/lang/Comparable;,"TT;"
    const/4 v1, 0x0

    .line 94
    if-nez p1, :cond_1

    .line 95
    iget-object v1, p0, Lorg/andengine/util/adt/list/SortedList;->mList:Lorg/andengine/util/adt/list/IList;

    invoke-interface {v1, p1}, Lorg/andengine/util/adt/list/IList;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 103
    :cond_0
    :goto_0
    return v1

    .line 98
    :cond_1
    invoke-direct {p0, p1, v1}, Lorg/andengine/util/adt/list/SortedList;->binarySearch(Ljava/lang/Comparable;Z)I

    move-result v0

    .line 99
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 100
    iget-object v1, p0, Lorg/andengine/util/adt/list/SortedList;->mList:Lorg/andengine/util/adt/list/IList;

    invoke-interface {v1, v0}, Lorg/andengine/util/adt/list/IList;->remove(I)Ljava/lang/Object;

    .line 101
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lorg/andengine/util/adt/list/SortedList;->remove(Ljava/lang/Comparable;)Z

    move-result v0

    return v0
.end method

.method public removeFirst()Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, this:Lorg/andengine/util/adt/list/SortedList;,"Lorg/andengine/util/adt/list/SortedList<TT;>;"
    iget-object v0, p0, Lorg/andengine/util/adt/list/SortedList;->mList:Lorg/andengine/util/adt/list/IList;

    invoke-interface {v0}, Lorg/andengine/util/adt/list/IList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    return-object v0
.end method

.method public bridge synthetic removeFirst()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/util/adt/list/SortedList;->removeFirst()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public removeLast()Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, this:Lorg/andengine/util/adt/list/SortedList;,"Lorg/andengine/util/adt/list/SortedList<TT;>;"
    iget-object v0, p0, Lorg/andengine/util/adt/list/SortedList;->mList:Lorg/andengine/util/adt/list/IList;

    invoke-interface {v0}, Lorg/andengine/util/adt/list/IList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    return-object v0
.end method

.method public bridge synthetic removeLast()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/util/adt/list/SortedList;->removeLast()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public set(ILjava/lang/Comparable;)V
    .locals 1
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 58
    .local p0, this:Lorg/andengine/util/adt/list/SortedList;,"Lorg/andengine/util/adt/list/SortedList<TT;>;"
    .local p2, pItem:Ljava/lang/Comparable;,"TT;"
    iget-object v0, p0, Lorg/andengine/util/adt/list/SortedList;->mList:Lorg/andengine/util/adt/list/IList;

    invoke-interface {v0, p1, p2}, Lorg/andengine/util/adt/list/IList;->set(ILjava/lang/Object;)V

    .line 59
    return-void
.end method

.method public bridge synthetic set(ILjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 1
    check-cast p2, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lorg/andengine/util/adt/list/SortedList;->set(ILjava/lang/Comparable;)V

    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 114
    .local p0, this:Lorg/andengine/util/adt/list/SortedList;,"Lorg/andengine/util/adt/list/SortedList<TT;>;"
    iget-object v0, p0, Lorg/andengine/util/adt/list/SortedList;->mList:Lorg/andengine/util/adt/list/IList;

    invoke-interface {v0}, Lorg/andengine/util/adt/list/IList;->size()I

    move-result v0

    return v0
.end method
