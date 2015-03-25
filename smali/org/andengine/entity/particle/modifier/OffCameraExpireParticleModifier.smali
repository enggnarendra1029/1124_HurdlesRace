.class public Lorg/andengine/entity/particle/modifier/OffCameraExpireParticleModifier;
.super Ljava/lang/Object;
.source "OffCameraExpireParticleModifier.java"

# interfaces
.implements Lorg/andengine/entity/particle/modifier/IParticleModifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/andengine/entity/shape/RectangularShape;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/andengine/entity/particle/modifier/IParticleModifier",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mCamera:Lorg/andengine/engine/camera/Camera;


# direct methods
.method public constructor <init>(Lorg/andengine/engine/camera/Camera;)V
    .locals 0
    .parameter "pCamera"

    .prologue
    .line 30
    .local p0, this:Lorg/andengine/entity/particle/modifier/OffCameraExpireParticleModifier;,"Lorg/andengine/entity/particle/modifier/OffCameraExpireParticleModifier<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/andengine/entity/particle/modifier/OffCameraExpireParticleModifier;->mCamera:Lorg/andengine/engine/camera/Camera;

    .line 32
    return-void
.end method


# virtual methods
.method public getCamera()Lorg/andengine/engine/camera/Camera;
    .locals 1

    .prologue
    .line 39
    .local p0, this:Lorg/andengine/entity/particle/modifier/OffCameraExpireParticleModifier;,"Lorg/andengine/entity/particle/modifier/OffCameraExpireParticleModifier<TT;>;"
    iget-object v0, p0, Lorg/andengine/entity/particle/modifier/OffCameraExpireParticleModifier;->mCamera:Lorg/andengine/engine/camera/Camera;

    return-object v0
.end method

.method public onInitializeParticle(Lorg/andengine/entity/particle/Particle;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/entity/particle/Particle",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, this:Lorg/andengine/entity/particle/modifier/OffCameraExpireParticleModifier;,"Lorg/andengine/entity/particle/modifier/OffCameraExpireParticleModifier<TT;>;"
    .local p1, pParticle:Lorg/andengine/entity/particle/Particle;,"Lorg/andengine/entity/particle/Particle<TT;>;"
    return-void
.end method

.method public onUpdateParticle(Lorg/andengine/entity/particle/Particle;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/entity/particle/Particle",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, this:Lorg/andengine/entity/particle/modifier/OffCameraExpireParticleModifier;,"Lorg/andengine/entity/particle/modifier/OffCameraExpireParticleModifier<TT;>;"
    .local p1, pParticle:Lorg/andengine/entity/particle/Particle;,"Lorg/andengine/entity/particle/Particle<TT;>;"
    iget-object v1, p0, Lorg/andengine/entity/particle/modifier/OffCameraExpireParticleModifier;->mCamera:Lorg/andengine/engine/camera/Camera;

    invoke-virtual {p1}, Lorg/andengine/entity/particle/Particle;->getEntity()Lorg/andengine/entity/IEntity;

    move-result-object v0

    check-cast v0, Lorg/andengine/entity/shape/RectangularShape;

    invoke-virtual {v1, v0}, Lorg/andengine/engine/camera/Camera;->isRectangularShapeVisible(Lorg/andengine/entity/shape/RectangularShape;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/andengine/entity/particle/Particle;->setExpired(Z)V

    .line 56
    :cond_0
    return-void
.end method
