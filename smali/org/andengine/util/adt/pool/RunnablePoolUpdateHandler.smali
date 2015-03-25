.class public abstract Lorg/andengine/util/adt/pool/RunnablePoolUpdateHandler;
.super Lorg/andengine/util/adt/pool/PoolUpdateHandler;
.source "RunnablePoolUpdateHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/andengine/util/adt/pool/RunnablePoolItem;",
        ">",
        "Lorg/andengine/util/adt/pool/PoolUpdateHandler",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    .local p0, this:Lorg/andengine/util/adt/pool/RunnablePoolUpdateHandler;,"Lorg/andengine/util/adt/pool/RunnablePoolUpdateHandler<TT;>;"
    invoke-direct {p0}, Lorg/andengine/util/adt/pool/PoolUpdateHandler;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "pInitialPoolSize"

    .prologue
    .line 30
    .local p0, this:Lorg/andengine/util/adt/pool/RunnablePoolUpdateHandler;,"Lorg/andengine/util/adt/pool/RunnablePoolUpdateHandler<TT;>;"
    invoke-direct {p0, p1}, Lorg/andengine/util/adt/pool/PoolUpdateHandler;-><init>(I)V

    .line 31
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .parameter "pInitialPoolSize"
    .parameter "pGrowth"

    .prologue
    .line 34
    .local p0, this:Lorg/andengine/util/adt/pool/RunnablePoolUpdateHandler;,"Lorg/andengine/util/adt/pool/RunnablePoolUpdateHandler<TT;>;"
    invoke-direct {p0, p1, p2}, Lorg/andengine/util/adt/pool/PoolUpdateHandler;-><init>(II)V

    .line 35
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .parameter "pInitialPoolSize"
    .parameter "pGrowth"
    .parameter "pAvailableItemCountMaximum"

    .prologue
    .line 38
    .local p0, this:Lorg/andengine/util/adt/pool/RunnablePoolUpdateHandler;,"Lorg/andengine/util/adt/pool/RunnablePoolUpdateHandler<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/andengine/util/adt/pool/PoolUpdateHandler;-><init>(III)V

    .line 39
    return-void
.end method


# virtual methods
.method protected bridge synthetic onAllocatePoolItem()Lorg/andengine/util/adt/pool/PoolItem;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/util/adt/pool/RunnablePoolUpdateHandler;->onAllocatePoolItem()Lorg/andengine/util/adt/pool/RunnablePoolItem;

    move-result-object v0

    return-object v0
.end method

.method protected abstract onAllocatePoolItem()Lorg/andengine/util/adt/pool/RunnablePoolItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected bridge synthetic onHandlePoolItem(Lorg/andengine/util/adt/pool/PoolItem;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lorg/andengine/util/adt/pool/RunnablePoolItem;

    invoke-virtual {p0, p1}, Lorg/andengine/util/adt/pool/RunnablePoolUpdateHandler;->onHandlePoolItem(Lorg/andengine/util/adt/pool/RunnablePoolItem;)V

    return-void
.end method

.method protected onHandlePoolItem(Lorg/andengine/util/adt/pool/RunnablePoolItem;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, this:Lorg/andengine/util/adt/pool/RunnablePoolUpdateHandler;,"Lorg/andengine/util/adt/pool/RunnablePoolUpdateHandler<TT;>;"
    .local p1, pRunnablePoolItem:Lorg/andengine/util/adt/pool/RunnablePoolItem;,"TT;"
    invoke-virtual {p1}, Lorg/andengine/util/adt/pool/RunnablePoolItem;->run()V

    .line 55
    return-void
.end method
