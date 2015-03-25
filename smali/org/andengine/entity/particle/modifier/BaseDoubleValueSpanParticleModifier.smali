.class public abstract Lorg/andengine/entity/particle/modifier/BaseDoubleValueSpanParticleModifier;
.super Lorg/andengine/entity/particle/modifier/BaseSingleValueSpanParticleModifier;
.source "BaseDoubleValueSpanParticleModifier.java"


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


# instance fields
.field private mFromValueB:F

.field private mValueSpanB:F


# direct methods
.method public constructor <init>(FFFFFF)V
    .locals 8
    .parameter "pFromTime"
    .parameter "pToTime"
    .parameter "pFromValueA"
    .parameter "pToValueA"
    .parameter "pFromValueB"
    .parameter "pToValueB"

    .prologue
    .line 32
    .local p0, this:Lorg/andengine/entity/particle/modifier/BaseDoubleValueSpanParticleModifier;,"Lorg/andengine/entity/particle/modifier/BaseDoubleValueSpanParticleModifier<TT;>;"
    invoke-static {}, Lorg/andengine/util/modifier/ease/EaseLinear;->getInstance()Lorg/andengine/util/modifier/ease/EaseLinear;

    move-result-object v7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/andengine/entity/particle/modifier/BaseDoubleValueSpanParticleModifier;-><init>(FFFFFFLorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 33
    return-void
.end method

.method public constructor <init>(FFFFFFLorg/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 6
    .parameter "pFromTime"
    .parameter "pToTime"
    .parameter "pFromValueA"
    .parameter "pToValueA"
    .parameter "pFromValueB"
    .parameter "pToValueB"
    .parameter "pEaseFunction"

    .prologue
    .line 36
    .local p0, this:Lorg/andengine/entity/particle/modifier/BaseDoubleValueSpanParticleModifier;,"Lorg/andengine/entity/particle/modifier/BaseDoubleValueSpanParticleModifier<TT;>;"
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lorg/andengine/entity/particle/modifier/BaseSingleValueSpanParticleModifier;-><init>(FFFFLorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 38
    iput p5, p0, Lorg/andengine/entity/particle/modifier/BaseDoubleValueSpanParticleModifier;->mFromValueB:F

    .line 39
    sub-float v0, p6, p5

    iput v0, p0, Lorg/andengine/entity/particle/modifier/BaseDoubleValueSpanParticleModifier;->mValueSpanB:F

    .line 40
    return-void
.end method


# virtual methods
.method public onSetInitialValue(Lorg/andengine/entity/particle/Particle;F)V
    .locals 1
    .parameter
    .parameter "pValueA"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/entity/particle/Particle",
            "<TT;>;F)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, this:Lorg/andengine/entity/particle/modifier/BaseDoubleValueSpanParticleModifier;,"Lorg/andengine/entity/particle/modifier/BaseDoubleValueSpanParticleModifier<TT;>;"
    .local p1, pParticle:Lorg/andengine/entity/particle/Particle;,"Lorg/andengine/entity/particle/Particle<TT;>;"
    iget v0, p0, Lorg/andengine/entity/particle/modifier/BaseDoubleValueSpanParticleModifier;->mFromValueB:F

    invoke-virtual {p0, p1, p2, v0}, Lorg/andengine/entity/particle/modifier/BaseDoubleValueSpanParticleModifier;->onSetInitialValues(Lorg/andengine/entity/particle/Particle;FF)V

    .line 56
    return-void
.end method

.method protected abstract onSetInitialValues(Lorg/andengine/entity/particle/Particle;FF)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/entity/particle/Particle",
            "<TT;>;FF)V"
        }
    .end annotation
.end method

.method protected onSetValue(Lorg/andengine/entity/particle/Particle;FF)V
    .locals 2
    .parameter
    .parameter "pPercentageDone"
    .parameter "pValueA"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/entity/particle/Particle",
            "<TT;>;FF)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, this:Lorg/andengine/entity/particle/modifier/BaseDoubleValueSpanParticleModifier;,"Lorg/andengine/entity/particle/modifier/BaseDoubleValueSpanParticleModifier<TT;>;"
    .local p1, pParticle:Lorg/andengine/entity/particle/Particle;,"Lorg/andengine/entity/particle/Particle<TT;>;"
    iget v0, p0, Lorg/andengine/entity/particle/modifier/BaseDoubleValueSpanParticleModifier;->mFromValueB:F

    iget v1, p0, Lorg/andengine/entity/particle/modifier/BaseDoubleValueSpanParticleModifier;->mValueSpanB:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/andengine/entity/particle/modifier/BaseDoubleValueSpanParticleModifier;->onSetValues(Lorg/andengine/entity/particle/Particle;FFF)V

    .line 61
    return-void
.end method

.method protected abstract onSetValues(Lorg/andengine/entity/particle/Particle;FFF)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/entity/particle/Particle",
            "<TT;>;FFF)V"
        }
    .end annotation
.end method

.method public reset(FFFF)V
    .locals 0
    .parameter "pFromValue"
    .parameter "pToValue"
    .parameter "pFromTime"
    .parameter "pToTime"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 66
    .local p0, this:Lorg/andengine/entity/particle/modifier/BaseDoubleValueSpanParticleModifier;,"Lorg/andengine/entity/particle/modifier/BaseDoubleValueSpanParticleModifier<TT;>;"
    invoke-super {p0, p1, p2, p3, p4}, Lorg/andengine/entity/particle/modifier/BaseSingleValueSpanParticleModifier;->reset(FFFF)V

    .line 67
    return-void
.end method

.method public reset(FFFFFF)V
    .locals 1
    .parameter "pFromValueA"
    .parameter "pToValueA"
    .parameter "pFromValueB"
    .parameter "pToValueB"
    .parameter "pFromTime"
    .parameter "pToTime"

    .prologue
    .line 74
    .local p0, this:Lorg/andengine/entity/particle/modifier/BaseDoubleValueSpanParticleModifier;,"Lorg/andengine/entity/particle/modifier/BaseDoubleValueSpanParticleModifier<TT;>;"
    invoke-super {p0, p1, p2, p5, p6}, Lorg/andengine/entity/particle/modifier/BaseSingleValueSpanParticleModifier;->reset(FFFF)V

    .line 76
    iput p3, p0, Lorg/andengine/entity/particle/modifier/BaseDoubleValueSpanParticleModifier;->mFromValueB:F

    .line 77
    sub-float v0, p4, p3

    iput v0, p0, Lorg/andengine/entity/particle/modifier/BaseDoubleValueSpanParticleModifier;->mValueSpanB:F

    .line 78
    return-void
.end method
