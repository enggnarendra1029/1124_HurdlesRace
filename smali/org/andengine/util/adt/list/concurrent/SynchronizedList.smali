.class public Lorg/andengine/util/adt/list/concurrent/SynchronizedList;
.super Ljava/lang/Object;
.source "SynchronizedList.java"

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


# instance fields
.field protected final mList:Lorg/andengine/util/adt/list/IList;
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
    .line 26
    .local p0, this:Lorg/andengine/util/adt/list/concurrent/SynchronizedList;,"Lorg/andengine/util/adt/list/concurrent/SynchronizedList<TT;>;"
    .local p1, mList:Lorg/andengine/util/adt/list/IList;,"Lorg/andengine/util/adt/list/IList<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/andengine/util/adt/list/concurrent/SynchronizedList;->mList:Lorg/andengine/util/adt/list/IList;

    .line 28
    return-void
.end method


# virtual methods
.method public declared-synchronized add(ILjava/lang/Object;)V
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

    .prologue
    .line 65
    .local p0, this:Lorg/andengine/util/adt/list/concurrent/SynchronizedList;,"Lorg/andengine/util/adt/list/concurrent/SynchronizedList<TT;>;"
    .local p2, pItem:Ljava/lang/Object;,"TT;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/andengine/util/adt/list/concurrent/SynchronizedList;->mList:Lorg/andengine/util/adt/list/IList;

    invoke-interface {v0, p1, p2}, Lorg/andengine/util/adt/list/IList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized add(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, this:Lorg/andengine/util/adt/list/concurrent/SynchronizedList;,"Lorg/andengine/util/adt/list/concurrent/SynchronizedList<TT;>;"
    .local p1, pItem:Ljava/lang/Object;,"TT;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/andengine/util/adt/list/concurrent/SynchronizedList;->mList:Lorg/andengine/util/adt/list/IList;

    invoke-interface {v0, p1}, Lorg/andengine/util/adt/list/IList;->add(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit p0

    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 95
    .local p0, this:Lorg/andengine/util/adt/list/concurrent/SynchronizedList;,"Lorg/andengine/util/adt/list/concurrent/SynchronizedList<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/andengine/util/adt/list/concurrent/SynchronizedList;->mList:Lorg/andengine/util/adt/list/IList;

    invoke-interface {v0}, Lorg/andengine/util/adt/list/IList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(I)Ljava/lang/Object;
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
    .line 45
    .local p0, this:Lorg/andengine/util/adt/list/concurrent/SynchronizedList;,"Lorg/andengine/util/adt/list/concurrent/SynchronizedList<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/andengine/util/adt/list/concurrent/SynchronizedList;->mList:Lorg/andengine/util/adt/list/IList;

    invoke-interface {v0, p1}, Lorg/andengine/util/adt/list/IList;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized indexOf(Ljava/lang/Object;)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, this:Lorg/andengine/util/adt/list/concurrent/SynchronizedList;,"Lorg/andengine/util/adt/list/concurrent/SynchronizedList<TT;>;"
    .local p1, pItem:Ljava/lang/Object;,"TT;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/andengine/util/adt/list/concurrent/SynchronizedList;->mList:Lorg/andengine/util/adt/list/IList;

    invoke-interface {v0, p1}, Lorg/andengine/util/adt/list/IList;->indexOf(Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isEmpty()Z
    .locals 1

    .prologue
    .line 40
    .local p0, this:Lorg/andengine/util/adt/list/concurrent/SynchronizedList;,"Lorg/andengine/util/adt/list/concurrent/SynchronizedList<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/andengine/util/adt/list/concurrent/SynchronizedList;->mList:Lorg/andengine/util/adt/list/IList;

    invoke-interface {v0}, Lorg/andengine/util/adt/list/IList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(I)Ljava/lang/Object;
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
    .line 85
    .local p0, this:Lorg/andengine/util/adt/list/concurrent/SynchronizedList;,"Lorg/andengine/util/adt/list/concurrent/SynchronizedList<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/andengine/util/adt/list/concurrent/SynchronizedList;->mList:Lorg/andengine/util/adt/list/IList;

    invoke-interface {v0, p1}, Lorg/andengine/util/adt/list/IList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, this:Lorg/andengine/util/adt/list/concurrent/SynchronizedList;,"Lorg/andengine/util/adt/list/concurrent/SynchronizedList<TT;>;"
    .local p1, pItem:Ljava/lang/Object;,"TT;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/andengine/util/adt/list/concurrent/SynchronizedList;->mList:Lorg/andengine/util/adt/list/IList;

    invoke-interface {v0, p1}, Lorg/andengine/util/adt/list/IList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, this:Lorg/andengine/util/adt/list/concurrent/SynchronizedList;,"Lorg/andengine/util/adt/list/concurrent/SynchronizedList<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/andengine/util/adt/list/concurrent/SynchronizedList;->mList:Lorg/andengine/util/adt/list/IList;

    invoke-interface {v0}, Lorg/andengine/util/adt/list/IList;->removeFirst()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, this:Lorg/andengine/util/adt/list/concurrent/SynchronizedList;,"Lorg/andengine/util/adt/list/concurrent/SynchronizedList<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/andengine/util/adt/list/concurrent/SynchronizedList;->mList:Lorg/andengine/util/adt/list/IList;

    invoke-interface {v0}, Lorg/andengine/util/adt/list/IList;->removeLast()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set(ILjava/lang/Object;)V
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

    .prologue
    .line 50
    .local p0, this:Lorg/andengine/util/adt/list/concurrent/SynchronizedList;,"Lorg/andengine/util/adt/list/concurrent/SynchronizedList<TT;>;"
    .local p2, pItem:Ljava/lang/Object;,"TT;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/andengine/util/adt/list/concurrent/SynchronizedList;->mList:Lorg/andengine/util/adt/list/IList;

    invoke-interface {v0, p1, p2}, Lorg/andengine/util/adt/list/IList;->set(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit p0

    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()I
    .locals 1

    .prologue
    .line 90
    .local p0, this:Lorg/andengine/util/adt/list/concurrent/SynchronizedList;,"Lorg/andengine/util/adt/list/concurrent/SynchronizedList<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/andengine/util/adt/list/concurrent/SynchronizedList;->mList:Lorg/andengine/util/adt/list/IList;

    invoke-interface {v0}, Lorg/andengine/util/adt/list/IList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
