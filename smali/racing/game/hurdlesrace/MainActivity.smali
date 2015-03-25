.class public Lracing/game/hurdlesrace/MainActivity;
.super Lorg/andengine/ui/activity/SimpleBaseGameActivity;
.source "MainActivity.java"

# interfaces
.implements Lorg/andengine/entity/scene/IOnSceneTouchListener;


# static fields
.field public static CAMERA_HEIGHT:I

.field public static CAMERA_WIDTH:I


# instance fields
.field private background:Lorg/andengine/entity/sprite/Sprite;

.field private ball:Lorg/andengine/opengl/texture/region/TextureRegion;

.field private ballBody:Lcom/badlogic/gdx/physics/box2d/Body;

.field private ballSprite:Lorg/andengine/entity/sprite/Sprite;

.field private ballSpriteX:F

.field private ballSpriteY:F

.field private camera:Lorg/andengine/engine/camera/Camera;

.field private font:Lorg/andengine/opengl/font/Font;

.field private gameBackground:Lorg/andengine/opengl/texture/region/TextureRegion;

.field private gameOver:Z

.field private gameOverRegion:Lorg/andengine/opengl/texture/region/TextureRegion;

.field private gameOverSprite:Lorg/andengine/entity/sprite/Sprite;

.field private gameOverTextureAtlas:Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

.field private gameTextureAtlas:Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

.field private getHighScoreText:Lorg/andengine/entity/text/Text;

.field private hillSprite:Lorg/andengine/entity/sprite/Sprite;

.field private hillSprite1:Lorg/andengine/entity/sprite/Sprite;

.field private hillSpriteBox:Lorg/andengine/entity/sprite/Sprite;

.field private hillSpriteX:I

.field private hillSpriteY:F

.field private hillregion:Lorg/andengine/opengl/texture/region/TextureRegion;

.field private hillregionbox:Lorg/andengine/opengl/texture/region/TextureRegion;

.field private jump:Z

.field private lemsprite:Lorg/andengine/entity/modifier/LoopEntityModifier;

.field private lemsprite1:Lorg/andengine/entity/modifier/LoopEntityModifier;

.field private loopEntityModifierball:Lorg/andengine/entity/modifier/LoopEntityModifier;

.field private lowerObstracle:Lorg/andengine/opengl/texture/region/TextureRegion;

.field private lowerObstracleBody:Lcom/badlogic/gdx/physics/box2d/Body;

.field private lowerObstracleSprite:Lorg/andengine/entity/sprite/Sprite;

.field private lowerObstracleSpriteX:F

.field private lowerObstracleSpriteY:F

.field private obstracleTextureAtlas:Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

.field private pathTime:F

.field private physicsWorld:Lorg/andengine/extension/physics/box2d/PhysicsWorld;

.field private scene:Lorg/andengine/entity/scene/Scene;

.field private score:I

.field private scoreText:Lorg/andengine/entity/text/Text;

.field private sp:Landroid/content/SharedPreferences;

.field private stoprotating:Z

.field private time:F

.field private timehandler:Lorg/andengine/engine/handler/timer/TimerHandler;

.field private upperObstracle:Lorg/andengine/opengl/texture/region/TextureRegion;

.field private upperObstracleBody:Lcom/badlogic/gdx/physics/box2d/Body;

.field private upperObstracleSprite:Lorg/andengine/entity/sprite/Sprite;

.field private upperObstracleSpriteX:F

.field private upperObstracleSpriteY:F

.field private vbom:Lorg/andengine/opengl/vbo/VertexBufferObjectManager;

.field private yourScoreText:Lorg/andengine/entity/text/Text;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const/16 v0, 0x320

    sput v0, Lracing/game/hurdlesrace/MainActivity;->CAMERA_WIDTH:I

    .line 77
    const/16 v0, 0x1e0

    sput v0, Lracing/game/hurdlesrace/MainActivity;->CAMERA_HEIGHT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Lorg/andengine/ui/activity/SimpleBaseGameActivity;-><init>()V

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lracing/game/hurdlesrace/MainActivity;->score:I

    .line 121
    const/high16 v0, 0x4040

    iput v0, p0, Lracing/game/hurdlesrace/MainActivity;->pathTime:F

    .line 73
    return-void
.end method

.method static synthetic access$0(Lracing/game/hurdlesrace/MainActivity;)Lorg/andengine/entity/sprite/Sprite;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lracing/game/hurdlesrace/MainActivity;->lowerObstracleSprite:Lorg/andengine/entity/sprite/Sprite;

    return-object v0
.end method

.method static synthetic access$1(Lracing/game/hurdlesrace/MainActivity;)F
    .locals 1
    .parameter

    .prologue
    .line 87
    iget v0, p0, Lracing/game/hurdlesrace/MainActivity;->lowerObstracleSpriteX:F

    return v0
.end method

.method static synthetic access$10(Lracing/game/hurdlesrace/MainActivity;)Lorg/andengine/entity/text/Text;
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lracing/game/hurdlesrace/MainActivity;->scoreText:Lorg/andengine/entity/text/Text;

    return-object v0
.end method

