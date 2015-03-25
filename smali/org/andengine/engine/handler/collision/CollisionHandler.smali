.class public Lorg/andengine/engine/handler/collision/CollisionHandler;
.super Ljava/lang/Object;
.source "CollisionHandler.java"

# interfaces
.implements Lorg/andengine/engine/handler/IUpdateHandler;


# instance fields
.field private final mCheckShape:Lorg/andengine/entity/shape/IShape;

.field private final mCollisionCallback:Lorg/andengine/engine/handler/collision/ICollisionCallback;

.field private final mTargetStaticEntities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<+",
            "Lorg/andengine/entity/shape/IShape;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/andengine/engine/handler/collision/ICollisionCallback;Lorg/andengine/entity/shape/IShape;Ljava/util/ArrayList;)V
    .locals 2
    .parameter "pCollisionCallback"
    .parameter "pCheckShape"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/engine/handler/collision/ICollisionCallback;",
            "Lorg/andengine/entity/shape/IShape;",
            "Ljava/util/ArrayList",
            "<+",
            "Lorg/andengine/entity/shape/IShape;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 37
    .local p3, pTargetStaticEntities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lorg/andengine/entity/shape/IShape;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    if-nez p1, :cond_0

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pCollisionCallback must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    if-nez p2, :cond_1

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pCheckShape must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_1
    if-nez p3, :cond_2

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pTargetStaticEntities must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_2
    iput-object p1, p0, Lorg/andengine/engine/handler/collision/CollisionHandler;->mCollisionCallback:Lorg/andengine/engine/handler/collision/ICollisionCallback;

    .line 49
    iput-object p2, p0, Lorg/andengine/engine/handler/collision/CollisionHandler;->mCheckShape:Lorg/andengine/entity/shape/IShape;

    .line 50
    iput-object p3, p0, Lorg/andengine/engine/handler/collision/CollisionHandler;->mTargetStaticEntities:Ljava/util/ArrayList;

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/andengine/engine/handler/collision/ICollisionCallback;Lorg/andengine/entity/shape/IShape;Lorg/andengine/entity/shape/IShape;)V
    .locals 1
    .parameter "pCollisionCallback"
    .parameter "pCheckShape"
    .parameter "pTargetShape"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-static {p3}, Lorg/andengine/util/adt/list/ListUtils;->toList(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/andengine/engine/handler/collision/CollisionHandler;-><init>(Lorg/andengine/engine/handler/collision/ICollisionCallback;Lorg/andengine/entity/shape/IShape;Ljava/util/ArrayList;)V

    .line 35
    return-void
.end method


# virtual methods
.method public onUpdate(F)V
    .locals 7
    .parameter "pSecondsElapsed"

    .prologue
    .line 63
    iget-object v0, p0, Lorg/andengine/engine/handler/collision/CollisionHandler;->mCheckShape:Lorg/andengine/entity/shape/IShape;

    .line 64
    .local v0, checkShape:Lorg/andengine/entity/shape/IShape;
    iget-object v3, p0, Lorg/andengine/engine/handler/collision/CollisionHandler;->mTargetStaticEntities:Ljava/util/ArrayList;

    .line 65
    .local v3, staticEntities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lorg/andengine/entity/shape/IShape;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 67
    .local v4, staticEntityCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v4, :cond_1

    .line 75
    :cond_0
    return-void

    .line 68
    :cond_1
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/andengine/entity/shape/IShape;

    invoke-interface {v0, v5}, Lorg/andengine/entity/shape/IShape;->collidesWith(Lorg/andengine/entity/shape/IShape;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 69
    iget-object v6, p0, Lorg/andengine/engine/handler/collision/CollisionHandler;->mCollisionCallback:Lorg/andengine/engine/handler/collision/ICollisionCallback;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/andengine/entity/shape/IShape;

    invoke-interface {v6, v0, v5}, Lorg/andengine/engine/handler/collision/ICollisionCallback;->onCollision(Lorg/andengine/entity/shape/IShape;Lorg/andengine/entity/shape/IShape;)Z

    move-result v2

    .line 70
    .local v2, proceed:Z
    if-eqz v2, :cond_0

    .line 67
    .end local v2           #proceed:Z
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method
