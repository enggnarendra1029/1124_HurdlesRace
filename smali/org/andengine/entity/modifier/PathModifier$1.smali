.class Lorg/andengine/entity/modifier/PathModifier$1;
.super Ljava/lang/Object;
.source "PathModifier.java"

# interfaces
.implements Lorg/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/andengine/entity/modifier/PathModifier;-><init>(FLorg/andengine/entity/modifier/PathModifier$Path;Lorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/entity/modifier/PathModifier$IPathModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener",
        "<",
        "Lorg/andengine/entity/IEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/andengine/entity/modifier/PathModifier;


# direct methods
.method constructor <init>(Lorg/andengine/entity/modifier/PathModifier;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/andengine/entity/modifier/PathModifier$1;->this$0:Lorg/andengine/entity/modifier/PathModifier;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSubSequenceFinished(Lorg/andengine/util/modifier/IModifier;Ljava/lang/Object;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lorg/andengine/util/modifier/IModifier;

    check-cast p2, Lorg/andengine/entity/IEntity;

    invoke-virtual {p0, p1, p2, p3}, Lorg/andengine/entity/modifier/PathModifier$1;->onSubSequenceFinished(Lorg/andengine/util/modifier/IModifier;Lorg/andengine/entity/IEntity;I)V

    return-void
.end method

.method public onSubSequenceFinished(Lorg/andengine/util/modifier/IModifier;Lorg/andengine/entity/IEntity;I)V
    .locals 2
    .parameter
    .parameter "pEntity"
    .parameter "pIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/modifier/IModifier",
            "<",
            "Lorg/andengine/entity/IEntity;",
            ">;",
            "Lorg/andengine/entity/IEntity;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, pEntityModifier:Lorg/andengine/util/modifier/IModifier;,"Lorg/andengine/util/modifier/IModifier<Lorg/andengine/entity/IEntity;>;"
    iget-object v0, p0, Lorg/andengine/entity/modifier/PathModifier$1;->this$0:Lorg/andengine/entity/modifier/PathModifier;

    #getter for: Lorg/andengine/entity/modifier/PathModifier;->mPathModifierListener:Lorg/andengine/entity/modifier/PathModifier$IPathModifierListener;
    invoke-static {v0}, Lorg/andengine/entity/modifier/PathModifier;->access$3(Lorg/andengine/entity/modifier/PathModifier;)Lorg/andengine/entity/modifier/PathModifier$IPathModifierListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lorg/andengine/entity/modifier/PathModifier$1;->this$0:Lorg/andengine/entity/modifier/PathModifier;

    #getter for: Lorg/andengine/entity/modifier/PathModifier;->mPathModifierListener:Lorg/andengine/entity/modifier/PathModifier$IPathModifierListener;
    invoke-static {v0}, Lorg/andengine/entity/modifier/PathModifier;->access$3(Lorg/andengine/entity/modifier/PathModifier;)Lorg/andengine/entity/modifier/PathModifier$IPathModifierListener;

    move-result-object v0

    iget-object v1, p0, Lorg/andengine/entity/modifier/PathModifier$1;->this$0:Lorg/andengine/entity/modifier/PathModifier;

    invoke-interface {v0, v1, p2, p3}, Lorg/andengine/entity/modifier/PathModifier$IPathModifierListener;->onPathWaypointFinished(Lorg/andengine/entity/modifier/PathModifier;Lorg/andengine/entity/IEntity;I)V

    .line 106
    :cond_0
    return-void
.end method

.method public bridge synthetic onSubSequenceStarted(Lorg/andengine/util/modifier/IModifier;Ljava/lang/Object;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lorg/andengine/util/modifier/IModifier;

    check-cast p2, Lorg/andengine/entity/IEntity;

    invoke-virtual {p0, p1, p2, p3}, Lorg/andengine/entity/modifier/PathModifier$1;->onSubSequenceStarted(Lorg/andengine/util/modifier/IModifier;Lorg/andengine/entity/IEntity;I)V

    return-void
.end method

.method public onSubSequenceStarted(Lorg/andengine/util/modifier/IModifier;Lorg/andengine/entity/IEntity;I)V
    .locals 2
    .parameter
    .parameter "pEntity"
    .parameter "pIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/modifier/IModifier",
            "<",
            "Lorg/andengine/entity/IEntity;",
            ">;",
            "Lorg/andengine/entity/IEntity;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, pModifier:Lorg/andengine/util/modifier/IModifier;,"Lorg/andengine/util/modifier/IModifier<Lorg/andengine/entity/IEntity;>;"
    iget-object v0, p0, Lorg/andengine/entity/modifier/PathModifier$1;->this$0:Lorg/andengine/entity/modifier/PathModifier;

    #getter for: Lorg/andengine/entity/modifier/PathModifier;->mPathModifierListener:Lorg/andengine/entity/modifier/PathModifier$IPathModifierListener;
    invoke-static {v0}, Lorg/andengine/entity/modifier/PathModifier;->access$3(Lorg/andengine/entity/modifier/PathModifier;)Lorg/andengine/entity/modifier/PathModifier$IPathModifierListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lorg/andengine/entity/modifier/PathModifier$1;->this$0:Lorg/andengine/entity/modifier/PathModifier;

    #getter for: Lorg/andengine/entity/modifier/PathModifier;->mPathModifierListener:Lorg/andengine/entity/modifier/PathModifier$IPathModifierListener;
    invoke-static {v0}, Lorg/andengine/entity/modifier/PathModifier;->access$3(Lorg/andengine/entity/modifier/PathModifier;)Lorg/andengine/entity/modifier/PathModifier$IPathModifierListener;

    move-result-object v0

    iget-object v1, p0, Lorg/andengine/entity/modifier/PathModifier$1;->this$0:Lorg/andengine/entity/modifier/PathModifier;

    invoke-interface {v0, v1, p2, p3}, Lorg/andengine/entity/modifier/PathModifier$IPathModifierListener;->onPathWaypointStarted(Lorg/andengine/entity/modifier/PathModifier;Lorg/andengine/entity/IEntity;I)V

    .line 99
    :cond_0
    return-void
.end method
