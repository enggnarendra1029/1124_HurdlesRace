.class public abstract Lorg/andengine/entity/modifier/EntityModifier;
.super Lorg/andengine/util/modifier/BaseModifier;
.source "EntityModifier.java"

# interfaces
.implements Lorg/andengine/entity/modifier/IEntityModifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/andengine/util/modifier/BaseModifier",
        "<",
        "Lorg/andengine/entity/IEntity;",
        ">;",
        "Lorg/andengine/entity/modifier/IEntityModifier;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/andengine/util/modifier/BaseModifier;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(Lorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V
    .locals 0
    .parameter "pEntityModifierListener"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lorg/andengine/util/modifier/BaseModifier;-><init>(Lorg/andengine/util/modifier/IModifier$IModifierListener;)V

    .line 32
    return-void
.end method
