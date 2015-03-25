.class public Lorg/andengine/util/adt/queue/UniqueQueue;
.super Lorg/andengine/util/adt/list/UniqueList;
.source "UniqueQueue.java"

# interfaces
.implements Lorg/andengine/util/adt/queue/IUniqueQueue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/Comparable",
        "<TT;>;>",
        "Lorg/andengine/util/adt/list/UniqueList",
        "<TT;>;",
        "Lorg/andengine/util/adt/queue/IUniqueQueue",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/andengine/util/adt/queue/IQueue;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/adt/queue/IQueue",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, this:Lorg/andengine/util/adt/queue/UniqueQueue;,"Lorg/andengine/util/adt/queue/UniqueQueue<TT;>;"
    .local p1, pQueue:Lorg/andengine/util/adt/queue/IQueue;,"Lorg/andengine/util/adt/queue/IQueue<TT;>;"
    invoke-direct {p0, p1}, Lorg/andengine/util/adt/list/UniqueList;-><init>(Lorg/andengine/util/adt/list/IList;)V

    .line 26
    return-void
.end method


# virtual methods
.method public enter(ILjava/lang/Comparable;)V
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
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 62
    .local p0, this:Lorg/andengine/util/adt/queue/UniqueQueue;,"Lorg/andengine/util/adt/queue/UniqueQueue<TT;>;"
    .local p2, pItem:Ljava/lang/Comparable;,"TT;"
    invoke-virtual {p0, p1, p2}, Lorg/andengine/util/adt/queue/UniqueQueue;->add(ILjava/lang/Comparable;)V

    .line 63
    return-void
.end method

.method public bridge synthetic enter(ILjava/lang/Object;)V
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

    invoke-virtual {p0, p1, p2}, Lorg/andengine/util/adt/queue/UniqueQueue;->enter(ILjava/lang/Comparable;)V

    return-void
.end method

.method public enter(Ljava/lang/Comparable;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, this:Lorg/andengine/util/adt/queue/UniqueQueue;,"Lorg/andengine/util/adt/queue/UniqueQueue<TT;>;"
    .local p1, pItem:Ljava/lang/Comparable;,"TT;"
    invoke-virtual {p0, p1}, Lorg/andengine/util/adt/queue/UniqueQueue;->add(Ljava/lang/Comparable;)V

    .line 57
    return-void
.end method

.method public bridge synthetic enter(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lorg/andengine/util/adt/queue/UniqueQueue;->enter(Ljava/lang/Comparable;)V

    return-void
.end method

.method public peek()Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, this:Lorg/andengine/util/adt/queue/UniqueQueue;,"Lorg/andengine/util/adt/queue/UniqueQueue<TT;>;"
    invoke-virtual {p0}, Lorg/andengine/util/adt/queue/UniqueQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    const/4 v0, 0x0

    .line 41
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/andengine/util/adt/queue/UniqueQueue;->get(I)Ljava/lang/Comparable;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic peek()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/util/adt/queue/UniqueQueue;->peek()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public poll()Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, this:Lorg/andengine/util/adt/queue/UniqueQueue;,"Lorg/andengine/util/adt/queue/UniqueQueue<TT;>;"
    invoke-virtual {p0}, Lorg/andengine/util/adt/queue/UniqueQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const/4 v0, 0x0

    .line 50
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/andengine/util/adt/queue/UniqueQueue;->remove(I)Ljava/lang/Comparable;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/util/adt/queue/UniqueQueue;->poll()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method
