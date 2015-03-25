.class public Lorg/andengine/extension/physics/box2d/FixedStepPhysicsWorld;
.super Lorg/andengine/extension/physics/box2d/PhysicsWorld;
.source "FixedStepPhysicsWorld.java"


# static fields
.field public static final STEPSPERSECOND_DEFAULT:I = 0x3c


# instance fields
.field private final mMaximumStepsPerUpdate:I

.field private mSecondsElapsedAccumulator:F

.field private final mTimeStep:F


# direct methods
.method public constructor <init>(IILcom/badlogic/gdx/math/Vector2;Z)V
    .locals 2
    .parameter "pStepsPerSecond"
    .parameter "pMaximumStepsPerUpdate"
    .parameter "pGravity"
    .parameter "pAllowSleep"

    .prologue
    .line 40
    invoke-direct {p0, p3, p4}, Lorg/andengine/extension/physics/box2d/PhysicsWorld;-><init>(Lcom/badlogic/gdx/math/Vector2;Z)V

    .line 41
    const/high16 v0, 0x3f80

    int-to-float v1, p1

    div-float/2addr v0, v1

    iput v0, p0, Lorg/andengine/extension/physics/box2d/FixedStepPhysicsWorld;->mTimeStep:F

    .line 42
    iput p2, p0, Lorg/andengine/extension/physics/box2d/FixedStepPhysicsWorld;->mMaximumStepsPerUpdate:I

    .line 43
    return-void
.end method

.method public constructor <init>(IILcom/badlogic/gdx/math/Vector2;ZII)V
    .locals 2
    .parameter "pStepsPerSecond"
    .parameter "pMaximumStepsPerUpdate"
    .parameter "pGravity"
    .parameter "pAllowSleep"
    .parameter "pVelocityIterations"
    .parameter "pPositionIterations"

    .prologue
    .line 50
    invoke-direct {p0, p3, p4, p5, p6}, Lorg/andengine/extension/physics/box2d/PhysicsWorld;-><init>(Lcom/badlogic/gdx/math/Vector2;ZII)V

    .line 51
    const/high16 v0, 0x3f80

    int-to-float v1, p1

    div-float/2addr v0, v1

    iput v0, p0, Lorg/andengine/extension/physics/box2d/FixedStepPhysicsWorld;->mTimeStep:F

    .line 52
    iput p2, p0, Lorg/andengine/extension/physics/box2d/FixedStepPhysicsWorld;->mMaximumStepsPerUpdate:I

    .line 53
    return-void
.end method

.method public constructor <init>(ILcom/badlogic/gdx/math/Vector2;Z)V
    .locals 1
    .parameter "pStepsPerSecond"
    .parameter "pGravity"
    .parameter "pAllowSleep"

    .prologue
    .line 36
    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/andengine/extension/physics/box2d/FixedStepPhysicsWorld;-><init>(IILcom/badlogic/gdx/math/Vector2;Z)V

    .line 37
    return-void
.end method

.method public constructor <init>(ILcom/badlogic/gdx/math/Vector2;ZII)V
    .locals 7
    .parameter "pStepsPerSecond"
    .parameter "pGravity"
    .parameter "pAllowSleep"
    .parameter "pVelocityIterations"
    .parameter "pPositionIterations"

    .prologue
    .line 46
    const v2, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/andengine/extension/physics/box2d/FixedStepPhysicsWorld;-><init>(IILcom/badlogic/gdx/math/Vector2;ZII)V

    .line 47
    return-void
.end method


# virtual methods
.method public onUpdate(F)V
    .locals 6
    .parameter "pSecondsElapsed"

    .prologue
    .line 65
    iget-object v5, p0, Lorg/andengine/extension/physics/box2d/FixedStepPhysicsWorld;->mRunnableHandler:Lorg/andengine/engine/handler/runnable/RunnableHandler;

    invoke-virtual {v5, p1}, Lorg/andengine/engine/handler/runnable/RunnableHandler;->onUpdate(F)V

    .line 66
    iget v5, p0, Lorg/andengine/extension/physics/box2d/FixedStepPhysicsWorld;->mSecondsElapsedAccumulator:F

    add-float/2addr v5, p1

    iput v5, p0, Lorg/andengine/extension/physics/box2d/FixedStepPhysicsWorld;->mSecondsElapsedAccumulator:F

    .line 68
    iget v3, p0, Lorg/andengine/extension/physics/box2d/FixedStepPhysicsWorld;->mVelocityIterations:I

    .line 69
    .local v3, velocityIterations:I
    iget v0, p0, Lorg/andengine/extension/physics/box2d/FixedStepPhysicsWorld;->mPositionIterations:I

    .line 71
    .local v0, positionIterations:I
    iget-object v4, p0, Lorg/andengine/extension/physics/box2d/FixedStepPhysicsWorld;->mWorld:Lcom/badlogic/gdx/physics/box2d/World;

    .line 72
    .local v4, world:Lcom/badlogic/gdx/physics/box2d/World;
    iget v1, p0, Lorg/andengine/extension/physics/box2d/FixedStepPhysicsWorld;->mTimeStep:F

    .line 74
    .local v1, stepLength:F
    iget v2, p0, Lorg/andengine/extension/physics/box2d/FixedStepPhysicsWorld;->mMaximumStepsPerUpdate:I

    .line 76
    .local v2, stepsAllowed:I
    :goto_0
    iget v5, p0, Lorg/andengine/extension/physics/box2d/FixedStepPhysicsWorld;->mSecondsElapsedAccumulator:F

    cmpl-float v5, v5, v1

    if-ltz v5, :cond_0

    if-gtz v2, :cond_1

    .line 82
    :cond_0
    iget-object v5, p0, Lorg/andengine/extension/physics/box2d/FixedStepPhysicsWorld;->mPhysicsConnectorManager:Lorg/andengine/extension/physics/box2d/PhysicsConnectorManager;

    invoke-virtual {v5, p1}, Lorg/andengine/extension/physics/box2d/PhysicsConnectorManager;->onUpdate(F)V

    .line 83
    return-void

    .line 77
    :cond_1
    invoke-virtual {v4, v1, v3, v0}, Lcom/badlogic/gdx/physics/box2d/World;->step(FII)V

    .line 78
    iget v5, p0, Lorg/andengine/extension/physics/box2d/FixedStepPhysicsWorld;->mSecondsElapsedAccumulator:F

    sub-float/2addr v5, v1

    iput v5, p0, Lorg/andengine/extension/physics/box2d/FixedStepPhysicsWorld;->mSecondsElapsedAccumulator:F

    .line 79
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method
