.class public abstract Lorg/andengine/entity/particle/initializer/BaseSingleValueParticleInitializer;
.super Ljava/lang/Object;
.source "BaseSingleValueParticleInitializer.java"

# interfaces
.implements Lorg/andengine/entity/particle/initializer/IParticleInitializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/andengine/entity/IEntity;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/andengine/entity/particle/initializer/IParticleInitializer",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected mMaxValue:F

.field protected mMinValue:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .parameter "pMinValue"
    .parameter "pMaxValue"

    .prologue
    .line 30
    .local p0, this:Lorg/andengine/entity/particle/initializer/BaseSingleValueParticleInitializer;,"Lorg/andengine/entity/particle/initializer/BaseSingleValueParticleInitializer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lorg/andengine/entity/particle/initializer/BaseSingleValueParticleInitializer;->mMinValue:F

    .line 32
    iput p2, p0, Lorg/andengine/entity/particle/initializer/BaseSingleValueParticleInitializer;->mMaxValue:F

    .line 33
    return-void
.end method


# virtual methods
.method protected getRandomValue()F
    .locals 2

    .prologue
    .line 55
    .local p0, this:Lorg/andengine/entity/particle/initializer/BaseSingleValueParticleInitializer;,"Lorg/andengine/entity/particle/initializer/BaseSingleValueParticleInitializer<TT;>;"
    iget v0, p0, Lorg/andengine/entity/particle/initializer/BaseSingleValueParticleInitializer;->mMinValue:F

    iget v1, p0, Lorg/andengine/entity/particle/initializer/BaseSingleValueParticleInitializer;->mMaxValue:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 56
    iget v0, p0, Lorg/andengine/entity/particle/initializer/BaseSingleValueParticleInitializer;->mMaxValue:F

    .line 58
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/andengine/entity/particle/initializer/BaseSingleValueParticleInitializer;->mMinValue:F

    iget v1, p0, Lorg/andengine/entity/particle/initializer/BaseSingleValueParticleInitializer;->mMaxValue:F

    invoke-static {v0, v1}, Lorg/andengine/util/math/MathUtils;->random(FF)F

    move-result v0

    goto :goto_0
.end method

.method public final onInitializeParticle(Lorg/andengine/entity/particle/Particle;)V
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
    .line 47
    .local p0, this:Lorg/andengine/entity/particle/initializer/BaseSingleValueParticleInitializer;,"Lorg/andengine/entity/particle/initializer/BaseSingleValueParticleInitializer<TT;>;"
    .local p1, pParticle:Lorg/andengine/entity/particle/Particle;,"Lorg/andengine/entity/particle/Particle<TT;>;"
    invoke-virtual {p0}, Lorg/andengine/entity/particle/initializer/BaseSingleValueParticleInitializer;->getRandomValue()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/andengine/entity/particle/initializer/BaseSingleValueParticleInitializer;->onInitializeParticle(Lorg/andengine/entity/particle/Particle;F)V

    .line 48
    return-void
.end method

.method protected abstract onInitializeParticle(Lorg/andengine/entity/particle/Particle;F)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/entity/particle/Particle",
            "<TT;>;F)V"
        }
    .end annotation
.end method
