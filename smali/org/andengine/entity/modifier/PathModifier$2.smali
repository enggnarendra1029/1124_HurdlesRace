.class Lorg/andengine/entity/modifier/PathModifier$2;
.super Ljava/lang/Object;
.source "PathModifier.java"

# interfaces
.implements Lorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/andengine/entity/modifier/PathModifier;-><init>(FLorg/andengine/entity/modifier/PathModifier$Path;Lorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/entity/modifier/PathModifier$IPathModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/andengine/entity/modifier/PathModifier;


# direct methods
.method constructor <init>(Lorg/andengine/entity/modifier/PathModifier;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/andengine/entity/modifier/PathModifier$2;->this$0:Lorg/andengine/entity/modifier/PathModifier;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onModifierFinished(Lorg/andengine/util/modifier/IModifier;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lorg/andengine/util/modifier/IModifier;

    check-cast p2, Lorg/andengine/entity/IEntity;

    invoke-virtual {p0, p1, p2}, Lorg/andengine/entity/modifier/PathModifier$2;->onModifierFinished(Lorg/andengine/util/modifier/IModifier;Lorg/andengine/entity/IEntity;)V

    return-void
.end method

.method public onModifierFinished(Lorg/andengine/util/modifier/IModifier;Lorg/andengine/entity/IEntity;)V
    .locals 2
    .parameter
    .parameter "pEntity"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/modifier/IModifier",
            "<",
            "Lorg/andengine/entity/IEntity;",
            ">;",
            "Lorg/andengine/entity/IEntity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, pEntityModifier:Lorg/andengine/util/modifier/IModifier;,"Lorg/andengine/util/modifier/IModifier<Lorg/andengine/entity/IEntity;>;"
    iget-object v0, p0, Lorg/andengine/entity/modifier/PathModifier$2;->this$0:Lorg/andengine/entity/modifier/PathModifier;

    #calls: Lorg/andengine/entity/modifier/PathModifier;->onModifierFinished(Ljava/lang/Object;)V
    invoke-static {v0, p2}, Lorg/andengine/entity/modifier/PathModifier;->access$5(Lorg/andengine/entity/modifier/PathModifier;Ljava/lang/Object;)V

    .line 120
    iget-object v0, p0, Lorg/andengine/entity/modifier/PathModifier$2;->this$0:Lorg/andengine/entity/modifier/PathModifier;

    #getter for: Lorg/andengine/entity/modifier/PathModifier;->mPathModifierListener:Lorg/andengine/entity/modifier/PathModifier$IPathModifierListener;
    invoke-static {v0}, Lorg/andengine/entity/modifier/PathModifier;->access$3(Lorg/andengine/entity/modifier/PathModifier;)Lorg/andengine/entity/modifier/PathModifier$IPathModifierListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lorg/andengine/entity/modifier/PathModifier$2;->this$0:Lorg/andengine/entity/modifier/PathModifier;

    #getter for: Lorg/andengine/entity/modifier/PathModifier;->mPathModifierListener:Lorg/andengine/entity/modifier/PathModifier$IPathModifierListener;
    invoke-static {v0}, Lorg/andengine/entity/modifier/PathModifier;->access$3(Lorg/andengine/entity/modifier/PathModifier;)Lorg/andengine/entity/modifier/PathModifier$IPathModifierListener;

    move-result-object v0

    iget-object v1, p0, Lorg/andengine/entity/modifier/PathModifier$2;->this$0:Lorg/andengine/entity/modifier/PathModifier;

    invoke-interface {v0, v1, p2}, Lorg/andengine/entity/modifier/PathModifier$IPathModifierListener;->onPathFinished(Lorg/andengine/entity/modifier/PathModifier;Lorg/andengine/entity/IEntity;)V

    .line 123
    :cond_0
    return-void
.end method

.method public bridge synthetic onModifierStarted(Lorg/andengine/util/modifier/IModifier;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lorg/andengine/util/modifier/IModifier;

    check-cast p2, Lorg/andengine/entity/IEntity;

    invoke-virtual {p0, p1, p2}, Lorg/andengine/entity/modifier/PathModifier$2;->onModifierStarted(Lorg/andengine/util/modifier/IModifier;Lorg/andengine/entity/IEntity;)V

    return-void
.end method

.method public onModifierStarted(Lorg/andengine/util/modifier/IModifier;Lorg/andengine/entity/IEntity;)V
    .locals 2
    .parameter
    .parameter "pEntity"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/modifier/IModifier",
            "<",
            "Lorg/andengine/entity/IEntity;",
            ">;",
            "Lorg/andengine/entity/IEntity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, pModifier:Lorg/andengine/util/modifier/IModifier;,"Lorg/andengine/util/modifier/IModifier<Lorg/andengine/entity/IEntity;>;"
    iget-object v0, p0, Lorg/andengine/entity/modifier/PathModifier$2;->this$0:Lorg/andengine/entity/modifier/PathModifier;

    #calls: Lorg/andengine/entity/modifier/PathModifier;->onModifierStarted(Ljava/lang/Object;)V
    invoke-static {v0, p2}, Lorg/andengine/entity/modifier/PathModifier;->access$4(Lorg/andengine/entity/modifier/PathModifier;Ljava/lang/Object;)V

    .line 112
    iget-object v0, p0, Lorg/andengine/entity/modifier/PathModifier$2;->this$0:Lorg/andengine/entity/modifier/PathModifier;

    #getter for: Lorg/andengine/entity/modifier/PathModifier;->mPathModifierListener:Lorg/andengine/entity/modifier/PathModifier$IPathModifierListener;
    invoke-static {v0}, Lorg/andengine/entity/modifier/PathModifier;->access$3(Lorg/andengine/entity/modifier/PathModifier;)Lorg/andengine/entity/modifier/PathModifier$IPathModifierListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lorg/andengine/entity/modifier/PathModifier$2;->this$0:Lorg/andengine/entity/modifier/PathModifier;

    #getter for: Lorg/andengine/entity/modifier/PathModifier;->mPathModifierListener:Lorg/andengine/entity/modifier/PathModifier$IPathModifierListener;
    invoke-static {v0}, Lorg/andengine/entity/modifier/PathModifier;->access$3(Lorg/andengine/entity/modifier/PathModifier;)Lorg/andengine/entity/modifier/PathModifier$IPathModifierListener;

    move-result-object v0

    iget-object v1, p0, Lorg/andengine/entity/modifier/PathModifier$2;->this$0:Lorg/andengine/entity/modifier/PathModifier;

    invoke-interface {v0, v1, p2}, Lorg/andengine/entity/modifier/PathModifier$IPathModifierListener;->onPathStarted(Lorg/andengine/entity/modifier/PathModifier;Lorg/andengine/entity/IEntity;)V

    .line 115
    :cond_0
    return-void
.end method
