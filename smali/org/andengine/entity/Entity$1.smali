.class Lorg/andengine/entity/Entity$1;
.super Ljava/lang/Object;
.source "Entity.java"

# interfaces
.implements Lorg/andengine/util/call/ParameterCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andengine/entity/Entity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/andengine/util/call/ParameterCallable",
        "<",
        "Lorg/andengine/entity/IEntity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lorg/andengine/entity/IEntity;

    invoke-virtual {p0, p1}, Lorg/andengine/entity/Entity$1;->call(Lorg/andengine/entity/IEntity;)V

    return-void
.end method

.method public call(Lorg/andengine/entity/IEntity;)V
    .locals 1
    .parameter "pEntity"

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/andengine/entity/IEntity;->setParent(Lorg/andengine/entity/IEntity;)V

    .line 43
    invoke-interface {p1}, Lorg/andengine/entity/IEntity;->onDetached()V

    .line 44
    return-void
.end method
