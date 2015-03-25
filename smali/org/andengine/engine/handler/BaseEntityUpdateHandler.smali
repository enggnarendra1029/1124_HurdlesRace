.class public abstract Lorg/andengine/engine/handler/BaseEntityUpdateHandler;
.super Ljava/lang/Object;
.source "BaseEntityUpdateHandler.java"

# interfaces
.implements Lorg/andengine/engine/handler/IUpdateHandler;


# instance fields
.field private mEntity:Lorg/andengine/entity/IEntity;


# direct methods
.method public constructor <init>(Lorg/andengine/entity/IEntity;)V
    .locals 0
    .parameter "pEntity"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/andengine/engine/handler/BaseEntityUpdateHandler;->mEntity:Lorg/andengine/entity/IEntity;

    .line 29
    return-void
.end method


# virtual methods
.method public getEntity()Lorg/andengine/entity/IEntity;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/andengine/engine/handler/BaseEntityUpdateHandler;->mEntity:Lorg/andengine/entity/IEntity;

    return-object v0
.end method

.method public final onUpdate(F)V
    .locals 1
    .parameter "pSecondsElapsed"

    .prologue
    .line 51
    iget-object v0, p0, Lorg/andengine/engine/handler/BaseEntityUpdateHandler;->mEntity:Lorg/andengine/entity/IEntity;

    invoke-virtual {p0, p1, v0}, Lorg/andengine/engine/handler/BaseEntityUpdateHandler;->onUpdate(FLorg/andengine/entity/IEntity;)V

    .line 52
    return-void
.end method

.method protected abstract onUpdate(FLorg/andengine/entity/IEntity;)V
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public setEntity(Lorg/andengine/entity/IEntity;)V
    .locals 0
    .parameter "pEntity"

    .prologue
    .line 40
    iput-object p1, p0, Lorg/andengine/engine/handler/BaseEntityUpdateHandler;->mEntity:Lorg/andengine/entity/IEntity;

    .line 41
    return-void
.end method
