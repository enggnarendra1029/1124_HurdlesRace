.class public Lorg/andengine/entity/particle/modifier/ExpireParticleInitializer;
.super Ljava/lang/Object;
.source "ExpireParticleInitializer.java"

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
.field private mMaxLifeTime:F

.field private mMinLifeTime:F


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .parameter "pLifeTime"

    .prologue
    .line 32
    .local p0, this:Lorg/andengine/entity/particle/modifier/ExpireParticleInitializer;,"Lorg/andengine/entity/particle/modifier/ExpireParticleInitializer<TT;>;"
    invoke-direct {p0, p1, p1}, Lorg/andengine/entity/particle/modifier/ExpireParticleInitializer;-><init>(FF)V

    .line 33
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0
    .parameter "pMinLifeTime"
    .parameter "pMaxLifeTime"

    .prologue
    .line 35
    .local p0, this:Lorg/andengine/entity/particle/modifier/ExpireParticleInitializer;,"Lorg/andengine/entity/particle/modifier/ExpireParticleInitializer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lorg/andengine/entity/particle/modifier/ExpireParticleInitializer;->mMinLifeTime:F

    .line 37
    iput p2, p0, Lorg/andengine/entity/particle/modifier/ExpireParticleInitializer;->mMaxLifeTime:F

    .line 38
    return-void
.end method


# virtual methods
.method public getMaxLifeTime()F
    .locals 1

    .prologue
    .line 49
    .local p0, this:Lorg/andengine/entity/particle/modifier/ExpireParticleInitializer;,"Lorg/andengine/entity/particle/modifier/ExpireParticleInitializer<TT;>;"
    iget v0, p0, Lorg/andengine/entity/particle/modifier/ExpireParticleInitializer;->mMaxLifeTime:F

    return v0
.end method

.method public getMinLifeTime()F
    .locals 1

    .prologue
    .line 45
    .local p0, this:Lorg/andengine/entity/particle/modifier/ExpireParticleInitializer;,"Lorg/andengine/entity/particle/modifier/ExpireParticleInitializer<TT;>;"
    iget v0, p0, Lorg/andengine/entity/particle/modifier/ExpireParticleInitializer;->mMinLifeTime:F

    return v0
.end method

.method public onInitializeParticle(Lorg/andengine/entity/particle/Particle;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/entity/particle/Particle",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, this:Lorg/andengine/entity/particle/modifier/ExpireParticleInitializer;,"Lorg/andengine/entity/particle/modifier/ExpireParticleInitializer<TT;>;"
    .local p1, pParticle:Lorg/andengine/entity/particle/Particle;,"Lorg/andengine/entity/particle/Particle<TT;>;"
    sget-object v0, Lorg/andengine/util/math/MathUtils;->RANDOM:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    iget v1, p0, Lorg/andengine/entity/particle/modifier/ExpireParticleInitializer;->mMaxLifeTime:F

    iget v2, p0, Lorg/andengine/entity/particle/modifier/ExpireParticleInitializer;->mMinLifeTime:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/andengine/entity/particle/modifier/ExpireParticleInitializer;->mMinLifeTime:F

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lorg/andengine/entity/particle/Particle;->setExpireTime(F)V

    .line 69
    return-void
.end method

.method public setLifeTime(F)V
    .locals 0
    .parameter "pLifeTime"

    .prologue
    .line 53
    .local p0, this:Lorg/andengine/entity/particle/modifier/ExpireParticleInitializer;,"Lorg/andengine/entity/particle/modifier/ExpireParticleInitializer<TT;>;"
    iput p1, p0, Lorg/andengine/entity/particle/modifier/ExpireParticleInitializer;->mMinLifeTime:F

    .line 54
    iput p1, p0, Lorg/andengine/entity/particle/modifier/ExpireParticleInitializer;->mMaxLifeTime:F

    .line 55
    return-void
.end method

.method public setLifeTime(FF)V
    .locals 0
    .parameter "pMinLifeTime"
    .parameter "pMaxLifeTime"

    .prologue
    .line 58
    .local p0, this:Lorg/andengine/entity/particle/modifier/ExpireParticleInitializer;,"Lorg/andengine/entity/particle/modifier/ExpireParticleInitializer<TT;>;"
    iput p1, p0, Lorg/andengine/entity/particle/modifier/ExpireParticleInitializer;->mMinLifeTime:F

    .line 59
    iput p2, p0, Lorg/andengine/entity/particle/modifier/ExpireParticleInitializer;->mMaxLifeTime:F

    .line 60
    return-void
.end method