.method static synthetic access$11(Lracing/game/hurdlesrace/MainActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-boolean v0, p0, Lracing/game/hurdlesrace/MainActivity;->stoprotating:Z

    return v0
.end method

.method static synthetic access$12(Lracing/game/hurdlesrace/MainActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 104
    iput-boolean p1, p0, Lracing/game/hurdlesrace/MainActivity;->jump:Z

    return-void
.end method

.method static synthetic access$13(Lracing/game/hurdlesrace/MainActivity;)F
    .locals 1
    .parameter

    .prologue
    .line 106
    iget v0, p0, Lracing/game/hurdlesrace/MainActivity;->time:F

    return v0
.end method

.method static synthetic access$14(Lracing/game/hurdlesrace/MainActivity;Lorg/andengine/entity/modifier/LoopEntityModifier;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lracing/game/hurdlesrace/MainActivity;->loopEntityModifierball:Lorg/andengine/entity/modifier/LoopEntityModifier;

    return-void
.end method

.method static synthetic access$15(Lracing/game/hurdlesrace/MainActivity;)Lorg/andengine/entity/sprite/Sprite;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lracing/game/hurdlesrace/MainActivity;->ballSprite:Lorg/andengine/entity/sprite/Sprite;

    return-object v0
.end method

.method static synthetic access$16(Lracing/game/hurdlesrace/MainActivity;)Lorg/andengine/entity/modifier/LoopEntityModifier;
    .locals 1
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lracing/game/hurdlesrace/MainActivity;->loopEntityModifierball:Lorg/andengine/entity/modifier/LoopEntityModifier;

    return-object v0
.end method

.method static synthetic access$17(Lracing/game/hurdlesrace/MainActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 109
    iput-boolean p1, p0, Lracing/game/hurdlesrace/MainActivity;->gameOver:Z

    return-void
.end method

.method static synthetic access$18(Lracing/game/hurdlesrace/MainActivity;)Lorg/andengine/entity/scene/Scene;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lracing/game/hurdlesrace/MainActivity;->scene:Lorg/andengine/entity/scene/Scene;

    return-object v0
.end method

.method static synthetic access$19(Lracing/game/hurdlesrace/MainActivity;)Lorg/andengine/engine/handler/timer/TimerHandler;
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lracing/game/hurdlesrace/MainActivity;->timehandler:Lorg/andengine/engine/handler/timer/TimerHandler;

    return-object v0
.end method

.method static synthetic access$2(Lracing/game/hurdlesrace/MainActivity;)Lcom/badlogic/gdx/physics/box2d/Body;
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lracing/game/hurdlesrace/MainActivity;->lowerObstracleBody:Lcom/badlogic/gdx/physics/box2d/Body;

    return-object v0
.end method

.method static synthetic access$20(Lracing/game/hurdlesrace/MainActivity;)Lorg/andengine/entity/sprite/Sprite;
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lracing/game/hurdlesrace/MainActivity;->hillSprite:Lorg/andengine/entity/sprite/Sprite;

    return-object v0
.end method

.method static synthetic access$21(Lracing/game/hurdlesrace/MainActivity;)Lorg/andengine/entity/modifier/LoopEntityModifier;
    .locals 1
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lracing/game/hurdlesrace/MainActivity;->lemsprite:Lorg/andengine/entity/modifier/LoopEntityModifier;

    return-object v0
.end method

.method static synthetic access$22(Lracing/game/hurdlesrace/MainActivity;)Lorg/andengine/entity/sprite/Sprite;
    .locals 1
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lracing/game/hurdlesrace/MainActivity;->hillSprite1:Lorg/andengine/entity/sprite/Sprite;

    return-object v0
.end method

.method static synthetic access$23(Lracing/game/hurdlesrace/MainActivity;)Lorg/andengine/entity/modifier/LoopEntityModifier;
    .locals 1
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lracing/game/hurdlesrace/MainActivity;->lemsprite1:Lorg/andengine/entity/modifier/LoopEntityModifier;

    return-object v0
.end method

.method static synthetic access$24(Lracing/game/hurdlesrace/MainActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    iput-boolean p1, p0, Lracing/game/hurdlesrace/MainActivity;->stoprotating:Z

    return-void
.end method

.method static synthetic access$25(Lracing/game/hurdlesrace/MainActivity;)Lorg/andengine/entity/sprite/Sprite;
    .locals 1
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lracing/game/hurdlesrace/MainActivity;->gameOverSprite:Lorg/andengine/entity/sprite/Sprite;

    return-object v0
.end method

.method static synthetic access$26(Lracing/game/hurdlesrace/MainActivity;)Lorg/andengine/entity/text/Text;
    .locals 1
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lracing/game/hurdlesrace/MainActivity;->yourScoreText:Lorg/andengine/entity/text/Text;

    return-object v0
.end method

.method static synthetic access$27(Lracing/game/hurdlesrace/MainActivity;)Lorg/andengine/entity/text/Text;
    .locals 1
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lracing/game/hurdlesrace/MainActivity;->getHighScoreText:Lorg/andengine/entity/text/Text;

    return-object v0
.end method

.method static synthetic access$28(Lracing/game/hurdlesrace/MainActivity;)Lorg/andengine/opengl/font/Font;
    .locals 1
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lracing/game/hurdlesrace/MainActivity;->font:Lorg/andengine/opengl/font/Font;

    return-object v0
.end method

.method static synthetic access$29(Lracing/game/hurdlesrace/MainActivity;)Lorg/andengine/opengl/vbo/VertexBufferObjectManager;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lracing/game/hurdlesrace/MainActivity;->vbom:Lorg/andengine/opengl/vbo/VertexBufferObjectManager;

    return-object v0
.end method

.method static synthetic access$3(Lracing/game/hurdlesrace/MainActivity;)Lorg/andengine/opengl/texture/region/TextureRegion;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lracing/game/hurdlesrace/MainActivity;->upperObstracle:Lorg/andengine/opengl/texture/region/TextureRegion;

    return-object v0
.end method

.method static synthetic access$30(Lracing/game/hurdlesrace/MainActivity;Lorg/andengine/entity/text/Text;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lracing/game/hurdlesrace/MainActivity;->yourScoreText:Lorg/andengine/entity/text/Text;

    return-void
.end method

.method static synthetic access$31(Lracing/game/hurdlesrace/MainActivity;Lorg/andengine/entity/text/Text;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lracing/game/hurdlesrace/MainActivity;->getHighScoreText:Lorg/andengine/entity/text/Text;

    return-void
.end method

.method static synthetic access$4(Lracing/game/hurdlesrace/MainActivity;)F
    .locals 1
    .parameter

    .prologue
    .line 91
    iget v0, p0, Lracing/game/hurdlesrace/MainActivity;->upperObstracleSpriteX:F

    return v0
.end method

.method static synthetic access$5(Lracing/game/hurdlesrace/MainActivity;)Lorg/andengine/entity/sprite/Sprite;
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lracing/game/hurdlesrace/MainActivity;->upperObstracleSprite:Lorg/andengine/entity/sprite/Sprite;

    return-object v0
.end method

.method static synthetic access$6(Lracing/game/hurdlesrace/MainActivity;)Lcom/badlogic/gdx/physics/box2d/Body;
    .locals 1
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lracing/game/hurdlesrace/MainActivity;->upperObstracleBody:Lcom/badlogic/gdx/physics/box2d/Body;

    return-object v0
.end method

.method static synthetic access$7(Lracing/game/hurdlesrace/MainActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 109
    iget-boolean v0, p0, Lracing/game/hurdlesrace/MainActivity;->gameOver:Z

    return v0
.end method

.method static synthetic access$8(Lracing/game/hurdlesrace/MainActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 111
    iget v0, p0, Lracing/game/hurdlesrace/MainActivity;->score:I

    return v0
.end method

.method static synthetic access$9(Lracing/game/hurdlesrace/MainActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 111
    iput p1, p0, Lracing/game/hurdlesrace/MainActivity;->score:I

    return-void
.end method

.method private createContactListener()Lcom/badlogic/gdx/physics/box2d/ContactListener;
    .locals 1

    .prologue
    .line 397
    new-instance v0, Lracing/game/hurdlesrace/MainActivity$4;

    invoke-direct {v0, p0}, Lracing/game/hurdlesrace/MainActivity$4;-><init>(Lracing/game/hurdlesrace/MainActivity;)V

    .line 514
    .local v0, contactListener:Lcom/badlogic/gdx/physics/box2d/ContactListener;
    return-object v0
.end method

.method private makeBody()V
    .locals 14

    .prologue
    const/high16 v4, 0x40a0

    const/high16 v13, 0x4080

    const/high16 v3, 0x3f80

    const/4 v12, 0x1

    const/4 v1, 0x0

    .line 354
    invoke-static {v3, v1, v4}, Lorg/andengine/extension/physics/box2d/PhysicsFactory;->createFixtureDef(FFF)Lcom/badlogic/gdx/physics/box2d/FixtureDef;

    move-result-object v6

    .line 357
    .local v6, ballFixtureDef:Lcom/badlogic/gdx/physics/box2d/FixtureDef;
    const v2, 0x3dcccccd

    .line 356
    invoke-static {v3, v2, v1}, Lorg/andengine/extension/physics/box2d/PhysicsFactory;->createFixtureDef(FFF)Lcom/badlogic/gdx/physics/box2d/FixtureDef;

    move-result-object v10

    .line 358
    .local v10, obstacleFixtureDef:Lcom/badlogic/gdx/physics/box2d/FixtureDef;
    invoke-static {v3, v1, v4}, Lorg/andengine/extension/physics/box2d/PhysicsFactory;->createFixtureDef(FFF)Lcom/badlogic/gdx/physics/box2d/FixtureDef;

    move-result-object v8

    .line 361
    .local v8, groundFixtureDef:Lcom/badlogic/gdx/physics/box2d/FixtureDef;
    iget-object v2, p0, Lracing/game/hurdlesrace/MainActivity;->physicsWorld:Lorg/andengine/extension/physics/box2d/PhysicsWorld;

    iget-object v3, p0, Lracing/game/hurdlesrace/MainActivity;->ballSprite:Lorg/andengine/entity/sprite/Sprite;

    .line 362
    sget-object v4, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->DynamicBody:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    .line 361
    invoke-static {v2, v3, v4, v6}, Lorg/andengine/extension/physics/box2d/PhysicsFactory;->createBoxBody(Lorg/andengine/extension/physics/box2d/PhysicsWorld;Lorg/andengine/entity/shape/IAreaShape;Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;Lcom/badlogic/gdx/physics/box2d/FixtureDef;)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v2

    iput-object v2, p0, Lracing/game/hurdlesrace/MainActivity;->ballBody:Lcom/badlogic/gdx/physics/box2d/Body;

    .line 363
    iget-object v2, p0, Lracing/game/hurdlesrace/MainActivity;->physicsWorld:Lorg/andengine/extension/physics/box2d/PhysicsWorld;

    new-instance v3, Lorg/andengine/extension/physics/box2d/PhysicsConnector;

    iget-object v4, p0, Lracing/game/hurdlesrace/MainActivity;->ballSprite:Lorg/andengine/entity/sprite/Sprite;

    .line 364
    iget-object v5, p0, Lracing/game/hurdlesrace/MainActivity;->ballBody:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-direct {v3, v4, v5, v12, v12}, Lorg/andengine/extension/physics/box2d/PhysicsConnector;-><init>(Lorg/andengine/entity/shape/IAreaShape;Lcom/badlogic/gdx/physics/box2d/Body;ZZ)V

    .line 363
    invoke-virtual {v2, v3}, Lorg/andengine/extension/physics/box2d/PhysicsWorld;->registerPhysicsConnector(Lorg/andengine/extension/physics/box2d/PhysicsConnector;)V

    .line 365
    iget-object v2, p0, Lracing/game/hurdlesrace/MainActivity;->ballBody:Lcom/badlogic/gdx/physics/box2d/Body;

    const-string v3, "ballBody"

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/physics/box2d/Body;->setUserData(Ljava/lang/Object;)V

    .line 367
    iget-object v2, p0, Lracing/game/hurdlesrace/MainActivity;->lowerObstracleSprite:Lorg/andengine/entity/sprite/Sprite;

    invoke-virtual {v2}, Lorg/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v2

    const/high16 v3, 0x4200

    div-float v11, v2, v3

    .line 368
    .local v11, w:F
    iget-object v2, p0, Lracing/game/hurdlesrace/MainActivity;->lowerObstracleSprite:Lorg/andengine/entity/sprite/Sprite;

    invoke-virtual {v2}, Lorg/andengine/entity/sprite/Sprite;->getHeight()F

    move-result v2

    const/high16 v3, 0x4200

    div-float v9, v2, v3

    .line 370
    .local v9, h:F
    iget-object v2, p0, Lracing/game/hurdlesrace/MainActivity;->physicsWorld:Lorg/andengine/extension/physics/box2d/PhysicsWorld;

    .line 371
    iget-object v3, p0, Lracing/game/hurdlesrace/MainActivity;->lowerObstracleSprite:Lorg/andengine/entity/sprite/Sprite;

    sget-object v4, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->KinematicBody:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    .line 370
    invoke-static {v2, v3, v4, v10}, Lorg/andengine/extension/physics/box2d/PhysicsFactory;->createBoxBody(Lorg/andengine/extension/physics/box2d/PhysicsWorld;Lorg/andengine/entity/shape/IAreaShape;Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;Lcom/badlogic/gdx/physics/box2d/FixtureDef;)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v2

    iput-object v2, p0, Lracing/game/hurdlesrace/MainActivity;->lowerObstracleBody:Lcom/badlogic/gdx/physics/box2d/Body;

    .line 373
    iget-object v2, p0, Lracing/game/hurdlesrace/MainActivity;->physicsWorld:Lorg/andengine/extension/physics/box2d/PhysicsWorld;

    new-instance v3, Lorg/andengine/extension/physics/box2d/PhysicsConnector;

    .line 374
    iget-object v4, p0, Lracing/game/hurdlesrace/MainActivity;->lowerObstracleSprite:Lorg/andengine/entity/sprite/Sprite;

    iget-object v5, p0, Lracing/game/hurdlesrace/MainActivity;->lowerObstracleBody:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-direct {v3, v4, v5, v12, v12}, Lorg/andengine/extension/physics/box2d/PhysicsConnector;-><init>(Lorg/andengine/entity/shape/IAreaShape;Lcom/badlogic/gdx/physics/box2d/Body;ZZ)V

    .line 373
    invoke-virtual {v2, v3}, Lorg/andengine/extension/physics/box2d/PhysicsWorld;->registerPhysicsConnector(Lorg/andengine/extension/physics/box2d/PhysicsConnector;)V

    .line 375
    iget-object v2, p0, Lracing/game/hurdlesrace/MainActivity;->lowerObstracleBody:Lcom/badlogic/gdx/physics/box2d/Body;

    const-string v3, "lowerObstracleBody"

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/physics/box2d/Body;->setUserData(Ljava/lang/Object;)V

    .line 376
    iget-object v2, p0, Lracing/game/hurdlesrace/MainActivity;->lowerObstracleBody:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v2, v13, v1}, Lcom/badlogic/gdx/physics/box2d/Body;->setLinearVelocity(FF)V

    .line 378
    iget-object v2, p0, Lracing/game/hurdlesrace/MainActivity;->physicsWorld:Lorg/andengine/extension/physics/box2d/PhysicsWorld;

    .line 379
    iget-object v3, p0, Lracing/game/hurdlesrace/MainActivity;->upperObstracleSprite:Lorg/andengine/entity/sprite/Sprite;

    sget-object v4, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->KinematicBody:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    .line 378
    invoke-static {v2, v3, v4, v10}, Lorg/andengine/extension/physics/box2d/PhysicsFactory;->createBoxBody(Lorg/andengine/extension/physics/box2d/PhysicsWorld;Lorg/andengine/entity/shape/IAreaShape;Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;Lcom/badlogic/gdx/physics/box2d/FixtureDef;)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v2

    iput-object v2, p0, Lracing/game/hurdlesrace/MainActivity;->upperObstracleBody:Lcom/badlogic/gdx/physics/box2d/Body;

    .line 381
    iget-object v2, p0, Lracing/game/hurdlesrace/MainActivity;->physicsWorld:Lorg/andengine/extension/physics/box2d/PhysicsWorld;

    new-instance v3, Lorg/andengine/extension/physics/box2d/PhysicsConnector;

    .line 382
    iget-object v4, p0, Lracing/game/hurdlesrace/MainActivity;->upperObstracleSprite:Lorg/andengine/entity/sprite/Sprite;

    iget-object v5, p0, Lracing/game/hurdlesrace/MainActivity;->upperObstracleBody:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-direct {v3, v4, v5, v12, v12}, Lorg/andengine/extension/physics/box2d/PhysicsConnector;-><init>(Lorg/andengine/entity/shape/IAreaShape;Lcom/badlogic/gdx/physics/box2d/Body;ZZ)V

    .line 381
    invoke-virtual {v2, v3}, Lorg/andengine/extension/physics/box2d/PhysicsWorld;->registerPhysicsConnector(Lorg/andengine/extension/physics/box2d/PhysicsConnector;)V

    .line 383
    iget-object v2, p0, Lracing/game/hurdlesrace/MainActivity;->upperObstracleBody:Lcom/badlogic/gdx/physics/box2d/Body;

    const-string v3, "upperObstracleBody"

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/physics/box2d/Body;->setUserData(Ljava/lang/Object;)V

    .line 384
    iget-object v2, p0, Lracing/game/hurdlesrace/MainActivity;->upperObstracleBody:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v2, v13, v1}, Lcom/badlogic/gdx/physics/box2d/Body;->setLinearVelocity(FF)V

    .line 386
    new-instance v0, Lorg/andengine/entity/primitive/Rectangle;

    const v2, 0x43948000

    const/high16 v3, 0x4448

    const/high16 v4, 0x4000

    iget-object v5, p0, Lracing/game/hurdlesrace/MainActivity;->vbom:Lorg/andengine/opengl/vbo/VertexBufferObjectManager;

    invoke-direct/range {v0 .. v5}, Lorg/andengine/entity/primitive/Rectangle;-><init>(FFFFLorg/andengine/opengl/vbo/VertexBufferObjectManager;)V

    .line 387
    .local v0, ground:Lorg/andengine/entity/primitive/Rectangle;
    iget-object v1, p0, Lracing/game/hurdlesrace/MainActivity;->physicsWorld:Lorg/andengine/extension/physics/box2d/PhysicsWorld;

    .line 388
    sget-object v2, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->StaticBody:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    .line 387
    invoke-static {v1, v0, v2, v8}, Lorg/andengine/extension/physics/box2d/PhysicsFactory;->createBoxBody(Lorg/andengine/extension/physics/box2d/PhysicsWorld;Lorg/andengine/entity/shape/IAreaShape;Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;Lcom/badlogic/gdx/physics/box2d/FixtureDef;)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v7

    .line 390
    .local v7, groundBody:Lcom/badlogic/gdx/physics/box2d/Body;
    const-string v1, "groundBody"

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/physics/box2d/Body;->setUserData(Ljava/lang/Object;)V

    .line 391
    sget-object v1, Lorg/andengine/util/color/Color;->TRANSPARENT:Lorg/andengine/util/color/Color;

    invoke-virtual {v0, v1}, Lorg/andengine/entity/primitive/Rectangle;->setColor(Lorg/andengine/util/color/Color;)V

    .line 392
    iget-object v1, p0, Lracing/game/hurdlesrace/MainActivity;->scene:Lorg/andengine/entity/scene/Scene;

    invoke-virtual {v1, v0}, Lorg/andengine/entity/scene/Scene;->attachChild(Lorg/andengine/entity/IEntity;)V

    .line 394
    return-void
.end method

.method private setscore()V
    .locals 7

    .prologue
    const/high16 v1, 0x4120

    .line 314
    new-instance v0, Lorg/andengine/entity/text/Text;

    iget-object v3, p0, Lracing/game/hurdlesrace/MainActivity;->font:Lorg/andengine/opengl/font/Font;

    const-string v4, "Score:"

    const-string v2, "Score: XXXXX"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    .line 315
    iget-object v6, p0, Lracing/game/hurdlesrace/MainActivity;->vbom:Lorg/andengine/opengl/vbo/VertexBufferObjectManager;

    move v2, v1

    invoke-direct/range {v0 .. v6}, Lorg/andengine/entity/text/Text;-><init>(FFLorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;ILorg/andengine/opengl/vbo/VertexBufferObjectManager;)V

    .line 314
    iput-object v0, p0, Lracing/game/hurdlesrace/MainActivity;->scoreText:Lorg/andengine/entity/text/Text;

    .line 316
    iget-object v0, p0, Lracing/game/hurdlesrace/MainActivity;->scene:Lorg/andengine/entity/scene/Scene;

    iget-object v1, p0, Lracing/game/hurdlesrace/MainActivity;->scoreText:Lorg/andengine/entity/text/Text;

    invoke-virtual {v0, v1}, Lorg/andengine/entity/scene/Scene;->attachChild(Lorg/andengine/entity/IEntity;)V

    .line 317
    iget-object v0, p0, Lracing/game/hurdlesrace/MainActivity;->scene:Lorg/andengine/entity/scene/Scene;

    new-instance v1, Lorg/andengine/engine/handler/timer/TimerHandler;

    const v2, 0x3dcccccd

    const/4 v3, 0x1

    .line 318
    new-instance v4, Lracing/game/hurdlesrace/MainActivity$2;

    invoke-direct {v4, p0}, Lracing/game/hurdlesrace/MainActivity$2;-><init>(Lracing/game/hurdlesrace/MainActivity;)V

    invoke-direct {v1, v2, v3, v4}, Lorg/andengine/engine/handler/timer/TimerHandler;-><init>(FZLorg/andengine/engine/handler/timer/ITimerCallback;)V

    .line 317
    invoke-virtual {v0, v1}, Lorg/andengine/entity/scene/Scene;->registerUpdateHandler(Lorg/andengine/engine/handler/IUpdateHandler;)V

    .line 329
    return-void
.end method

.method private timer()V
    .locals 4

    .prologue
    .line 333
    new-instance v0, Lorg/andengine/engine/handler/timer/TimerHandler;

    const/high16 v1, 0x3f80

    const/4 v2, 0x1

    new-instance v3, Lracing/game/hurdlesrace/MainActivity$3;

    invoke-direct {v3, p0}, Lracing/game/hurdlesrace/MainActivity$3;-><init>(Lracing/game/hurdlesrace/MainActivity;)V

    invoke-direct {v0, v1, v2, v3}, Lorg/andengine/engine/handler/timer/TimerHandler;-><init>(FZLorg/andengine/engine/handler/timer/ITimerCallback;)V

    iput-object v0, p0, Lracing/game/hurdlesrace/MainActivity;->timehandler:Lorg/andengine/engine/handler/timer/TimerHandler;

    .line 349
    iget-object v0, p0, Lracing/game/hurdlesrace/MainActivity;->scene:Lorg/andengine/entity/scene/Scene;

    iget-object v1, p0, Lracing/game/hurdlesrace/MainActivity;->timehandler:Lorg/andengine/engine/handler/timer/TimerHandler;

    invoke-virtual {v0, v1}, Lorg/andengine/entity/scene/Scene;->registerUpdateHandler(Lorg/andengine/engine/handler/IUpdateHandler;)V

    .line 350
    return-void
.end method


# virtual methods
.method public getHighScore()I
    .locals 3

    .prologue
    .line 537
    const-string v0, "highScore"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lracing/game/hurdlesrace/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lracing/game/hurdlesrace/MainActivity;->sp:Landroid/content/SharedPreferences;

    .line 538
    iget-object v0, p0, Lracing/game/hurdlesrace/MainActivity;->sp:Landroid/content/SharedPreferences;

    const-string v1, "HighScore"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public onCreateEngineOptions()Lorg/andengine/engine/options/EngineOptions;
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 130
    new-instance v1, Lorg/andengine/engine/camera/Camera;

    sget v2, Lracing/game/hurdlesrace/MainActivity;->CAMERA_WIDTH:I

    int-to-float v2, v2

    sget v3, Lracing/game/hurdlesrace/MainActivity;->CAMERA_HEIGHT:I

    int-to-float v3, v3

    invoke-direct {v1, v4, v4, v2, v3}, Lorg/andengine/engine/camera/Camera;-><init>(FFFF)V

    iput-object v1, p0, Lracing/game/hurdlesrace/MainActivity;->camera:Lorg/andengine/engine/camera/Camera;

    .line 131
    new-instance v0, Lorg/andengine/engine/options/EngineOptions;

    .line 132
    sget-object v1, Lorg/andengine/engine/options/ScreenOrientation;->LANDSCAPE_FIXED:Lorg/andengine/engine/options/ScreenOrientation;

    new-instance v2, Lorg/andengine/engine/options/resolutionpolicy/RatioResolutionPolicy;

    .line 133
    const/high16 v3, 0x4448

    const/high16 v4, 0x43f0

    invoke-direct {v2, v3, v4}, Lorg/andengine/engine/options/resolutionpolicy/RatioResolutionPolicy;-><init>(FF)V

    iget-object v3, p0, Lracing/game/hurdlesrace/MainActivity;->camera:Lorg/andengine/engine/camera/Camera;

    .line 131
    invoke-direct {v0, v5, v1, v2, v3}, Lorg/andengine/engine/options/EngineOptions;-><init>(ZLorg/andengine/engine/options/ScreenOrientation;Lorg/andengine/engine/options/resolutionpolicy/IResolutionPolicy;Lorg/andengine/engine/camera/Camera;)V

    .line 134
    .local v0, engineOptions:Lorg/andengine/engine/options/EngineOptions;
    invoke-virtual {v0}, Lorg/andengine/engine/options/EngineOptions;->getAudioOptions()Lorg/andengine/engine/options/AudioOptions;

    move-result-object v1

    invoke-virtual {v1, v5}, Lorg/andengine/engine/options/AudioOptions;->setNeedsMusic(Z)Lorg/andengine/engine/options/AudioOptions;

    move-result-object v1

    invoke-virtual {v1, v5}, Lorg/andengine/engine/options/AudioOptions;->setNeedsSound(Z)Lorg/andengine/engine/options/AudioOptions;

    .line 135
    sget-object v1, Lorg/andengine/engine/options/WakeLockOptions;->SCREEN_ON:Lorg/andengine/engine/options/WakeLockOptions;

    invoke-virtual {v0, v1}, Lorg/andengine/engine/options/EngineOptions;->setWakeLockOptions(Lorg/andengine/engine/options/WakeLockOptions;)Lorg/andengine/engine/options/EngineOptions;

    .line 136
    return-object v0
.end method

.method protected onCreateResources()V
    .locals 11

    .prologue
    const/16 v2, 0x100

    const/4 v7, 0x1

    const/16 v10, 0x400

    .line 143
    invoke-virtual {p0}, Lracing/game/hurdlesrace/MainActivity;->getFontManager()Lorg/andengine/opengl/font/FontManager;

    move-result-object v0

    .line 144
    invoke-virtual {p0}, Lracing/game/hurdlesrace/MainActivity;->getTextureManager()Lorg/andengine/opengl/texture/TextureManager;

    move-result-object v1

    invoke-virtual {p0}, Lracing/game/hurdlesrace/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    .line 145
    const-string v5, "fonts/font.ttf"

    const/high16 v6, 0x4238

    const/high16 v8, -0x100

    move v3, v2

    .line 143
    invoke-static/range {v0 .. v8}, Lorg/andengine/opengl/font/FontFactory;->createFromAsset(Lorg/andengine/opengl/font/FontManager;Lorg/andengine/opengl/texture/TextureManager;IILandroid/content/res/AssetManager;Ljava/lang/String;FZI)Lorg/andengine/opengl/font/Font;

    move-result-object v0

    iput-object v0, p0, Lracing/game/hurdlesrace/MainActivity;->font:Lorg/andengine/opengl/font/Font;

    .line 146
    iget-object v0, p0, Lracing/game/hurdlesrace/MainActivity;->font:Lorg/andengine/opengl/font/Font;

    invoke-virtual {v0}, Lorg/andengine/opengl/font/Font;->load()V

    .line 148
    new-instance v0, Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    invoke-virtual {p0}, Lracing/game/hurdlesrace/MainActivity;->getTextureManager()Lorg/andengine/opengl/texture/TextureManager;

    move-result-object v1

    .line 149
    invoke-direct {v0, v1, v10, v10}, Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;-><init>(Lorg/andengine/opengl/texture/TextureManager;II)V

    .line 148
    iput-object v0, p0, Lracing/game/hurdlesrace/MainActivity;->gameTextureAtlas:Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    .line 151
    iget-object v0, p0, Lracing/game/hurdlesrace/MainActivity;->gameTextureAtlas:Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    invoke-virtual {p0}, Lracing/game/hurdlesrace/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "gfx/hillimage.png"

    .line 150
    invoke-static {v0, v1, v2}, Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->createFromAsset(Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;Landroid/content/res/AssetManager;Ljava/lang/String;)Lorg/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    iput-object v0, p0, Lracing/game/hurdlesrace/MainActivity;->hillregion:Lorg/andengine/opengl/texture/region/TextureRegion;

    .line 153
    iget-object v0, p0, Lracing/game/hurdlesrace/MainActivity;->gameTextureAtlas:Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    invoke-virtual {p0}, Lracing/game/hurdlesrace/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "gfx/fruit.png"

    .line 152
    invoke-static {v0, v1, v2}, Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->createFromAsset(Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;Landroid/content/res/AssetManager;Ljava/lang/String;)Lorg/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    iput-object v0, p0, Lracing/game/hurdlesrace/MainActivity;->ball:Lorg/andengine/opengl/texture/region/TextureRegion;

    .line 156
    iget-object v0, p0, Lracing/game/hurdlesrace/MainActivity;->gameTextureAtlas:Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    invoke-virtual {p0}, Lracing/game/hurdlesrace/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "gfx/hillimagebox.png"

    .line 155
    invoke-static {v0, v1, v2}, Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->createFromAsset(Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;Landroid/content/res/AssetManager;Ljava/lang/String;)Lorg/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    iput-object v0, p0, Lracing/game/hurdlesrace/MainActivity;->hillregionbox:Lorg/andengine/opengl/texture/region/TextureRegion;

    .line 157
    new-instance v0, Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    .line 158
    invoke-virtual {p0}, Lracing/game/hurdlesrace/MainActivity;->getTextureManager()Lorg/andengine/opengl/texture/TextureManager;

    move-result-object v1

    invoke-direct {v0, v1, v10, v10}, Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;-><init>(Lorg/andengine/opengl/texture/TextureManager;II)V

    .line 157
    iput-object v0, p0, Lracing/game/hurdlesrace/MainActivity;->obstracleTextureAtlas:Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    .line 160
    iget-object v0, p0, Lracing/game/hurdlesrace/MainActivity;->obstracleTextureAtlas:Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    invoke-virtual {p0}, Lracing/game/hurdlesrace/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 161
    const-string v2, "gfx/bar.png"

    .line 160
    invoke-static {v0, v1, v2}, Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->createFromAsset(Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;Landroid/content/res/AssetManager;Ljava/lang/String;)Lorg/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    .line 159
    iput-object v0, p0, Lracing/game/hurdlesrace/MainActivity;->lowerObstracle:Lorg/andengine/opengl/texture/region/TextureRegion;

    .line 163
    iget-object v0, p0, Lracing/game/hurdlesrace/MainActivity;->obstracleTextureAtlas:Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    invoke-virtual {p0}, Lracing/game/hurdlesrace/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 164
    const-string v2, "gfx/bar_cs200.png"

    .line 163
    invoke-static {v0, v1, v2}, Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->createFromAsset(Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;Landroid/content/res/AssetManager;Ljava/lang/String;)Lorg/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    .line 162
    iput-object v0, p0, Lracing/game/hurdlesrace/MainActivity;->upperObstracle:Lorg/andengine/opengl/texture/region/TextureRegion;

    .line 165
    new-instance v0, Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    .line 166
    invoke-virtual {p0}, Lracing/game/hurdlesrace/MainActivity;->getTextureManager()Lorg/andengine/opengl/texture/TextureManager;

    move-result-object v1

    invoke-direct {v0, v1, v10, v10}, Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;-><init>(Lorg/andengine/opengl/texture/TextureManager;II)V

    .line 165
    iput-object v0, p0, Lracing/game/hurdlesrace/MainActivity;->gameOverTextureAtlas:Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    .line 168
    iget-object v0, p0, Lracing/game/hurdlesrace/MainActivity;->gameOverTextureAtlas:Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    invoke-virtual {p0}, Lracing/game/hurdlesrace/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 169
    const-string v2, "gfx/gameover.png"

    .line 168
    invoke-static {v0, v1, v2}, Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->createFromAsset(Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;Landroid/content/res/AssetManager;Ljava/lang/String;)Lorg/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    .line 167
    iput-object v0, p0, Lracing/game/hurdlesrace/MainActivity;->gameOverRegion:Lorg/andengine/opengl/texture/region/TextureRegion;

    .line 171
    :try_start_0
    iget-object v0, p0, Lracing/game/hurdlesrace/MainActivity;->gameTextureAtlas:Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    .line 172
    new-instance v1, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder;

    .line 173
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 172
    invoke-direct {v1, v2, v3, v4}, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder;-><init>(III)V

    invoke-virtual {v0, v1}, Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;->build(Lorg/andengine/opengl/texture/atlas/buildable/builder/ITextureAtlasBuilder;)Lorg/andengine/opengl/texture/atlas/buildable/IBuildableTextureAtlas;

    .line 175
    iget-object v0, p0, Lracing/game/hurdlesrace/MainActivity;->gameTextureAtlas:Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    invoke-virtual {v0}, Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;->load()V
    :try_end_0
    .catch Lorg/andengine/opengl/texture/atlas/buildable/builder/ITextureAtlasBuilder$TextureAtlasBuilderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_0
    :try_start_1
    iget-object v0, p0, Lracing/game/hurdlesrace/MainActivity;->obstracleTextureAtlas:Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    .line 183
    new-instance v1, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder;

    .line 184
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 183
    invoke-direct {v1, v2, v3, v4}, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder;-><init>(III)V

    invoke-virtual {v0, v1}, Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;->build(Lorg/andengine/opengl/texture/atlas/buildable/builder/ITextureAtlasBuilder;)Lorg/andengine/opengl/texture/atlas/buildable/IBuildableTextureAtlas;

    .line 185
    iget-object v0, p0, Lracing/game/hurdlesrace/MainActivity;->obstracleTextureAtlas:Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    invoke-virtual {v0}, Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;->load()V
    :try_end_1
    .catch Lorg/andengine/opengl/texture/atlas/buildable/builder/ITextureAtlasBuilder$TextureAtlasBuilderException; {:try_start_1 .. :try_end_1} :catch_1

    .line 191
    :goto_1
    :try_start_2
    iget-object v0, p0, Lracing/game/hurdlesrace/MainActivity;->gameOverTextureAtlas:Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    .line 192
    new-instance v1, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder;

    .line 193
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 192
    invoke-direct {v1, v2, v3, v4}, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder;-><init>(III)V

    invoke-virtual {v0, v1}, Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;->build(Lorg/andengine/opengl/texture/atlas/buildable/builder/ITextureAtlasBuilder;)Lorg/andengine/opengl/texture/atlas/buildable/IBuildableTextureAtlas;

    .line 195
    iget-object v0, p0, Lracing/game/hurdlesrace/MainActivity;->gameOverTextureAtlas:Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    invoke-virtual {v0}, Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;->load()V
    :try_end_2
    .catch Lorg/andengine/opengl/texture/atlas/buildable/builder/ITextureAtlasBuilder$TextureAtlasBuilderException; {:try_start_2 .. :try_end_2} :catch_2

    .line 200
    :goto_2
    return-void

    .line 177
    :catch_0
    move-exception v9

    .line 178
    .local v9, e:Lorg/andengine/opengl/texture/atlas/buildable/builder/ITextureAtlasBuilder$TextureAtlasBuilderException;,"Lorg/andengine/opengl/texture/atlas/buildable/builder/ITextureAtlasBuilder$TextureAtlasBuilderException;"
    invoke-static {v9}, Lorg/andengine/util/debug/Debug;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 187
    .end local v9           #e:Lorg/andengine/opengl/texture/atlas/buildable/builder/ITextureAtlasBuilder$TextureAtlasBuilderException;,"Lorg/andengine/opengl/texture/atlas/buildable/builder/ITextureAtlasBuilder$TextureAtlasBuilderException;"
    :catch_1
    move-exception v9

    .line 188
    .restart local v9       #e:Lorg/andengine/opengl/texture/atlas/buildable/builder/ITextureAtlasBuilder$TextureAtlasBuilderException;,"Lorg/andengine/opengl/texture/atlas/buildable/builder/ITextureAtlasBuilder$TextureAtlasBuilderException;"
    invoke-static {v9}, Lorg/andengine/util/debug/Debug;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 197
    .end local v9           #e:Lorg/andengine/opengl/texture/atlas/buildable/builder/ITextureAtlasBuilder$TextureAtlasBuilderException;,"Lorg/andengine/opengl/texture/atlas/buildable/builder/ITextureAtlasBuilder$TextureAtlasBuilderException;"
    :catch_2
    move-exception v9

    .line 198
    .restart local v9       #e:Lorg/andengine/opengl/texture/atlas/buildable/builder/ITextureAtlasBuilder$TextureAtlasBuilderException;,"Lorg/andengine/opengl/texture/atlas/buildable/builder/ITextureAtlasBuilder$TextureAtlasBuilderException;"
    invoke-static {v9}, Lorg/andengine/util/debug/Debug;->e(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method protected onCreateScene()Lorg/andengine/entity/scene/Scene;
    .locals 20

    .prologue
    .line 205
    new-instance v14, Lorg/andengine/entity/scene/Scene;

    invoke-direct {v14}, Lorg/andengine/entity/scene/Scene;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lracing/game/hurdlesrace/MainActivity;->scene:Lorg/andengine/entity/scene/Scene;

    .line 207
    new-instance v14, Lorg/andengine/extension/physics/box2d/PhysicsWorld;

    new-instance v15, Lcom/badlogic/gdx/math/Vector2;

    const/16 v16, 0x0

    .line 208
    const v17, 0x411ce80a

    invoke-direct/range {v15 .. v17}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    const/16 v16, 0x0

    invoke-direct/range {v14 .. v16}, Lorg/andengine/extension/physics/box2d/PhysicsWorld;-><init>(Lcom/badlogic/gdx/math/Vector2;Z)V

    .line 207
    move-object/from16 v0, p0

    iput-object v14, v0, Lracing/game/hurdlesrace/MainActivity;->physicsWorld:Lorg/andengine/extension/physics/box2d/PhysicsWorld;

    .line 209
    move-object/from16 v0, p0

    iget-object v14, v0, Lracing/game/hurdlesrace/MainActivity;->scene:Lorg/andengine/entity/scene/Scene;

    new-instance v15, Lorg/andengine/entity/scene/background/Background;

    sget-object v16, Lorg/andengine/util/color/Color;->BLUE:Lorg/andengine/util/color/Color;

    invoke-direct/range {v15 .. v16}, Lorg/andengine/entity/scene/background/Background;-><init>(Lorg/andengine/util/color/Color;)V

    invoke-virtual {v14, v15}, Lorg/andengine/entity/scene/Scene;->setBackground(Lorg/andengine/entity/scene/background/IBackground;)V

    .line 211
    new-instance v14, Lorg/andengine/entity/sprite/Sprite;

    const/high16 v15, 0x41a0

    const/high16 v16, 0x43be

    move-object/from16 v0, p0

    iget-object v0, v0, Lracing/game/hurdlesrace/MainActivity;->hillregionbox:Lorg/andengine/opengl/texture/region/TextureRegion;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lracing/game/hurdlesrace/MainActivity;->vbom:Lorg/andengine/opengl/vbo/VertexBufferObjectManager;

    move-object/from16 v18, v0

    invoke-direct/range {v14 .. v18}, Lorg/andengine/entity/sprite/Sprite;-><init>(FFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lracing/game/hurdlesrace/MainActivity;->hillSpriteBox:Lorg/andengine/entity/sprite/Sprite;

    .line 213
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lracing/game/hurdlesrace/MainActivity;->hillSpriteX:I

    .line 214
    move-object/from16 v0, p0

    iget-object v14, v0, Lracing/game/hurdlesrace/MainActivity;->camera:Lorg/andengine/engine/camera/Camera;

    invoke-virtual {v14}, Lorg/andengine/engine/camera/Camera;->getHeight()F

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lracing/game/hurdlesrace/MainActivity;->hillregion:Lorg/andengine/opengl/texture/region/TextureRegion;

    invoke-virtual {v15}, Lorg/andengine/opengl/texture/region/TextureRegion;->getHeight()F

    move-result v15

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lracing/game/hurdlesrace/MainActivity;->hillSpriteY:F

    .line 215
    new-instance v14, Lorg/andengine/entity/sprite/Sprite;

    move-object/from16 v0, p0

    iget v15, v0, Lracing/game/hurdlesrace/MainActivity;->hillSpriteX:I

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lracing/game/hurdlesrace/MainActivity;->hillSpriteY:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lracing/game/hurdlesrace/MainActivity;->hillregion:Lorg/andengine/opengl/texture/region/TextureRegion;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lracing/game/hurdlesrace/MainActivity;->vbom:Lorg/andengine/opengl/vbo/VertexBufferObjectManager;

    move-object/from16 v18, v0

    invoke-direct/range {v14 .. v18}, Lorg/andengine/entity/sprite/Sprite;-><init>(FFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lracing/game/hurdlesrace/MainActivity;->hillSprite:Lorg/andengine/entity/sprite/Sprite;

    .line 216
    move-object/from16 v0, p0

    iget-object v14, v0, Lracing/game/hurdlesrace/MainActivity;->hillSprite:Lorg/andengine/entity/sprite/Sprite;

    invoke-virtual {v14}, Lorg/andengine/entity/sprite/Sprite;->getY()F

    move-result v4

    .line 217
    .local v4, b:F
    const/4 v2, 0x0

    .line 218
    .local v2, a:F
    sget v14, Lracing/game/hurdlesrace/MainActivity;->CAMERA_WIDTH:I

    int-to-float v3, v14

    .line 219
    .local v3, a1:F
    move-object/from16 v0, p0

    iget-object v14, v0, Lracing/game/hurdlesrace/MainActivity;->hillSprite:Lorg/andengine/entity/sprite/Sprite;

    invoke-virtual {v14}, Lorg/andengine/entity/sprite/Sprite;->getY()F

    move-result v14

    const/high16 v15, 0x42be

    sub-float v5, v14, v15

    .line 221
    .local v5, b1:F
    new-instance v14, Lorg/andengine/entity/modifier/PathModifier$Path;

    const/4 v15, 0x2

    invoke-direct {v14, v15}, Lorg/andengine/entity/modifier/PathModifier$Path;-><init>(I)V

    invoke-virtual {v14, v2, v4}, Lorg/andengine/entity/modifier/PathModifier$Path;->to(FF)Lorg/andengine/entity/modifier/PathModifier$Path;

    move-result-object v14

    invoke-virtual {v14, v3, v5}, Lorg/andengine/entity/modifier/PathModifier$Path;->to(FF)Lorg/andengine/entity/modifier/PathModifier$Path;

    move-result-object v12

    .line 222
    .local v12, path:Lorg/andengine/entity/modifier/PathModifier$Path;
    new-instance v14, Lorg/andengine/entity/modifier/LoopEntityModifier;

    .line 223
    new-instance v15, Lorg/andengine/entity/modifier/SequenceEntityModifier;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Lorg/andengine/entity/modifier/IEntityModifier;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    new-instance v18, Lorg/andengine/entity/modifier/PathModifier;

    move-object/from16 v0, p0

    iget v0, v0, Lracing/game/hurdlesrace/MainActivity;->pathTime:F

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v0, v1, v12}, Lorg/andengine/entity/modifier/PathModifier;-><init>(FLorg/andengine/entity/modifier/PathModifier$Path;)V

    aput-object v18, v16, v17

    invoke-direct/range {v15 .. v16}, Lorg/andengine/entity/modifier/SequenceEntityModifier;-><init>([Lorg/andengine/entity/modifier/IEntityModifier;)V

    invoke-direct {v14, v15}, Lorg/andengine/entity/modifier/LoopEntityModifier;-><init>(Lorg/andengine/entity/modifier/IEntityModifier;)V

    .line 222
    move-object/from16 v0, p0

    iput-object v14, v0, Lracing/game/hurdlesrace/MainActivity;->lemsprite:Lorg/andengine/entity/modifier/LoopEntityModifier;

    .line 224
    move-object/from16 v0, p0

    iget-object v14, v0, Lracing/game/hurdlesrace/MainActivity;->hillSprite:Lorg/andengine/entity/sprite/Sprite;

    move-object/from16 v0, p0

    iget-object v15, v0, Lracing/game/hurdlesrace/MainActivity;->lemsprite:Lorg/andengine/entity/modifier/LoopEntityModifier;

    invoke-virtual {v14, v15}, Lorg/andengine/entity/sprite/Sprite;->registerEntityModifier(Lorg/andengine/entity/modifier/IEntityModifier;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v14, v0, Lracing/game/hurdlesrace/MainActivity;->hillSprite:Lorg/andengine/entity/sprite/Sprite;

    invoke-virtual {v14}, Lorg/andengine/entity/sprite/Sprite;->getX()F

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lracing/game/hurdlesrace/MainActivity;->hillSprite:Lorg/andengine/entity/sprite/Sprite;

    invoke-virtual {v15}, Lorg/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v15

    sub-float v10, v14, v15

    .line 227
    .local v10, hsx1:F
    move-object/from16 v0, p0

    iget-object v14, v0, Lracing/game/hurdlesrace/MainActivity;->hillSprite:Lorg/andengine/entity/sprite/Sprite;

    invoke-virtual {v14}, Lorg/andengine/entity/sprite/Sprite;->getY()F

    move-result v14

    const/high16 v15, 0x42ba

    add-float v11, v14, v15

    .line 229
    .local v11, hsy1:F
    new-instance v14, Lorg/andengine/entity/sprite/Sprite;

    move-object/from16 v0, p0

    iget-object v15, v0, Lracing/game/hurdlesrace/MainActivity;->hillregion:Lorg/andengine/opengl/texture/region/TextureRegion;

    move-object/from16 v0, p0

    iget-object v0, v0, Lracing/game/hurdlesrace/MainActivity;->vbom:Lorg/andengine/opengl/vbo/VertexBufferObjectManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v14, v10, v11, v15, v0}, Lorg/andengine/entity/sprite/Sprite;-><init>(FFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lracing/game/hurdlesrace/MainActivity;->hillSprite1:Lorg/andengine/entity/sprite/Sprite;

    .line 231
    move-object/from16 v0, p0

    iget-object v14, v0, Lracing/game/hurdlesrace/MainActivity;->hillSprite1:Lorg/andengine/entity/sprite/Sprite;

    invoke-virtual {v14}, Lorg/andengine/entity/sprite/Sprite;->getX()F

    move-result v6

    .line 232
    .local v6, hsa:F
    move-object/from16 v0, p0

    iget-object v14, v0, Lracing/game/hurdlesrace/MainActivity;->hillSprite1:Lorg/andengine/entity/sprite/Sprite;

    invoke-virtual {v14}, Lorg/andengine/entity/sprite/Sprite;->getY()F

    move-result v8

    .line 233
    .local v8, hsb:F
    const/4 v7, 0x0

    .line 234
    .local v7, hsa1:F
    move-object/from16 v0, p0

    iget-object v14, v0, Lracing/game/hurdlesrace/MainActivity;->hillSprite1:Lorg/andengine/entity/sprite/Sprite;

    invoke-virtual {v14}, Lorg/andengine/entity/sprite/Sprite;->getY()F

    move-result v14

    const/high16 v15, 0x42be

    sub-float v9, v14, v15

    .line 236
    .local v9, hsb1:F
    new-instance v14, Lorg/andengine/entity/modifier/PathModifier$Path;

    const/4 v15, 0x2

    invoke-direct {v14, v15}, Lorg/andengine/entity/modifier/PathModifier$Path;-><init>(I)V

    invoke-virtual {v14, v6, v8}, Lorg/andengine/entity/modifier/PathModifier$Path;->to(FF)Lorg/andengine/entity/modifier/PathModifier$Path;

    move-result-object v14

    invoke-virtual {v14, v7, v9}, Lorg/andengine/entity/modifier/PathModifier$Path;->to(FF)Lorg/andengine/entity/modifier/PathModifier$Path;

    move-result-object v13

    .line 238
    .local v13, path1:Lorg/andengine/entity/modifier/PathModifier$Path;
    new-instance v14, Lorg/andengine/entity/modifier/LoopEntityModifier;

    new-instance v15, Lorg/andengine/entity/modifier/SequenceEntityModifier;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Lorg/andengine/entity/modifier/IEntityModifier;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    .line 239
    new-instance v18, Lorg/andengine/entity/modifier/PathModifier;

    move-object/from16 v0, p0

    iget v0, v0, Lracing/game/hurdlesrace/MainActivity;->pathTime:F

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v0, v1, v13}, Lorg/andengine/entity/modifier/PathModifier;-><init>(FLorg/andengine/entity/modifier/PathModifier$Path;)V

    aput-object v18, v16, v17

    invoke-direct/range {v15 .. v16}, Lorg/andengine/entity/modifier/SequenceEntityModifier;-><init>([Lorg/andengine/entity/modifier/IEntityModifier;)V

    invoke-direct {v14, v15}, Lorg/andengine/entity/modifier/LoopEntityModifier;-><init>(Lorg/andengine/entity/modifier/IEntityModifier;)V

    .line 238
    move-object/from16 v0, p0

    iput-object v14, v0, Lracing/game/hurdlesrace/MainActivity;->lemsprite1:Lorg/andengine/entity/modifier/LoopEntityModifier;

    .line 240
    move-object/from16 v0, p0

    iget-object v14, v0, Lracing/game/hurdlesrace/MainActivity;->hillSprite1:Lorg/andengine/entity/sprite/Sprite;

    move-object/from16 v0, p0

    iget-object v15, v0, Lracing/game/hurdlesrace/MainActivity;->lemsprite1:Lorg/andengine/entity/modifier/LoopEntityModifier;

    invoke-virtual {v14, v15}, Lorg/andengine/entity/sprite/Sprite;->registerEntityModifier(Lorg/andengine/entity/modifier/IEntityModifier;)V

    .line 242
    new-instance v14, Lorg/andengine/entity/sprite/Sprite;

    const/high16 v15, 0x433e

    const/high16 v16, 0x4248

    move-object/from16 v0, p0

    iget-object v0, v0, Lracing/game/hurdlesrace/MainActivity;->gameOverRegion:Lorg/andengine/opengl/texture/region/TextureRegion;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lracing/game/hurdlesrace/MainActivity;->vbom:Lorg/andengine/opengl/vbo/VertexBufferObjectManager;

    move-object/from16 v18, v0

    invoke-direct/range {v14 .. v18}, Lorg/andengine/entity/sprite/Sprite;-><init>(FFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lracing/game/hurdlesrace/MainActivity;->gameOverSprite:Lorg/andengine/entity/sprite/Sprite;

    .line 243
    move-object/from16 v0, p0

    iget-object v14, v0, Lracing/game/hurdlesrace/MainActivity;->scene:Lorg/andengine/entity/scene/Scene;

    move-object/from16 v0, p0

    iget-object v15, v0, Lracing/game/hurdlesrace/MainActivity;->gameOverSprite:Lorg/andengine/entity/sprite/Sprite;

    invoke-virtual {v14, v15}, Lorg/andengine/entity/scene/Scene;->attachChild(Lorg/andengine/entity/IEntity;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v14, v0, Lracing/game/hurdlesrace/MainActivity;->gameOverSprite:Lorg/andengine/entity/sprite/Sprite;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lorg/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 246
    const/high16 v14, 0x4120

    move-object/from16 v0, p0

    iput v14, v0, Lracing/game/hurdlesrace/MainActivity;->lowerObstracleSpriteX:F

    .line 247
    const/high16 v14, 0x438c

    move-object/from16 v0, p0

    iput v14, v0, Lracing/game/hurdlesrace/MainActivity;->lowerObstracleSpriteY:F

    .line 249
    new-instance v14, Lorg/andengine/entity/sprite/Sprite;

    move-object/from16 v0, p0

    iget v15, v0, Lracing/game/hurdlesrace/MainActivity;->lowerObstracleSpriteX:F

    .line 250
    move-object/from16 v0, p0

    iget v0, v0, Lracing/game/hurdlesrace/MainActivity;->lowerObstracleSpriteY:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lracing/game/hurdlesrace/MainActivity;->lowerObstracle:Lorg/andengine/opengl/texture/region/TextureRegion;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lracing/game/hurdlesrace/MainActivity;->vbom:Lorg/andengine/opengl/vbo/VertexBufferObjectManager;

    move-object/from16 v18, v0

    invoke-direct/range {v14 .. v18}, Lorg/andengine/entity/sprite/Sprite;-><init>(FFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;)V

    .line 249
    move-object/from16 v0, p0

    iput-object v14, v0, Lracing/game/hurdlesrace/MainActivity;->lowerObstracleSprite:Lorg/andengine/entity/sprite/Sprite;

    .line 251
    move-object/from16 v0, p0

    iget-object v14, v0, Lracing/game/hurdlesrace/MainActivity;->scene:Lorg/andengine/entity/scene/Scene;

    move-object/from16 v0, p0

    iget-object v15, v0, Lracing/game/hurdlesrace/MainActivity;->lowerObstracleSprite:Lorg/andengine/entity/sprite/Sprite;

    invoke-virtual {v14, v15}, Lorg/andengine/entity/scene/Scene;->attachChild(Lorg/andengine/entity/IEntity;)V

    .line 253
    const/high16 v14, 0x4120

    move-object/from16 v0, p0

    iput v14, v0, Lracing/game/hurdlesrace/MainActivity;->upperObstracleSpriteX:F

    .line 254
    const v14, -0x3bf68000

    move-object/from16 v0, p0

    iput v14, v0, Lracing/game/hurdlesrace/MainActivity;->upperObstracleSpriteY:F

    .line 255
    new-instance v14, Lorg/andengine/entity/sprite/Sprite;

    move-object/from16 v0, p0

    iget v15, v0, Lracing/game/hurdlesrace/MainActivity;->upperObstracleSpriteX:F

    .line 256
    move-object/from16 v0, p0

    iget v0, v0, Lracing/game/hurdlesrace/MainActivity;->upperObstracleSpriteY:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lracing/game/hurdlesrace/MainActivity;->upperObstracle:Lorg/andengine/opengl/texture/region/TextureRegion;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lracing/game/hurdlesrace/MainActivity;->vbom:Lorg/andengine/opengl/vbo/VertexBufferObjectManager;

    move-object/from16 v18, v0

    invoke-direct/range {v14 .. v18}, Lorg/andengine/entity/sprite/Sprite;-><init>(FFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;)V

    .line 255
    move-object/from16 v0, p0

    iput-object v14, v0, Lracing/game/hurdlesrace/MainActivity;->upperObstracleSprite:Lorg/andengine/entity/sprite/Sprite;

    .line 258
    move-object/from16 v0, p0

    iget-object v14, v0, Lracing/game/hurdlesrace/MainActivity;->scene:Lorg/andengine/entity/scene/Scene;

    move-object/from16 v0, p0

    iget-object v15, v0, Lracing/game/hurdlesrace/MainActivity;->upperObstracleSprite:Lorg/andengine/entity/sprite/Sprite;

    invoke-virtual {v14, v15}, Lorg/andengine/entity/scene/Scene;->attachChild(Lorg/andengine/entity/IEntity;)V

    .line 259
    move-object/from16 v0, p0

    iget-object v14, v0, Lracing/game/hurdlesrace/MainActivity;->scene:Lorg/andengine/entity/scene/Scene;

    move-object/from16 v0, p0

    iget-object v15, v0, Lracing/game/hurdlesrace/MainActivity;->hillSprite:Lorg/andengine/entity/sprite/Sprite;

    invoke-virtual {v14, v15}, Lorg/andengine/entity/scene/Scene;->attachChild(Lorg/andengine/entity/IEntity;)V

    .line 260
    move-object/from16 v0, p0

    iget-object v14, v0, Lracing/game/hurdlesrace/MainActivity;->scene:Lorg/andengine/entity/scene/Scene;

    move-object/from16 v0, p0

    iget-object v15, v0, Lracing/game/hurdlesrace/MainActivity;->hillSpriteBox:Lorg/andengine/entity/sprite/Sprite;

    invoke-virtual {v14, v15}, Lorg/andengine/entity/scene/Scene;->attachChild(Lorg/andengine/entity/IEntity;)V

    .line 261
    const/high16 v14, 0x441b

    move-object/from16 v0, p0

    iput v14, v0, Lracing/game/hurdlesrace/MainActivity;->ballSpriteX:F

    .line 262
    const/high16 v14, 0x4343

    move-object/from16 v0, p0

    iput v14, v0, Lracing/game/hurdlesrace/MainActivity;->ballSpriteY:F

    .line 263
    new-instance v14, Lorg/andengine/entity/sprite/Sprite;

    move-object/from16 v0, p0

    iget v15, v0, Lracing/game/hurdlesrace/MainActivity;->ballSpriteX:F

    move-object/from16 v0, p0

    iget v0, v0, Lracing/game/hurdlesrace/MainActivity;->ballSpriteY:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lracing/game/hurdlesrace/MainActivity;->ball:Lorg/andengine/opengl/texture/region/TextureRegion;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lracing/game/hurdlesrace/MainActivity;->vbom:Lorg/andengine/opengl/vbo/VertexBufferObjectManager;

    move-object/from16 v18, v0

    invoke-direct/range {v14 .. v18}, Lorg/andengine/entity/sprite/Sprite;-><init>(FFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lracing/game/hurdlesrace/MainActivity;->ballSprite:Lorg/andengine/entity/sprite/Sprite;

    .line 264
    move-object/from16 v0, p0

    iget-object v14, v0, Lracing/game/hurdlesrace/MainActivity;->scene:Lorg/andengine/entity/scene/Scene;

    move-object/from16 v0, p0

    iget-object v15, v0, Lracing/game/hurdlesrace/MainActivity;->ballSprite:Lorg/andengine/entity/sprite/Sprite;

    invoke-virtual {v14, v15}, Lorg/andengine/entity/scene/Scene;->attachChild(Lorg/andengine/entity/IEntity;)V

    .line 265
    move-object/from16 v0, p0

    iget-object v14, v0, Lracing/game/hurdlesrace/MainActivity;->scene:Lorg/andengine/entity/scene/Scene;

    move-object/from16 v0, p0

    iget-object v15, v0, Lracing/game/hurdlesrace/MainActivity;->hillSprite1:Lorg/andengine/entity/sprite/Sprite;

    invoke-virtual {v14, v15}, Lorg/andengine/entity/scene/Scene;->attachChild(Lorg/andengine/entity/IEntity;)V

    .line 266
    invoke-direct/range {p0 .. p0}, Lracing/game/hurdlesrace/MainActivity;->makeBody()V

    .line 267
    invoke-direct/range {p0 .. p0}, Lracing/game/hurdlesrace/MainActivity;->setscore()V

    .line 268
    move-object/from16 v0, p0

    iget-object v14, v0, Lracing/game/hurdlesrace/MainActivity;->scene:Lorg/andengine/entity/scene/Scene;

    new-instance v15, Lracing/game/hurdlesrace/MainActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lracing/game/hurdlesrace/MainActivity$1;-><init>(Lracing/game/hurdlesrace/MainActivity;)V

    invoke-virtual {v14, v15}, Lorg/andengine/entity/scene/Scene;->registerUpdateHandler(Lorg/andengine/engine/handler/IUpdateHandler;)V

    .line 305
    invoke-direct/range {p0 .. p0}, Lracing/game/hurdlesrace/MainActivity;->timer()V

    .line 306
    move-object/from16 v0, p0

    iget-object v14, v0, Lracing/game/hurdlesrace/MainActivity;->scene:Lorg/andengine/entity/scene/Scene;

    move-object/from16 v0, p0

    iget-object v15, v0, Lracing/game/hurdlesrace/MainActivity;->physicsWorld:Lorg/andengine/extension/physics/box2d/PhysicsWorld;

    invoke-virtual {v14, v15}, Lorg/andengine/entity/scene/Scene;->registerUpdateHandler(Lorg/andengine/engine/handler/IUpdateHandler;)V

    .line 307
    move-object/from16 v0, p0

    iget-object v14, v0, Lracing/game/hurdlesrace/MainActivity;->physicsWorld:Lorg/andengine/extension/physics/box2d/PhysicsWorld;

    invoke-direct/range {p0 .. p0}, Lracing/game/hurdlesrace/MainActivity;->createContactListener()Lcom/badlogic/gdx/physics/box2d/ContactListener;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/andengine/extension/physics/box2d/PhysicsWorld;->setContactListener(Lcom/badlogic/gdx/physics/box2d/ContactListener;)V

    .line 308
    move-object/from16 v0, p0

    iget-object v14, v0, Lracing/game/hurdlesrace/MainActivity;->scene:Lorg/andengine/entity/scene/Scene;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lorg/andengine/entity/scene/Scene;->setOnSceneTouchListener(Lorg/andengine/entity/scene/IOnSceneTouchListener;)V

    .line 309
    move-object/from16 v0, p0

    iget-object v14, v0, Lracing/game/hurdlesrace/MainActivity;->scene:Lorg/andengine/entity/scene/Scene;

    return-object v14
.end method

.method public onSceneTouchEvent(Lorg/andengine/entity/scene/Scene;Lorg/andengine/input/touch/TouchEvent;)Z
    .locals 4
    .parameter "pScene"
    .parameter "pSceneTouchEvent"

    .prologue
    .line 520
    iget-boolean v0, p0, Lracing/game/hurdlesrace/MainActivity;->jump:Z

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lracing/game/hurdlesrace/MainActivity;->ballBody:Lcom/badlogic/gdx/physics/box2d/Body;

    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    const/4 v2, 0x0

    const/high16 v3, -0x3ef0

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/physics/box2d/Body;->setLinearVelocity(Lcom/badlogic/gdx/math/Vector2;)V

    .line 523
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setHighScore(I)V
    .locals 5
    .parameter "score"

    .prologue
    .line 527
    const-string v2, "highScore"

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Lracing/game/hurdlesrace/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lracing/game/hurdlesrace/MainActivity;->sp:Landroid/content/SharedPreferences;

    .line 528
    iget-object v2, p0, Lracing/game/hurdlesrace/MainActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 529
    .local v1, scoreEditor:Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lracing/game/hurdlesrace/MainActivity;->sp:Landroid/content/SharedPreferences;

    const-string v3, "HighScore"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 530
    .local v0, a:I
    if-gt v0, p1, :cond_0

    .line 531
    const-string v2, "HighScore"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 532
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 534
    :cond_0
    return-void
.end method
