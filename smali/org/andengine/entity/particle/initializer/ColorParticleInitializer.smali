.class public Lorg/andengine/entity/particle/initializer/ColorParticleInitializer;
.super Lorg/andengine/entity/particle/initializer/BaseTripleValueParticleInitializer;
.source "ColorParticleInitializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/andengine/entity/IEntity;",
        ">",
        "Lorg/andengine/entity/particle/initializer/BaseTripleValueParticleInitializer",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(FFF)V
    .locals 7
    .parameter "pRed"
    .parameter "pGreen"
    .parameter "pBlue"

    .prologue
    .line 33
    .local p0, this:Lorg/andengine/entity/particle/initializer/ColorParticleInitializer;,"Lorg/andengine/entity/particle/initializer/ColorParticleInitializer<TT;>;"
    move-object v0, p0

    move v1, p1

    move v2, p1

    move v3, p2

    move v4, p2

    move v5, p3

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/andengine/entity/particle/initializer/BaseTripleValueParticleInitializer;-><init>(FFFFFF)V

    .line 34
    return-void
.end method

.method public constructor <init>(FFFFFF)V
    .locals 0
    .parameter "pMinRed"
    .parameter "pMaxRed"
    .parameter "pMinGreen"
    .parameter "pMaxGreen"
    .parameter "pMinBlue"
    .parameter "pMaxBlue"

    .prologue
    .line 41
    .local p0, this:Lorg/andengine/entity/particle/initializer/ColorParticleInitializer;,"Lorg/andengine/entity/particle/initializer/ColorParticleInitializer<TT;>;"
    invoke-direct/range {p0 .. p6}, Lorg/andengine/entity/particle/initializer/BaseTripleValueParticleInitializer;-><init>(FFFFFF)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/andengine/util/color/Color;)V
    .locals 7
    .parameter "pColor"

    .prologue
    .line 29
    .local p0, this:Lorg/andengine/entity/particle/initializer/ColorParticleInitializer;,"Lorg/andengine/entity/particle/initializer/ColorParticleInitializer<TT;>;"
    invoke-virtual {p1}, Lorg/andengine/util/color/Color;->getRed()F

    move-result v1

    invoke-virtual {p1}, Lorg/andengine/util/color/Color;->getRed()F

    move-result v2

    invoke-virtual {p1}, Lorg/andengine/util/color/Color;->getGreen()F

    move-result v3

    invoke-virtual {p1}, Lorg/andengine/util/color/Color;->getGreen()F

    move-result v4

    invoke-virtual {p1}, Lorg/andengine/util/color/Color;->getBlue()F

    move-result v5

    invoke-virtual {p1}, Lorg/andengine/util/color/Color;->getBlue()F

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/andengine/entity/particle/initializer/BaseTripleValueParticleInitializer;-><init>(FFFFFF)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lorg/andengine/util/color/Color;Lorg/andengine/util/color/Color;)V
    .locals 7
    .parameter "pMinColor"
    .parameter "pMaxColor"

    .prologue
    .line 37
    .local p0, this:Lorg/andengine/entity/particle/initializer/ColorParticleInitializer;,"Lorg/andengine/entity/particle/initializer/ColorParticleInitializer<TT;>;"
    invoke-virtual {p1}, Lorg/andengine/util/color/Color;->getRed()F

    move-result v1

    invoke-virtual {p2}, Lorg/andengine/util/color/Color;->getRed()F

    move-result v2

    invoke-virtual {p1}, Lorg/andengine/util/color/Color;->getGreen()F

    move-result v3

    invoke-virtual {p2}, Lorg/andengine/util/color/Color;->getGreen()F

    move-result v4

    invoke-virtual {p1}, Lorg/andengine/util/color/Color;->getBlue()F

    move-result v5

    invoke-virtual {p2}, Lorg/andengine/util/color/Color;->getBlue()F

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/andengine/entity/particle/initializer/BaseTripleValueParticleInitializer;-><init>(FFFFFF)V

    .line 38
    return-void
.end method


# virtual methods
.method protected onInitializeParticle(Lorg/andengine/entity/particle/Particle;FFF)V
    .locals 1
    .parameter
    .parameter "pRed"
    .parameter "pGreen"
    .parameter "pBlue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/entity/particle/Particle",
            "<TT;>;FFF)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, this:Lorg/andengine/entity/particle/initializer/ColorParticleInitializer;,"Lorg/andengine/entity/particle/initializer/ColorParticleInitializer<TT;>;"
    .local p1, pParticle:Lorg/andengine/entity/particle/Particle;,"Lorg/andengine/entity/particle/Particle<TT;>;"
    invoke-virtual {p1}, Lorg/andengine/entity/particle/Particle;->getEntity()Lorg/andengine/entity/IEntity;

    move-result-object v0

    invoke-interface {v0, p2, p3, p4}, Lorg/andengine/entity/IEntity;->setColor(FFF)V

    .line 55
    return-void
.end method
