.class public Lorg/andengine/entity/particle/initializer/GravityParticleInitializer;
.super Lorg/andengine/entity/particle/initializer/AccelerationParticleInitializer;
.source "GravityParticleInitializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/andengine/entity/IEntity;",
        ">",
        "Lorg/andengine/entity/particle/initializer/AccelerationParticleInitializer",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    .local p0, this:Lorg/andengine/entity/particle/initializer/GravityParticleInitializer;,"Lorg/andengine/entity/particle/initializer/GravityParticleInitializer<TT;>;"
    const/4 v0, 0x0

    const v1, 0x411ce80a

    invoke-direct {p0, v0, v1}, Lorg/andengine/entity/particle/initializer/AccelerationParticleInitializer;-><init>(FF)V

    .line 29
    return-void
.end method
