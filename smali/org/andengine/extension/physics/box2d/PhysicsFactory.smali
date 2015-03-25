.class public Lorg/andengine/extension/physics/box2d/PhysicsFactory;
.super Ljava/lang/Object;
.source "PhysicsFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBoxBody(Lorg/andengine/extension/physics/box2d/PhysicsWorld;FFFFFLcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;Lcom/badlogic/gdx/physics/box2d/FixtureDef;)Lcom/badlogic/gdx/physics/box2d/Body;
    .locals 9
    .parameter "pPhysicsWorld"
    .parameter "pCenterX"
    .parameter "pCenterY"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pRotation"
    .parameter "pBodyType"
    .parameter "pFixtureDef"

    .prologue
    .line 162
    const/high16 v8, 0x4200

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-static/range {v0 .. v8}, Lorg/andengine/extension/physics/box2d/PhysicsFactory;->createBoxBody(Lorg/andengine/extension/physics/box2d/PhysicsWorld;FFFFFLcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;Lcom/badlogic/gdx/physics/box2d/FixtureDef;F)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v0

    return-object v0
.end method

.method public static createBoxBody(Lorg/andengine/extension/physics/box2d/PhysicsWorld;FFFFFLcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;Lcom/badlogic/gdx/physics/box2d/FixtureDef;F)Lcom/badlogic/gdx/physics/box2d/Body;
    .locals 7
    .parameter "pPhysicsWorld"
    .parameter "pCenterX"
    .parameter "pCenterY"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pRotation"
    .parameter "pBodyType"
    .parameter "pFixtureDef"
    .parameter "pPixelToMeterRatio"

    .prologue
    .line 195
    new-instance v1, Lcom/badlogic/gdx/physics/box2d/BodyDef;

    invoke-direct {v1}, Lcom/badlogic/gdx/physics/box2d/BodyDef;-><init>()V

    .line 196
    .local v1, boxBodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;
    iput-object p6, v1, Lcom/badlogic/gdx/physics/box2d/BodyDef;->type:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    .line 198
    iget-object v5, v1, Lcom/badlogic/gdx/physics/box2d/BodyDef;->position:Lcom/badlogic/gdx/math/Vector2;

    div-float v6, p1, p8

    iput v6, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 199
    iget-object v5, v1, Lcom/badlogic/gdx/physics/box2d/BodyDef;->position:Lcom/badlogic/gdx/math/Vector2;

    div-float v6, p2, p8

    iput v6, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 201
    invoke-virtual {p0, v1}, Lorg/andengine/extension/physics/box2d/PhysicsWorld;->createBody(Lcom/badlogic/gdx/physics/box2d/BodyDef;)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v0

    .line 203
    .local v0, boxBody:Lcom/badlogic/gdx/physics/box2d/Body;
    new-instance v2, Lcom/badlogic/gdx/physics/box2d/PolygonShape;

    invoke-direct {v2}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;-><init>()V

    .line 205
    .local v2, boxPoly:Lcom/badlogic/gdx/physics/box2d/PolygonShape;
    const/high16 v5, 0x3f00

    mul-float/2addr v5, p3

    div-float v4, v5, p8

    .line 206
    .local v4, halfWidth:F
    const/high16 v5, 0x3f00

    mul-float/2addr v5, p4

    div-float v3, v5, p8

    .line 208
    .local v3, halfHeight:F
    invoke-virtual {v2, v4, v3}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->setAsBox(FF)V

    .line 209
    iput-object v2, p7, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->shape:Lcom/badlogic/gdx/physics/box2d/Shape;

    .line 211
    invoke-virtual {v0, p7}, Lcom/badlogic/gdx/physics/box2d/Body;->createFixture(Lcom/badlogic/gdx/physics/box2d/FixtureDef;)Lcom/badlogic/gdx/physics/box2d/Fixture;

    .line 213
    invoke-virtual {v2}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->dispose()V

    .line 215
    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getWorldCenter()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v5

    invoke-static {p5}, Lorg/andengine/util/math/MathUtils;->degToRad(F)F

    move-result v6

    invoke-virtual {v0, v5, v6}, Lcom/badlogic/gdx/physics/box2d/Body;->setTransform(Lcom/badlogic/gdx/math/Vector2;F)V

    .line 217
    return-object v0
.end method

.method public static createBoxBody(Lorg/andengine/extension/physics/box2d/PhysicsWorld;FFFFLcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;Lcom/badlogic/gdx/physics/box2d/FixtureDef;)Lcom/badlogic/gdx/physics/box2d/Body;
    .locals 9
    .parameter "pPhysicsWorld"
    .parameter "pCenterX"
    .parameter "pCenterY"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pBodyType"
    .parameter "pFixtureDef"

    .prologue
    .line 146
    const/4 v5, 0x0

    const/high16 v8, 0x4200

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    move-object v7, p6

    invoke-static/range {v0 .. v8}, Lorg/andengine/extension/physics/box2d/PhysicsFactory;->createBoxBody(Lorg/andengine/extension/physics/box2d/PhysicsWorld;FFFFFLcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;Lcom/badlogic/gdx/physics/box2d/FixtureDef;F)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v0

    return-object v0
.end method

