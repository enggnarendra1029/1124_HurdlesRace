.class public Lorg/andengine/extension/physics/box2d/PhysicsConnector;
.super Ljava/lang/Object;
.source "PhysicsConnector.java"

# interfaces
.implements Lorg/andengine/engine/handler/IUpdateHandler;
.implements Lorg/andengine/extension/physics/box2d/util/constants/PhysicsConstants;


# instance fields
.field protected final mBody:Lcom/badlogic/gdx/physics/box2d/Body;

.field protected final mPixelToMeterRatio:F

.field protected final mShape:Lorg/andengine/entity/shape/IShape;

.field protected final mShapeHalfBaseHeight:F

.field protected final mShapeHalfBaseWidth:F

.field protected mUpdatePosition:Z

.field protected mUpdateRotation:Z


# direct methods
.method public constructor <init>(Lorg/andengine/entity/shape/IAreaShape;Lcom/badlogic/gdx/physics/box2d/Body;)V
    .locals 1
    .parameter "pAreaShape"
    .parameter "pBody"

    .prologue
    const/4 v0, 0x1

    .line 43
    invoke-direct {p0, p1, p2, v0, v0}, Lorg/andengine/extension/physics/box2d/PhysicsConnector;-><init>(Lorg/andengine/entity/shape/IAreaShape;Lcom/badlogic/gdx/physics/box2d/Body;ZZ)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/andengine/entity/shape/IAreaShape;Lcom/badlogic/gdx/physics/box2d/Body;F)V
    .locals 6
    .parameter "pAreaShape"
    .parameter "pBody"
    .parameter "pPixelToMeterRatio"

    .prologue
    const/4 v3, 0x1

    .line 47
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/andengine/extension/physics/box2d/PhysicsConnector;-><init>(Lorg/andengine/entity/shape/IAreaShape;Lcom/badlogic/gdx/physics/box2d/Body;ZZF)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/andengine/entity/shape/IAreaShape;Lcom/badlogic/gdx/physics/box2d/Body;ZZ)V
    .locals 6
    .parameter "pAreaShape"
    .parameter "pBody"
    .parameter "pUdatePosition"
    .parameter "pUpdateRotation"

    .prologue
    .line 51
    const/high16 v5, 0x4200

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/andengine/extension/physics/box2d/PhysicsConnector;-><init>(Lorg/andengine/entity/shape/IAreaShape;Lcom/badlogic/gdx/physics/box2d/Body;ZZF)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/andengine/entity/shape/IAreaShape;Lcom/badlogic/gdx/physics/box2d/Body;ZZF)V
    .locals 2
    .parameter "pAreaShape"
    .parameter "pBody"
    .parameter "pUdatePosition"
    .parameter "pUpdateRotation"
    .parameter "pPixelToMeterRatio"

    .prologue
    const/high16 v1, 0x3f00

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/andengine/extension/physics/box2d/PhysicsConnector;->mShape:Lorg/andengine/entity/shape/IShape;

    .line 56
    iput-object p2, p0, Lorg/andengine/extension/physics/box2d/PhysicsConnector;->mBody:Lcom/badlogic/gdx/physics/box2d/Body;

    .line 58
    iput-boolean p3, p0, Lorg/andengine/extension/physics/box2d/PhysicsConnector;->mUpdatePosition:Z

    .line 59
    iput-boolean p4, p0, Lorg/andengine/extension/physics/box2d/PhysicsConnector;->mUpdateRotation:Z

    .line 60
    iput p5, p0, Lorg/andengine/extension/physics/box2d/PhysicsConnector;->mPixelToMeterRatio:F

    .line 62
    invoke-interface {p1}, Lorg/andengine/entity/shape/IAreaShape;->getWidth()F

    move-result v0

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/andengine/extension/physics/box2d/PhysicsConnector;->mShapeHalfBaseWidth:F

    .line 63
    invoke-interface {p1}, Lorg/andengine/entity/shape/IAreaShape;->getHeight()F

    move-result v0

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/andengine/extension/physics/box2d/PhysicsConnector;->mShapeHalfBaseHeight:F

    .line 64
    return-void
