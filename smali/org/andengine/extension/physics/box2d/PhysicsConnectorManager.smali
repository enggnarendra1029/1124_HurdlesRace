.class public Lorg/andengine/extension/physics/box2d/PhysicsConnectorManager;
.super Ljava/util/ArrayList;
.source "PhysicsConnectorManager.java"

# interfaces
.implements Lorg/andengine/engine/handler/IUpdateHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lorg/andengine/extension/physics/box2d/PhysicsConnector;",
        ">;",
        "Lorg/andengine/engine/handler/IUpdateHandler;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5bb2994d7a3b7a7L


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method public findBodyByShape(Lorg/andengine/entity/shape/IShape;)Lcom/badlogic/gdx/physics/box2d/Body;
    .locals 4
    .parameter "pShape"

    .prologue
    .line 65
    move-object v2, p0

    .line 66
    .local v2, physicsConnectors:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/andengine/extension/physics/box2d/PhysicsConnector;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 72
    const/4 v3, 0x0

    :goto_1
    return-object v3

    .line 67
    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/andengine/extension/physics/box2d/PhysicsConnector;

    .line 68
    .local v1, physicsConnector:Lorg/andengine/extension/physics/box2d/PhysicsConnector;
    iget-object v3, v1, Lorg/andengine/extension/physics/box2d/PhysicsConnector;->mShape:Lorg/andengine/entity/shape/IShape;

    if-ne v3, p1, :cond_1

    .line 69
    iget-object v3, v1, Lorg/andengine/extension/physics/box2d/PhysicsConnector;->mBody:Lcom/badlogic/gdx/physics/box2d/Body;

    goto :goto_1

    .line 66
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public findPhysicsConnectorByShape(Lorg/andengine/entity/shape/IShape;)Lorg/andengine/extension/physics/box2d/PhysicsConnector;
    .locals 4
    .parameter "pShape"

    .prologue
    .line 76
    move-object v2, p0

    .line 77
    .local v2, physicsConnectors:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/andengine/extension/physics/box2d/PhysicsConnector;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_1

    .line 83
    const/4 v1, 0x0

    :cond_0
    return-object v1

    .line 78
    :cond_1
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/andengine/extension/physics/box2d/PhysicsConnector;

    .line 79
    .local v1, physicsConnector:Lorg/andengine/extension/physics/box2d/PhysicsConnector;
    iget-object v3, v1, Lorg/andengine/extension/physics/box2d/PhysicsConnector;->mShape:Lorg/andengine/entity/shape/IShape;

    if-eq v3, p1, :cond_0

    .line 77
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public onUpdate(F)V
    .locals 3
    .parameter "pSecondsElapsed"

    .prologue
    .line 46
    move-object v1, p0

    .line 47
    .local v1, physicsConnectors:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/andengine/extension/physics/box2d/PhysicsConnector;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 50
    return-void

    .line 48
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/andengine/extension/physics/box2d/PhysicsConnector;

    invoke-virtual {v2, p1}, Lorg/andengine/extension/physics/box2d/PhysicsConnector;->onUpdate(F)V

    .line 47
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 54
    move-object v1, p0

    .line 55
    .local v1, physicsConnectors:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/andengine/extension/physics/box2d/PhysicsConnector;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 58
    return-void

    .line 56
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/andengine/extension/physics/box2d/PhysicsConnector;

    invoke-virtual {v2}, Lorg/andengine/extension/physics/box2d/PhysicsConnector;->reset()V

    .line 55
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
