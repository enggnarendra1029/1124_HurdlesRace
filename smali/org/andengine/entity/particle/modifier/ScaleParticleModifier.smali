.class public Lorg/andengine/entity/particle/modifier/ScaleParticleModifier;
.super Lorg/andengine/entity/particle/modifier/BaseDoubleValueSpanParticleModifier;
.source "ScaleParticleModifier.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/andengine/entity/IEntity;",
        ">",
        "Lorg/andengine/entity/particle/modifier/BaseDoubleValueSpanParticleModifier",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(FFFF)V
    .locals 6
    .parameter "pFromTime"
    .parameter "pToTime"
    .parameter "pFromScale"
    .parameter "pToScale"

    .prologue
    .line 29
    .local p0, this:Lorg/andengine/entity/particle/modifier/ScaleParticleModifier;,"Lorg/andengine/entity/particle/modifier/ScaleParticleModifier<TT;>;"
    invoke-static {}, Lorg/andengine/util/modifier/ease/EaseLinear;->getInstance()Lorg/andengine/util/modifier/ease/EaseLinear;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/andengine/entity/particle/modifier/ScaleParticleModifier;-><init>(FFFFLorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 30
    return-void
.end method

.method public constructor <init>(FFFFFF)V
    .locals 8
    .parameter "pFromTime"
    .parameter "pToTime"
    .parameter "pFromScaleX"
    .parameter "pToScaleX"
    .parameter "pFromScaleY"
    .parameter "pToScaleY"

    .prologue
    .line 37
    .local p0, this:Lorg/andengine/entity/particle/modifier/ScaleParticleModifier;,"Lorg/andengine/entity/particle/modifier/ScaleParticleModifier<TT;>;"
    invoke-static {}, Lorg/andengine/util/modifier/ease/EaseLinear;->getInstance()Lorg/andengine/util/modifier/ease/EaseLinear;

    move-result-object v7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/andengine/entity/particle/modifier/ScaleParticleModifier;-><init>(FFFFFFLorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 38
    return-void
.end method

.method public constructor <init>(FFFFFFLorg/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 0
    .parameter "pFromTime"
    .parameter "pToTime"
    .parameter "pFromScaleX"
    .parameter "pToScaleX"
    .parameter "pFromScaleY"
    .parameter "pToScaleY"
    .parameter "pEaseFunction"

    .prologue
    .line 41
    .local p0, this:Lorg/andengine/entity/particle/modifier/ScaleParticleModifier;,"Lorg/andengine/entity/particle/modifier/ScaleParticleModifier<TT;>;"
    invoke-direct/range {p0 .. p7}, Lorg/andengine/entity/particle/modifier/BaseDoubleValueSpanParticleModifier;-><init>(FFFFFFLorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 42
    return-void
.end method

.method public constructor <init>(FFFFLorg/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 8
    .parameter "pFromTime"
    .parameter "pToTime"
    .parameter "pFromScale"
    .parameter "pToScale"
    .parameter "pEaseFunction"

    .prologue
    .line 33
    .local p0, this:Lorg/andengine/entity/particle/modifier/ScaleParticleModifier;,"Lorg/andengine/entity/particle/modifier/ScaleParticleModifier<TT;>;"
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/andengine/entity/particle/modifier/ScaleParticleModifier;-><init>(FFFFFFLorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected onSetInitialValues(Lorg/andengine/entity/particle/Particle;FF)V
    .locals 1
    .parameter
    .parameter "pScaleX"
    .parameter "pScaleY"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/entity/particle/Particle",
            "<TT;>;FF)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, this:Lorg/andengine/entity/particle/modifier/ScaleParticleModifier;,"Lorg/andengine/entity/particle/modifier/ScaleParticleModifier<TT;>;"
    .local p1, pParticle:Lorg/andengine/entity/particle/Particle;,"Lorg/andengine/entity/particle/Particle<TT;>;"
    invoke-virtual {p1}, Lorg/andengine/entity/particle/Particle;->getEntity()Lorg/andengine/entity/IEntity;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lorg/andengine/entity/IEntity;->setScale(FF)V

    .line 55
    return-void
.end method

.method protected onSetValues(Lorg/andengine/entity/particle/Particle;FFF)V
    .locals 1
    .parameter
    .parameter "pPercentageDone"
    .parameter "pScaleX"
    .parameter "pScaleY"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/entity/particle/Particle",
            "<TT;>;FFF)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, this:Lorg/andengine/entity/particle/modifier/ScaleParticleModifier;,"Lorg/andengine/entity/particle/modifier/ScaleParticleModifier<TT;>;"
    .local p1, pParticle:Lorg/andengine/entity/particle/Particle;,"Lorg/andengine/entity/particle/Particle<TT;>;"
    invoke-virtual {p1}, Lorg/andengine/entity/particle/Particle;->getEntity()Lorg/andengine/entity/IEntity;

    move-result-object v0

    invoke-interface {v0, p3, p4}, Lorg/andengine/entity/IEntity;->setScale(FF)V

    .line 60
    return-void
.end method
