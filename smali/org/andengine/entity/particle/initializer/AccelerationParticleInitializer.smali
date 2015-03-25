.class public Lorg/andengine/entity/particle/initializer/AccelerationParticleInitializer;
.super Lorg/andengine/entity/particle/initializer/BaseDoubleValueParticleInitializer;
.source "AccelerationParticleInitializer.java"


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
    .parameter "pAcceleration"

    .prologue
    .line 27
    .local p0, this:Lorg/andengine/entity/particle/initializer/AccelerationParticleInitializer;,"Lorg/andengine/entity/particle/initializer/AccelerationParticleInitializer<TT;>;"
    invoke-direct {p0, p1, p1}, Lorg/andengine/entity/particle/initializer/AccelerationParticleInitializer;-><init>(FF)V

    .line 28
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0
    .parameter "pAccelerationX"
    .parameter "pAccelerationY"

    .prologue
    .line 31
    .local p0, this:Lorg/andengine/entity/particle/initializer/AccelerationParticleInitializer;,"Lorg/andengine/entity/particle/initializer/AccelerationParticleInitializer<TT;>;"
    invoke-direct {p0, p1, p1, p2, p2}, Lorg/andengine/entity/particle/initializer/AccelerationParticleInitializer;-><init>(FFFF)V

    .line 32
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .parameter "pMinAccelerationX"
    .parameter "pMaxAccelerationX"
    .parameter "pMinAccelerationY"
    .parameter "pMaxAccelerationY"

    .prologue
    .line 35
    .local p0, this:Lorg/andengine/entity/particle/initializer/AccelerationParticleInitializer;,"Lorg/andengine/entity/particle/initializer/AccelerationParticleInitializer<TT;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/andengine/entity/particle/initializer/BaseDoubleValueParticleInitializer;-><init>(FFFF)V

    .line 36
    return-void
.end method


# virtual methods
.method public getMaxAccelerationX()F
    .locals 1

    .prologue
    .line 47
    .local p0, this:Lorg/andengine/entity/particle/initializer/AccelerationParticleInitializer;,"Lorg/andengine/entity/particle/initializer/AccelerationParticleInitializer<TT;>;"
    iget v0, p0, Lorg/andengine/entity/particle/initializer/AccelerationParticleInitializer;->mMaxValue:F

    return v0
.end method

.method public getMaxAccelerationY()F
    .locals 1

    .prologue
    .line 55
    .local p0, this:Lorg/andengine/entity/particle/initializer/AccelerationParticleInitializer;,"Lorg/andengine/entity/particle/initializer/AccelerationParticleInitializer<TT;>;"
    iget v0, p0, Lorg/andengine/entity/particle/initializer/AccelerationParticleInitializer;->mMaxValueB:F

    return v0
.end method

.method public getMinAccelerationX()F
    .locals 1

    .prologue
    .line 43
    .local p0, this:Lorg/andengine/entity/particle/initializer/AccelerationParticleInitializer;,"Lorg/andengine/entity/particle/initializer/AccelerationParticleInitializer<TT;>;"
    iget v0, p0, Lorg/andengine/entity/particle/initializer/AccelerationParticleInitializer;->mMinValue:F

    return v0
.end method

.method public getMinAccelerationY()F
    .locals 1

    .prologue
    .line 51
    .local p0, this:Lorg/andengine/entity/particle/initializer/AccelerationParticleInitializer;,"Lorg/andengine/entity/particle/initializer/AccelerationParticleInitializer<TT;>;"
    iget v0, p0, Lorg/andengine/entity/particle/initializer/AccelerationParticleInitializer;->mMinValueB:F

    return v0
.end method

.method public onInitializeParticle(Lorg/andengine/entity/particle/Particle;FF)V
    .locals 1
    .parameter
    .parameter "pAccelerationX"
    .parameter "pAccelerationY"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/entity/particle/Particle",
            "<TT;>;FF)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, this:Lorg/andengine/entity/particle/initializer/AccelerationParticleInitializer;,"Lorg/andengine/entity/particle/initializer/AccelerationParticleInitializer<TT;>;"
    .local p1, pParticle:Lorg/andengine/entity/particle/Particle;,"Lorg/andengine/entity/particle/Particle<TT;>;"
    invoke-virtual {p1}, Lorg/andengine/entity/particle/Particle;->getPhysicsHandler()Lorg/andengine/engine/handler/physics/PhysicsHandler;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/andengine/engine/handler/physics/PhysicsHandler;->accelerate(FF)V

    .line 92
    return-void
