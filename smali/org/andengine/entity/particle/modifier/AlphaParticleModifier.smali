.class public Lorg/andengine/entity/particle/modifier/AlphaParticleModifier;
.super Lorg/andengine/entity/particle/modifier/BaseSingleValueSpanParticleModifier;
.source "AlphaParticleModifier.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/andengine/entity/IEntity;",
        ">",
        "Lorg/andengine/entity/particle/modifier/BaseSingleValueSpanParticleModifier",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(FFFF)V
    .locals 6
    .parameter "pFromTime"
    .parameter "pToTime"
    .parameter "pFromAlpha"
    .parameter "pToAlpha"

    .prologue
    .line 29
    .local p0, this:Lorg/andengine/entity/particle/modifier/AlphaParticleModifier;,"Lorg/andengine/entity/particle/modifier/AlphaParticleModifier<TT;>;"
    invoke-static {}, Lorg/andengine/util/modifier/ease/EaseLinear;->getInstance()Lorg/andengine/util/modifier/ease/EaseLinear;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/andengine/entity/particle/modifier/AlphaParticleModifier;-><init>(FFFFLorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 30
    return-void
.end method

.method public constructor <init>(FFFFLorg/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 0
    .parameter "pFromTime"
    .parameter "pToTime"
    .parameter "pFromAlpha"
    .parameter "pToAlpha"
    .parameter "pEaseFunction"

    .prologue
    .line 33
    .local p0, this:Lorg/andengine/entity/particle/modifier/AlphaParticleModifier;,"Lorg/andengine/entity/particle/modifier/AlphaParticleModifier<TT;>;"
    invoke-direct/range {p0 .. p5}, Lorg/andengine/entity/particle/modifier/BaseSingleValueSpanParticleModifier;-><init>(FFFFLorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected onSetInitialValue(Lorg/andengine/entity/particle/Particle;F)V
    .locals 1
    .parameter
    .parameter "pAlpha"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/entity/particle/Particle",
            "<TT;>;F)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, this:Lorg/andengine/entity/particle/modifier/AlphaParticleModifier;,"Lorg/andengine/entity/particle/modifier/AlphaParticleModifier<TT;>;"
    .local p1, pParticle:Lorg/andengine/entity/particle/Particle;,"Lorg/andengine/entity/particle/Particle<TT;>;"
    invoke-virtual {p1}, Lorg/andengine/entity/particle/Particle;->getEntity()Lorg/andengine/entity/IEntity;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/andengine/entity/IEntity;->setAlpha(F)V

    .line 47
    return-void
.end method

.method protected onSetValue(Lorg/andengine/entity/particle/Particle;FF)V
    .locals 1
    .parameter
    .parameter "pPercentageDone"
    .parameter "pAlpha"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/entity/particle/Particle",
            "<TT;>;FF)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, this:Lorg/andengine/entity/particle/modifier/AlphaParticleModifier;,"Lorg/andengine/entity/particle/modifier/AlphaParticleModifier<TT;>;"
    .local p1, pParticle:Lorg/andengine/entity/particle/Particle;,"Lorg/andengine/entity/particle/Particle<TT;>;"
    invoke-virtual {p1}, Lorg/andengine/entity/particle/Particle;->getEntity()Lorg/andengine/entity/IEntity;

    move-result-object v0

    invoke-interface {v0, p3}, Lorg/andengine/entity/IEntity;->setAlpha(F)V

    .line 52
    return-void
.end method
