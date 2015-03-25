.class public Lorg/andengine/entity/modifier/EntityModifierList;
.super Lorg/andengine/util/modifier/ModifierList;
.source "EntityModifierList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/andengine/util/modifier/ModifierList",
        "<",
        "Lorg/andengine/entity/IEntity;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x23e4e557eb08212L


# direct methods
.method public constructor <init>(Lorg/andengine/entity/IEntity;)V
    .locals 0
    .parameter "pTarget"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lorg/andengine/util/modifier/ModifierList;-><init>(Ljava/lang/Object;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lorg/andengine/entity/IEntity;I)V
    .locals 0
    .parameter "pTarget"
    .parameter "pCapacity"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lorg/andengine/util/modifier/ModifierList;-><init>(Ljava/lang/Object;I)V

    .line 34
    return-void
.end method
