.class public abstract Lorg/andengine/entity/particle/modifier/BaseSingleValueSpanParticleModifier;
.super Ljava/lang/Object;
.source "BaseSingleValueSpanParticleModifier.java"

# interfaces
.implements Lorg/andengine/entity/particle/modifier/IParticleModifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/andengine/entity/IEntity;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/andengine/entity/particle/modifier/IParticleModifier",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mDuration:F

.field private final mEaseFunction:Lorg/andengine/util/modifier/ease/IEaseFunction;

.field private mFromTime:F

.field private mFromValue:F

.field private mToTime:F

.field private mValueSpan:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 6
    .parameter "pFromTime"
    .parameter "pToTime"
    .parameter "pFromValue"
    .parameter "pToValue"

    .prologue
    .line 38
    .local p0, this:Lorg/andengine/entity/particle/modifier/BaseSingleValueSpanParticleModifier;,"Lorg/andengine/entity/particle/modifier/BaseSingleValueSpanParticleModifier<TT;>;"
    invoke-static {}, Lorg/andengine/util/modifier/ease/EaseLinear;->getInstance()Lorg/andengine/util/modifier/ease/EaseLinear;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/andengine/entity/particle/modifier/BaseSingleValueSpanParticleModifier;-><init>(FFFFLorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 39
    return-void
.end method

.method public constructor <init>(FFFFLorg/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 1
    .parameter "pFromTime"
    .parameter "pToTime"
    .parameter "pFromValue"
    .parameter "pToValue"
    .parameter "pEaseFunction"

    .prologue
    .line 41
    .local p0, this:Lorg/andengine/entity/particle/modifier/BaseSingleValueSpanParticleModifier;,"Lorg/andengine/entity/particle/modifier/BaseSingleValueSpanParticleModifier<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Lorg/andengine/entity/particle/modifier/BaseSingleValueSpanParticleModifier;->mFromTime:F

    .line 43
    iput p2, p0, Lorg/andengine/entity/particle/modifier/BaseSingleValueSpanParticleModifier;->mToTime:F

    .line 44
    sub-float v0, p2, p1

    iput v0, p0, Lorg/andengine/entity/particle/modifier/BaseSingleValueSpanParticleModifier;->mDuration:F

    .line 46
    iput p3, p0, Lorg/andengine/entity/particle/modifier/BaseSingleValueSpanParticleModifier;->mFromValue:F

    .line 47
    sub-float v0, p4, p3

    iput v0, p0, Lorg/andengine/entity/particle/modifier/BaseSingleValueSpanParticleModifier;->mValueSpan:F

    .line 49
    iput-object p5, p0, Lorg/andengine/entity/particle/modifier/BaseSingleValueSpanParticleModifier;->mEaseFunction:Lorg/andengine/util/modifier/ease/IEaseFunction;

    .line 50
    return-void
.end method


# virtual methods
.method public onInitializeParticle(Lorg/andengine/entity/particle/Particle;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/entity/particle/Particle",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, this:Lorg/andengine/entity/particle/modifier/BaseSingleValueSpanParticleModifier;,"Lorg/andengine/entity/particle/modifier/BaseSingleValueSpanParticleModifier<TT;>;"
    .local p1, pParticle:Lorg/andengine/entity/particle/Particle;,"Lorg/andengine/entity/particle/Particle<TT;>;"
    iget v0, p0, Lorg/andengine/entity/particle/modifier/BaseSingleValueSpanParticleModifier;->mFromValue:F

    invoke-virtual {p0, p1, v0}, Lorg/andengine/entity/particle/modifier/BaseSingleValueSpanParticleModifier;->onSetInitialValue(Lorg/andengine/entity/particle/Particle;F)V

    .line 66
    return-void
.end method

.method protected abstract onSetInitialValue(Lorg/andengine/entity/particle/Particle;F)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/entity/particle/Particle",
            "<TT;>;F)V"
        }
    .end annotation
.end method

.method protected abstract onSetValue(Lorg/andengine/entity/particle/Particle;FF)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/entity/particle/Particle",
            "<TT;>;FF)V"
        }
    .end annotation
.end method

.method public onUpdateParticle(Lorg/andengine/entity/particle/Particle;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/entity/particle/Particle",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, this:Lorg/andengine/entity/particle/modifier/BaseSingleValueSpanParticleModifier;,"Lorg/andengine/entity/particle/modifier/BaseSingleValueSpanParticleModifier<TT;>;"
    .local p1, pParticle:Lorg/andengine/entity/particle/Particle;,"Lorg/andengine/entity/particle/Particle<TT;>;"
    invoke-virtual {p1}, Lorg/andengine/entity/particle/Particle;->getLifeTime()F

    move-result v0

    .line 71
    .local v0, lifeTime:F
    iget v2, p0, Lorg/andengine/entity/particle/modifier/BaseSingleValueSpanParticleModifier;->mFromTime:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    iget v2, p0, Lorg/andengine/entity/particle/modifier/BaseSingleValueSpanParticleModifier;->mToTime:F

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    .line 72
    iget-object v2, p0, Lorg/andengine/entity/particle/modifier/BaseSingleValueSpanParticleModifier;->mEaseFunction:Lorg/andengine/util/modifier/ease/IEaseFunction;

    iget v3, p0, Lorg/andengine/entity/particle/modifier/BaseSingleValueSpanParticleModifier;->mFromTime:F

    sub-float v3, v0, v3

    iget v4, p0, Lorg/andengine/entity/particle/modifier/BaseSingleValueSpanParticleModifier;->mDuration:F

    invoke-interface {v2, v3, v4}, Lorg/andengine/util/modifier/ease/IEaseFunction;->getPercentage(FF)F

    move-result v1

    .line 73
    .local v1, percentageDone:F
    iget v2, p0, Lorg/andengine/entity/particle/modifier/BaseSingleValueSpanParticleModifier;->mFromValue:F

    iget v3, p0, Lorg/andengine/entity/particle/modifier/BaseSingleValueSpanParticleModifier;->mValueSpan:F

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    invoke-virtual {p0, p1, v1, v2}, Lorg/andengine/entity/particle/modifier/BaseSingleValueSpanParticleModifier;->onSetValue(Lorg/andengine/entity/particle/Particle;FF)V

    .line 75
    .end local v1           #percentageDone:F
    :cond_0
    return-void
.end method

.method public reset(FFFF)V
    .locals 1
    .parameter "pFromValue"
    .parameter "pToValue"
    .parameter "pFromTime"
    .parameter "pToTime"

    .prologue
    .line 82
    .local p0, this:Lorg/andengine/entity/particle/modifier/BaseSingleValueSpanParticleModifier;,"Lorg/andengine/entity/particle/modifier/BaseSingleValueSpanParticleModifier<TT;>;"
    iput p1, p0, Lorg/andengine/entity/particle/modifier/BaseSingleValueSpanParticleModifier;->mFromValue:F

    .line 83
    iput p3, p0, Lorg/andengine/entity/particle/modifier/BaseSingleValueSpanParticleModifier;->mFromTime:F

    .line 84
    iput p4, p0, Lorg/andengine/entity/particle/modifier/BaseSingleValueSpanParticleModifier;->mToTime:F

    .line 86
    sub-float v0, p2, p1

    iput v0, p0, Lorg/andengine/entity/particle/modifier/BaseSingleValueSpanParticleModifier;->mValueSpan:F

    .line 87
    sub-float v0, p4, p3

    iput v0, p0, Lorg/andengine/entity/particle/modifier/BaseSingleValueSpanParticleModifier;->mDuration:F

    .line 88
    return-void
.end method
