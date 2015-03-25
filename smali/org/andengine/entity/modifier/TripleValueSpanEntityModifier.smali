.class public abstract Lorg/andengine/entity/modifier/TripleValueSpanEntityModifier;
.super Lorg/andengine/util/modifier/BaseTripleValueSpanModifier;
.source "TripleValueSpanEntityModifier.java"

# interfaces
.implements Lorg/andengine/entity/modifier/IEntityModifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/andengine/util/modifier/BaseTripleValueSpanModifier",
        "<",
        "Lorg/andengine/entity/IEntity;",
        ">;",
        "Lorg/andengine/entity/modifier/IEntityModifier;"
    }
.end annotation


# direct methods
.method public constructor <init>(FFFFFFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 0
    .parameter "pDuration"
    .parameter "pFromValueA"
    .parameter "pToValueA"
    .parameter "pFromValueB"
    .parameter "pToValueB"
    .parameter "pFromValueC"
    .parameter "pToValueC"
    .parameter "pEntityModifierListener"
    .parameter "pEaseFunction"

    .prologue
    .line 32
    invoke-direct/range {p0 .. p9}, Lorg/andengine/util/modifier/BaseTripleValueSpanModifier;-><init>(FFFFFFFLorg/andengine/util/modifier/IModifier$IModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 33
    return-void
.end method

.method public constructor <init>(FFFFFFFLorg/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 0
    .parameter "pDuration"
    .parameter "pFromValueA"
    .parameter "pToValueA"
    .parameter "pFromValueB"
    .parameter "pToValueB"
    .parameter "pFromValueC"
    .parameter "pToValueC"
    .parameter "pEaseFunction"

    .prologue
    .line 28
    invoke-direct/range {p0 .. p8}, Lorg/andengine/util/modifier/BaseTripleValueSpanModifier;-><init>(FFFFFFFLorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 29
    return-void
.end method

.method protected constructor <init>(Lorg/andengine/entity/modifier/TripleValueSpanEntityModifier;)V
    .locals 0
    .parameter "pTripleValueSpanEntityModifier"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lorg/andengine/util/modifier/BaseTripleValueSpanModifier;-><init>(Lorg/andengine/util/modifier/BaseTripleValueSpanModifier;)V

    .line 37
    return-void
.end method
