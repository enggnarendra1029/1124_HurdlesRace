.class Lracing/game/hurdlesrace/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/badlogic/gdx/physics/box2d/ContactListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lracing/game/hurdlesrace/MainActivity;->createContactListener()Lcom/badlogic/gdx/physics/box2d/ContactListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lracing/game/hurdlesrace/MainActivity;


# direct methods
.method constructor <init>(Lracing/game/hurdlesrace/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lracing/game/hurdlesrace/MainActivity$4;->this$0:Lracing/game/hurdlesrace/MainActivity;

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createHud()V
    .locals 8

    .prologue
    .line 473
    iget-object v7, p0, Lracing/game/hurdlesrace/MainActivity$4;->this$0:Lracing/game/hurdlesrace/MainActivity;

    new-instance v0, Lorg/andengine/entity/text/Text;

    const/high16 v1, 0x4357

    const/high16 v2, 0x4316

    iget-object v3, p0, Lracing/game/hurdlesrace/MainActivity$4;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->font:Lorg/andengine/opengl/font/Font;
    invoke-static {v3}, Lracing/game/hurdlesrace/MainActivity;->access$28(Lracing/game/hurdlesrace/MainActivity;)Lorg/andengine/opengl/font/Font;

    move-result-object v3

    .line 474
    const-string v4, "High Score: 0123456789"

    new-instance v5, Lorg/andengine/entity/text/TextOptions;

    .line 475
    sget-object v6, Lorg/andengine/util/HorizontalAlign;->CENTER:Lorg/andengine/util/HorizontalAlign;

    invoke-direct {v5, v6}, Lorg/andengine/entity/text/TextOptions;-><init>(Lorg/andengine/util/HorizontalAlign;)V

    iget-object v6, p0, Lracing/game/hurdlesrace/MainActivity$4;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->vbom:Lorg/andengine/opengl/vbo/VertexBufferObjectManager;
    invoke-static {v6}, Lracing/game/hurdlesrace/MainActivity;->access$29(Lracing/game/hurdlesrace/MainActivity;)Lorg/andengine/opengl/vbo/VertexBufferObjectManager;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/andengine/entity/text/Text;-><init>(FFLorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;Lorg/andengine/entity/text/TextOptions;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;)V

    .line 473
    #setter for: Lracing/game/hurdlesrace/MainActivity;->yourScoreText:Lorg/andengine/entity/text/Text;
    invoke-static {v7, v0}, Lracing/game/hurdlesrace/MainActivity;->access$30(Lracing/game/hurdlesrace/MainActivity;Lorg/andengine/entity/text/Text;)V

    .line 476
    iget-object v0, p0, Lracing/game/hurdlesrace/MainActivity$4;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->yourScoreText:Lorg/andengine/entity/text/Text;
    invoke-static {v0}, Lracing/game/hurdlesrace/MainActivity;->access$26(Lracing/game/hurdlesrace/MainActivity;)Lorg/andengine/entity/text/Text;

    move-result-object v0

    const-string v1, "High Score: 0"

    invoke-virtual {v0, v1}, Lorg/andengine/entity/text/Text;->setText(Ljava/lang/CharSequence;)V

    .line 477
    iget-object v0, p0, Lracing/game/hurdlesrace/MainActivity$4;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->scene:Lorg/andengine/entity/scene/Scene;
    invoke-static {v0}, Lracing/game/hurdlesrace/MainActivity;->access$18(Lracing/game/hurdlesrace/MainActivity;)Lorg/andengine/entity/scene/Scene;

    move-result-object v0

    iget-object v1, p0, Lracing/game/hurdlesrace/MainActivity$4;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->yourScoreText:Lorg/andengine/entity/text/Text;
    invoke-static {v1}, Lracing/game/hurdlesrace/MainActivity;->access$26(Lracing/game/hurdlesrace/MainActivity;)Lorg/andengine/entity/text/Text;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/andengine/entity/scene/Scene;->attachChild(Lorg/andengine/entity/IEntity;)V

    .line 478
    iget-object v7, p0, Lracing/game/hurdlesrace/MainActivity$4;->this$0:Lracing/game/hurdlesrace/MainActivity;

    new-instance v0, Lorg/andengine/entity/text/Text;

    const/high16 v1, 0x4339

    const/high16 v2, 0x4361

    iget-object v3, p0, Lracing/game/hurdlesrace/MainActivity$4;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->font:Lorg/andengine/opengl/font/Font;
    invoke-static {v3}, Lracing/game/hurdlesrace/MainActivity;->access$28(Lracing/game/hurdlesrace/MainActivity;)Lorg/andengine/opengl/font/Font;

    move-result-object v3

    .line 479
    const-string v4, "Highest Score: 0123456789"

    new-instance v5, Lorg/andengine/entity/text/TextOptions;

    .line 480
    sget-object v6, Lorg/andengine/util/HorizontalAlign;->CENTER:Lorg/andengine/util/HorizontalAlign;

    invoke-direct {v5, v6}, Lorg/andengine/entity/text/TextOptions;-><init>(Lorg/andengine/util/HorizontalAlign;)V

    iget-object v6, p0, Lracing/game/hurdlesrace/MainActivity$4;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->vbom:Lorg/andengine/opengl/vbo/VertexBufferObjectManager;
    invoke-static {v6}, Lracing/game/hurdlesrace/MainActivity;->access$29(Lracing/game/hurdlesrace/MainActivity;)Lorg/andengine/opengl/vbo/VertexBufferObjectManager;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/andengine/entity/text/Text;-><init>(FFLorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;Lorg/andengine/entity/text/TextOptions;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;)V

    .line 478
    #setter for: Lracing/game/hurdlesrace/MainActivity;->getHighScoreText:Lorg/andengine/entity/text/Text;
    invoke-static {v7, v0}, Lracing/game/hurdlesrace/MainActivity;->access$31(Lracing/game/hurdlesrace/MainActivity;Lorg/andengine/entity/text/Text;)V

    .line 481
    iget-object v0, p0, Lracing/game/hurdlesrace/MainActivity$4;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->getHighScoreText:Lorg/andengine/entity/text/Text;
    invoke-static {v0}, Lracing/game/hurdlesrace/MainActivity;->access$27(Lracing/game/hurdlesrace/MainActivity;)Lorg/andengine/entity/text/Text;

    move-result-object v0

    const-string v1, "Highest Score: "

    invoke-virtual {v0, v1}, Lorg/andengine/entity/text/Text;->setText(Ljava/lang/CharSequence;)V

    .line 482
    iget-object v0, p0, Lracing/game/hurdlesrace/MainActivity$4;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->scene:Lorg/andengine/entity/scene/Scene;
    invoke-static {v0}, Lracing/game/hurdlesrace/MainActivity;->access$18(Lracing/game/hurdlesrace/MainActivity;)Lorg/andengine/entity/scene/Scene;

    move-result-object v0

    iget-object v1, p0, Lracing/game/hurdlesrace/MainActivity$4;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->getHighScoreText:Lorg/andengine/entity/text/Text;
    invoke-static {v1}, Lracing/game/hurdlesrace/MainActivity;->access$27(Lracing/game/hurdlesrace/MainActivity;)Lorg/andengine/entity/text/Text;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/andengine/entity/scene/Scene;->attachChild(Lorg/andengine/entity/IEntity;)V

    .line 483
    iget-object v0, p0, Lracing/game/hurdlesrace/MainActivity$4;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->getHighScoreText:Lorg/andengine/entity/text/Text;
    invoke-static {v0}, Lracing/game/hurdlesrace/MainActivity;->access$27(Lracing/game/hurdlesrace/MainActivity;)Lorg/andengine/entity/text/Text;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/andengine/entity/text/Text;->setVisible(Z)V

    .line 484
    return-void
.end method


# virtual methods
.method public beginContact(Lcom/badlogic/gdx/physics/box2d/Contact;)V
    .locals 13
    .parameter "contact"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 402
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Contact;->getFixtureA()Lcom/badlogic/gdx/physics/box2d/Fixture;

    move-result-object v3

    .line 403
    .local v3, x1:Lcom/badlogic/gdx/physics/box2d/Fixture;
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Contact;->getFixtureB()Lcom/badlogic/gdx/physics/box2d/Fixture;

    move-result-object v4

    .line 405
    .local v4, x2:Lcom/badlogic/gdx/physics/box2d/Fixture;
    invoke-virtual {v3}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getBody()Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/physics/box2d/Body;->getUserData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 406
    .local v0, a:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getBody()Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/physics/box2d/Body;->getUserData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 408
    .local v1, b:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getBody()Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/physics/box2d/Body;->getUserData()Ljava/lang/Object;

    move-result-object v5

    const-string v6, "ballBody"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 409
    invoke-virtual {v4}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getBody()Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/physics/box2d/Body;->getUserData()Ljava/lang/Object;

    move-result-object v5

    const-string v6, "groundBody"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 410
    const-string v5, "CONTACT"

    const-string v6, "BETWEEN PLAYER AND ground!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v5, p0, Lracing/game/hurdlesrace/MainActivity$4;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->stoprotating:Z
    invoke-static {v5}, Lracing/game/hurdlesrace/MainActivity;->access$11(Lracing/game/hurdlesrace/MainActivity;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 412
    iget-object v5, p0, Lracing/game/hurdlesrace/MainActivity$4;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #setter for: Lracing/game/hurdlesrace/MainActivity;->jump:Z
    invoke-static {v5, v10}, Lracing/game/hurdlesrace/MainActivity;->access$12(Lracing/game/hurdlesrace/MainActivity;Z)V

    .line 413
    iget-object v5, p0, Lracing/game/hurdlesrace/MainActivity$4;->this$0:Lracing/game/hurdlesrace/MainActivity;

    new-instance v6, Lorg/andengine/entity/modifier/LoopEntityModifier;

    .line 414
    new-instance v7, Lorg/andengine/entity/modifier/RotationModifier;

    invoke-static {}, Lracing/game/hurdlesrace/Util;->getUtil()Lracing/game/hurdlesrace/Util;

    move-result-object v8

    .line 415
    iget-object v9, p0, Lracing/game/hurdlesrace/MainActivity$4;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->time:F
    invoke-static {v9}, Lracing/game/hurdlesrace/MainActivity;->access$13(Lracing/game/hurdlesrace/MainActivity;)F

    move-result v9

    .line 414
    invoke-virtual {v8, v9}, Lracing/game/hurdlesrace/Util;->getAngle(F)F

    move-result v8

    .line 415
    const/high16 v9, 0x43b4

    .line 414
    invoke-direct {v7, v8, v9, v11}, Lorg/andengine/entity/modifier/RotationModifier;-><init>(FFF)V

    invoke-direct {v6, v7}, Lorg/andengine/entity/modifier/LoopEntityModifier;-><init>(Lorg/andengine/entity/modifier/IEntityModifier;)V

    .line 413
    #setter for: Lracing/game/hurdlesrace/MainActivity;->loopEntityModifierball:Lorg/andengine/entity/modifier/LoopEntityModifier;
    invoke-static {v5, v6}, Lracing/game/hurdlesrace/MainActivity;->access$14(Lracing/game/hurdlesrace/MainActivity;Lorg/andengine/entity/modifier/LoopEntityModifier;)V

    .line 416
    iget-object v5, p0, Lracing/game/hurdlesrace/MainActivity$4;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->ballSprite:Lorg/andengine/entity/sprite/Sprite;
    invoke-static {v5}, Lracing/game/hurdlesrace/MainActivity;->access$15(Lracing/game/hurdlesrace/MainActivity;)Lorg/andengine/entity/sprite/Sprite;

    move-result-object v5

    iget-object v6, p0, Lracing/game/hurdlesrace/MainActivity$4;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->loopEntityModifierball:Lorg/andengine/entity/modifier/LoopEntityModifier;
    invoke-static {v6}, Lracing/game/hurdlesrace/MainActivity;->access$16(Lracing/game/hurdlesrace/MainActivity;)Lorg/andengine/entity/modifier/LoopEntityModifier;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/andengine/entity/sprite/Sprite;->registerEntityModifier(Lorg/andengine/entity/modifier/IEntityModifier;)V

    .line 420
    :cond_0
    invoke-virtual {v3}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getBody()Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/physics/box2d/Body;->getUserData()Ljava/lang/Object;

    move-result-object v5

    const-string v6, "ballBody"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 421
    invoke-virtual {v4}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getBody()Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/physics/box2d/Body;->getUserData()Ljava/lang/Object;

    move-result-object v5

    .line 422
    const-string v6, "upperObstracleBody"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 423
    const-string v5, "CONTACT"

    const-string v6, "BETWEEN PLAYER AND upperObstracle"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v5, p0, Lracing/game/hurdlesrace/MainActivity$4;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #setter for: Lracing/game/hurdlesrace/MainActivity;->jump:Z
    invoke-static {v5, v12}, Lracing/game/hurdlesrace/MainActivity;->access$12(Lracing/game/hurdlesrace/MainActivity;Z)V

    .line 426
    iget-object v5, p0, Lracing/game/hurdlesrace/MainActivity$4;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #setter for: Lracing/game/hurdlesrace/MainActivity;->gameOver:Z
    invoke-static {v5, v10}, Lracing/game/hurdlesrace/MainActivity;->access$17(Lracing/game/hurdlesrace/MainActivity;Z)V

    .line 427
    iget-object v5, p0, Lracing/game/hurdlesrace/MainActivity$4;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->scene:Lorg/andengine/entity/scene/Scene;
    invoke-static {v5}, Lracing/game/hurdlesrace/MainActivity;->access$18(Lracing/game/hurdlesrace/MainActivity;)Lorg/andengine/entity/scene/Scene;

    move-result-object v5

    iget-object v6, p0, Lracing/game/hurdlesrace/MainActivity$4;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->timehandler:Lorg/andengine/engine/handler/timer/TimerHandler;
    invoke-static {v6}, Lracing/game/hurdlesrace/MainActivity;->access$19(Lracing/game/hurdlesrace/MainActivity;)Lorg/andengine/engine/handler/timer/TimerHandler;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/andengine/entity/scene/Scene;->unregisterUpdateHandler(Lorg/andengine/engine/handler/IUpdateHandler;)Z

    .line 428
    iget-object v5, p0, Lracing/game/hurdlesrace/MainActivity$4;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->lowerObstracleBody:Lcom/badlogic/gdx/physics/box2d/Body;
    invoke-static {v5}, Lracing/game/hurdlesrace/MainActivity;->access$2(Lracing/game/hurdlesrace/MainActivity;)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v5

    invoke-virtual {v5, v11, v11}, Lcom/badlogic/gdx/physics/box2d/Body;->setLinearVelocity(FF)V

    .line 429
    iget-object v5, p0, Lracing/game/hurdlesrace/MainActivity$4;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->upperObstracleBody:Lcom/badlogic/gdx/physics/box2d/Body;
    invoke-static {v5}, Lracing/game/hurdlesrace/MainActivity;->access$6(Lracing/game/hurdlesrace/MainActivity;)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v5

    invoke-virtual {v5, v11, v11}, Lcom/badlogic/gdx/physics/box2d/Body;->setLinearVelocity(FF)V

    .line 431
    iget-object v5, p0, Lracing/game/hurdlesrace/MainActivity$4;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->hillSprite:Lorg/andengine/entity/sprite/Sprite;
    invoke-static {v5}, Lracing/game/hurdlesrace/MainActivity;->access$20(Lracing/game/hurdlesrace/MainActivity;)Lorg/andengine/entity/sprite/Sprite;

    move-result-object v5

    iget-object v6, p0, Lracing/game/hurdlesrace/MainActivity$4;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->lemsprite:Lorg/andengine/entity/modifier/LoopEntityModifier;
    invoke-static {v6}, Lracing/game/hurdlesrace/MainActivity;->access$21(Lracing/game/hurdlesrace/MainActivity;)Lorg/andengine/entity/modifier/LoopEntityModifier;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/andengine/entity/sprite/Sprite;->unregisterEntityModifier(Lorg/andengine/entity/modifier/IEntityModifier;)Z

    .line 432
    iget-object v5, p0, Lracing/game/hurdlesrace/MainActivity$4;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->hillSprite1:Lorg/andengine/entity/sprite/Sprite;
    invoke-static {v5}, Lracing/game/hurdlesrace/MainActivity;->access$22(Lracing/game/hurdlesrace/MainActivity;)Lorg/andengine/entity/sprite/Sprite;

    move-result-object v5

    iget-object v6, p0, Lracing/game/hurdlesrace/MainActivity$4;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->lemsprite1:Lorg/andengine/entity/modifier/LoopEntityModifier;
    invoke-static {v6}, Lracing/game/hurdlesrace/MainActivity;->access$23(Lracing/game/hurdlesrace/MainActivity;)Lorg/andengine/entity/modifier/LoopEntityModifier;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/andengine/entity/sprite/Sprite;->unregisterEntityModifier(Lorg/andengine/entity/modifier/IEntityModifier;)Z

    .line 434
    iget-object v5, p0, Lracing/game/hurdlesrace/MainActivity$4;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #setter for: Lracing/game/hurdlesrace/MainActivity;->stoprotating:Z
    invoke-static {v5, v10}, Lracing/game/hurdlesrace/MainActivity;->access$24(Lracing/game/hurdlesrace/MainActivity;Z)V

    .line 435
    iget-object v5, p0, Lracing/game/hurdlesrace/MainActivity$4;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->ballSprite:Lorg/andengine/entity/sprite/Sprite;
    invoke-static {v5}, Lracing/game/hurdlesrace/MainActivity;->access$15(Lracing/game/hurdlesrace/MainActivity;)Lorg/andengine/entity/sprite/Sprite;

    move-result-object v5

    iget-object v6, p0, Lracing/game/hurdlesrace/MainActivity$4;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->loopEntityModifierball:Lorg/andengine/entity/modifier/LoopEntityModifier;
    invoke-static {v6}, Lracing/game/hurdlesrace/MainActivity;->access$16(Lracing/game/hurdlesrace/MainActivity;)Lorg/andengine/entity/modifier/LoopEntityModifier;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/andengine/entity/sprite/Sprite;->unregisterEntityModifier(Lorg/andengine/entity/modifier/IEntityModifier;)Z

    .line 436
    iget-object v5, p0, Lracing/game/hurdlesrace/MainActivity$4;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->gameOverSprite:Lorg/andengine/entity/sprite/Sprite;
    invoke-static {v5}, Lracing/game/hurdlesrace/MainActivity;->access$25(Lracing/game/hurdlesrace/MainActivity;)Lorg/andengine/entity/sprite/Sprite;

    move-result-object v5

    invoke-virtual {v5, v10}, Lorg/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 437
    invoke-direct {p0}, Lracing/game/hurdlesrace/MainActivity$4;->createHud()V

    .line 438
    iget-object v5, p0, Lracing/game/hurdlesrace/MainActivity$4;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->yourScoreText:Lorg/andengine/entity/text/Text;
    invoke-static {v5}, Lracing/game/hurdlesrace/MainActivity;->access$26(Lracing/game/hurdlesrace/MainActivity;)Lorg/andengine/entity/text/Text;

    move-result-object v5

    invoke-virtual {v5, v10}, Lorg/andengine/entity/text/Text;->setVisible(Z)V

    .line 439
    iget-object v5, p0, Lracing/game/hurdlesrace/MainActivity$4;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->yourScoreText:Lorg/andengine/entity/text/Text;
    invoke-static {v5}, Lracing/game/hurdlesrace/MainActivity;->access$26(Lracing/game/hurdlesrace/MainActivity;)Lorg/andengine/entity/text/Text;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Your Score: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lracing/game/hurdlesrace/MainActivity$4;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->score:I
    invoke-static {v7}, Lracing/game/hurdlesrace/MainActivity;->access$8(Lracing/game/hurdlesrace/MainActivity;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/andengine/entity/text/Text;->setText(Ljava/lang/CharSequence;)V

    .line 440
    iget-object v5, p0, Lracing/game/hurdlesrace/MainActivity$4;->this$0:Lracing/game/hurdlesrace/MainActivity;

    iget-object v6, p0, Lracing/game/hurdlesrace/MainActivity$4;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->score:I
    invoke-static {v6}, Lracing/game/hurdlesrace/MainActivity;->access$8(Lracing/game/hurdlesrace/MainActivity;)I

    move-result v6

    invoke-virtual {v5, v6}, Lracing/game/hurdlesrace/MainActivity;->setHighScore(I)V

    .line 441
    iget-object v5, p0, Lracing/game/hurdlesrace/MainActivity$4;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->getHighScoreText:Lorg/andengine/entity/text/Text;
    invoke-static {v5}, Lracing/game/hurdlesrace/MainActivity;->access$27(Lracing/game/hurdlesrace/MainActivity;)Lorg/andengine/entity/text/Text;

    move-result-object v5

    invoke-virtual {v5, v10}, Lorg/andengine/entity/text/Text;->setVisible(Z)V

    .line 442
    iget-object v5, p0, Lracing/game/hurdlesrace/MainActivity$4;->this$0:Lracing/game/hurdlesrace/MainActivity;

    invoke-virtual {v5}, Lracing/game/hurdlesrace/MainActivity;->getHighScore()I

    move-result v2

    .line 443
    .local v2, d:I
    iget-object v5, p0, Lracing/game/hurdlesrace/MainActivity$4;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->getHighScoreText:Lorg/andengine/entity/text/Text;
    invoke-static {v5}, Lracing/game/hurdlesrace/MainActivity;->access$27(Lracing/game/hurdlesrace/MainActivity;)Lorg/andengine/entity/text/Text;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Highest Score: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/andengine/entity/text/Text;->setText(Ljava/lang/CharSequence;)V

    .line 445
    .end local v2           #d:I
    :cond_1
    invoke-virtual {v3}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getBody()Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/physics/box2d/Body;->getUserData()Ljava/lang/Object;

    move-result-object v5

    const-string v6, "ballBody"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 446
    invoke-virtual {v4}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getBody()Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/physics/box2d/Body;->getUserData()Ljava/lang/Object;

    move-result-object v5

    .line 447
    const-string v6, "lowerObstracleBody"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 448
    const-string v5, "CONTACT"

    const-string v6, "BETWEEN PLAYER AND Bar"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v5, p0, Lracing/game/hurdlesrace/MainActivity$4;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #setter for: Lracing/game/hurdlesrace/MainActivity;->jump:Z
    invoke-static {v5, v12}, Lracing/game/hurdlesrace/MainActivity;->access$12(Lracing/game/hurdlesrace/MainActivity;Z)V

    .line 450
    iget-object v5, p0, Lracing/game/hurdlesrace/MainActivity$4;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #setter for: Lracing/game/hurdlesrace/MainActivity;->gameOver:Z
    invoke-static {v5, v10}, Lracing/game/hurdlesrace/MainActivity;->access$17(Lracing/game/hurdlesrace/MainActivity;Z)V

    .line 451
    iget-object v5, p0, Lracing/game/hurdlesrace/MainActivity$4;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->scene:Lorg/andengine/entity/scene/Scene;
    invoke-static {v5}, Lracing/game/hurdlesrace/MainActivity;->access$18(Lracing/game/hurdlesrace/MainActivity;)Lorg/andengine/entity/scene/Scene;

    move-result-object v5

    iget-object v6, p0, Lracing/game/hurdlesrace/MainActivity$4;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->timehandler:Lorg/andengine/engine/handler/timer/TimerHandler;
    invoke-static {v6}, Lracing/game/hurdlesrace/MainActivity;->access$19(Lracing/game/hurdlesrace/MainActivity;)Lorg/andengine/engine/handler/timer/TimerHandler;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/andengine/entity/scene/Scene;->unregisterUpdateHandler(Lorg/andengine/engine/handler/IUpdateHandler;)Z

    .line 452
    iget-object v5, p0, Lracing/game/hurdlesrace/MainActivity$4;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->lowerObstracleBody:Lcom/badlogic/gdx/physics/box2d/Body;
    invoke-static {v5}, Lracing/game/hurdlesrace/MainActivity;->access$2(Lracing/game/hurdlesrace/MainActivity;)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v5

    invoke-virtual {v5, v11, v11}, Lcom/badlogic/gdx/physics/box2d/Body;->setLinearVelocity(FF)V

    .line 453
    iget-object v5, p0, Lracing/game/hurdlesrace/MainActivity$4;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->upperObstracleBody:Lcom/badlogic/gdx/physics/box2d/Body;
    invoke-static {v5}, Lracing/game/hurdlesrace/MainActivity;->access$6(Lracing/game/hurdlesrace/MainActivity;)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v5

    invoke-virtual {v5, v11, v11}, Lcom/badlogic/gdx/physics/box2d/Body;->setLinearVelocity(FF)V

    .line 454
    iget-object v5, p0, Lracing/game/hurdlesrace/MainActivity$4;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #setter for: Lracing/game/hurdlesrace/MainActivity;->stoprotating:Z
    invoke-static {v5, v10}, Lracing/game/hurdlesrace/MainActivity;->access$24(Lracing/game/hurdlesrace/MainActivity;Z)V

    .line 455
    iget-object v5, p0, Lracing/game/hurdlesrace/MainActivity$4;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->ballSprite:Lorg/andengine/entity/sprite/Sprite;
    invoke-static {v5}, Lracing/game/hurdlesrace/MainActivity;->access$15(Lracing/game/hurdlesrace/MainActivity;)Lorg/andengine/entity/sprite/Sprite;

    move-result-object v5

    iget-object v6, p0, Lracing/game/hurdlesrace/MainActivity$4;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->loopEntityModifierball:Lorg/andengine/entity/modifier/LoopEntityModifier;
    invoke-static {v6}, Lracing/game/hurdlesrace/MainActivity;->access$16(Lracing/game/hurdlesrace/MainActivity;)Lorg/andengine/entity/modifier/LoopEntityModifier;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/andengine/entity/sprite/Sprite;->unregisterEntityModifier(Lorg/andengine/entity/modifier/IEntityModifier;)Z

    .line 457
    iget-object v5, p0, Lracing/game/hurdlesrace/MainActivity$4;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->hillSprite:Lorg/andengine/entity/sprite/Sprite;
    invoke-static {v5}, Lracing/game/hurdlesrace/MainActivity;->access$20(Lracing/game/hurdlesrace/MainActivity;)Lorg/andengine/entity/sprite/Sprite;

    move-result-object v5

    iget-object v6, p0, Lracing/game/hurdlesrace/MainActivity$4;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->lemsprite:Lorg/andengine/entity/modifier/LoopEntityModifier;
    invoke-static {v6}, Lracing/game/hurdlesrace/MainActivity;->access$21(Lracing/game/hurdlesrace/MainActivity;)Lorg/andengine/entity/modifier/LoopEntityModifier;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/andengine/entity/sprite/Sprite;->unregisterEntityModifier(Lorg/andengine/entity/modifier/IEntityModifier;)Z

    .line 458
    iget-object v5, p0, Lracing/game/hurdlesrace/MainActivity$4;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->hillSprite1:Lorg/andengine/entity/sprite/Sprite;
    invoke-static {v5}, Lracing/game/hurdlesrace/MainActivity;->access$22(Lracing/game/hurdlesrace/MainActivity;)Lorg/andengine/entity/sprite/Sprite;

    move-result-object v5

    iget-object v6, p0, Lracing/game/hurdlesrace/MainActivity$4;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->lemsprite1:Lorg/andengine/entity/modifier/LoopEntityModifier;
    invoke-static {v6}, Lracing/game/hurdlesrace/MainActivity;->access$23(Lracing/game/hurdlesrace/MainActivity;)Lorg/andengine/entity/modifier/LoopEntityModifier;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/andengine/entity/sprite/Sprite;->unregisterEntityModifier(Lorg/andengine/entity/modifier/IEntityModifier;)Z

    .line 460
    iget-object v5, p0, Lracing/game/hurdlesrace/MainActivity$4;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->gameOverSprite:Lorg/andengine/entity/sprite/Sprite;
    invoke-static {v5}, Lracing/game/hurdlesrace/MainActivity;->access$25(Lracing/game/hurdlesrace/MainActivity;)Lorg/andengine/entity/sprite/Sprite;

    move-result-object v5

    invoke-virtual {v5, v10}, Lorg/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 461
    invoke-direct {p0}, Lracing/game/hurdlesrace/MainActivity$4;->createHud()V

    .line 462
    iget-object v5, p0, Lracing/game/hurdlesrace/MainActivity$4;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->yourScoreText:Lorg/andengine/entity/text/Text;
    invoke-static {v5}, Lracing/game/hurdlesrace/MainActivity;->access$26(Lracing/game/hurdlesrace/MainActivity;)Lorg/andengine/entity/text/Text;

    move-result-object v5

    invoke-virtual {v5, v10}, Lorg/andengine/entity/text/Text;->setVisible(Z)V

    .line 463
    iget-object v5, p0, Lracing/game/hurdlesrace/MainActivity$4;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->yourScoreText:Lorg/andengine/entity/text/Text;
    invoke-static {v5}, Lracing/game/hurdlesrace/MainActivity;->access$26(Lracing/game/hurdlesrace/MainActivity;)Lorg/andengine/entity/text/Text;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Your Score: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lracing/game/hurdlesrace/MainActivity$4;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->score:I
    invoke-static {v7}, Lracing/game/hurdlesrace/MainActivity;->access$8(Lracing/game/hurdlesrace/MainActivity;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/andengine/entity/text/Text;->setText(Ljava/lang/CharSequence;)V

    .line 464
    iget-object v5, p0, Lracing/game/hurdlesrace/MainActivity$4;->this$0:Lracing/game/hurdlesrace/MainActivity;

    iget-object v6, p0, Lracing/game/hurdlesrace/MainActivity$4;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->score:I
    invoke-static {v6}, Lracing/game/hurdlesrace/MainActivity;->access$8(Lracing/game/hurdlesrace/MainActivity;)I

    move-result v6

    invoke-virtual {v5, v6}, Lracing/game/hurdlesrace/MainActivity;->setHighScore(I)V

    .line 465
    iget-object v5, p0, Lracing/game/hurdlesrace/MainActivity$4;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->getHighScoreText:Lorg/andengine/entity/text/Text;
    invoke-static {v5}, Lracing/game/hurdlesrace/MainActivity;->access$27(Lracing/game/hurdlesrace/MainActivity;)Lorg/andengine/entity/text/Text;

    move-result-object v5

    invoke-virtual {v5, v10}, Lorg/andengine/entity/text/Text;->setVisible(Z)V

    .line 466
    iget-object v5, p0, Lracing/game/hurdlesrace/MainActivity$4;->this$0:Lracing/game/hurdlesrace/MainActivity;

    invoke-virtual {v5}, Lracing/game/hurdlesrace/MainActivity;->getHighScore()I

    move-result v2

    .line 467
    .restart local v2       #d:I
    iget-object v5, p0, Lracing/game/hurdlesrace/MainActivity$4;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->getHighScoreText:Lorg/andengine/entity/text/Text;
    invoke-static {v5}, Lracing/game/hurdlesrace/MainActivity;->access$27(Lracing/game/hurdlesrace/MainActivity;)Lorg/andengine/entity/text/Text;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Highest Score: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/andengine/entity/text/Text;->setText(Ljava/lang/CharSequence;)V

    .line 469
    .end local v2           #d:I
    :cond_2
    return-void
.end method

.method public endContact(Lcom/badlogic/gdx/physics/box2d/Contact;)V
    .locals 6
    .parameter "contact"

    .prologue
    .line 488
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Contact;->getFixtureA()Lcom/badlogic/gdx/physics/box2d/Fixture;

    move-result-object v2

    .line 489
    .local v2, x1:Lcom/badlogic/gdx/physics/box2d/Fixture;
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Contact;->getFixtureB()Lcom/badlogic/gdx/physics/box2d/Fixture;

    move-result-object v3

    .line 491
    .local v3, x2:Lcom/badlogic/gdx/physics/box2d/Fixture;
    invoke-virtual {v2}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getBody()Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/physics/box2d/Body;->getUserData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 492
    .local v0, a:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getBody()Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/physics/box2d/Body;->getUserData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 494
    .local v1, b:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getBody()Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/physics/box2d/Body;->getUserData()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "ballBody"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 495
    invoke-virtual {v3}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getBody()Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/physics/box2d/Body;->getUserData()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "groundBody"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 496
    const-string v4, "CONTACT"

    const-string v5, "BETWEEN PLAYER AND ground!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object v4, p0, Lracing/game/hurdlesrace/MainActivity$4;->this$0:Lracing/game/hurdlesrace/MainActivity;

    const/4 v5, 0x0

    #setter for: Lracing/game/hurdlesrace/MainActivity;->jump:Z
    invoke-static {v4, v5}, Lracing/game/hurdlesrace/MainActivity;->access$12(Lracing/game/hurdlesrace/MainActivity;Z)V

    .line 498
    iget-object v4, p0, Lracing/game/hurdlesrace/MainActivity$4;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->ballSprite:Lorg/andengine/entity/sprite/Sprite;
    invoke-static {v4}, Lracing/game/hurdlesrace/MainActivity;->access$15(Lracing/game/hurdlesrace/MainActivity;)Lorg/andengine/entity/sprite/Sprite;

    move-result-object v4

    iget-object v5, p0, Lracing/game/hurdlesrace/MainActivity$4;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->loopEntityModifierball:Lorg/andengine/entity/modifier/LoopEntityModifier;
    invoke-static {v5}, Lracing/game/hurdlesrace/MainActivity;->access$16(Lracing/game/hurdlesrace/MainActivity;)Lorg/andengine/entity/modifier/LoopEntityModifier;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/andengine/entity/sprite/Sprite;->unregisterEntityModifier(Lorg/andengine/entity/modifier/IEntityModifier;)Z

    .line 501
    :cond_0
    return-void
.end method

.method public postSolve(Lcom/badlogic/gdx/physics/box2d/Contact;Lcom/badlogic/gdx/physics/box2d/ContactImpulse;)V
    .locals 0
    .parameter "contact"
    .parameter "impulse"

    .prologue
    .line 511
    return-void
.end method

.method public preSolve(Lcom/badlogic/gdx/physics/box2d/Contact;Lcom/badlogic/gdx/physics/box2d/Manifold;)V
    .locals 0
    .parameter "contact"
    .parameter "oldManifold"

    .prologue
    .line 506
    return-void
.end method
