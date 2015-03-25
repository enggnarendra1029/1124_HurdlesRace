.class public Lorg/andengine/util/modifier/ModifierList;
.super Lorg/andengine/util/adt/list/SmartList;
.source "ModifierList.java"

# interfaces
.implements Lorg/andengine/engine/handler/IUpdateHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/andengine/util/adt/list/SmartList",
        "<",
        "Lorg/andengine/util/modifier/IModifier",
        "<TT;>;>;",
        "Lorg/andengine/engine/handler/IUpdateHandler;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x165918c8d0a83583L


# instance fields
.field private final mTarget:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, this:Lorg/andengine/util/modifier/ModifierList;,"Lorg/andengine/util/modifier/ModifierList<TT;>;"
    .local p1, pTarget:Ljava/lang/Object;,"TT;"
    invoke-direct {p0}, Lorg/andengine/util/adt/list/SmartList;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/andengine/util/modifier/ModifierList;->mTarget:Ljava/lang/Object;

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0
    .parameter
    .parameter "pCapacity"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, this:Lorg/andengine/util/modifier/ModifierList;,"Lorg/andengine/util/modifier/ModifierList<TT;>;"
    .local p1, pTarget:Ljava/lang/Object;,"TT;"
    invoke-direct {p0, p2}, Lorg/andengine/util/adt/list/SmartList;-><init>(I)V

    .line 36
    iput-object p1, p0, Lorg/andengine/util/modifier/ModifierList;->mTarget:Ljava/lang/Object;

    .line 37
    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, Lorg/andengine/util/modifier/IModifier;

    invoke-virtual {p0, p1}, Lorg/andengine/util/modifier/ModifierList;->add(Lorg/andengine/util/modifier/IModifier;)Z

    move-result v0

    return v0
.end method

.method public add(Lorg/andengine/util/modifier/IModifier;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/modifier/IModifier",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, this:Lorg/andengine/util/modifier/ModifierList;,"Lorg/andengine/util/modifier/ModifierList<TT;>;"
    .local p1, pModifier:Lorg/andengine/util/modifier/IModifier;,"Lorg/andengine/util/modifier/IModifier<TT;>;"
    if-nez p1, :cond_0

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Supplied "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lorg/andengine/util/modifier/IModifier;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must not be null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    invoke-super {p0, p1}, Lorg/andengine/util/adt/list/SmartList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getTarget()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, this:Lorg/andengine/util/modifier/ModifierList;,"Lorg/andengine/util/modifier/ModifierList<TT;>;"
    iget-object v0, p0, Lorg/andengine/util/modifier/ModifierList;->mTarget:Ljava/lang/Object;

    return-object v0
.end method

.method public onUpdate(F)V
    .locals 4
    .parameter "pSecondsElapsed"

    .prologue
    .line 62
    .local p0, this:Lorg/andengine/util/modifier/ModifierList;,"Lorg/andengine/util/modifier/ModifierList<TT;>;"
    invoke-virtual {p0}, Lorg/andengine/util/modifier/ModifierList;->size()I

    move-result v2

    .line 63
    .local v2, modifierCount:I
    if-lez v2, :cond_0

    .line 64
    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_1

    .line 72
    .end local v0           #i:I
    :cond_0
    return-void

    .line 65
    .restart local v0       #i:I
    :cond_1
    invoke-virtual {p0, v0}, Lorg/andengine/util/modifier/ModifierList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/andengine/util/modifier/IModifier;

    .line 66
    .local v1, modifier:Lorg/andengine/util/modifier/IModifier;,"Lorg/andengine/util/modifier/IModifier<TT;>;"
    iget-object v3, p0, Lorg/andengine/util/modifier/ModifierList;->mTarget:Ljava/lang/Object;

    invoke-interface {v1, p1, v3}, Lorg/andengine/util/modifier/IModifier;->onUpdate(FLjava/lang/Object;)F

    .line 67
    invoke-interface {v1}, Lorg/andengine/util/modifier/IModifier;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Lorg/andengine/util/modifier/IModifier;->isAutoUnregisterWhenFinished()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 68
    invoke-virtual {p0, v0}, Lorg/andengine/util/modifier/ModifierList;->remove(I)Ljava/lang/Object;

    .line 64
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 76
    .local p0, this:Lorg/andengine/util/modifier/ModifierList;,"Lorg/andengine/util/modifier/ModifierList<TT;>;"
    invoke-virtual {p0}, Lorg/andengine/util/modifier/ModifierList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 79
    return-void

    .line 77
    :cond_0
    invoke-virtual {p0, v0}, Lorg/andengine/util/modifier/ModifierList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/andengine/util/modifier/IModifier;

    invoke-interface {v1}, Lorg/andengine/util/modifier/IModifier;->reset()V

    .line 76
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
