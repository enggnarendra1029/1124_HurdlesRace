.class public Lorg/andengine/entity/modifier/CatmullRomSplineMoveModifier;
.super Lorg/andengine/entity/modifier/CardinalSplineMoveModifier;
.source "CatmullRomSplineMoveModifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/andengine/entity/modifier/CatmullRomSplineMoveModifier$CatmullRomMoveModifierConfig;
    }
.end annotation


# direct methods
.method public constructor <init>(FLorg/andengine/entity/modifier/CatmullRomSplineMoveModifier$CatmullRomMoveModifierConfig;)V
    .locals 0
    .parameter "pDuration"
    .parameter "pCatmullRomMoveModifierConfig"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier;-><init>(FLorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;)V

    .line 26
    return-void
.end method

.method public constructor <init>(FLorg/andengine/entity/modifier/CatmullRomSplineMoveModifier$CatmullRomMoveModifierConfig;Lorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V
    .locals 0
    .parameter "pDuration"
    .parameter "pCatmullRomMoveModifierConfig"
    .parameter "pEntityModifierListener"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier;-><init>(FLorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;Lorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V

    .line 34
    return-void
.end method

.method public constructor <init>(FLorg/andengine/entity/modifier/CatmullRomSplineMoveModifier$CatmullRomMoveModifierConfig;Lorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 0
    .parameter "pDuration"
    .parameter "pCatmullRomMoveModifierConfig"
    .parameter "pEntityModifierListener"
    .parameter "pEaseFunction"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier;-><init>(FLorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;Lorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 38
    return-void
.end method

.method public constructor <init>(FLorg/andengine/entity/modifier/CatmullRomSplineMoveModifier$CatmullRomMoveModifierConfig;Lorg/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 0
    .parameter "pDuration"
    .parameter "pCatmullRomMoveModifierConfig"
    .parameter "pEaseFunction"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier;-><init>(FLorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 30
    return-void
.end method
