.class public Lorg/andengine/entity/particle/initializer/RotationParticleInitializer;
.super Lorg/andengine/entity/particle/initializer/BaseSingleValueParticleInitializer;
.source "RotationParticleInitializer.java"


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


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .parameter "pRotation"

    .prologue
    .line 27
    .local p0, this:Lorg/andengine/entity/particle/initializer/RotationParticleInitializer;,"Lorg/andengine/entity/particle/initializer/RotationParticleInitializer<TT;>;"
    invoke-direct {p0, p1, p1}, Lorg/andengine/entity/particle/initializer/RotationParticleInitializer;-><init>(FF)V

    .line 28
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0
    .parameter "pMinRotation"
    .parameter "pMaxRotation"

    .prologue
    .line 31
    .local p0, this:Lorg/andengine/entity/particle/initializer/RotationParticleInitializer;,"Lorg/andengine/entity/particle/initializer/RotationParticleInitializer<TT;>;"
    invoke-direct {p0, p1, p2}, Lorg/andengine/entity/particle/initializer/BaseSingleValueParticleInitializer;-><init>(FF)V

    .line 32
    return-void
.end method


# virtual methods
.method public getMaxRotation()F
    .locals 1

    .prologue
    .line 43
    .local p0, this:Lorg/andengine/entity/particle/initializer/RotationParticleInitializer;,"Lorg/andengine/entity/particle/initializer/RotationParticleInitializer<TT;>;"
    iget v0, p0, Lorg/andengine/entity/particle/initializer/RotationParticleInitializer;->mMaxValue:F

    return v0
.end method

.method public getMinRotation()F
    .locals 1

    .prologue
    .line 39
    .local p0, this:Lorg/andengine/entity/particle/initializer/RotationParticleInitializer;,"Lorg/andengine/entity/particle/initializer/RotationParticleInitializer<TT;>;"
    iget v0, p0, Lorg/andengine/entity/particle/initializer/RotationParticleInitializer;->mMinValue:F

    return v0
.end method

.method public onInitializeParticle(Lorg/andengine/entity/particle/Particle;F)V
    .locals 1
    .parameter
    .parameter "pRotation"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/entity/particle/Particle",
            "<TT;>;F)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, this:Lorg/andengine/entity/particle/initializer/RotationParticleInitializer;,"Lorg/andengine/entity/particle/initializer/RotationParticleInitializer<TT;>;"
    .local p1, pParticle:Lorg/andengine/entity/particle/Particle;,"Lorg/andengine/entity/particle/Particle<TT;>;"
    invoke-virtual {p1}, Lorg/andengine/entity/particle/Particle;->getEntity()Lorg/andengine/entity/IEntity;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/andengine/entity/IEntity;->setRotation(F)V

    .line 63
    return-void
.end method

.method public setRotation(F)V
    .locals 0
    .parameter "pRotation"

    .prologue
    .line 47
    .local p0, this:Lorg/andengine/entity/particle/initializer/RotationParticleInitializer;,"Lorg/andengine/entity/particle/initializer/RotationParticleInitializer<TT;>;"
    iput p1, p0, Lorg/andengine/entity/particle/initializer/RotationParticleInitializer;->mMinValue:F

    .line 48
    iput p1, p0, Lorg/andengine/entity/particle/initializer/RotationParticleInitializer;->mMaxValue:F

    .line 49
    return-void
.end method

.method public setRotation(FF)V
    .locals 0
    .parameter "pMinRotation"
    .parameter "pMaxRotation"

    .prologue
    .line 52
    .local p0, this:Lorg/andengine/entity/particle/initializer/RotationParticleInitializer;,"Lorg/andengine/entity/particle/initializer/RotationParticleInitializer<TT;>;"
    iput p1, p0, Lorg/andengine/entity/particle/initializer/RotationParticleInitializer;->mMinValue:F

    .line 53
    iput p2, p0, Lorg/andengine/entity/particle/initializer/RotationParticleInitializer;->mMaxValue:F

    .line 54
    return-void
.end method
