.class public Lorg/andengine/util/adt/list/UniqueList;
.super Ljava/lang/Object;
.source "UniqueList.java"

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
    .line 31
    .local p0, this:Lorg/andengine/util/adt/list/UniqueList;,"Lorg/andengine/util/adt/list/UniqueList<TT;>;"
    .local p1, pList:Lorg/andengine/util/adt/list/IList;,"Lorg/andengine/util/adt/list/IList<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/andengine/util/adt/list/UniqueList;->mList:Lorg/andengine/util/adt/list/IList;

    .line 33
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Comparable;)V
    .locals 2
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
    .line 67
    .local p0, this:Lorg/andengine/util/adt/list/UniqueList;,"Lorg/andengine/util/adt/list/UniqueList<TT;>;"
    .local p2, pItem:Ljava/lang/Comparable;,"TT;"
    invoke-virtual {p0, p2}, Lorg/andengine/util/adt/list/UniqueList;->indexOf(Ljava/lang/Comparable;)I

    move-result v0

    .line 68
    .local v0, index:I
    if-gez v0, :cond_0

    .line 69
    iget-object v1, p0, Lorg/andengine/util/adt/list/UniqueList;->mList:Lorg/andengine/util/adt/list/IList;

    invoke-interface {v1, p2}, Lorg/andengine/util/adt/list/IList;->add(Ljava/lang/Object;)V

    .line 71
    :cond_0
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

    invoke-virtual {p0, p1, p2}, Lorg/andengine/util/adt/list/UniqueList;->add(ILjava/lang/Comparable;)V

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
    .line 75
    .local p0, this:Lorg/andengine/util/adt/list/UniqueList;,"Lorg/andengine/util/adt/list/UniqueList<TT;>;"
    .local p1, pItem:Ljava/lang/Comparable;,"TT;"
    invoke-virtual {p0, p1}, Lorg/andengine/util/adt/list/UniqueList;->indexOf(Ljava/lang/Comparable;)I

    move-result v0

    .line 76
    .local v0, index:I
    if-gez v0, :cond_0

    .line 77
    iget-object v1, p0, Lorg/andengine/util/adt/list/UniqueList;->mList:Lorg/andengine/util/adt/list/IList;

    invoke-static {v0}, Lorg/andengine/util/adt/list/ListUtils;->encodeInsertionIndex(I)I

    move-result v2

    invoke-interface {v1, v2, p1}, Lorg/andengine/util/adt/list/IList;->add(ILjava/lang/Object;)V

    .line 79
    :cond_0
    return-void
.end method

.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lorg/andengine/util/adt/list/UniqueList;->add(Ljava/lang/Comparable;)V

    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 108
    .local p0, this:Lorg/andengine/util/adt/list/UniqueList;,"Lorg/andengine/util/adt/list/UniqueList<TT;>;"
    iget-object v0, p0, Lorg/andengine/util/adt/list/UniqueList;->mList:Lorg/andengine/util/adt/list/IList;

    invoke-interface {v0}, Lorg/andengine/util/adt/list/IList;->clear()V

    .line 109
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
    .line 50
    .local p0, this:Lorg/andengine/util/adt/list/UniqueList;,"Lorg/andengine/util/adt/list/UniqueList<TT;>;"
    iget-object v0, p0, Lorg/andengine/util/adt/list/UniqueList;->mList:Lorg/andengine/util/adt/list/IList;

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
    invoke-virtual {p0, p1}, Lorg/andengine/util/adt/list/UniqueList;->get(I)Ljava/lang/Comparable;

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
    .line 61
    .local p0, this:Lorg/andengine/util/adt/list/UniqueList;,"Lorg/andengine/util/adt/list/UniqueList<TT;>;"
    .local p1, pItem:Ljava/lang/Comparable;,"TT;"
    iget-object v0, p0, Lorg/andengine/util/adt/list/UniqueList;->mList:Lorg/andengine/util/adt/list/IList;

    invoke-interface {v0, p1}, Lorg/andengine/util/adt/list/IList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic indexOf(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lorg/andengine/util/adt/list/UniqueList;->indexOf(Ljava/lang/Comparable;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 45
    .local p0, this:Lorg/andengine/util/adt/list/UniqueList;,"Lorg/andengine/util/adt/list/UniqueList<TT;>;"
    iget-object v0, p0, Lorg/andengine/util/adt/list/UniqueList;->mList:Lorg/andengine/util/adt/list/IList;

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
    .line 98
    .local p0, this:Lorg/andengine/util/adt/list/UniqueList;,"Lorg/andengine/util/adt/list/UniqueList<TT;>;"
    iget-object v0, p0, Lorg/andengine/util/adt/list/UniqueList;->mList:Lorg/andengine/util/adt/list/IList;

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
    invoke-virtual {p0, p1}, Lorg/andengine/util/adt/list/UniqueList;->remove(I)Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Comparable;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, this:Lorg/andengine/util/adt/list/UniqueList;,"Lorg/andengine/util/adt/list/UniqueList<TT;>;"
    .local p1, pItem:Ljava/lang/Comparable;,"TT;"
    iget-object v0, p0, Lorg/andengine/util/adt/list/UniqueList;->mList:Lorg/andengine/util/adt/list/IList;

    invoke-interface {v0, p1}, Lorg/andengine/util/adt/list/IList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lorg/andengine/util/adt/list/UniqueList;->remove(Ljava/lang/Comparable;)Z

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
    .line 83
    .local p0, this:Lorg/andengine/util/adt/list/UniqueList;,"Lorg/andengine/util/adt/list/UniqueList<TT;>;"
    iget-object v0, p0, Lorg/andengine/util/adt/list/UniqueList;->mList:Lorg/andengine/util/adt/list/IList;

    invoke-interface {v0}, Lorg/andengine/util/adt/list/IList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    return-object v0
.end method

.method public bridge synthetic removeFirst()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/util/adt/list/UniqueList;->removeFirst()Ljava/lang/Comparable;

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
    .line 88
    .local p0, this:Lorg/andengine/util/adt/list/UniqueList;,"Lorg/andengine/util/adt/list/UniqueList<TT;>;"
    iget-object v0, p0, Lorg/andengine/util/adt/list/UniqueList;->mList:Lorg/andengine/util/adt/list/IList;

    invoke-interface {v0}, Lorg/andengine/util/adt/list/IList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    return-object v0
.end method

.method public bridge synthetic removeLast()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/util/adt/list/UniqueList;->removeLast()Ljava/lang/Comparable;

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
    .line 56
    .local p0, this:Lorg/andengine/util/adt/list/UniqueList;,"Lorg/andengine/util/adt/list/UniqueList<TT;>;"
    .local p2, pItem:Ljava/lang/Comparable;,"TT;"
    iget-object v0, p0, Lorg/andengine/util/adt/list/UniqueList;->mList:Lorg/andengine/util/adt/list/IList;

    invoke-interface {v0, p1, p2}, Lorg/andengine/util/adt/list/IList;->set(ILjava/lang/Object;)V

    .line 57
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

    invoke-virtual {p0, p1, p2}, Lorg/andengine/util/adt/list/UniqueList;->set(ILjava/lang/Comparable;)V

    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 103
    .local p0, this:Lorg/andengine/util/adt/list/UniqueList;,"Lorg/andengine/util/adt/list/UniqueList<TT;>;"
    iget-object v0, p0, Lorg/andengine/util/adt/list/UniqueList;->mList:Lorg/andengine/util/adt/list/IList;

    invoke-interface {v0}, Lorg/andengine/util/adt/list/IList;->size()I

    move-result v0

    return v0
.end method
