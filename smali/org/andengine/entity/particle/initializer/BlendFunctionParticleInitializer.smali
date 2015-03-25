.class public Lorg/andengine/entity/particle/initializer/BlendFunctionParticleInitializer;
.super Ljava/lang/Object;
.source "BlendFunctionParticleInitializer.java"

# interfaces
.implements Lorg/andengine/entity/particle/initializer/IParticleInitializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/andengine/entity/shape/IShape;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/andengine/entity/particle/initializer/IParticleInitializer",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected mBlendFunctionDestination:I

.field protected mBlendFunctionSource:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "pBlendFunctionSource"
    .parameter "pBlendFunctionDestination"

    .prologue
    .line 35
    .local p0, this:Lorg/andengine/entity/particle/initializer/BlendFunctionParticleInitializer;,"Lorg/andengine/entity/particle/initializer/BlendFunctionParticleInitializer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lorg/andengine/entity/particle/initializer/BlendFunctionParticleInitializer;->mBlendFunctionSource:I

    .line 37
    iput p2, p0, Lorg/andengine/entity/particle/initializer/BlendFunctionParticleInitializer;->mBlendFunctionDestination:I

    .line 38
    return-void
.end method


# virtual methods
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
    .line 50
    .local p0, this:Lorg/andengine/entity/particle/initializer/BlendFunctionParticleInitializer;,"Lorg/andengine/entity/particle/initializer/BlendFunctionParticleInitializer<TT;>;"
    .local p1, pParticle:Lorg/andengine/entity/particle/Particle;,"Lorg/andengine/entity/particle/Particle<TT;>;"
    invoke-virtual {p1}, Lorg/andengine/entity/particle/Particle;->getEntity()Lorg/andengine/entity/IEntity;

    move-result-object v0

    check-cast v0, Lorg/andengine/entity/shape/IShape;

    iget v1, p0, Lorg/andengine/entity/particle/initializer/BlendFunctionParticleInitializer;->mBlendFunctionSource:I

    iget v2, p0, Lorg/andengine/entity/particle/initializer/BlendFunctionParticleInitializer;->mBlendFunctionDestination:I

    invoke-interface {v0, v1, v2}, Lorg/andengine/entity/shape/IShape;->setBlendFunction(II)V

    .line 51
    return-void
.end method
