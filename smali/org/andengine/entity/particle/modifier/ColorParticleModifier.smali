.class public Lorg/andengine/entity/particle/modifier/ColorParticleModifier;
.super Lorg/andengine/entity/particle/modifier/BaseTripleValueSpanParticleModifier;
.source "ColorParticleModifier.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/andengine/entity/IEntity;",
        ">",
        "Lorg/andengine/entity/particle/modifier/BaseTripleValueSpanParticleModifier",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(FFFFFFFF)V
    .locals 10
    .parameter "pFromTime"
    .parameter "pToTime"
    .parameter "pFromRed"
    .parameter "pToRed"
    .parameter "pFromGreen"
    .parameter "pToGreen"
    .parameter "pFromBlue"
    .parameter "pToBlue"

    .prologue
    .line 29
    .local p0, this:Lorg/andengine/entity/particle/modifier/ColorParticleModifier;,"Lorg/andengine/entity/particle/modifier/ColorParticleModifier<TT;>;"
    invoke-static {}, Lorg/andengine/util/modifier/ease/EaseLinear;->getInstance()Lorg/andengine/util/modifier/ease/EaseLinear;

    move-result-object v9

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lorg/andengine/entity/particle/modifier/ColorParticleModifier;-><init>(FFFFFFFFLorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 30
    return-void
.end method

.method public constructor <init>(FFFFFFFFLorg/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 0
    .parameter "pFromTime"
    .parameter "pToTime"
    .parameter "pFromRed"
    .parameter "pToRed"
    .parameter "pFromGreen"
    .parameter "pToGreen"
    .parameter "pFromBlue"
    .parameter "pToBlue"
    .parameter "pEaseFunction"

    .prologue
    .line 33
    .local p0, this:Lorg/andengine/entity/particle/modifier/ColorParticleModifier;,"Lorg/andengine/entity/particle/modifier/ColorParticleModifier<TT;>;"
    invoke-direct/range {p0 .. p9}, Lorg/andengine/entity/particle/modifier/BaseTripleValueSpanParticleModifier;-><init>(FFFFFFFFLorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected onSetInitialValues(Lorg/andengine/entity/particle/Particle;FFF)V
    .locals 1
    .parameter
    .parameter "pRed"
    .parameter "pGreen"
    .parameter "pBlue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/entity/particle/Particle",
            "<TT;>;FFF)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, this:Lorg/andengine/entity/particle/modifier/ColorParticleModifier;,"Lorg/andengine/entity/particle/modifier/ColorParticleModifier<TT;>;"
    .local p1, pParticle:Lorg/andengine/entity/particle/Particle;,"Lorg/andengine/entity/particle/Particle<TT;>;"
    invoke-virtual {p1}, Lorg/andengine/entity/particle/Particle;->getEntity()Lorg/andengine/entity/IEntity;

    move-result-object v0

    invoke-interface {v0, p2, p3, p4}, Lorg/andengine/entity/IEntity;->setColor(FFF)V

    .line 47
    return-void
.end method

.method protected onSetValues(Lorg/andengine/entity/particle/Particle;FFFF)V
    .locals 1
    .parameter
    .parameter "pPercentageDone"
    .parameter "pRed"
    .parameter "pGreen"
    .parameter "pBlue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/entity/particle/Particle",
            "<TT;>;FFFF)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, this:Lorg/andengine/entity/particle/modifier/ColorParticleModifier;,"Lorg/andengine/entity/particle/modifier/ColorParticleModifier<TT;>;"
    .local p1, pParticle:Lorg/andengine/entity/particle/Particle;,"Lorg/andengine/entity/particle/Particle<TT;>;"
    invoke-virtual {p1}, Lorg/andengine/entity/particle/Particle;->getEntity()Lorg/andengine/entity/IEntity;

    move-result-object v0

    invoke-interface {v0, p3, p4, p5}, Lorg/andengine/entity/IEntity;->setColor(FFF)V

    .line 52
    return-void
.end method
