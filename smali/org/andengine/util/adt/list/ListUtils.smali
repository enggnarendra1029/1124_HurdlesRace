.class public final Lorg/andengine/util/adt/list/ListUtils;
.super Ljava/lang/Object;
.source "ListUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final encodeInsertionIndex(I)I
    .locals 1
    .parameter "pIndex"

    .prologue
    .line 78
    neg-int v0, p0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public static final random(Ljava/util/List;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, pList:Ljava/util/List;,"Ljava/util/List<TT;>;"
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lorg/andengine/util/math/MathUtils;->random(II)I

    move-result v0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static swap(Ljava/util/List;II)V
    .locals 2
    .parameter
    .parameter "pIndexA"
    .parameter "pIndexB"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;II)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, pItems:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 67
    .local v0, tmp:Ljava/lang/Object;,"TT;"
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-interface {p0, p2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 69
    return-void
.end method

.method public static swap(Lorg/andengine/util/adt/list/IList;II)V
    .locals 2
    .parameter
    .parameter "pIndexA"
    .parameter "pIndexB"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/andengine/util/adt/list/IList",
            "<TT;>;II)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, pItems:Lorg/andengine/util/adt/list/IList;,"Lorg/andengine/util/adt/list/IList<TT;>;"
    invoke-interface {p0, p1}, Lorg/andengine/util/adt/list/IList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 73
    .local v0, tmp:Ljava/lang/Object;,"TT;"
    invoke-interface {p0, p2}, Lorg/andengine/util/adt/list/IList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, p1, v1}, Lorg/andengine/util/adt/list/IList;->set(ILjava/lang/Object;)V

    .line 74
    invoke-interface {p0, p2, v0}, Lorg/andengine/util/adt/list/IList;->set(ILjava/lang/Object;)V

    .line 75
    return-void
.end method

.method public static final synchronizedQueue(Lorg/andengine/util/adt/queue/IQueue;)Lorg/andengine/util/adt/queue/IQueue;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/andengine/util/adt/queue/IQueue",
            "<TT;>;)",
            "Lorg/andengine/util/adt/queue/IQueue",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, pQueue:Lorg/andengine/util/adt/queue/IQueue;,"Lorg/andengine/util/adt/queue/IQueue<TT;>;"
    new-instance v0, Lorg/andengine/util/adt/queue/concurrent/SynchronizedQueue;

    invoke-direct {v0, p0}, Lorg/andengine/util/adt/queue/concurrent/SynchronizedQueue;-><init>(Lorg/andengine/util/adt/queue/IQueue;)V

    return-object v0
.end method

.method public static final toList(Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/ArrayList",
            "<+TT;>;"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, pItem:Ljava/lang/Object;,"TT;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v0, out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    return-object v0
.end method

.method public static final varargs toList([Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 4
    .parameter "pItems"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/ArrayList",
            "<+TT;>;"
        }
    .end annotation

    .prologue
    .line 57
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v2, out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    array-length v1, p0

    .line 59
    .local v1, itemCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 62
    return-object v2

    .line 60
    :cond_0
    aget-object v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
