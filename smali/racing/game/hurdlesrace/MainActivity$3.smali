.class Lracing/game/hurdlesrace/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lorg/andengine/engine/handler/timer/ITimerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lracing/game/hurdlesrace/MainActivity;->timer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lracing/game/hurdlesrace/MainActivity;

.field private time:I


# direct methods
.method constructor <init>(Lracing/game/hurdlesrace/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lracing/game/hurdlesrace/MainActivity$3;->this$0:Lracing/game/hurdlesrace/MainActivity;

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimePassed(Lorg/andengine/engine/handler/timer/TimerHandler;)V
    .locals 5
    .parameter "pTimerHandler"

    .prologue
    const/4 v4, 0x0

    .line 340
    iget v1, p0, Lracing/game/hurdlesrace/MainActivity$3;->time:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lracing/game/hurdlesrace/MainActivity$3;->time:I

    .line 341
    invoke-static {}, Lracing/game/hurdlesrace/Util;->getUtil()Lracing/game/hurdlesrace/Util;

    move-result-object v1

    iget v2, p0, Lracing/game/hurdlesrace/MainActivity$3;->time:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lracing/game/hurdlesrace/Util;->getAngle(F)F

    move-result v0

    .line 342
    .local v0, v:F
    const-string v1, "time"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v1, p0, Lracing/game/hurdlesrace/MainActivity$3;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->lowerObstracleBody:Lcom/badlogic/gdx/physics/box2d/Body;
    invoke-static {v1}, Lracing/game/hurdlesrace/MainActivity;->access$2(Lracing/game/hurdlesrace/MainActivity;)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v1

    invoke-static {}, Lracing/game/hurdlesrace/Util;->getUtil()Lracing/game/hurdlesrace/Util;

    move-result-object v2

    .line 344
    iget v3, p0, Lracing/game/hurdlesrace/MainActivity$3;->time:I

    invoke-virtual {v2, v3}, Lracing/game/hurdlesrace/Util;->getVelocity(I)F

    move-result v2

    .line 343
    invoke-virtual {v1, v2, v4}, Lcom/badlogic/gdx/physics/box2d/Body;->setLinearVelocity(FF)V

    .line 345
    iget-object v1, p0, Lracing/game/hurdlesrace/MainActivity$3;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->upperObstracleBody:Lcom/badlogic/gdx/physics/box2d/Body;
    invoke-static {v1}, Lracing/game/hurdlesrace/MainActivity;->access$6(Lracing/game/hurdlesrace/MainActivity;)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v1

    invoke-static {}, Lracing/game/hurdlesrace/Util;->getUtil()Lracing/game/hurdlesrace/Util;

    move-result-object v2

    .line 346
    iget v3, p0, Lracing/game/hurdlesrace/MainActivity$3;->time:I

    invoke-virtual {v2, v3}, Lracing/game/hurdlesrace/Util;->getVelocity(I)F

    move-result v2

    .line 345
    invoke-virtual {v1, v2, v4}, Lcom/badlogic/gdx/physics/box2d/Body;->setLinearVelocity(FF)V

    .line 347
    return-void
.end method
