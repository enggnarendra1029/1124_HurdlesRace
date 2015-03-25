.class public Lorg/andengine/entity/particle/initializer/VelocityParticleInitializer;
.super Lorg/andengine/entity/particle/initializer/BaseDoubleValueParticleInitializer;
.source "VelocityParticleInitializer.java"


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


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .parameter "pVelocity"

    .prologue
    .line 27
    .local p0, this:Lorg/andengine/entity/particle/initializer/VelocityParticleInitializer;,"Lorg/andengine/entity/particle/initializer/VelocityParticleInitializer<TT;>;"
    invoke-direct {p0, p1, p1, p1, p1}, Lorg/andengine/entity/particle/initializer/VelocityParticleInitializer;-><init>(FFFF)V

    .line 28
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0
    .parameter "pVelocityX"
    .parameter "pVelocityY"

    .prologue
    .line 31
    .local p0, this:Lorg/andengine/entity/particle/initializer/VelocityParticleInitializer;,"Lorg/andengine/entity/particle/initializer/VelocityParticleInitializer<TT;>;"
    invoke-direct {p0, p1, p1, p2, p2}, Lorg/andengine/entity/particle/initializer/VelocityParticleInitializer;-><init>(FFFF)V

    .line 32
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .parameter "pMinVelocityX"
    .parameter "pMaxVelocityX"
    .parameter "pMinVelocityY"
    .parameter "pMaxVelocityY"

    .prologue
    .line 35
    .local p0, this:Lorg/andengine/entity/particle/initializer/VelocityParticleInitializer;,"Lorg/andengine/entity/particle/initializer/VelocityParticleInitializer<TT;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/andengine/entity/particle/initializer/BaseDoubleValueParticleInitializer;-><init>(FFFF)V

    .line 36
    return-void
.end method


# virtual methods
.method public getMaxVelocityX()F
    .locals 1

    .prologue
    .line 47
    .local p0, this:Lorg/andengine/entity/particle/initializer/VelocityParticleInitializer;,"Lorg/andengine/entity/particle/initializer/VelocityParticleInitializer<TT;>;"
    iget v0, p0, Lorg/andengine/entity/particle/initializer/VelocityParticleInitializer;->mMaxValue:F

    return v0
.end method

.method public getMaxVelocityY()F
    .locals 1

    .prologue
    .line 55
    .local p0, this:Lorg/andengine/entity/particle/initializer/VelocityParticleInitializer;,"Lorg/andengine/entity/particle/initializer/VelocityParticleInitializer<TT;>;"
    iget v0, p0, Lorg/andengine/entity/particle/initializer/VelocityParticleInitializer;->mMaxValueB:F

    return v0
.end method

.method public getMinVelocityX()F
    .locals 1

    .prologue
    .line 43
    .local p0, this:Lorg/andengine/entity/particle/initializer/VelocityParticleInitializer;,"Lorg/andengine/entity/particle/initializer/VelocityParticleInitializer<TT;>;"
    iget v0, p0, Lorg/andengine/entity/particle/initializer/VelocityParticleInitializer;->mMinValue:F

    return v0
.end method

.method public getMinVelocityY()F
    .locals 1

    .prologue
    .line 51
    .local p0, this:Lorg/andengine/entity/particle/initializer/VelocityParticleInitializer;,"Lorg/andengine/entity/particle/initializer/VelocityParticleInitializer<TT;>;"
    iget v0, p0, Lorg/andengine/entity/particle/initializer/VelocityParticleInitializer;->mMinValueB:F

    return v0
.end method

.method public onInitializeParticle(Lorg/andengine/entity/particle/Particle;FF)V
    .locals 1
    .parameter
    .parameter "pVelocityX"
    .parameter "pVelocityY"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/entity/particle/Particle",
            "<TT;>;FF)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, this:Lorg/andengine/entity/particle/initializer/VelocityParticleInitializer;,"Lorg/andengine/entity/particle/initializer/VelocityParticleInitializer<TT;>;"
    .local p1, pParticle:Lorg/andengine/entity/particle/Particle;,"Lorg/andengine/entity/particle/Particle<TT;>;"
    invoke-virtual {p1}, Lorg/andengine/entity/particle/Particle;->getPhysicsHandler()Lorg/andengine/engine/handler/physics/PhysicsHandler;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/andengine/engine/handler/physics/PhysicsHandler;->setVelocity(FF)V

    .line 92
    return-void
