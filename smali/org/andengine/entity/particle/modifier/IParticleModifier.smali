.class public interface abstract Lorg/andengine/entity/particle/modifier/IParticleModifier;
.super Ljava/lang/Object;
.source "IParticleModifier.java"

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


# virtual methods
.method public abstract onUpdateParticle(Lorg/andengine/entity/particle/Particle;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/entity/particle/Particle",
            "<TT;>;)V"
        }
    .end annotation
.end method