.method public static createBoxBody(Lorg/andengine/extension/physics/box2d/PhysicsWorld;FFFFLcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;Lcom/badlogic/gdx/physics/box2d/FixtureDef;F)Lcom/badlogic/gdx/physics/box2d/Body;
    .locals 9
    .parameter "pPhysicsWorld"
    .parameter "pCenterX"
    .parameter "pCenterY"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pBodyType"
    .parameter "pFixtureDef"
    .parameter "pPixelToMeterRatio"

    .prologue
    .line 178
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lorg/andengine/extension/physics/box2d/PhysicsFactory;->createBoxBody(Lorg/andengine/extension/physics/box2d/PhysicsWorld;FFFFFLcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;Lcom/badlogic/gdx/physics/box2d/FixtureDef;F)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v0

    return-object v0
.end method

.method public static createBoxBody(Lorg/andengine/extension/physics/box2d/PhysicsWorld;Lorg/andengine/entity/shape/IAreaShape;Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;Lcom/badlogic/gdx/physics/box2d/FixtureDef;)Lcom/badlogic/gdx/physics/box2d/Body;
    .locals 1
    .parameter "pPhysicsWorld"
    .parameter "pAreaShape"
    .parameter "pBodyType"
    .parameter "pFixtureDef"

    .prologue
    .line 115
    const/high16 v0, 0x4200

    invoke-static {p0, p1, p2, p3, v0}, Lorg/andengine/extension/physics/box2d/PhysicsFactory;->createBoxBody(Lorg/andengine/extension/physics/box2d/PhysicsWorld;Lorg/andengine/entity/shape/IAreaShape;Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;Lcom/badlogic/gdx/physics/box2d/FixtureDef;F)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v0

    return-object v0
.end method

