.class public abstract Lorg/andengine/entity/particle/modifier/BaseTripleValueSpanParticleModifier;
.super Lorg/andengine/entity/particle/modifier/BaseDoubleValueSpanParticleModifier;
.source "BaseTripleValueSpanParticleModifier.java"


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


# instance fields
.field private mFromValueC:F

.field private mValueSpanC:F


# direct methods
.method public constructor <init>(FFFFFFFF)V
    .locals 10
    .parameter "pFromTime"
    .parameter "pToTime"
    .parameter "pFromValueA"
    .parameter "pToValueA"
    .parameter "pFromValueB"
    .parameter "pToValueB"
    .parameter "pFromValueC"
    .parameter "pToValueC"

    .prologue
    .line 32
    .local p0, this:Lorg/andengine/entity/particle/modifier/BaseTripleValueSpanParticleModifier;,"Lorg/andengine/entity/particle/modifier/BaseTripleValueSpanParticleModifier<TT;>;"
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

    invoke-direct/range {v0 .. v9}, Lorg/andengine/entity/particle/modifier/BaseTripleValueSpanParticleModifier;-><init>(FFFFFFFFLorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 33
    return-void
.end method

.method public constructor <init>(FFFFFFFFLorg/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 8
    .parameter "pFromTime"
    .parameter "pToTime"
    .parameter "pFromValueA"
    .parameter "pToValueA"
    .parameter "pFromValueB"
    .parameter "pToValueB"
    .parameter "pFromValueC"
    .parameter "pToValueC"
    .parameter "pEaseFunction"

    .prologue
    .line 36
    .local p0, this:Lorg/andengine/entity/particle/modifier/BaseTripleValueSpanParticleModifier;,"Lorg/andengine/entity/particle/modifier/BaseTripleValueSpanParticleModifier<TT;>;"
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Lorg/andengine/entity/particle/modifier/BaseDoubleValueSpanParticleModifier;-><init>(FFFFFFLorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 38
    iput p7, p0, Lorg/andengine/entity/particle/modifier/BaseTripleValueSpanParticleModifier;->mFromValueC:F

    .line 39
    sub-float v0, p8, p7

    iput v0, p0, Lorg/andengine/entity/particle/modifier/BaseTripleValueSpanParticleModifier;->mValueSpanC:F

    .line 40
    return-void
.end method


# virtual methods
.method public onSetInitialValues(Lorg/andengine/entity/particle/Particle;FF)V
    .locals 1
    .parameter
    .parameter "pValueA"
    .parameter "pValueB"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/entity/particle/Particle",
            "<TT;>;FF)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, this:Lorg/andengine/entity/particle/modifier/BaseTripleValueSpanParticleModifier;,"Lorg/andengine/entity/particle/modifier/BaseTripleValueSpanParticleModifier<TT;>;"
    .local p1, pParticle:Lorg/andengine/entity/particle/Particle;,"Lorg/andengine/entity/particle/Particle<TT;>;"
    iget v0, p0, Lorg/andengine/entity/particle/modifier/BaseTripleValueSpanParticleModifier;->mFromValueC:F

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/andengine/entity/particle/modifier/BaseTripleValueSpanParticleModifier;->onSetInitialValues(Lorg/andengine/entity/particle/Particle;FFF)V

    .line 56
    return-void
.end method

.method protected abstract onSetInitialValues(Lorg/andengine/entity/particle/Particle;FFF)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/entity/particle/Particle",
            "<TT;>;FFF)V"
        }
    .end annotation
.end method

.method protected onSetValues(Lorg/andengine/entity/particle/Particle;FFF)V
    .locals 6
    .parameter
    .parameter "pPercentageDone"
    .parameter "pValueA"
    .parameter "pValueB"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/entity/particle/Particle",
            "<TT;>;FFF)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, this:Lorg/andengine/entity/particle/modifier/BaseTripleValueSpanParticleModifier;,"Lorg/andengine/entity/particle/modifier/BaseTripleValueSpanParticleModifier<TT;>;"
    .local p1, pParticle:Lorg/andengine/entity/particle/Particle;,"Lorg/andengine/entity/particle/Particle<TT;>;"
    iget v0, p0, Lorg/andengine/entity/particle/modifier/BaseTripleValueSpanParticleModifier;->mFromValueC:F

    iget v1, p0, Lorg/andengine/entity/particle/modifier/BaseTripleValueSpanParticleModifier;->mValueSpanC:F

    mul-float/2addr v1, p2

    add-float v5, v0, v1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/andengine/entity/particle/modifier/BaseTripleValueSpanParticleModifier;->onSetValues(Lorg/andengine/entity/particle/Particle;FFFF)V

    .line 61
    return-void
.end method

.method protected abstract onSetValues(Lorg/andengine/entity/particle/Particle;FFFF)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/entity/particle/Particle",
            "<TT;>;FFFF)V"
        }
    .end annotation
.end method

.method public reset(FFFFFF)V
    .locals 0
    .parameter "pFromValueA"
    .parameter "pToValueA"
    .parameter "pFromValueB"
    .parameter "pToValueB"
    .parameter "pFromTime"
    .parameter "pToTime"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 66
    .local p0, this:Lorg/andengine/entity/particle/modifier/BaseTripleValueSpanParticleModifier;,"Lorg/andengine/entity/particle/modifier/BaseTripleValueSpanParticleModifier<TT;>;"
    invoke-super/range {p0 .. p6}, Lorg/andengine/entity/particle/modifier/BaseDoubleValueSpanParticleModifier;->reset(FFFFFF)V

    .line 67
    return-void
.end method

.method public reset(FFFFFFFF)V
    .locals 7
    .parameter "pFromValueA"
    .parameter "pToValueA"
    .parameter "pFromValueB"
    .parameter "pToValueB"
    .parameter "pFromValueC"
    .parameter "pToValueC"
    .parameter "pFromTime"
    .parameter "pToTime"

    .prologue
    .line 74
    .local p0, this:Lorg/andengine/entity/particle/modifier/BaseTripleValueSpanParticleModifier;,"Lorg/andengine/entity/particle/modifier/BaseTripleValueSpanParticleModifier<TT;>;"
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p7

    move v6, p8

    invoke-super/range {v0 .. v6}, Lorg/andengine/entity/particle/modifier/BaseDoubleValueSpanParticleModifier;->reset(FFFFFF)V

    .line 76
    iput p5, p0, Lorg/andengine/entity/particle/modifier/BaseTripleValueSpanParticleModifier;->mFromValueC:F

    .line 77
    sub-float v0, p6, p5

    iput v0, p0, Lorg/andengine/entity/particle/modifier/BaseTripleValueSpanParticleModifier;->mValueSpanC:F

    .line 78
    return-void
.end method
