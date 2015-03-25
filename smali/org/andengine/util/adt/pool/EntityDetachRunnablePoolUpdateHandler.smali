.class public Lorg/andengine/util/adt/pool/EntityDetachRunnablePoolUpdateHandler;
.super Lorg/andengine/util/adt/pool/RunnablePoolUpdateHandler;
.source "EntityDetachRunnablePoolUpdateHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/andengine/util/adt/pool/RunnablePoolUpdateHandler",
        "<",
        "Lorg/andengine/util/adt/pool/EntityDetachRunnablePoolItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/andengine/util/adt/pool/RunnablePoolUpdateHandler;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "pInitialPoolSize"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lorg/andengine/util/adt/pool/RunnablePoolUpdateHandler;-><init>(I)V

    .line 32
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .parameter "pInitialPoolSize"
    .parameter "pGrowth"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lorg/andengine/util/adt/pool/RunnablePoolUpdateHandler;-><init>(II)V

    .line 36
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .parameter "pInitialPoolSize"
    .parameter "pGrowth"
    .parameter "pAvailableItemCountMaximum"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lorg/andengine/util/adt/pool/RunnablePoolUpdateHandler;-><init>(III)V

    .line 40
    return-void
.end method


# virtual methods
.method protected onAllocatePoolItem()Lorg/andengine/util/adt/pool/EntityDetachRunnablePoolItem;
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lorg/andengine/util/adt/pool/EntityDetachRunnablePoolItem;

    invoke-direct {v0}, Lorg/andengine/util/adt/pool/EntityDetachRunnablePoolItem;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic onAllocatePoolItem()Lorg/andengine/util/adt/pool/RunnablePoolItem;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/util/adt/pool/EntityDetachRunnablePoolUpdateHandler;->onAllocatePoolItem()Lorg/andengine/util/adt/pool/EntityDetachRunnablePoolItem;

    move-result-object v0

    return-object v0
.end method

.method public scheduleDetach(Lorg/andengine/entity/IEntity;)V
    .locals 1
    .parameter "pEntity"

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/andengine/util/adt/pool/EntityDetachRunnablePoolUpdateHandler;->scheduleDetach(Lorg/andengine/entity/IEntity;Lorg/andengine/util/call/Callback;)V

    .line 64
    return-void
.end method

.method public scheduleDetach(Lorg/andengine/entity/IEntity;Lorg/andengine/util/call/Callback;)V
    .locals 1
    .parameter "pEntity"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/entity/IEntity;",
            "Lorg/andengine/util/call/Callback",
            "<",
            "Lorg/andengine/entity/IEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p2, pCallback:Lorg/andengine/util/call/Callback;,"Lorg/andengine/util/call/Callback<Lorg/andengine/entity/IEntity;>;"
    invoke-virtual {p0}, Lorg/andengine/util/adt/pool/EntityDetachRunnablePoolUpdateHandler;->obtainPoolItem()Lorg/andengine/util/adt/pool/PoolItem;

    move-result-object v0

    check-cast v0, Lorg/andengine/util/adt/pool/EntityDetachRunnablePoolItem;

    .line 72
    .local v0, entityDetachRunnablePoolItem:Lorg/andengine/util/adt/pool/EntityDetachRunnablePoolItem;
    invoke-virtual {v0, p1}, Lorg/andengine/util/adt/pool/EntityDetachRunnablePoolItem;->setEntity(Lorg/andengine/entity/IEntity;)V

    .line 73
    invoke-virtual {v0, p2}, Lorg/andengine/util/adt/pool/EntityDetachRunnablePoolItem;->setCallback(Lorg/andengine/util/call/Callback;)V

    .line 74
    invoke-virtual {p0, v0}, Lorg/andengine/util/adt/pool/EntityDetachRunnablePoolUpdateHandler;->postPoolItem(Lorg/andengine/util/adt/pool/PoolItem;)V

    .line 75
    return-void
.end method