.end method


# virtual methods
.method public getBody()Lcom/badlogic/gdx/physics/box2d/Body;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/andengine/extension/physics/box2d/PhysicsConnector;->mBody:Lcom/badlogic/gdx/physics/box2d/Body;

    return-object v0
.end method

.method public getShape()Lorg/andengine/entity/shape/IShape;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/andengine/extension/physics/box2d/PhysicsConnector;->mShape:Lorg/andengine/entity/shape/IShape;

    return-object v0
.end method

.method public isUpdatePosition()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lorg/andengine/extension/physics/box2d/PhysicsConnector;->mUpdatePosition:Z

    return v0
.end method

.method public isUpdateRotation()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lorg/andengine/extension/physics/box2d/PhysicsConnector;->mUpdateRotation:Z

    return v0
.end method

.method public onUpdate(F)V
    .locals 8
    .parameter "pSecondsElapsed"

    .prologue
    .line 100
    iget-object v4, p0, Lorg/andengine/extension/physics/box2d/PhysicsConnector;->mShape:Lorg/andengine/entity/shape/IShape;

    .line 101
    .local v4, shape:Lorg/andengine/entity/shape/IShape;
    iget-object v1, p0, Lorg/andengine/extension/physics/box2d/PhysicsConnector;->mBody:Lcom/badlogic/gdx/physics/box2d/Body;

    .line 103
    .local v1, body:Lcom/badlogic/gdx/physics/box2d/Body;
    iget-boolean v5, p0, Lorg/andengine/extension/physics/box2d/PhysicsConnector;->mUpdatePosition:Z

    if-eqz v5, :cond_0

    .line 104
    invoke-virtual {v1}, Lcom/badlogic/gdx/physics/box2d/Body;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    .line 105
    .local v3, position:Lcom/badlogic/gdx/math/Vector2;
    iget v2, p0, Lorg/andengine/extension/physics/box2d/PhysicsConnector;->mPixelToMeterRatio:F

    .line 106
    .local v2, pixelToMeterRatio:F
    iget v5, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v5, v2

    iget v6, p0, Lorg/andengine/extension/physics/box2d/PhysicsConnector;->mShapeHalfBaseWidth:F

    sub-float/2addr v5, v6

    iget v6, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v6, v2

    iget v7, p0, Lorg/andengine/extension/physics/box2d/PhysicsConnector;->mShapeHalfBaseHeight:F

    sub-float/2addr v6, v7

    invoke-interface {v4, v5, v6}, Lorg/andengine/entity/shape/IShape;->setPosition(FF)V

    .line 109
    .end local v2           #pixelToMeterRatio:F
    .end local v3           #position:Lcom/badlogic/gdx/math/Vector2;
    :cond_0
    iget-boolean v5, p0, Lorg/andengine/extension/physics/box2d/PhysicsConnector;->mUpdateRotation:Z

    if-eqz v5, :cond_1

    .line 110
    invoke-virtual {v1}, Lcom/badlogic/gdx/physics/box2d/Body;->getAngle()F

    move-result v0

    .line 111
    .local v0, angle:F
    invoke-static {v0}, Lorg/andengine/util/math/MathUtils;->radToDeg(F)F

    move-result v5

    invoke-interface {v4, v5}, Lorg/andengine/entity/shape/IShape;->setRotation(F)V

    .line 113
    .end local v0           #angle:F
    :cond_1
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public setUpdatePosition(Z)V
    .locals 0
    .parameter "pUpdatePosition"

    .prologue
    .line 87
    iput-boolean p1, p0, Lorg/andengine/extension/physics/box2d/PhysicsConnector;->mUpdatePosition:Z

    .line 88
    return-void
.end method

.method public setUpdateRotation(Z)V
    .locals 0
    .parameter "pUpdateRotation"

    .prologue
    .line 91
    iput-boolean p1, p0, Lorg/andengine/extension/physics/box2d/PhysicsConnector;->mUpdateRotation:Z

    .line 92
    return-void
.end method