.method public static createBoxBody(Lorg/andengine/extension/physics/box2d/PhysicsWorld;Lorg/andengine/entity/shape/IAreaShape;Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;Lcom/badlogic/gdx/physics/box2d/FixtureDef;F)Lcom/badlogic/gdx/physics/box2d/Body;
    .locals 10
    .parameter "pPhysicsWorld"
    .parameter "pAreaShape"
    .parameter "pBodyType"
    .parameter "pFixtureDef"
    .parameter "pPixelToMeterRatio"

    .prologue
    .line 128
    invoke-interface {p1}, Lorg/andengine/entity/shape/IAreaShape;->getSceneCenterCoordinates()[F

    move-result-object v9

    .line 129
    .local v9, sceneCenterCoordinates:[F
    const/4 v0, 0x0

    aget v1, v9, v0

    .line 130
    .local v1, centerX:F
    const/4 v0, 0x1

    aget v2, v9, v0

    .line 131
    .local v2, centerY:F
    invoke-interface {p1}, Lorg/andengine/entity/shape/IAreaShape;->getWidthScaled()F

    move-result v3

    invoke-interface {p1}, Lorg/andengine/entity/shape/IAreaShape;->getHeightScaled()F

    move-result v4

    invoke-interface {p1}, Lorg/andengine/entity/shape/IAreaShape;->getRotation()F

    move-result v5

    move-object v0, p0

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    invoke-static/range {v0 .. v8}, Lorg/andengine/extension/physics/box2d/PhysicsFactory;->createBoxBody(Lorg/andengine/extension/physics/box2d/PhysicsWorld;FFFFFLcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;Lcom/badlogic/gdx/physics/box2d/FixtureDef;F)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v0

    return-object v0
.end method

.method public static createChainBody(Lorg/andengine/extension/physics/box2d/PhysicsWorld;FF[Lcom/badlogic/gdx/math/Vector2;FLcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;Lcom/badlogic/gdx/physics/box2d/FixtureDef;F)Lcom/badlogic/gdx/physics/box2d/Body;
    .locals 5
    .parameter "pPhysicsWorld"
    .parameter "pCenterX"
    .parameter "pCenterY"
    .parameter "vertices"
    .parameter "pRotation"
    .parameter "pBodyType"
    .parameter "pFixtureDef"
    .parameter "pPixelToMeterRatio"

    .prologue
    .line 498
    new-instance v1, Lcom/badlogic/gdx/physics/box2d/BodyDef;

    invoke-direct {v1}, Lcom/badlogic/gdx/physics/box2d/BodyDef;-><init>()V

    .line 500
    .local v1, chainBodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;
    iput-object p5, v1, Lcom/badlogic/gdx/physics/box2d/BodyDef;->type:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    .line 501
    iget-object v3, v1, Lcom/badlogic/gdx/physics/box2d/BodyDef;->position:Lcom/badlogic/gdx/math/Vector2;

    div-float v4, p1, p7

    iput v4, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 502
    iget-object v3, v1, Lcom/badlogic/gdx/physics/box2d/BodyDef;->position:Lcom/badlogic/gdx/math/Vector2;

    div-float v4, p2, p7

    iput v4, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 503
    invoke-static {p4}, Lorg/andengine/util/math/MathUtils;->degToRad(F)F

    move-result v3

    iput v3, v1, Lcom/badlogic/gdx/physics/box2d/BodyDef;->angle:F

    .line 505
    invoke-virtual {p0, v1}, Lorg/andengine/extension/physics/box2d/PhysicsWorld;->createBody(Lcom/badlogic/gdx/physics/box2d/BodyDef;)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v0

    .line 506
    .local v0, chainBody:Lcom/badlogic/gdx/physics/box2d/Body;
    new-instance v2, Lcom/badlogic/gdx/physics/box2d/ChainShape;

    invoke-direct {v2}, Lcom/badlogic/gdx/physics/box2d/ChainShape;-><init>()V

    .line 508
    .local v2, chainPoly:Lcom/badlogic/gdx/physics/box2d/ChainShape;
    iput-object v2, p6, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->shape:Lcom/badlogic/gdx/physics/box2d/Shape;

    .line 509
    invoke-virtual {v2, p3}, Lcom/badlogic/gdx/physics/box2d/ChainShape;->createChain([Lcom/badlogic/gdx/math/Vector2;)V

    .line 510
    invoke-virtual {v0, p6}, Lcom/badlogic/gdx/physics/box2d/Body;->createFixture(Lcom/badlogic/gdx/physics/box2d/FixtureDef;)Lcom/badlogic/gdx/physics/box2d/Fixture;

    .line 511
    invoke-virtual {v2}, Lcom/badlogic/gdx/physics/box2d/ChainShape;->dispose()V

    .line 513
    return-object v0
.end method

.method public static createChainBody(Lorg/andengine/extension/physics/box2d/PhysicsWorld;[Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;Lcom/badlogic/gdx/physics/box2d/FixtureDef;F)Lcom/badlogic/gdx/physics/box2d/Body;
    .locals 8
    .parameter "pPhysicsWorld"
    .parameter "vertices"
    .parameter "pBodyType"
    .parameter "pFixtureDef"
    .parameter "pPixelToMeterRatio"

    .prologue
    const/4 v1, 0x0

    .line 482
    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move v4, v1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-static/range {v0 .. v7}, Lorg/andengine/extension/physics/box2d/PhysicsFactory;->createChainBody(Lorg/andengine/extension/physics/box2d/PhysicsWorld;FF[Lcom/badlogic/gdx/math/Vector2;FLcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;Lcom/badlogic/gdx/physics/box2d/FixtureDef;F)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v0

    return-object v0
.end method

.method public static createCircleBody(Lorg/andengine/extension/physics/box2d/PhysicsWorld;FFFFLcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;Lcom/badlogic/gdx/physics/box2d/FixtureDef;)Lcom/badlogic/gdx/physics/box2d/Body;
    .locals 8
    .parameter "pPhysicsWorld"
    .parameter "pCenterX"
    .parameter "pCenterY"
    .parameter "pRadius"
    .parameter "pRotation"
    .parameter "pBodyType"
    .parameter "pFixtureDef"

    .prologue
    .line 274
    const/high16 v7, 0x4200

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v7}, Lorg/andengine/extension/physics/box2d/PhysicsFactory;->createCircleBody(Lorg/andengine/extension/physics/box2d/PhysicsWorld;FFFFLcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;Lcom/badlogic/gdx/physics/box2d/FixtureDef;F)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v0

    return-object v0
.end method

.method public static createCircleBody(Lorg/andengine/extension/physics/box2d/PhysicsWorld;FFFFLcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;Lcom/badlogic/gdx/physics/box2d/FixtureDef;F)Lcom/badlogic/gdx/physics/box2d/Body;
    .locals 6
    .parameter "pPhysicsWorld"
    .parameter "pCenterX"
    .parameter "pCenterY"
    .parameter "pRadius"
    .parameter "pRotation"
    .parameter "pBodyType"
    .parameter "pFixtureDef"
    .parameter "pPixelToMeterRatio"

    .prologue
    .line 305
    new-instance v1, Lcom/badlogic/gdx/physics/box2d/BodyDef;

    invoke-direct {v1}, Lcom/badlogic/gdx/physics/box2d/BodyDef;-><init>()V

    .line 306
    .local v1, circleBodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;
    iput-object p5, v1, Lcom/badlogic/gdx/physics/box2d/BodyDef;->type:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    .line 308
    iget-object v4, v1, Lcom/badlogic/gdx/physics/box2d/BodyDef;->position:Lcom/badlogic/gdx/math/Vector2;

    div-float v5, p1, p7

    iput v5, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 309
    iget-object v4, v1, Lcom/badlogic/gdx/physics/box2d/BodyDef;->position:Lcom/badlogic/gdx/math/Vector2;

    div-float v5, p2, p7

    iput v5, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 311
    invoke-static {p4}, Lorg/andengine/util/math/MathUtils;->degToRad(F)F

    move-result v4

    iput v4, v1, Lcom/badlogic/gdx/physics/box2d/BodyDef;->angle:F

    .line 313
    invoke-virtual {p0, v1}, Lorg/andengine/extension/physics/box2d/PhysicsWorld;->createBody(Lcom/badlogic/gdx/physics/box2d/BodyDef;)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v0

    .line 315
    .local v0, circleBody:Lcom/badlogic/gdx/physics/box2d/Body;
    new-instance v2, Lcom/badlogic/gdx/physics/box2d/CircleShape;

    invoke-direct {v2}, Lcom/badlogic/gdx/physics/box2d/CircleShape;-><init>()V

    .line 316
    .local v2, circlePoly:Lcom/badlogic/gdx/physics/box2d/CircleShape;
    iput-object v2, p6, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->shape:Lcom/badlogic/gdx/physics/box2d/Shape;

    .line 318
    div-float v3, p3, p7

    .line 319
    .local v3, radius:F
    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/physics/box2d/CircleShape;->setRadius(F)V

    .line 321
    invoke-virtual {v0, p6}, Lcom/badlogic/gdx/physics/box2d/Body;->createFixture(Lcom/badlogic/gdx/physics/box2d/FixtureDef;)Lcom/badlogic/gdx/physics/box2d/Fixture;

    .line 323
    invoke-virtual {v2}, Lcom/badlogic/gdx/physics/box2d/CircleShape;->dispose()V

    .line 325
    return-object v0
.end method

.method public static createCircleBody(Lorg/andengine/extension/physics/box2d/PhysicsWorld;FFFLcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;Lcom/badlogic/gdx/physics/box2d/FixtureDef;)Lcom/badlogic/gdx/physics/box2d/Body;
    .locals 8
    .parameter "pPhysicsWorld"
    .parameter "pCenterX"
    .parameter "pCenterY"
    .parameter "pRadius"
    .parameter "pBodyType"
    .parameter "pFixtureDef"

    .prologue
    .line 259
    const/4 v4, 0x0

    const/high16 v7, 0x4200

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v7}, Lorg/andengine/extension/physics/box2d/PhysicsFactory;->createCircleBody(Lorg/andengine/extension/physics/box2d/PhysicsWorld;FFFFLcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;Lcom/badlogic/gdx/physics/box2d/FixtureDef;F)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v0

    return-object v0
.end method

.method public static createCircleBody(Lorg/andengine/extension/physics/box2d/PhysicsWorld;FFFLcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;Lcom/badlogic/gdx/physics/box2d/FixtureDef;F)Lcom/badlogic/gdx/physics/box2d/Body;
    .locals 8
    .parameter "pPhysicsWorld"
    .parameter "pCenterX"
    .parameter "pCenterY"
    .parameter "pRadius"
    .parameter "pBodyType"
    .parameter "pFixtureDef"
    .parameter "pPixelToMeterRatio"

    .prologue
    .line 289
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Lorg/andengine/extension/physics/box2d/PhysicsFactory;->createCircleBody(Lorg/andengine/extension/physics/box2d/PhysicsWorld;FFFFLcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;Lcom/badlogic/gdx/physics/box2d/FixtureDef;F)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v0

    return-object v0
.end method

.method public static createCircleBody(Lorg/andengine/extension/physics/box2d/PhysicsWorld;Lorg/andengine/entity/shape/IAreaShape;Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;Lcom/badlogic/gdx/physics/box2d/FixtureDef;)Lcom/badlogic/gdx/physics/box2d/Body;
    .locals 1
    .parameter "pPhysicsWorld"
    .parameter "pAreaShape"
    .parameter "pBodyType"
    .parameter "pFixtureDef"

    .prologue
    .line 229
    const/high16 v0, 0x4200

    invoke-static {p0, p1, p2, p3, v0}, Lorg/andengine/extension/physics/box2d/PhysicsFactory;->createCircleBody(Lorg/andengine/extension/physics/box2d/PhysicsWorld;Lorg/andengine/entity/shape/IAreaShape;Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;Lcom/badlogic/gdx/physics/box2d/FixtureDef;F)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v0

    return-object v0
.end method

.method public static createCircleBody(Lorg/andengine/extension/physics/box2d/PhysicsWorld;Lorg/andengine/entity/shape/IAreaShape;Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;Lcom/badlogic/gdx/physics/box2d/FixtureDef;F)Lcom/badlogic/gdx/physics/box2d/Body;
    .locals 9
    .parameter "pPhysicsWorld"
    .parameter "pAreaShape"
    .parameter "pBodyType"
    .parameter "pFixtureDef"
    .parameter "pPixelToMeterRatio"

    .prologue
    .line 242
    invoke-interface {p1}, Lorg/andengine/entity/shape/IAreaShape;->getSceneCenterCoordinates()[F

    move-result-object v8

    .line 243
    .local v8, sceneCenterCoordinates:[F
    const/4 v0, 0x0

    aget v1, v8, v0

    .line 244
    .local v1, centerX:F
    const/4 v0, 0x1

    aget v2, v8, v0

    .line 245
    .local v2, centerY:F
    invoke-interface {p1}, Lorg/andengine/entity/shape/IAreaShape;->getWidthScaled()F

    move-result v0

    const/high16 v3, 0x3f00

    mul-float/2addr v3, v0

    invoke-interface {p1}, Lorg/andengine/entity/shape/IAreaShape;->getRotation()F

    move-result v4

    move-object v0, p0

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-static/range {v0 .. v7}, Lorg/andengine/extension/physics/box2d/PhysicsFactory;->createCircleBody(Lorg/andengine/extension/physics/box2d/PhysicsWorld;FFFFLcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;Lcom/badlogic/gdx/physics/box2d/FixtureDef;F)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v0

    return-object v0
.end method

.method public static createEdgeBody(Lorg/andengine/extension/physics/box2d/PhysicsWorld;FFLcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;FLcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;Lcom/badlogic/gdx/physics/box2d/FixtureDef;F)Lcom/badlogic/gdx/physics/box2d/Body;
    .locals 5
    .parameter "pPhysicsWorld"
    .parameter "pCenterX"
    .parameter "pCenterY"
    .parameter "v1"
    .parameter "v2"
    .parameter "pRotation"
    .parameter "pBodyType"
    .parameter "pFixtureDef"
    .parameter "pPixelToMeterRatio"

    .prologue
    .line 544
    new-instance v1, Lcom/badlogic/gdx/physics/box2d/BodyDef;

    invoke-direct {v1}, Lcom/badlogic/gdx/physics/box2d/BodyDef;-><init>()V

    .line 546
    .local v1, edgeBodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;
    iput-object p6, v1, Lcom/badlogic/gdx/physics/box2d/BodyDef;->type:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    .line 547
    iget-object v3, v1, Lcom/badlogic/gdx/physics/box2d/BodyDef;->position:Lcom/badlogic/gdx/math/Vector2;

    div-float v4, p1, p8

    iput v4, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 548
    iget-object v3, v1, Lcom/badlogic/gdx/physics/box2d/BodyDef;->position:Lcom/badlogic/gdx/math/Vector2;

    div-float v4, p2, p8

    iput v4, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 549
    invoke-static {p5}, Lorg/andengine/util/math/MathUtils;->degToRad(F)F

    move-result v3

    iput v3, v1, Lcom/badlogic/gdx/physics/box2d/BodyDef;->angle:F

    .line 551
    invoke-virtual {p0, v1}, Lorg/andengine/extension/physics/box2d/PhysicsWorld;->createBody(Lcom/badlogic/gdx/physics/box2d/BodyDef;)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v0

    .line 552
    .local v0, edgeBody:Lcom/badlogic/gdx/physics/box2d/Body;
    new-instance v2, Lcom/badlogic/gdx/physics/box2d/EdgeShape;

    invoke-direct {v2}, Lcom/badlogic/gdx/physics/box2d/EdgeShape;-><init>()V

    .line 554
    .local v2, edgePoly:Lcom/badlogic/gdx/physics/box2d/EdgeShape;
    iput-object v2, p7, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->shape:Lcom/badlogic/gdx/physics/box2d/Shape;

    .line 555
    invoke-virtual {v2, p3, p4}, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->set(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)V

    .line 556
    invoke-virtual {v0, p7}, Lcom/badlogic/gdx/physics/box2d/Body;->createFixture(Lcom/badlogic/gdx/physics/box2d/FixtureDef;)Lcom/badlogic/gdx/physics/box2d/Fixture;

    .line 557
    invoke-virtual {v2}, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->dispose()V

    .line 559
    return-object v0
.end method

.method public static createEdgeBody(Lorg/andengine/extension/physics/box2d/PhysicsWorld;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;Lcom/badlogic/gdx/physics/box2d/FixtureDef;F)Lcom/badlogic/gdx/physics/box2d/Body;
    .locals 9
    .parameter "pPhysicsWorld"
    .parameter "v1"
    .parameter "v2"
    .parameter "pBodyType"
    .parameter "pFixtureDef"
    .parameter "pPixelToMeterRatio"

    .prologue
    const/4 v1, 0x0

    .line 527
    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move-object v4, p2

    move v5, v1

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-static/range {v0 .. v8}, Lorg/andengine/extension/physics/box2d/PhysicsFactory;->createEdgeBody(Lorg/andengine/extension/physics/box2d/PhysicsWorld;FFLcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;FLcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;Lcom/badlogic/gdx/physics/box2d/FixtureDef;F)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v0

    return-object v0
.end method

.method public static createFixtureDef(FFF)Lcom/badlogic/gdx/physics/box2d/FixtureDef;
    .locals 1
    .parameter "pDensity"
    .parameter "pElasticity"
    .parameter "pFriction"

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/andengine/extension/physics/box2d/PhysicsFactory;->createFixtureDef(FFFZ)Lcom/badlogic/gdx/physics/box2d/FixtureDef;

    move-result-object v0

    return-object v0
.end method

.method public static createFixtureDef(FFFZ)Lcom/badlogic/gdx/physics/box2d/FixtureDef;
    .locals 1
    .parameter "pDensity"
    .parameter "pElasticity"
    .parameter "pFriction"
    .parameter "pSensor"

    .prologue
    .line 74
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/FixtureDef;

    invoke-direct {v0}, Lcom/badlogic/gdx/physics/box2d/FixtureDef;-><init>()V

    .line 75
    .local v0, fixtureDef:Lcom/badlogic/gdx/physics/box2d/FixtureDef;
    iput p0, v0, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->density:F

    .line 76
    iput p1, v0, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->restitution:F

    .line 77
    iput p2, v0, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->friction:F

    .line 78
    iput-boolean p3, v0, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->isSensor:Z

    .line 79
    return-object v0
.end method

.method public static createFixtureDef(FFFZSSS)Lcom/badlogic/gdx/physics/box2d/FixtureDef;
    .locals 2
    .parameter "pDensity"
    .parameter "pElasticity"
    .parameter "pFriction"
    .parameter "pSensor"
    .parameter "pCategoryBits"
    .parameter "pMaskBits"
    .parameter "pGroupIndex"

    .prologue
    .line 94
    new-instance v1, Lcom/badlogic/gdx/physics/box2d/FixtureDef;

    invoke-direct {v1}, Lcom/badlogic/gdx/physics/box2d/FixtureDef;-><init>()V

    .line 95
    .local v1, fixtureDef:Lcom/badlogic/gdx/physics/box2d/FixtureDef;
    iput p0, v1, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->density:F

    .line 96
    iput p1, v1, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->restitution:F

    .line 97
    iput p2, v1, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->friction:F

    .line 98
    iput-boolean p3, v1, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->isSensor:Z

    .line 99
    iget-object v0, v1, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->filter:Lcom/badlogic/gdx/physics/box2d/Filter;

    .line 100
    .local v0, filter:Lcom/badlogic/gdx/physics/box2d/Filter;
    iput-short p4, v0, Lcom/badlogic/gdx/physics/box2d/Filter;->categoryBits:S

    .line 101
    iput-short p5, v0, Lcom/badlogic/gdx/physics/box2d/Filter;->maskBits:S

    .line 102
    iput-short p6, v0, Lcom/badlogic/gdx/physics/box2d/Filter;->groupIndex:S

    .line 103
    return-object v1
.end method

.method public static createLineBody(Lorg/andengine/extension/physics/box2d/PhysicsWorld;FFFFLcom/badlogic/gdx/physics/box2d/FixtureDef;)Lcom/badlogic/gdx/physics/box2d/Body;
    .locals 7
    .parameter "pPhysicsWorld"
    .parameter "pX1"
    .parameter "pY1"
    .parameter "pX2"
    .parameter "pY2"
    .parameter "pFixtureDef"

    .prologue
    .line 354
    const/high16 v6, 0x4200

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lorg/andengine/extension/physics/box2d/PhysicsFactory;->createLineBody(Lorg/andengine/extension/physics/box2d/PhysicsWorld;FFFFLcom/badlogic/gdx/physics/box2d/FixtureDef;F)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v0

    return-object v0
.end method

.method public static createLineBody(Lorg/andengine/extension/physics/box2d/PhysicsWorld;FFFFLcom/badlogic/gdx/physics/box2d/FixtureDef;F)Lcom/badlogic/gdx/physics/box2d/Body;
    .locals 7
    .parameter "pPhysicsWorld"
    .parameter "pX1"
    .parameter "pY1"
    .parameter "pX2"
    .parameter "pY2"
    .parameter "pFixtureDef"
    .parameter "pPixelToMeterRatio"

    .prologue
    .line 361
    new-instance v1, Lcom/badlogic/gdx/physics/box2d/BodyDef;

    invoke-direct {v1}, Lcom/badlogic/gdx/physics/box2d/BodyDef;-><init>()V

    .line 362
    .local v1, lineBodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;
    sget-object v3, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->StaticBody:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    iput-object v3, v1, Lcom/badlogic/gdx/physics/box2d/BodyDef;->type:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    .line 364
    invoke-virtual {p0, v1}, Lorg/andengine/extension/physics/box2d/PhysicsWorld;->createBody(Lcom/badlogic/gdx/physics/box2d/BodyDef;)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v0

    .line 366
    .local v0, boxBody:Lcom/badlogic/gdx/physics/box2d/Body;
    new-instance v2, Lcom/badlogic/gdx/physics/box2d/EdgeShape;

    invoke-direct {v2}, Lcom/badlogic/gdx/physics/box2d/EdgeShape;-><init>()V

    .line 368
    .local v2, linePoly:Lcom/badlogic/gdx/physics/box2d/EdgeShape;
    new-instance v3, Lcom/badlogic/gdx/math/Vector2;

    div-float v4, p1, p6

    div-float v5, p2, p6

    invoke-direct {v3, v4, v5}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    new-instance v4, Lcom/badlogic/gdx/math/Vector2;

    div-float v5, p3, p6

    div-float v6, p4, p6

    invoke-direct {v4, v5, v6}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->set(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)V

    .line 369
    iput-object v2, p5, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->shape:Lcom/badlogic/gdx/physics/box2d/Shape;

    .line 371
    invoke-virtual {v0, p5}, Lcom/badlogic/gdx/physics/box2d/Body;->createFixture(Lcom/badlogic/gdx/physics/box2d/FixtureDef;)Lcom/badlogic/gdx/physics/box2d/Fixture;

    .line 373
    invoke-virtual {v2}, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->dispose()V

    .line 375
    return-object v0
.end method

.method public static createLineBody(Lorg/andengine/extension/physics/box2d/PhysicsWorld;Lorg/andengine/entity/primitive/Line;Lcom/badlogic/gdx/physics/box2d/FixtureDef;)Lcom/badlogic/gdx/physics/box2d/Body;
    .locals 1
    .parameter "pPhysicsWorld"
    .parameter "pLine"
    .parameter "pFixtureDef"

    .prologue
    .line 332
    const/high16 v0, 0x4200

    invoke-static {p0, p1, p2, v0}, Lorg/andengine/extension/physics/box2d/PhysicsFactory;->createLineBody(Lorg/andengine/extension/physics/box2d/PhysicsWorld;Lorg/andengine/entity/primitive/Line;Lcom/badlogic/gdx/physics/box2d/FixtureDef;F)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v0

    return-object v0
.end method

.method public static createLineBody(Lorg/andengine/extension/physics/box2d/PhysicsWorld;Lorg/andengine/entity/primitive/Line;Lcom/badlogic/gdx/physics/box2d/FixtureDef;F)Lcom/badlogic/gdx/physics/box2d/Body;
    .locals 10
    .parameter "pPhysicsWorld"
    .parameter "pLine"
    .parameter "pFixtureDef"
    .parameter "pPixelToMeterRatio"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v0, 0x0

    .line 339
    invoke-virtual {p1, v0, v0}, Lorg/andengine/entity/primitive/Line;->convertLocalToSceneCoordinates(FF)[F

    move-result-object v7

    .line 340
    .local v7, sceneCoordinates:[F
    aget v1, v7, v8

    .line 341
    .local v1, x1:F
    aget v2, v7, v9

    .line 343
    .local v2, y1:F
    invoke-virtual {p1}, Lorg/andengine/entity/primitive/Line;->getX2()F

    move-result v0

    invoke-virtual {p1}, Lorg/andengine/entity/primitive/Line;->getX1()F

    move-result v5

    sub-float/2addr v0, v5

    invoke-virtual {p1}, Lorg/andengine/entity/primitive/Line;->getY2()F

    move-result v5

    invoke-virtual {p1}, Lorg/andengine/entity/primitive/Line;->getY1()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {p1, v0, v5}, Lorg/andengine/entity/primitive/Line;->convertLocalToSceneCoordinates(FF)[F

    .line 344
    aget v3, v7, v8

    .line 345
    .local v3, x2:F
    aget v4, v7, v9

    .local v4, y2:F
    move-object v0, p0

    move-object v5, p2

    move v6, p3

    .line 347
    invoke-static/range {v0 .. v6}, Lorg/andengine/extension/physics/box2d/PhysicsFactory;->createLineBody(Lorg/andengine/extension/physics/box2d/PhysicsWorld;FFFFLcom/badlogic/gdx/physics/box2d/FixtureDef;F)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v0

    return-object v0
.end method

.method public static createPolygonBody(Lorg/andengine/extension/physics/box2d/PhysicsWorld;Lorg/andengine/entity/shape/IShape;[Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;Lcom/badlogic/gdx/physics/box2d/FixtureDef;)Lcom/badlogic/gdx/physics/box2d/Body;
    .locals 6
    .parameter "pPhysicsWorld"
    .parameter "pShape"
    .parameter "pVertices"
    .parameter "pBodyType"
    .parameter "pFixtureDef"

    .prologue
    .line 387
    const/high16 v5, 0x4200

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lorg/andengine/extension/physics/box2d/PhysicsFactory;->createPolygonBody(Lorg/andengine/extension/physics/box2d/PhysicsWorld;Lorg/andengine/entity/shape/IShape;[Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;Lcom/badlogic/gdx/physics/box2d/FixtureDef;F)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v0

    return-object v0
.end method

.method public static createPolygonBody(Lorg/andengine/extension/physics/box2d/PhysicsWorld;Lorg/andengine/entity/shape/IShape;[Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;Lcom/badlogic/gdx/physics/box2d/FixtureDef;F)Lcom/badlogic/gdx/physics/box2d/Body;
    .locals 6
    .parameter "pPhysicsWorld"
    .parameter "pShape"
    .parameter "pVertices"
    .parameter "pBodyType"
    .parameter "pFixtureDef"
    .parameter "pPixelToMeterRatio"

    .prologue
    .line 399
    new-instance v1, Lcom/badlogic/gdx/physics/box2d/BodyDef;

    invoke-direct {v1}, Lcom/badlogic/gdx/physics/box2d/BodyDef;-><init>()V

    .line 400
    .local v1, boxBodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;
    iput-object p3, v1, Lcom/badlogic/gdx/physics/box2d/BodyDef;->type:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    .line 402
    invoke-interface {p1}, Lorg/andengine/entity/shape/IShape;->getSceneCenterCoordinates()[F

    move-result-object v3

    .line 403
    .local v3, sceneCenterCoordinates:[F
    iget-object v4, v1, Lcom/badlogic/gdx/physics/box2d/BodyDef;->position:Lcom/badlogic/gdx/math/Vector2;

    const/4 v5, 0x0

    aget v5, v3, v5

    div-float/2addr v5, p5

    iput v5, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 404
    iget-object v4, v1, Lcom/badlogic/gdx/physics/box2d/BodyDef;->position:Lcom/badlogic/gdx/math/Vector2;

    const/4 v5, 0x1

    aget v5, v3, v5

    div-float/2addr v5, p5

    iput v5, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 406
    invoke-virtual {p0, v1}, Lorg/andengine/extension/physics/box2d/PhysicsWorld;->createBody(Lcom/badlogic/gdx/physics/box2d/BodyDef;)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v0

    .line 408
    .local v0, boxBody:Lcom/badlogic/gdx/physics/box2d/Body;
    new-instance v2, Lcom/badlogic/gdx/physics/box2d/PolygonShape;

    invoke-direct {v2}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;-><init>()V

    .line 410
    .local v2, boxPoly:Lcom/badlogic/gdx/physics/box2d/PolygonShape;
    invoke-virtual {v2, p2}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->set([Lcom/badlogic/gdx/math/Vector2;)V

    .line 411
    iput-object v2, p4, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->shape:Lcom/badlogic/gdx/physics/box2d/Shape;

    .line 413
    invoke-virtual {v0, p4}, Lcom/badlogic/gdx/physics/box2d/Body;->createFixture(Lcom/badlogic/gdx/physics/box2d/FixtureDef;)Lcom/badlogic/gdx/physics/box2d/Fixture;

    .line 415
    invoke-virtual {v2}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->dispose()V

    .line 417
    return-object v0
.end method

.method public static createTrianglulatedBody(Lorg/andengine/extension/physics/box2d/PhysicsWorld;Lorg/andengine/entity/shape/IShape;Ljava/util/List;Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;Lcom/badlogic/gdx/physics/box2d/FixtureDef;)Lcom/badlogic/gdx/physics/box2d/Body;
    .locals 6
    .parameter "pPhysicsWorld"
    .parameter "pShape"
    .parameter
    .parameter "pBodyType"
    .parameter "pFixtureDef"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/extension/physics/box2d/PhysicsWorld;",
            "Lorg/andengine/entity/shape/IShape;",
            "Ljava/util/List",
            "<",
            "Lcom/badlogic/gdx/math/Vector2;",
            ">;",
            "Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;",
            "Lcom/badlogic/gdx/physics/box2d/FixtureDef;",
            ")",
            "Lcom/badlogic/gdx/physics/box2d/Body;"
        }
    .end annotation

    .prologue
    .line 429
    .local p2, pTriangleVertices:Ljava/util/List;,"Ljava/util/List<Lcom/badlogic/gdx/math/Vector2;>;"
    const/high16 v5, 0x4200

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lorg/andengine/extension/physics/box2d/PhysicsFactory;->createTrianglulatedBody(Lorg/andengine/extension/physics/box2d/PhysicsWorld;Lorg/andengine/entity/shape/IShape;Ljava/util/List;Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;Lcom/badlogic/gdx/physics/box2d/FixtureDef;F)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v0

    return-object v0
.end method

.method public static createTrianglulatedBody(Lorg/andengine/extension/physics/box2d/PhysicsWorld;Lorg/andengine/entity/shape/IShape;Ljava/util/List;Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;Lcom/badlogic/gdx/physics/box2d/FixtureDef;F)Lcom/badlogic/gdx/physics/box2d/Body;
    .locals 10
    .parameter "pPhysicsWorld"
    .parameter "pShape"
    .parameter
    .parameter "pBodyType"
    .parameter "pFixtureDef"
    .parameter "pPixelToMeterRatio"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/extension/physics/box2d/PhysicsWorld;",
            "Lorg/andengine/entity/shape/IShape;",
            "Ljava/util/List",
            "<",
            "Lcom/badlogic/gdx/math/Vector2;",
            ">;",
            "Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;",
            "Lcom/badlogic/gdx/physics/box2d/FixtureDef;",
            "F)",
            "Lcom/badlogic/gdx/physics/box2d/Body;"
        }
    .end annotation

    .prologue
    .line 442
    .local p2, pTriangleVertices:Ljava/util/List;,"Ljava/util/List<Lcom/badlogic/gdx/math/Vector2;>;"
    const/4 v8, 0x3

    new-array v0, v8, [Lcom/badlogic/gdx/math/Vector2;

    .line 444
    .local v0, TMP_TRIANGLE:[Lcom/badlogic/gdx/math/Vector2;
    new-instance v2, Lcom/badlogic/gdx/physics/box2d/BodyDef;

    invoke-direct {v2}, Lcom/badlogic/gdx/physics/box2d/BodyDef;-><init>()V

    .line 445
    .local v2, boxBodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;
    iput-object p3, v2, Lcom/badlogic/gdx/physics/box2d/BodyDef;->type:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    .line 447
    invoke-interface {p1}, Lorg/andengine/entity/shape/IShape;->getSceneCenterCoordinates()[F

    move-result-object v6

    .line 448
    .local v6, sceneCenterCoordinates:[F
    iget-object v8, v2, Lcom/badlogic/gdx/physics/box2d/BodyDef;->position:Lcom/badlogic/gdx/math/Vector2;

    const/4 v9, 0x0

    aget v9, v6, v9

    div-float/2addr v9, p5

    iput v9, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 449
    iget-object v8, v2, Lcom/badlogic/gdx/physics/box2d/BodyDef;->position:Lcom/badlogic/gdx/math/Vector2;

    const/4 v9, 0x1

    aget v9, v6, v9

    div-float/2addr v9, p5

    iput v9, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 451
    invoke-virtual {p0, v2}, Lorg/andengine/extension/physics/box2d/PhysicsWorld;->createBody(Lcom/badlogic/gdx/physics/box2d/BodyDef;)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v1

    .line 453
    .local v1, boxBody:Lcom/badlogic/gdx/physics/box2d/Body;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    .line 454
    .local v7, vertexCount:I
    const/4 v4, 0x0

    .local v4, i:I
    move v5, v4

    .end local v4           #i:I
    .local v5, i:I
    :goto_0
    if-lt v5, v7, :cond_0

    .line 469
    return-object v1

    .line 455
    :cond_0
    new-instance v3, Lcom/badlogic/gdx/physics/box2d/PolygonShape;

    invoke-direct {v3}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;-><init>()V

    .line 457
    .local v3, boxPoly:Lcom/badlogic/gdx/physics/box2d/PolygonShape;
    const/4 v9, 0x2

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/math/Vector2;

    aput-object v8, v0, v9

    .line 458
    const/4 v9, 0x1

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/math/Vector2;

    aput-object v8, v0, v9

    .line 459
    const/4 v9, 0x0

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/math/Vector2;

    aput-object v8, v0, v9

    .line 461
    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->set([Lcom/badlogic/gdx/math/Vector2;)V

    .line 462
    iput-object v3, p4, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->shape:Lcom/badlogic/gdx/physics/box2d/Shape;

    .line 464
    invoke-virtual {v1, p4}, Lcom/badlogic/gdx/physics/box2d/Body;->createFixture(Lcom/badlogic/gdx/physics/box2d/FixtureDef;)Lcom/badlogic/gdx/physics/box2d/Fixture;

    .line 466
    invoke-virtual {v3}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->dispose()V

    move v5, v4

    .end local v4           #i:I
    .restart local v5       #i:I
    goto :goto_0
.end method
