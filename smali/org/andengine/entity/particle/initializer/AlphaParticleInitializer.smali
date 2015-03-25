.class public Lorg/andengine/entity/particle/initializer/AlphaParticleInitializer;
.super Lorg/andengine/entity/particle/initializer/BaseSingleValueParticleInitializer;
.source "AlphaParticleInitializer.java"


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
    .parameter "pAlpha"

    .prologue
    .line 28
    .local p0, this:Lorg/andengine/entity/particle/initializer/AlphaParticleInitializer;,"Lorg/andengine/entity/particle/initializer/AlphaParticleInitializer<TT;>;"
    invoke-direct {p0, p1, p1}, Lorg/andengine/entity/particle/initializer/BaseSingleValueParticleInitializer;-><init>(FF)V

    .line 29
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0
    .parameter "pMinAlpha"
    .parameter "pMaxAlpha"

    .prologue
    .line 32
    .local p0, this:Lorg/andengine/entity/particle/initializer/AlphaParticleInitializer;,"Lorg/andengine/entity/particle/initializer/AlphaParticleInitializer<TT;>;"
    invoke-direct {p0, p1, p2}, Lorg/andengine/entity/particle/initializer/BaseSingleValueParticleInitializer;-><init>(FF)V

    .line 33
    return-void
.end method


# virtual methods
.method protected onInitializeParticle(Lorg/andengine/entity/particle/Particle;F)V
    .locals 1
    .parameter
    .parameter "pAlpha"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/entity/particle/Particle",
            "<TT;>;F)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, this:Lorg/andengine/entity/particle/initializer/AlphaParticleInitializer;,"Lorg/andengine/entity/particle/initializer/AlphaParticleInitializer<TT;>;"
    .local p1, pParticle:Lorg/andengine/entity/particle/Particle;,"Lorg/andengine/entity/particle/Particle<TT;>;"
    invoke-virtual {p1}, Lorg/andengine/entity/particle/Particle;->getEntity()Lorg/andengine/entity/IEntity;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/andengine/entity/IEntity;->setAlpha(F)V

    .line 46
    return-void
.end method
