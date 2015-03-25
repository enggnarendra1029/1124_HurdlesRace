.class public interface abstract Lorg/andengine/entity/modifier/PathModifier$IPathModifierListener;
.super Ljava/lang/Object;
.source "PathModifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andengine/entity/modifier/PathModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IPathModifierListener"
.end annotation


# virtual methods
.method public abstract onPathFinished(Lorg/andengine/entity/modifier/PathModifier;Lorg/andengine/entity/IEntity;)V
.end method

.method public abstract onPathStarted(Lorg/andengine/entity/modifier/PathModifier;Lorg/andengine/entity/IEntity;)V
.end method

.method public abstract onPathWaypointFinished(Lorg/andengine/entity/modifier/PathModifier;Lorg/andengine/entity/IEntity;I)V
.end method

.method public abstract onPathWaypointStarted(Lorg/andengine/entity/modifier/PathModifier;Lorg/andengine/entity/IEntity;I)V
.end method
