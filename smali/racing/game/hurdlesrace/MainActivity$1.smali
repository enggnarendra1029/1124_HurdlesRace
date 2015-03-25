.class Lracing/game/hurdlesrace/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lorg/andengine/engine/handler/IUpdateHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lracing/game/hurdlesrace/MainActivity;->onCreateScene()Lorg/andengine/entity/scene/Scene;
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
    iput-object p1, p0, Lracing/game/hurdlesrace/MainActivity$1;->this$0:Lracing/game/hurdlesrace/MainActivity;

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(F)V
    .locals 10
    .parameter "pSecondsElapsed"

    .prologue
    const/high16 v9, 0x4200

    const/high16 v8, 0x4000

    .line 279
    iget-object v4, p0, Lracing/game/hurdlesrace/MainActivity$1;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->lowerObstracleSprite:Lorg/andengine/entity/sprite/Sprite;
    invoke-static {v4}, Lracing/game/hurdlesrace/MainActivity;->access$0(Lracing/game/hurdlesrace/MainActivity;)Lorg/andengine/entity/sprite/Sprite;

    move-result-object v4

    invoke-virtual {v4}, Lorg/andengine/entity/sprite/Sprite;->getX()F

    move-result v4

    const/high16 v5, 0x445c

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_0

    .line 281
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x4049

    mul-double/2addr v4, v6

    .line 282
    iget-object v6, p0, Lracing/game/hurdlesrace/MainActivity$1;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->lowerObstracleSprite:Lorg/andengine/entity/sprite/Sprite;
    invoke-static {v6}, Lracing/game/hurdlesrace/MainActivity;->access$0(Lracing/game/hurdlesrace/MainActivity;)Lorg/andengine/entity/sprite/Sprite;

    move-result-object v6

    invoke-virtual {v6}, Lorg/andengine/entity/sprite/Sprite;->getHeight()F

    move-result v6

    const/high16 v7, 0x4080

    div-float/2addr v6, v7

    float-to-double v6, v6

    .line 281
    add-double/2addr v4, v6

    .line 282
    const-wide/high16 v6, 0x4054

    .line 281
    add-double/2addr v4, v6

    double-to-float v1, v4

    .line 284
    .local v1, random:F
    const-string v4, "random"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v4, p0, Lracing/game/hurdlesrace/MainActivity$1;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->lowerObstracleSpriteX:F
    invoke-static {v4}, Lracing/game/hurdlesrace/MainActivity;->access$1(Lracing/game/hurdlesrace/MainActivity;)F

    move-result v4

    iget-object v5, p0, Lracing/game/hurdlesrace/MainActivity$1;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->lowerObstracleSprite:Lorg/andengine/entity/sprite/Sprite;
    invoke-static {v5}, Lracing/game/hurdlesrace/MainActivity;->access$0(Lracing/game/hurdlesrace/MainActivity;)Lorg/andengine/entity/sprite/Sprite;

    move-result-object v5

    .line 287
    invoke-virtual {v5}, Lorg/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v5

    div-float/2addr v5, v8

    .line 286
    add-float/2addr v4, v5

    div-float/2addr v4, v9

    .line 288
    iget-object v5, p0, Lracing/game/hurdlesrace/MainActivity$1;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->lowerObstracleSprite:Lorg/andengine/entity/sprite/Sprite;
    invoke-static {v5}, Lracing/game/hurdlesrace/MainActivity;->access$0(Lracing/game/hurdlesrace/MainActivity;)Lorg/andengine/entity/sprite/Sprite;

    move-result-object v5

    invoke-virtual {v5}, Lorg/andengine/entity/sprite/Sprite;->getHeight()F

    move-result v5

    div-float/2addr v5, v8

    add-float/2addr v5, v1

    div-float/2addr v5, v9

    .line 285
    invoke-static {v4, v5}, Lorg/andengine/extension/physics/box2d/util/Vector2Pool;->obtain(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    .line 289
    .local v2, v:Lcom/badlogic/gdx/math/Vector2;
    iget-object v4, p0, Lracing/game/hurdlesrace/MainActivity$1;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->lowerObstracleBody:Lcom/badlogic/gdx/physics/box2d/Body;
    invoke-static {v4}, Lracing/game/hurdlesrace/MainActivity;->access$2(Lracing/game/hurdlesrace/MainActivity;)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v4

    .line 290
    iget-object v5, p0, Lracing/game/hurdlesrace/MainActivity$1;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->lowerObstracleBody:Lcom/badlogic/gdx/physics/box2d/Body;
    invoke-static {v5}, Lracing/game/hurdlesrace/MainActivity;->access$2(Lracing/game/hurdlesrace/MainActivity;)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/physics/box2d/Body;->getAngle()F

    move-result v5

    .line 289
    invoke-virtual {v4, v2, v5}, Lcom/badlogic/gdx/physics/box2d/Body;->setTransform(Lcom/badlogic/gdx/math/Vector2;F)V

    .line 291
    invoke-static {v2}, Lorg/andengine/extension/physics/box2d/util/Vector2Pool;->recycle(Lcom/badlogic/gdx/math/Vector2;)V

    .line 293
    const/high16 v4, 0x4316

    sub-float v4, v1, v4

    iget-object v5, p0, Lracing/game/hurdlesrace/MainActivity$1;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->upperObstracle:Lorg/andengine/opengl/texture/region/TextureRegion;
    invoke-static {v5}, Lracing/game/hurdlesrace/MainActivity;->access$3(Lracing/game/hurdlesrace/MainActivity;)Lorg/andengine/opengl/texture/region/TextureRegion;

    move-result-object v5

    invoke-virtual {v5}, Lorg/andengine/opengl/texture/region/TextureRegion;->getHeight()F

    move-result v5

    sub-float v0, v4, v5

    .line 295
    .local v0, ab:F
    iget-object v4, p0, Lracing/game/hurdlesrace/MainActivity$1;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->upperObstracleSpriteX:F
    invoke-static {v4}, Lracing/game/hurdlesrace/MainActivity;->access$4(Lracing/game/hurdlesrace/MainActivity;)F

    move-result v4

    iget-object v5, p0, Lracing/game/hurdlesrace/MainActivity$1;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->upperObstracleSprite:Lorg/andengine/entity/sprite/Sprite;
    invoke-static {v5}, Lracing/game/hurdlesrace/MainActivity;->access$5(Lracing/game/hurdlesrace/MainActivity;)Lorg/andengine/entity/sprite/Sprite;

    move-result-object v5

    .line 296
    invoke-virtual {v5}, Lorg/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v5

    div-float/2addr v5, v8

    .line 295
    add-float/2addr v4, v5

    div-float/2addr v4, v9

    .line 297
    iget-object v5, p0, Lracing/game/hurdlesrace/MainActivity$1;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->upperObstracleSprite:Lorg/andengine/entity/sprite/Sprite;
    invoke-static {v5}, Lracing/game/hurdlesrace/MainActivity;->access$5(Lracing/game/hurdlesrace/MainActivity;)Lorg/andengine/entity/sprite/Sprite;

    move-result-object v5

    invoke-virtual {v5}, Lorg/andengine/entity/sprite/Sprite;->getHeight()F

    move-result v5

    div-float/2addr v5, v8

    add-float/2addr v5, v0

    div-float/2addr v5, v9

    .line 294
    invoke-static {v4, v5}, Lorg/andengine/extension/physics/box2d/util/Vector2Pool;->obtain(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    .line 298
    .local v3, v1:Lcom/badlogic/gdx/math/Vector2;
    iget-object v4, p0, Lracing/game/hurdlesrace/MainActivity$1;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->upperObstracleBody:Lcom/badlogic/gdx/physics/box2d/Body;
    invoke-static {v4}, Lracing/game/hurdlesrace/MainActivity;->access$6(Lracing/game/hurdlesrace/MainActivity;)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v4

    .line 299
    iget-object v5, p0, Lracing/game/hurdlesrace/MainActivity$1;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->upperObstracleBody:Lcom/badlogic/gdx/physics/box2d/Body;
    invoke-static {v5}, Lracing/game/hurdlesrace/MainActivity;->access$6(Lracing/game/hurdlesrace/MainActivity;)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/physics/box2d/Body;->getAngle()F

    move-result v5

    .line 298
    invoke-virtual {v4, v3, v5}, Lcom/badlogic/gdx/physics/box2d/Body;->setTransform(Lcom/badlogic/gdx/math/Vector2;F)V

    .line 300
    invoke-static {v3}, Lorg/andengine/extension/physics/box2d/util/Vector2Pool;->recycle(Lcom/badlogic/gdx/math/Vector2;)V

    .line 303
    .end local v0           #ab:F
    .end local v1           #random:F
    .end local v2           #v:Lcom/badlogic/gdx/math/Vector2;
    .end local v3           #v1:Lcom/badlogic/gdx/math/Vector2;
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 273
    return-void
.end method
