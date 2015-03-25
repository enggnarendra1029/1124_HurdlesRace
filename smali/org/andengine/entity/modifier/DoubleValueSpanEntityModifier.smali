.class public abstract Lorg/andengine/entity/modifier/DoubleValueSpanEntityModifier;
.super Lorg/andengine/util/modifier/BaseDoubleValueSpanModifier;
.source "DoubleValueSpanEntityModifier.java"

# interfaces
.implements Lorg/andengine/entity/modifier/IEntityModifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/andengine/util/modifier/BaseDoubleValueSpanModifier",
        "<",
        "Lorg/andengine/entity/IEntity;",
        ">;",
        "Lorg/andengine/entity/modifier/IEntityModifier;"
    }
.end annotation


# direct methods
.method public constructor <init>(FFFFF)V
    .locals 0
    .parameter "pDuration"
    .parameter "pFromValueA"
    .parameter "pToValueA"
    .parameter "pFromValueB"
    .parameter "pToValueB"

    .prologue
    .line 28
    invoke-direct/range {p0 .. p5}, Lorg/andengine/util/modifier/BaseDoubleValueSpanModifier;-><init>(FFFFF)V

    .line 29
    return-void
.end method

.method public constructor <init>(FFFFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V
    .locals 0
    .parameter "pDuration"
    .parameter "pFromValueA"
    .parameter "pToValueA"
    .parameter "pFromValueB"
    .parameter "pToValueB"
    .parameter "pEntityModifierListener"

    .prologue
    .line 36
    invoke-direct/range {p0 .. p6}, Lorg/andengine/util/modifier/BaseDoubleValueSpanModifier;-><init>(FFFFFLorg/andengine/util/modifier/IModifier$IModifierListener;)V

    .line 37
    return-void
.end method

.method public constructor <init>(FFFFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 0
    .parameter "pDuration"
    .parameter "pFromValueA"
    .parameter "pToValueA"
    .parameter "pFromValueB"
    .parameter "pToValueB"
    .parameter "pEntityModifierListener"
    .parameter "pEaseFunction"

    .prologue
    .line 40
    invoke-direct/range {p0 .. p7}, Lorg/andengine/util/modifier/BaseDoubleValueSpanModifier;-><init>(FFFFFLorg/andengine/util/modifier/IModifier$IModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 41
    return-void
.end method

.method public constructor <init>(FFFFFLorg/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 0
    .parameter "pDuration"
    .parameter "pFromValueA"
    .parameter "pToValueA"
    .parameter "pFromValueB"
    .parameter "pToValueB"
    .parameter "pEaseFunction"

    .prologue
    .line 32
    invoke-direct/range {p0 .. p6}, Lorg/andengine/util/modifier/BaseDoubleValueSpanModifier;-><init>(FFFFFLorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 33
    return-void
.end method

.method protected constructor <init>(Lorg/andengine/entity/modifier/DoubleValueSpanEntityModifier;)V
    .locals 0
    .parameter "pDoubleValueSpanEntityModifier"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lorg/andengine/util/modifier/BaseDoubleValueSpanModifier;-><init>(Lorg/andengine/util/modifier/BaseDoubleValueSpanModifier;)V

    .line 45
    return-void
.end method
