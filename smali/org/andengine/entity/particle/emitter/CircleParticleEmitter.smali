.class public Lorg/andengine/entity/particle/emitter/CircleParticleEmitter;
.super Lorg/andengine/entity/particle/emitter/BaseCircleParticleEmitter;
.source "CircleParticleEmitter.java"


# direct methods
.method public constructor <init>(FFF)V
    .locals 0
    .parameter "pCenterX"
    .parameter "pCenterY"
    .parameter "pRadius"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lorg/andengine/entity/particle/emitter/BaseCircleParticleEmitter;-><init>(FFF)V

    .line 33
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .parameter "pCenterX"
    .parameter "pCenterY"
    .parameter "pRadiusX"
    .parameter "pRadiusY"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/andengine/entity/particle/emitter/BaseCircleParticleEmitter;-><init>(FFFF)V

    .line 37
    return-void
.end method


# virtual methods
.method public getPositionOffset([F)V
    .locals 5
    .parameter "pOffset"

    .prologue
    .line 49
    sget-object v1, Lorg/andengine/util/math/MathUtils;->RANDOM:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    const v2, 0x40490fdb

    mul-float/2addr v1, v2

    const/high16 v2, 0x4000

    mul-float v0, v1, v2

    .line 50
    .local v0, random:F
    const/4 v1, 0x0

    iget v2, p0, Lorg/andengine/entity/particle/emitter/CircleParticleEmitter;->mCenterX:F

    invoke-static {v0}, Landroid/util/FloatMath;->cos(F)F

    move-result v3

    iget v4, p0, Lorg/andengine/entity/particle/emitter/CircleParticleEmitter;->mRadiusX:F

    mul-float/2addr v3, v4

    sget-object v4, Lorg/andengine/util/math/MathUtils;->RANDOM:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, p1, v1

    .line 51
    const/4 v1, 0x1

    iget v2, p0, Lorg/andengine/entity/particle/emitter/CircleParticleEmitter;->mCenterY:F

    invoke-static {v0}, Landroid/util/FloatMath;->sin(F)F

    move-result v3

    iget v4, p0, Lorg/andengine/entity/particle/emitter/CircleParticleEmitter;->mRadiusY:F

    mul-float/2addr v3, v4

    sget-object v4, Lorg/andengine/util/math/MathUtils;->RANDOM:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, p1, v1

    .line 52
    return-void
.end method
