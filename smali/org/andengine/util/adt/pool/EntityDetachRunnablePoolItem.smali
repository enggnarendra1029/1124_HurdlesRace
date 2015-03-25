.class public Lorg/andengine/util/adt/pool/EntityDetachRunnablePoolItem;
.super Lorg/andengine/util/adt/pool/RunnablePoolItem;
.source "EntityDetachRunnablePoolItem.java"


# instance fields
.field protected mCallback:Lorg/andengine/util/call/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/andengine/util/call/Callback",
            "<",
            "Lorg/andengine/entity/IEntity;",
            ">;"
        }
    .end annotation
.end field

.field protected mEntity:Lorg/andengine/entity/IEntity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lorg/andengine/util/adt/pool/RunnablePoolItem;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lorg/andengine/util/adt/pool/EntityDetachRunnablePoolItem;->mEntity:Lorg/andengine/entity/IEntity;

    invoke-interface {v0}, Lorg/andengine/entity/IEntity;->detachSelf()Z

    .line 53
    iget-object v0, p0, Lorg/andengine/util/adt/pool/EntityDetachRunnablePoolItem;->mCallback:Lorg/andengine/util/call/Callback;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lorg/andengine/util/adt/pool/EntityDetachRunnablePoolItem;->mCallback:Lorg/andengine/util/call/Callback;

    iget-object v1, p0, Lorg/andengine/util/adt/pool/EntityDetachRunnablePoolItem;->mEntity:Lorg/andengine/entity/IEntity;

    invoke-interface {v0, v1}, Lorg/andengine/util/call/Callback;->onCallback(Ljava/lang/Object;)V

    .line 56
    :cond_0
    return-void
.end method

.method public setCallback(Lorg/andengine/util/call/Callback;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/call/Callback",
            "<",
            "Lorg/andengine/entity/IEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, pCallback:Lorg/andengine/util/call/Callback;,"Lorg/andengine/util/call/Callback<Lorg/andengine/entity/IEntity;>;"
    iput-object p1, p0, Lorg/andengine/util/adt/pool/EntityDetachRunnablePoolItem;->mCallback:Lorg/andengine/util/call/Callback;

    .line 43
    return-void
.end method

.method public setEntity(Lorg/andengine/entity/IEntity;)V
    .locals 0
    .parameter "pEntity"

    .prologue
    .line 34
    iput-object p1, p0, Lorg/andengine/util/adt/pool/EntityDetachRunnablePoolItem;->mEntity:Lorg/andengine/entity/IEntity;

    .line 35
    return-void
.end method
