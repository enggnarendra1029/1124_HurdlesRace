.class Lracing/game/hurdlesrace/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lorg/andengine/engine/handler/timer/ITimerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lracing/game/hurdlesrace/MainActivity;->setscore()V
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
    iput-object p1, p0, Lracing/game/hurdlesrace/MainActivity$2;->this$0:Lracing/game/hurdlesrace/MainActivity;

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimePassed(Lorg/andengine/engine/handler/timer/TimerHandler;)V
    .locals 3
    .parameter "pTimerHandler"

    .prologue
    .line 323
    iget-object v0, p0, Lracing/game/hurdlesrace/MainActivity$2;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->gameOver:Z
    invoke-static {v0}, Lracing/game/hurdlesrace/MainActivity;->access$7(Lracing/game/hurdlesrace/MainActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    iget-object v0, p0, Lracing/game/hurdlesrace/MainActivity$2;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->score:I
    invoke-static {v0}, Lracing/game/hurdlesrace/MainActivity;->access$8(Lracing/game/hurdlesrace/MainActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    #setter for: Lracing/game/hurdlesrace/MainActivity;->score:I
    invoke-static {v0, v1}, Lracing/game/hurdlesrace/MainActivity;->access$9(Lracing/game/hurdlesrace/MainActivity;I)V

    .line 325
    iget-object v0, p0, Lracing/game/hurdlesrace/MainActivity$2;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->scoreText:Lorg/andengine/entity/text/Text;
    invoke-static {v0}, Lracing/game/hurdlesrace/MainActivity;->access$10(Lracing/game/hurdlesrace/MainActivity;)Lorg/andengine/entity/text/Text;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Score: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lracing/game/hurdlesrace/MainActivity$2;->this$0:Lracing/game/hurdlesrace/MainActivity;

    #getter for: Lracing/game/hurdlesrace/MainActivity;->score:I
    invoke-static {v2}, Lracing/game/hurdlesrace/MainActivity;->access$8(Lracing/game/hurdlesrace/MainActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/andengine/entity/text/Text;->setText(Ljava/lang/CharSequence;)V

    .line 327
    :cond_0
    return-void
.end method
