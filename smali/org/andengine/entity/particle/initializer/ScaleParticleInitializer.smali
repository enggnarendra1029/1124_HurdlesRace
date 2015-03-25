.class public Lorg/andengine/entity/particle/initializer/ScaleParticleInitializer;
.super Lorg/andengine/entity/particle/initializer/BaseSingleValueParticleInitializer;
.source "ScaleParticleInitializer.java"


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
    .parameter "pScale"

    .prologue
    .line 27
    .local p0, this:Lorg/andengine/entity/particle/initializer/ScaleParticleInitializer;,"Lorg/andengine/entity/particle/initializer/ScaleParticleInitializer<TT;>;"
    invoke-direct {p0, p1, p1}, Lorg/andengine/entity/particle/initializer/BaseSingleValueParticleInitializer;-><init>(FF)V

    .line 28
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0
    .parameter "pMinScale"
    .parameter "pMaxScale"

    .prologue
    .line 31
    .local p0, this:Lorg/andengine/entity/particle/initializer/ScaleParticleInitializer;,"Lorg/andengine/entity/particle/initializer/ScaleParticleInitializer<TT;>;"
    invoke-direct {p0, p1, p2}, Lorg/andengine/entity/particle/initializer/BaseSingleValueParticleInitializer;-><init>(FF)V

    .line 32
    return-void
.end method


# virtual methods
.method protected onInitializeParticle(Lorg/andengine/entity/particle/Particle;F)V
    .locals 1
    .parameter
    .parameter "pScale"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/entity/particle/Particle",
            "<TT;>;F)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, this:Lorg/andengine/entity/particle/initializer/ScaleParticleInitializer;,"Lorg/andengine/entity/particle/initializer/ScaleParticleInitializer<TT;>;"
    .local p1, pParticle:Lorg/andengine/entity/particle/Particle;,"Lorg/andengine/entity/particle/Particle<TT;>;"
    invoke-virtual {p1}, Lorg/andengine/entity/particle/Particle;->getEntity()Lorg/andengine/entity/IEntity;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/andengine/entity/IEntity;->setScale(F)V

    .line 45
    return-void
.end method
