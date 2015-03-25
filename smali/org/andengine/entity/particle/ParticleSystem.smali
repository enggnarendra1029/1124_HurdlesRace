.class public Lorg/andengine/entity/particle/ParticleSystem;
.super Lorg/andengine/entity/Entity;
.source "ParticleSystem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/andengine/entity/IEntity;",
        ">",
        "Lorg/andengine/entity/Entity;"
    }
.end annotation


# static fields
.field private static final POSITION_OFFSET_CONTAINER:[F


# instance fields
.field protected final mEntityFactory:Lorg/andengine/entity/IEntityFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/andengine/entity/IEntityFactory",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected final mParticleEmitter:Lorg/andengine/entity/particle/emitter/IParticleEmitter;

.field protected final mParticleInitializers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/andengine/entity/particle/initializer/IParticleInitializer",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field protected final mParticleModifiers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/andengine/entity/particle/modifier/IParticleModifier",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field protected final mParticles:[Lorg/andengine/entity/particle/Particle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/andengine/entity/particle/Particle",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected mParticlesAlive:I

.field private mParticlesDueToSpawn:F

.field protected final mParticlesMaximum:I

.field private mParticlesSpawnEnabled:Z

.field private final mRateMaximum:F

.field private final mRateMinimum:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [F

    sput-object v0, Lorg/andengine/entity/particle/ParticleSystem;->POSITION_OFFSET_CONTAINER:[F

    return-void
.end method

.method public constructor <init>(FFLorg/andengine/entity/IEntityFactory;Lorg/andengine/entity/particle/emitter/IParticleEmitter;FFI)V
    .locals 1
    .parameter "pX"
    .parameter "pY"
    .parameter
    .parameter "pParticleEmitter"
    .parameter "pRateMinimum"
    .parameter "pRateMaximum"
    .parameter "pParticlesMaximum"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Lorg/andengine/entity/IEntityFactory",
            "<TT;>;",
            "Lorg/andengine/entity/particle/emitter/IParticleEmitter;",
            "FFI)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, this:Lorg/andengine/entity/particle/ParticleSystem;,"Lorg/andengine/entity/particle/ParticleSystem<TT;>;"
    .local p3, pEntityFactory:Lorg/andengine/entity/IEntityFactory;,"Lorg/andengine/entity/IEntityFactory<TT;>;"
    invoke-direct {p0, p1, p2}, Lorg/andengine/entity/Entity;-><init>(FF)V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/andengine/entity/particle/ParticleSystem;->mParticleInitializers:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/andengine/entity/particle/ParticleSystem;->mParticleModifiers:Ljava/util/ArrayList;

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/andengine/entity/particle/ParticleSystem;->mParticlesSpawnEnabled:Z

    .line 65
    iput-object p3, p0, Lorg/andengine/entity/particle/ParticleSystem;->mEntityFactory:Lorg/andengine/entity/IEntityFactory;

    .line 66
    iput-object p4, p0, Lorg/andengine/entity/particle/ParticleSystem;->mParticleEmitter:Lorg/andengine/entity/particle/emitter/IParticleEmitter;

    .line 67
    new-array v0, p7, [Lorg/andengine/entity/particle/Particle;

    iput-object v0, p0, Lorg/andengine/entity/particle/ParticleSystem;->mParticles:[Lorg/andengine/entity/particle/Particle;

    .line 68
    iput p5, p0, Lorg/andengine/entity/particle/ParticleSystem;->mRateMinimum:F

    .line 69
    iput p6, p0, Lorg/andengine/entity/particle/ParticleSystem;->mRateMaximum:F

    .line 70
    iput p7, p0, Lorg/andengine/entity/particle/ParticleSystem;->mParticlesMaximum:I

    .line 72
    iget-object v0, p0, Lorg/andengine/entity/particle/ParticleSystem;->mParticleEmitter:Lorg/andengine/entity/particle/emitter/IParticleEmitter;

    invoke-virtual {p0, v0}, Lorg/andengine/entity/particle/ParticleSystem;->registerUpdateHandler(Lorg/andengine/engine/handler/IUpdateHandler;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Lorg/andengine/entity/IEntityFactory;Lorg/andengine/entity/particle/emitter/IParticleEmitter;FFI)V
    .locals 8
    .parameter
    .parameter "pParticleEmitter"
    .parameter "pRateMinimum"
    .parameter "pRateMaximum"
    .parameter "pParticlesMaximum"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/entity/IEntityFactory",
            "<TT;>;",
            "Lorg/andengine/entity/particle/emitter/IParticleEmitter;",
            "FFI)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lorg/andengine/entity/particle/ParticleSystem;,"Lorg/andengine/entity/particle/ParticleSystem<TT;>;"
    .local p1, pEntityFactory:Lorg/andengine/entity/IEntityFactory;,"Lorg/andengine/entity/IEntityFactory<TT;>;"
    const/4 v1, 0x0

    .line 58
    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/andengine/entity/particle/ParticleSystem;-><init>(FFLorg/andengine/entity/IEntityFactory;Lorg/andengine/entity/particle/emitter/IParticleEmitter;FFI)V

    .line 59
    return-void
.end method

.method private spawnParticle()V
    .locals 6

    .prologue
    .line 190
    .local p0, this:Lorg/andengine/entity/particle/ParticleSystem;,"Lorg/andengine/entity/particle/ParticleSystem<TT;>;"
    iget v4, p0, Lorg/andengine/entity/particle/ParticleSystem;->mParticlesAlive:I

    iget v5, p0, Lorg/andengine/entity/particle/ParticleSystem;->mParticlesMaximum:I

    if-ge v4, v5, :cond_0

    .line 191
    iget-object v4, p0, Lorg/andengine/entity/particle/ParticleSystem;->mParticles:[Lorg/andengine/entity/particle/Particle;

    iget v5, p0, Lorg/andengine/entity/particle/ParticleSystem;->mParticlesAlive:I

    aget-object v1, v4, v5

    .line 194
    .local v1, particle:Lorg/andengine/entity/particle/Particle;,"Lorg/andengine/entity/particle/Particle<TT;>;"
    iget-object v4, p0, Lorg/andengine/entity/particle/ParticleSystem;->mParticleEmitter:Lorg/andengine/entity/particle/emitter/IParticleEmitter;

    sget-object v5, Lorg/andengine/entity/particle/ParticleSystem;->POSITION_OFFSET_CONTAINER:[F

    invoke-interface {v4, v5}, Lorg/andengine/entity/particle/emitter/IParticleEmitter;->getPositionOffset([F)V

    .line 196
    sget-object v4, Lorg/andengine/entity/particle/ParticleSystem;->POSITION_OFFSET_CONTAINER:[F

    const/4 v5, 0x0

    aget v2, v4, v5

    .line 197
    .local v2, x:F
    sget-object v4, Lorg/andengine/entity/particle/ParticleSystem;->POSITION_OFFSET_CONTAINER:[F

    const/4 v5, 0x1

    aget v3, v4, v5

    .line 199
    .local v3, y:F
    if-nez v1, :cond_1

    .line 200
    new-instance v1, Lorg/andengine/entity/particle/Particle;

    .end local v1           #particle:Lorg/andengine/entity/particle/Particle;,"Lorg/andengine/entity/particle/Particle<TT;>;"
    invoke-direct {v1}, Lorg/andengine/entity/particle/Particle;-><init>()V

    .line 201
    .restart local v1       #particle:Lorg/andengine/entity/particle/Particle;,"Lorg/andengine/entity/particle/Particle<TT;>;"
    iget-object v4, p0, Lorg/andengine/entity/particle/ParticleSystem;->mParticles:[Lorg/andengine/entity/particle/Particle;

    iget v5, p0, Lorg/andengine/entity/particle/ParticleSystem;->mParticlesAlive:I

    aput-object v1, v4, v5

    .line 202
    iget-object v4, p0, Lorg/andengine/entity/particle/ParticleSystem;->mEntityFactory:Lorg/andengine/entity/IEntityFactory;

    invoke-interface {v4, v2, v3}, Lorg/andengine/entity/IEntityFactory;->create(FF)Lorg/andengine/entity/IEntity;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/andengine/entity/particle/Particle;->setEntity(Lorg/andengine/entity/IEntity;)V

    .line 210
    :goto_0
    iget-object v4, p0, Lorg/andengine/entity/particle/ParticleSystem;->mParticleInitializers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, i:I
    :goto_1
    if-gez v0, :cond_2

    .line 214
    iget-object v4, p0, Lorg/andengine/entity/particle/ParticleSystem;->mParticleModifiers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    :goto_2
    if-gez v0, :cond_3

    .line 219
    iget v4, p0, Lorg/andengine/entity/particle/ParticleSystem;->mParticlesAlive:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/andengine/entity/particle/ParticleSystem;->mParticlesAlive:I

    .line 221
    .end local v0           #i:I
    .end local v1           #particle:Lorg/andengine/entity/particle/Particle;,"Lorg/andengine/entity/particle/Particle<TT;>;"
    .end local v2           #x:F
    .end local v3           #y:F
    :cond_0
    return-void

    .line 204
    .restart local v1       #particle:Lorg/andengine/entity/particle/Particle;,"Lorg/andengine/entity/particle/Particle<TT;>;"
    .restart local v2       #x:F
    .restart local v3       #y:F
    :cond_1
    invoke-virtual {v1}, Lorg/andengine/entity/particle/Particle;->reset()V

    .line 205
    invoke-virtual {v1}, Lorg/andengine/entity/particle/Particle;->getEntity()Lorg/andengine/entity/IEntity;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Lorg/andengine/entity/IEntity;->setPosition(FF)V

    goto :goto_0

    .line 211
    .restart local v0       #i:I
    :cond_2
    iget-object v4, p0, Lorg/andengine/entity/particle/ParticleSystem;->mParticleInitializers:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/andengine/entity/particle/initializer/IParticleInitializer;

    invoke-interface {v4, v1}, Lorg/andengine/entity/particle/initializer/IParticleInitializer;->onInitializeParticle(Lorg/andengine/entity/particle/Particle;)V

    .line 210
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 215
    :cond_3
    iget-object v4, p0, Lorg/andengine/entity/particle/ParticleSystem;->mParticleModifiers:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/andengine/entity/particle/modifier/IParticleModifier;

    invoke-interface {v4, v1}, Lorg/andengine/entity/particle/modifier/IParticleModifier;->onInitializeParticle(Lorg/andengine/entity/particle/Particle;)V

    .line 214
    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method private spawnParticles(F)V
    .locals 6
    .parameter "pSecondsElapsed"

    .prologue
    .line 176
    .local p0, this:Lorg/andengine/entity/particle/ParticleSystem;,"Lorg/andengine/entity/particle/ParticleSystem<TT;>;"
    invoke-virtual {p0}, Lorg/andengine/entity/particle/ParticleSystem;->determineCurrentRate()F

    move-result v0

    .line 177
    .local v0, currentRate:F
    mul-float v2, v0, p1

    .line 179
    .local v2, newParticlesThisFrame:F
    iget v4, p0, Lorg/andengine/entity/particle/ParticleSystem;->mParticlesDueToSpawn:F

    add-float/2addr v4, v2

    iput v4, p0, Lorg/andengine/entity/particle/ParticleSystem;->mParticlesDueToSpawn:F

    .line 181
    iget v4, p0, Lorg/andengine/entity/particle/ParticleSystem;->mParticlesMaximum:I

    iget v5, p0, Lorg/andengine/entity/particle/ParticleSystem;->mParticlesAlive:I

    sub-int/2addr v4, v5

    iget v5, p0, Lorg/andengine/entity/particle/ParticleSystem;->mParticlesDueToSpawn:F

    invoke-static {v5}, Landroid/util/FloatMath;->floor(F)F

    move-result v5

    float-to-int v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 182
    .local v3, particlesToSpawnThisFrame:I
    iget v4, p0, Lorg/andengine/entity/particle/ParticleSystem;->mParticlesDueToSpawn:F

    int-to-float v5, v3

    sub-float/2addr v4, v5

    iput v4, p0, Lorg/andengine/entity/particle/ParticleSystem;->mParticlesDueToSpawn:F

    .line 184
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 187
    return-void

    .line 185
    :cond_0
    invoke-direct {p0}, Lorg/andengine/entity/particle/ParticleSystem;->spawnParticle()V

    .line 184
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addParticleInitializer(Lorg/andengine/entity/particle/initializer/IParticleInitializer;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/entity/particle/initializer/IParticleInitializer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, this:Lorg/andengine/entity/particle/ParticleSystem;,"Lorg/andengine/entity/particle/ParticleSystem<TT;>;"
    .local p1, pParticleInitializer:Lorg/andengine/entity/particle/initializer/IParticleInitializer;,"Lorg/andengine/entity/particle/initializer/IParticleInitializer<TT;>;"
    iget-object v0, p0, Lorg/andengine/entity/particle/ParticleSystem;->mParticleInitializers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    return-void
.end method

.method public addParticleModifier(Lorg/andengine/entity/particle/modifier/IParticleModifier;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/entity/particle/modifier/IParticleModifier",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p0, this:Lorg/andengine/entity/particle/ParticleSystem;,"Lorg/andengine/entity/particle/ParticleSystem<TT;>;"
    .local p1, pParticleModifier:Lorg/andengine/entity/particle/modifier/IParticleModifier;,"Lorg/andengine/entity/particle/modifier/IParticleModifier<TT;>;"
    iget-object v0, p0, Lorg/andengine/entity/particle/ParticleSystem;->mParticleModifiers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    return-void
.end method

.method protected determineCurrentRate()F
    .locals 2

    .prologue
    .line 224
    .local p0, this:Lorg/andengine/entity/particle/ParticleSystem;,"Lorg/andengine/entity/particle/ParticleSystem<TT;>;"
    iget v0, p0, Lorg/andengine/entity/particle/ParticleSystem;->mRateMinimum:F

    iget v1, p0, Lorg/andengine/entity/particle/ParticleSystem;->mRateMaximum:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 225
    iget v0, p0, Lorg/andengine/entity/particle/ParticleSystem;->mRateMinimum:F

    .line 227
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/andengine/entity/particle/ParticleSystem;->mRateMinimum:F

    iget v1, p0, Lorg/andengine/entity/particle/ParticleSystem;->mRateMaximum:F

    invoke-static {v0, v1}, Lorg/andengine/util/math/MathUtils;->random(FF)F

    move-result v0

    goto :goto_0
.end method

.method public getParticleEmitter()Lorg/andengine/entity/particle/emitter/IParticleEmitter;
    .locals 1

    .prologue
    .line 92
    .local p0, this:Lorg/andengine/entity/particle/ParticleSystem;,"Lorg/andengine/entity/particle/ParticleSystem<TT;>;"
    iget-object v0, p0, Lorg/andengine/entity/particle/ParticleSystem;->mParticleEmitter:Lorg/andengine/entity/particle/emitter/IParticleEmitter;

    return-object v0
.end method

.method public getParticleFactory()Lorg/andengine/entity/IEntityFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/andengine/entity/IEntityFactory",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, this:Lorg/andengine/entity/particle/ParticleSystem;,"Lorg/andengine/entity/particle/ParticleSystem<TT;>;"
    iget-object v0, p0, Lorg/andengine/entity/particle/ParticleSystem;->mEntityFactory:Lorg/andengine/entity/IEntityFactory;

    return-object v0
.end method

.method public isParticlesSpawnEnabled()Z
    .locals 1

    .prologue
    .line 80
    .local p0, this:Lorg/andengine/entity/particle/ParticleSystem;,"Lorg/andengine/entity/particle/ParticleSystem<TT;>;"
    iget-boolean v0, p0, Lorg/andengine/entity/particle/ParticleSystem;->mParticlesSpawnEnabled:Z

    return v0
.end method

.method protected moveParticleToEnd(I)V
    .locals 5
    .parameter "pIndex"

    .prologue
    .line 141
    .local p0, this:Lorg/andengine/entity/particle/ParticleSystem;,"Lorg/andengine/entity/particle/ParticleSystem<TT;>;"
    iget-object v2, p0, Lorg/andengine/entity/particle/ParticleSystem;->mParticles:[Lorg/andengine/entity/particle/Particle;

    aget-object v0, v2, p1

    .line 143
    .local v0, particle:Lorg/andengine/entity/particle/Particle;,"Lorg/andengine/entity/particle/Particle<TT;>;"
    iget v2, p0, Lorg/andengine/entity/particle/ParticleSystem;->mParticlesAlive:I

    sub-int v1, v2, p1

    .line 144
    .local v1, particlesToCopy:I
    if-lez v1, :cond_0

    .line 145
    iget-object v2, p0, Lorg/andengine/entity/particle/ParticleSystem;->mParticles:[Lorg/andengine/entity/particle/Particle;

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Lorg/andengine/entity/particle/ParticleSystem;->mParticles:[Lorg/andengine/entity/particle/Particle;

    invoke-static {v2, v3, v4, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    :cond_0
    iget-object v2, p0, Lorg/andengine/entity/particle/ParticleSystem;->mParticles:[Lorg/andengine/entity/particle/Particle;

    iget v3, p0, Lorg/andengine/entity/particle/ParticleSystem;->mParticlesAlive:I

    aput-object v0, v2, v3

    .line 153
    return-void
.end method

.method protected onManagedDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V
    .locals 2
    .parameter "pGLState"
    .parameter "pCamera"

    .prologue
    .line 109
    .local p0, this:Lorg/andengine/entity/particle/ParticleSystem;,"Lorg/andengine/entity/particle/ParticleSystem<TT;>;"
    iget v1, p0, Lorg/andengine/entity/particle/ParticleSystem;->mParticlesAlive:I

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 112
    return-void

    .line 110
    :cond_0
    iget-object v1, p0, Lorg/andengine/entity/particle/ParticleSystem;->mParticles:[Lorg/andengine/entity/particle/Particle;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lorg/andengine/entity/particle/Particle;->onDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V

    .line 109
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method protected onManagedUpdate(F)V
    .locals 5
    .parameter "pSecondsElapsed"

    .prologue
    .line 116
    .local p0, this:Lorg/andengine/entity/particle/ParticleSystem;,"Lorg/andengine/entity/particle/ParticleSystem<TT;>;"
    invoke-super {p0, p1}, Lorg/andengine/entity/Entity;->onManagedUpdate(F)V

    .line 118
    invoke-virtual {p0}, Lorg/andengine/entity/particle/ParticleSystem;->isParticlesSpawnEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 119
    invoke-direct {p0, p1}, Lorg/andengine/entity/particle/ParticleSystem;->spawnParticles(F)V

    .line 122
    :cond_0
    iget-object v4, p0, Lorg/andengine/entity/particle/ParticleSystem;->mParticleModifiers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 123
    .local v3, particleModifierCountMinusOne:I
    iget v4, p0, Lorg/andengine/entity/particle/ParticleSystem;->mParticlesAlive:I

    add-int/lit8 v0, v4, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_1

    .line 138
    return-void

    .line 124
    :cond_1
    iget-object v4, p0, Lorg/andengine/entity/particle/ParticleSystem;->mParticles:[Lorg/andengine/entity/particle/Particle;

    aget-object v2, v4, v0

    .line 127
    .local v2, particle:Lorg/andengine/entity/particle/Particle;,"Lorg/andengine/entity/particle/Particle<TT;>;"
    move v1, v3

    .local v1, j:I
    :goto_1
    if-gez v1, :cond_3

    .line 131
    invoke-virtual {v2, p1}, Lorg/andengine/entity/particle/Particle;->onUpdate(F)V

    .line 132
    iget-boolean v4, v2, Lorg/andengine/entity/particle/Particle;->mExpired:Z

    if-eqz v4, :cond_2

    .line 133
    iget v4, p0, Lorg/andengine/entity/particle/ParticleSystem;->mParticlesAlive:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/andengine/entity/particle/ParticleSystem;->mParticlesAlive:I

    .line 135
    invoke-virtual {p0, v0}, Lorg/andengine/entity/particle/ParticleSystem;->moveParticleToEnd(I)V

    .line 123
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 128
    :cond_3
    iget-object v4, p0, Lorg/andengine/entity/particle/ParticleSystem;->mParticleModifiers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/andengine/entity/particle/modifier/IParticleModifier;

    invoke-interface {v4, v2}, Lorg/andengine/entity/particle/modifier/IParticleModifier;->onUpdateParticle(Lorg/andengine/entity/particle/Particle;)V

    .line 127
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public removeParticleInitializer(Lorg/andengine/entity/particle/initializer/IParticleInitializer;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/entity/particle/initializer/IParticleInitializer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 172
    .local p0, this:Lorg/andengine/entity/particle/ParticleSystem;,"Lorg/andengine/entity/particle/ParticleSystem<TT;>;"
    .local p1, pParticleInitializer:Lorg/andengine/entity/particle/initializer/IParticleInitializer;,"Lorg/andengine/entity/particle/initializer/IParticleInitializer<TT;>;"
    iget-object v0, p0, Lorg/andengine/entity/particle/ParticleSystem;->mParticleInitializers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 173
    return-void
.end method

.method public removeParticleModifier(Lorg/andengine/entity/particle/modifier/IParticleModifier;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/entity/particle/modifier/IParticleModifier",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p0, this:Lorg/andengine/entity/particle/ParticleSystem;,"Lorg/andengine/entity/particle/ParticleSystem<TT;>;"
    .local p1, pParticleModifier:Lorg/andengine/entity/particle/modifier/IParticleModifier;,"Lorg/andengine/entity/particle/modifier/IParticleModifier<TT;>;"
    iget-object v0, p0, Lorg/andengine/entity/particle/ParticleSystem;->mParticleModifiers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 165
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 101
    .local p0, this:Lorg/andengine/entity/particle/ParticleSystem;,"Lorg/andengine/entity/particle/ParticleSystem<TT;>;"
    invoke-super {p0}, Lorg/andengine/entity/Entity;->reset()V

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lorg/andengine/entity/particle/ParticleSystem;->mParticlesDueToSpawn:F

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lorg/andengine/entity/particle/ParticleSystem;->mParticlesAlive:I

    .line 105
    return-void
.end method

.method public setParticlesSpawnEnabled(Z)V
    .locals 0
    .parameter "pParticlesSpawnEnabled"

    .prologue
    .line 84
    .local p0, this:Lorg/andengine/entity/particle/ParticleSystem;,"Lorg/andengine/entity/particle/ParticleSystem<TT;>;"
    iput-boolean p1, p0, Lorg/andengine/entity/particle/ParticleSystem;->mParticlesSpawnEnabled:Z

    .line 85
    return-void
.end method