.end method

.method public setVelocity(FFFF)V
    .locals 0
    .parameter "pMinVelocityX"
    .parameter "pMaxVelocityX"
    .parameter "pMinVelocityY"
    .parameter "pMaxVelocityY"

    .prologue
    .line 79
    .local p0, this:Lorg/andengine/entity/particle/initializer/VelocityParticleInitializer;,"Lorg/andengine/entity/particle/initializer/VelocityParticleInitializer<TT;>;"
    iput p1, p0, Lorg/andengine/entity/particle/initializer/VelocityParticleInitializer;->mMinValue:F

    .line 80
    iput p2, p0, Lorg/andengine/entity/particle/initializer/VelocityParticleInitializer;->mMaxValue:F

    .line 81
    iput p3, p0, Lorg/andengine/entity/particle/initializer/VelocityParticleInitializer;->mMinValueB:F

    .line 82
    iput p4, p0, Lorg/andengine/entity/particle/initializer/VelocityParticleInitializer;->mMaxValueB:F

    .line 83
    return-void
.end method

.method public setVelocityX(F)V
    .locals 0
    .parameter "pVelocityX"

    .prologue
    .line 59
    .local p0, this:Lorg/andengine/entity/particle/initializer/VelocityParticleInitializer;,"Lorg/andengine/entity/particle/initializer/VelocityParticleInitializer<TT;>;"
    iput p1, p0, Lorg/andengine/entity/particle/initializer/VelocityParticleInitializer;->mMinValue:F

    .line 60
    iput p1, p0, Lorg/andengine/entity/particle/initializer/VelocityParticleInitializer;->mMaxValue:F

    .line 61
    return-void
.end method

.method public setVelocityX(FF)V
    .locals 0
    .parameter "pMinVelocityX"
    .parameter "pMaxVelocityX"

    .prologue
    .line 69
    .local p0, this:Lorg/andengine/entity/particle/initializer/VelocityParticleInitializer;,"Lorg/andengine/entity/particle/initializer/VelocityParticleInitializer<TT;>;"
    iput p1, p0, Lorg/andengine/entity/particle/initializer/VelocityParticleInitializer;->mMinValue:F

    .line 70
    iput p2, p0, Lorg/andengine/entity/particle/initializer/VelocityParticleInitializer;->mMaxValue:F

    .line 71
    return-void
.end method

.method public setVelocityY(F)V
    .locals 0
    .parameter "pVelocityY"

    .prologue
    .line 64
    .local p0, this:Lorg/andengine/entity/particle/initializer/VelocityParticleInitializer;,"Lorg/andengine/entity/particle/initializer/VelocityParticleInitializer<TT;>;"
    iput p1, p0, Lorg/andengine/entity/particle/initializer/VelocityParticleInitializer;->mMinValueB:F

    .line 65
    iput p1, p0, Lorg/andengine/entity/particle/initializer/VelocityParticleInitializer;->mMaxValueB:F

    .line 66
    return-void
.end method

.method public setVelocityY(FF)V
    .locals 0
    .parameter "pMinVelocityY"
    .parameter "pMaxVelocityY"

    .prologue
    .line 74
    .local p0, this:Lorg/andengine/entity/particle/initializer/VelocityParticleInitializer;,"Lorg/andengine/entity/particle/initializer/VelocityParticleInitializer<TT;>;"
    iput p1, p0, Lorg/andengine/entity/particle/initializer/VelocityParticleInitializer;->mMinValueB:F

    .line 75
    iput p2, p0, Lorg/andengine/entity/particle/initializer/VelocityParticleInitializer;->mMaxValueB:F

    .line 76
    return-void
.end method
