.class public Lorg/andengine/engine/handler/runnable/RunnableHandler;
.super Ljava/lang/Object;
.source "RunnableHandler.java"

# interfaces
.implements Lorg/andengine/engine/handler/IUpdateHandler;


# instance fields
.field private final mRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/andengine/engine/handler/runnable/RunnableHandler;->mRunnables:Ljava/util/ArrayList;

    .line 14
    return-void
.end method


# virtual methods
.method public declared-synchronized onUpdate(F)V
    .locals 4
    .parameter "pSecondsElapsed"

    .prologue
    .line 39
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/andengine/engine/handler/runnable/RunnableHandler;->mRunnables:Ljava/util/ArrayList;

    .line 40
    .local v2, runnables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 41
    .local v1, runnableCount:I
    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 44
    monitor-exit p0

    return-void

    .line 42
    :cond_0
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 39
    .end local v0           #i:I
    .end local v1           #runnableCount:I
    .end local v2           #runnables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized postRunnable(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "pRunnable"

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/andengine/engine/handler/runnable/RunnableHandler;->mRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit p0

    return-void

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/andengine/engine/handler/runnable/RunnableHandler;->mRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit p0

    return-void

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