.end method

.method public setAcceleration(FFFF)V
    .locals 0
    .parameter "pMinAccelerationX"
    .parameter "pMaxAccelerationX"
    .parameter "pMinAccelerationY"
    .parameter "pMaxAccelerationY"

    .prologue
    .line 79
    .local p0, this:Lorg/andengine/entity/particle/initializer/AccelerationParticleInitializer;,"Lorg/andengine/entity/particle/initializer/AccelerationParticleInitializer<TT;>;"
    iput p1, p0, Lorg/andengine/entity/particle/initializer/AccelerationParticleInitializer;->mMinValue:F

    .line 80
    iput p2, p0, Lorg/andengine/entity/particle/initializer/AccelerationParticleInitializer;->mMaxValue:F

    .line 81
    iput p3, p0, Lorg/andengine/entity/particle/initializer/AccelerationParticleInitializer;->mMinValueB:F

    .line 82
    iput p4, p0, Lorg/andengine/entity/particle/initializer/AccelerationParticleInitializer;->mMaxValueB:F

    .line 83
    return-void
.end method

.method public setAccelerationX(F)V
    .locals 0
    .parameter "pAccelerationX"

    .prologue
    .line 59
    .local p0, this:Lorg/andengine/entity/particle/initializer/AccelerationParticleInitializer;,"Lorg/andengine/entity/particle/initializer/AccelerationParticleInitializer<TT;>;"
    iput p1, p0, Lorg/andengine/entity/particle/initializer/AccelerationParticleInitializer;->mMinValue:F

    .line 60
    iput p1, p0, Lorg/andengine/entity/particle/initializer/AccelerationParticleInitializer;->mMaxValue:F

    .line 61
    return-void
.end method

.method public setAccelerationX(FF)V
    .locals 0
    .parameter "pMinAccelerationX"
    .parameter "pMaxAccelerationX"

    .prologue
    .line 69
    .local p0, this:Lorg/andengine/entity/particle/initializer/AccelerationParticleInitializer;,"Lorg/andengine/entity/particle/initializer/AccelerationParticleInitializer<TT;>;"
    iput p1, p0, Lorg/andengine/entity/particle/initializer/AccelerationParticleInitializer;->mMinValue:F

    .line 70
    iput p2, p0, Lorg/andengine/entity/particle/initializer/AccelerationParticleInitializer;->mMaxValue:F

    .line 71
    return-void
.end method

.method public setAccelerationY(F)V
    .locals 0
    .parameter "pAccelerationY"

    .prologue
    .line 64
    .local p0, this:Lorg/andengine/entity/particle/initializer/AccelerationParticleInitializer;,"Lorg/andengine/entity/particle/initializer/AccelerationParticleInitializer<TT;>;"
    iput p1, p0, Lorg/andengine/entity/particle/initializer/AccelerationParticleInitializer;->mMinValueB:F

    .line 65
    iput p1, p0, Lorg/andengine/entity/particle/initializer/AccelerationParticleInitializer;->mMaxValueB:F

    .line 66
    return-void
.end method

.method public setAccelerationY(FF)V
    .locals 0
    .parameter "pMinAccelerationY"
    .parameter "pMaxAccelerationY"

    .prologue
    .line 74
    .local p0, this:Lorg/andengine/entity/particle/initializer/AccelerationParticleInitializer;,"Lorg/andengine/entity/particle/initializer/AccelerationParticleInitializer<TT;>;"
    iput p1, p0, Lorg/andengine/entity/particle/initializer/AccelerationParticleInitializer;->mMinValueB:F

    .line 75
    iput p2, p0, Lorg/andengine/entity/particle/initializer/AccelerationParticleInitializer;->mMaxValueB:F

    .line 76
    return-void
.end method
