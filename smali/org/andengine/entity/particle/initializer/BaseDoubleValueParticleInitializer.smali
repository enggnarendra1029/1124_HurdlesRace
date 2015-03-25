.class public abstract Lorg/andengine/entity/particle/initializer/BaseDoubleValueParticleInitializer;
.super Lorg/andengine/entity/particle/initializer/BaseSingleValueParticleInitializer;
.source "BaseDoubleValueParticleInitializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/andengine/entity/IEntity;",
        ">",
        "Lorg/andengine/entity/particle/initializer/BaseSingleValueParticleInitializer",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected mMaxValueB:F

.field protected mMinValueB:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0
    .parameter "pMinValueA"
    .parameter "pMaxValueA"
    .parameter "pMinValueB"
    .parameter "pMaxValueB"

    .prologue
    .line 31
    .local p0, this:Lorg/andengine/entity/particle/initializer/BaseDoubleValueParticleInitializer;,"Lorg/andengine/entity/particle/initializer/BaseDoubleValueParticleInitializer<TT;>;"
    invoke-direct {p0, p1, p2}, Lorg/andengine/entity/particle/initializer/BaseSingleValueParticleInitializer;-><init>(FF)V

    .line 32
    iput p3, p0, Lorg/andengine/entity/particle/initializer/BaseDoubleValueParticleInitializer;->mMinValueB:F

    .line 33
    iput p4, p0, Lorg/andengine/entity/particle/initializer/BaseDoubleValueParticleInitializer;->mMaxValueB:F

    .line 34
    return-void
.end method


# virtual methods
.method protected getRandomValueB()F
    .locals 2

    .prologue
    .line 56
    .local p0, this:Lorg/andengine/entity/particle/initializer/BaseDoubleValueParticleInitializer;,"Lorg/andengine/entity/particle/initializer/BaseDoubleValueParticleInitializer<TT;>;"
    iget v0, p0, Lorg/andengine/entity/particle/initializer/BaseDoubleValueParticleInitializer;->mMinValueB:F

    iget v1, p0, Lorg/andengine/entity/particle/initializer/BaseDoubleValueParticleInitializer;->mMaxValueB:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 57
    iget v0, p0, Lorg/andengine/entity/particle/initializer/BaseDoubleValueParticleInitializer;->mMaxValueB:F

    .line 59
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/andengine/entity/particle/initializer/BaseDoubleValueParticleInitializer;->mMinValueB:F

    iget v1, p0, Lorg/andengine/entity/particle/initializer/BaseDoubleValueParticleInitializer;->mMaxValueB:F

    invoke-static {v0, v1}, Lorg/andengine/util/math/MathUtils;->random(FF)F

    move-result v0

    goto :goto_0
.end method

.method protected final onInitializeParticle(Lorg/andengine/entity/particle/Particle;F)V
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
    .line 48
    .local p0, this:Lorg/andengine/entity/particle/initializer/BaseDoubleValueParticleInitializer;,"Lorg/andengine/entity/particle/initializer/BaseDoubleValueParticleInitializer<TT;>;"
    .local p1, pParticle:Lorg/andengine/entity/particle/Particle;,"Lorg/andengine/entity/particle/Particle<TT;>;"
    invoke-virtual {p0}, Lorg/andengine/entity/particle/initializer/BaseDoubleValueParticleInitializer;->getRandomValueB()F

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/andengine/entity/particle/initializer/BaseDoubleValueParticleInitializer;->onInitializeParticle(Lorg/andengine/entity/particle/Particle;FF)V

    .line 49
    return-void
.end method

.method protected abstract onInitializeParticle(Lorg/andengine/entity/particle/Particle;FF)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/entity/particle/Particle",
            "<TT;>;FF)V"
        }
    .end annotation
.end method
