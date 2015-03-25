.class public Lorg/andengine/util/adt/queue/CircularQueue;
.super Lorg/andengine/util/adt/list/CircularList;
.source "CircularQueue.java"

# interfaces
.implements Lorg/andengine/util/adt/queue/IQueue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/andengine/util/adt/list/CircularList",
        "<TT;>;",
        "Lorg/andengine/util/adt/queue/IQueue",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    .local p0, this:Lorg/andengine/util/adt/queue/CircularQueue;,"Lorg/andengine/util/adt/queue/CircularQueue<TT;>;"
    invoke-direct {p0}, Lorg/andengine/util/adt/list/CircularList;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "pInitialCapacity"

    .prologue
    .line 29
    .local p0, this:Lorg/andengine/util/adt/queue/CircularQueue;,"Lorg/andengine/util/adt/queue/CircularQueue<TT;>;"
    invoke-direct {p0, p1}, Lorg/andengine/util/adt/list/CircularList;-><init>(I)V

    .line 30
    return-void
.end method


# virtual methods
.method public enter(ILjava/lang/Object;)V
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

    .prologue
    .line 65
    .local p0, this:Lorg/andengine/util/adt/queue/CircularQueue;,"Lorg/andengine/util/adt/queue/CircularQueue<TT;>;"
    .local p2, pItem:Ljava/lang/Object;,"TT;"
    invoke-virtual {p0, p1, p2}, Lorg/andengine/util/adt/queue/CircularQueue;->add(ILjava/lang/Object;)V

    .line 66
    return-void
.end method

.method public enter(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, this:Lorg/andengine/util/adt/queue/CircularQueue;,"Lorg/andengine/util/adt/queue/CircularQueue<TT;>;"
    .local p1, pItem:Ljava/lang/Object;,"TT;"
    invoke-virtual {p0, p1}, Lorg/andengine/util/adt/queue/CircularQueue;->add(Ljava/lang/Object;)V

    .line 61
    return-void
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, this:Lorg/andengine/util/adt/queue/CircularQueue;,"Lorg/andengine/util/adt/queue/CircularQueue<TT;>;"
    invoke-virtual {p0}, Lorg/andengine/util/adt/queue/CircularQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 45
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/andengine/util/adt/queue/CircularQueue;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, this:Lorg/andengine/util/adt/queue/CircularQueue;,"Lorg/andengine/util/adt/queue/CircularQueue<TT;>;"
    invoke-virtual {p0}, Lorg/andengine/util/adt/queue/CircularQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 54
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/andengine/util/adt/queue/CircularQueue;->remove(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
