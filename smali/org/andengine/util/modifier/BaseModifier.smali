.class public abstract Lorg/andengine/util/modifier/BaseModifier;
.super Ljava/lang/Object;
.source "BaseModifier.java"

# interfaces
.implements Lorg/andengine/util/modifier/IModifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/andengine/util/modifier/IModifier",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mAutoUnregisterWhenFinished:Z

.field protected mFinished:Z

.field private final mModifierListeners:Lorg/andengine/util/adt/list/SmartList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/andengine/util/adt/list/SmartList",
            "<",
            "Lorg/andengine/util/modifier/IModifier$IModifierListener",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    .local p0, this:Lorg/andengine/util/modifier/BaseModifier;,"Lorg/andengine/util/modifier/BaseModifier<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/andengine/util/modifier/BaseModifier;->mAutoUnregisterWhenFinished:Z

    .line 25
    new-instance v0, Lorg/andengine/util/adt/list/SmartList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/andengine/util/adt/list/SmartList;-><init>(I)V

    iput-object v0, p0, Lorg/andengine/util/modifier/BaseModifier;->mModifierListeners:Lorg/andengine/util/adt/list/SmartList;

    .line 33
    return-void
.end method

.method public constructor <init>(Lorg/andengine/util/modifier/IModifier$IModifierListener;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/modifier/IModifier$IModifierListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, this:Lorg/andengine/util/modifier/BaseModifier;,"Lorg/andengine/util/modifier/BaseModifier<TT;>;"
    .local p1, pModifierListener:Lorg/andengine/util/modifier/IModifier$IModifierListener;,"Lorg/andengine/util/modifier/IModifier$IModifierListener<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/andengine/util/modifier/BaseModifier;->mAutoUnregisterWhenFinished:Z

    .line 25
    new-instance v0, Lorg/andengine/util/adt/list/SmartList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/andengine/util/adt/list/SmartList;-><init>(I)V

    iput-object v0, p0, Lorg/andengine/util/modifier/BaseModifier;->mModifierListeners:Lorg/andengine/util/adt/list/SmartList;

    .line 36
    invoke-virtual {p0, p1}, Lorg/andengine/util/modifier/BaseModifier;->addModifierListener(Lorg/andengine/util/modifier/IModifier$IModifierListener;)V

    .line 37
    return-void
.end method

.method protected static final assertNoNullModifier(Lorg/andengine/util/modifier/IModifier;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/andengine/util/modifier/IModifier",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, pModifier:Lorg/andengine/util/modifier/IModifier;,"Lorg/andengine/util/modifier/IModifier<TT;>;"
    if-nez p0, :cond_0

    .line 103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal \'null\' "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lorg/andengine/util/modifier/IModifier;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " detected!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_0
    return-void
.end method

.method protected static final varargs assertNoNullModifier([Lorg/andengine/util/modifier/IModifier;)V
    .locals 5
    .parameter "pModifiers"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/andengine/util/modifier/IModifier",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 108
    array-length v1, p0

    .line 109
    .local v1, modifierCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 114
    return-void

    .line 110
    :cond_0
    aget-object v2, p0, v0

    if-nez v2, :cond_1

    .line 111
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Illegal \'null\' "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v4, Lorg/andengine/util/modifier/IModifier;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " detected at position: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 109
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addModifierListener(Lorg/andengine/util/modifier/IModifier$IModifierListener;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/modifier/IModifier$IModifierListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, this:Lorg/andengine/util/modifier/BaseModifier;,"Lorg/andengine/util/modifier/BaseModifier<TT;>;"
    .local p1, pModifierListener:Lorg/andengine/util/modifier/IModifier$IModifierListener;,"Lorg/andengine/util/modifier/IModifier$IModifierListener<TT;>;"
    if-eqz p1, :cond_0

    .line 65
    iget-object v0, p0, Lorg/andengine/util/modifier/BaseModifier;->mModifierListeners:Lorg/andengine/util/adt/list/SmartList;

    invoke-virtual {v0, p1}, Lorg/andengine/util/adt/list/SmartList;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_0
    return-void
.end method

.method public abstract deepCopy()Lorg/andengine/util/modifier/IModifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/andengine/util/modifier/IModifier",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation
.end method

.method public final isAutoUnregisterWhenFinished()Z
    .locals 1

    .prologue
    .line 54
    .local p0, this:Lorg/andengine/util/modifier/BaseModifier;,"Lorg/andengine/util/modifier/BaseModifier<TT;>;"
    iget-boolean v0, p0, Lorg/andengine/util/modifier/BaseModifier;->mAutoUnregisterWhenFinished:Z

    return v0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 49
    .local p0, this:Lorg/andengine/util/modifier/BaseModifier;,"Lorg/andengine/util/modifier/BaseModifier<TT;>;"
    iget-boolean v0, p0, Lorg/andengine/util/modifier/BaseModifier;->mFinished:Z

    return v0
.end method

.method protected onModifierFinished(Ljava/lang/Object;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, this:Lorg/andengine/util/modifier/BaseModifier;,"Lorg/andengine/util/modifier/BaseModifier<TT;>;"
    .local p1, pItem:Ljava/lang/Object;,"TT;"
    iget-object v2, p0, Lorg/andengine/util/modifier/BaseModifier;->mModifierListeners:Lorg/andengine/util/adt/list/SmartList;

    .line 95
    .local v2, modifierListeners:Lorg/andengine/util/adt/list/SmartList;,"Lorg/andengine/util/adt/list/SmartList<Lorg/andengine/util/modifier/IModifier$IModifierListener<TT;>;>;"
    invoke-virtual {v2}, Lorg/andengine/util/adt/list/SmartList;->size()I

    move-result v1

    .line 96
    .local v1, modifierListenerCount:I
    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 99
    return-void

    .line 97
    :cond_0
    invoke-virtual {v2, v0}, Lorg/andengine/util/adt/list/SmartList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/andengine/util/modifier/IModifier$IModifierListener;

    invoke-interface {v3, p0, p1}, Lorg/andengine/util/modifier/IModifier$IModifierListener;->onModifierFinished(Lorg/andengine/util/modifier/IModifier;Ljava/lang/Object;)V

    .line 96
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method protected onModifierStarted(Ljava/lang/Object;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, this:Lorg/andengine/util/modifier/BaseModifier;,"Lorg/andengine/util/modifier/BaseModifier<TT;>;"
    .local p1, pItem:Ljava/lang/Object;,"TT;"
    iget-object v2, p0, Lorg/andengine/util/modifier/BaseModifier;->mModifierListeners:Lorg/andengine/util/adt/list/SmartList;

    .line 87
    .local v2, modifierListeners:Lorg/andengine/util/adt/list/SmartList;,"Lorg/andengine/util/adt/list/SmartList<Lorg/andengine/util/modifier/IModifier$IModifierListener<TT;>;>;"
    invoke-virtual {v2}, Lorg/andengine/util/adt/list/SmartList;->size()I

    move-result v1

    .line 88
    .local v1, modifierListenerCount:I
    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 91
    return-void

    .line 89
    :cond_0
    invoke-virtual {v2, v0}, Lorg/andengine/util/adt/list/SmartList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/andengine/util/modifier/IModifier$IModifierListener;

    invoke-interface {v3, p0, p1}, Lorg/andengine/util/modifier/IModifier$IModifierListener;->onModifierStarted(Lorg/andengine/util/modifier/IModifier;Ljava/lang/Object;)V

    .line 88
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public removeModifierListener(Lorg/andengine/util/modifier/IModifier$IModifierListener;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/modifier/IModifier$IModifierListener",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, this:Lorg/andengine/util/modifier/BaseModifier;,"Lorg/andengine/util/modifier/BaseModifier<TT;>;"
    .local p1, pModifierListener:Lorg/andengine/util/modifier/IModifier$IModifierListener;,"Lorg/andengine/util/modifier/IModifier$IModifierListener<TT;>;"
    if-nez p1, :cond_0

    .line 72
    const/4 v0, 0x0

    .line 74
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/andengine/util/modifier/BaseModifier;->mModifierListeners:Lorg/andengine/util/adt/list/SmartList;

    invoke-virtual {v0, p1}, Lorg/andengine/util/adt/list/SmartList;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final setAutoUnregisterWhenFinished(Z)V
    .locals 0
    .parameter "pAutoUnregisterWhenFinished"

    .prologue
    .line 59
    .local p0, this:Lorg/andengine/util/modifier/BaseModifier;,"Lorg/andengine/util/modifier/BaseModifier<TT;>;"
    iput-boolean p1, p0, Lorg/andengine/util/modifier/BaseModifier;->mAutoUnregisterWhenFinished:Z

    .line 60
    return-void
.end method
