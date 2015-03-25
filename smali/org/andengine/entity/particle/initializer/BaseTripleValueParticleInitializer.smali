.class public abstract Lorg/andengine/entity/particle/initializer/BaseTripleValueParticleInitializer;
.super Lorg/andengine/entity/particle/initializer/BaseDoubleValueParticleInitializer;
.source "BaseTripleValueParticleInitializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/andengine/entity/IEntity;",
        ">",
        "Lorg/andengine/entity/particle/initializer/BaseDoubleValueParticleInitializer",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected mMaxValueC:F

.field protected mMinValueC:F


# direct methods
.method public constructor <init>(FFFFFF)V
    .locals 0
    .parameter "pMinValueA"
    .parameter "pMaxValueA"
    .parameter "pMinValueB"
    .parameter "pMaxValueB"
    .parameter "pMinValueC"
    .parameter "pMaxValueC"

    .prologue
    .line 31
    .local p0, this:Lorg/andengine/entity/particle/initializer/BaseTripleValueParticleInitializer;,"Lorg/andengine/entity/particle/initializer/BaseTripleValueParticleInitializer<TT;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/andengine/entity/particle/initializer/BaseDoubleValueParticleInitializer;-><init>(FFFF)V

    .line 32
    iput p5, p0, Lorg/andengine/entity/particle/initializer/BaseTripleValueParticleInitializer;->mMinValueC:F

    .line 33
    iput p6, p0, Lorg/andengine/entity/particle/initializer/BaseTripleValueParticleInitializer;->mMaxValueC:F

    .line 34
    return-void
.end method


# virtual methods
.method protected getRandomValueC()F
    .locals 2

    .prologue
    .line 56
    .local p0, this:Lorg/andengine/entity/particle/initializer/BaseTripleValueParticleInitializer;,"Lorg/andengine/entity/particle/initializer/BaseTripleValueParticleInitializer<TT;>;"
    iget v0, p0, Lorg/andengine/entity/particle/initializer/BaseTripleValueParticleInitializer;->mMinValueC:F

    iget v1, p0, Lorg/andengine/entity/particle/initializer/BaseTripleValueParticleInitializer;->mMaxValueC:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 57
    iget v0, p0, Lorg/andengine/entity/particle/initializer/BaseTripleValueParticleInitializer;->mMaxValueC:F

    .line 59
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/andengine/entity/particle/initializer/BaseTripleValueParticleInitializer;->mMinValueC:F

    iget v1, p0, Lorg/andengine/entity/particle/initializer/BaseTripleValueParticleInitializer;->mMaxValueC:F

    invoke-static {v0, v1}, Lorg/andengine/util/math/MathUtils;->random(FF)F

    move-result v0

    goto :goto_0
.end method

.method protected final onInitializeParticle(Lorg/andengine/entity/particle/Particle;FF)V
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
    .line 48
    .local p0, this:Lorg/andengine/entity/particle/initializer/BaseTripleValueParticleInitializer;,"Lorg/andengine/entity/particle/initializer/BaseTripleValueParticleInitializer<TT;>;"
    .local p1, pParticle:Lorg/andengine/entity/particle/Particle;,"Lorg/andengine/entity/particle/Particle<TT;>;"
    invoke-virtual {p0}, Lorg/andengine/entity/particle/initializer/BaseTripleValueParticleInitializer;->getRandomValueC()F

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/andengine/entity/particle/initializer/BaseTripleValueParticleInitializer;->onInitializeParticle(Lorg/andengine/entity/particle/Particle;FFF)V

    .line 49
    return-void
.end method

.method protected abstract onInitializeParticle(Lorg/andengine/entity/particle/Particle;FFF)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/entity/particle/Particle",
            "<TT;>;FFF)V"
        }
    .end annotation
.end method
