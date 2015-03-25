.class Lorg/andengine/ui/activity/BaseGameActivity$1;
.super Ljava/lang/Object;
.source "BaseGameActivity.java"

# interfaces
.implements Lorg/andengine/ui/IGameInterface$OnPopulateSceneCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/andengine/ui/activity/BaseGameActivity;->onCreateGame()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/andengine/ui/activity/BaseGameActivity;


# direct methods
.method constructor <init>(Lorg/andengine/ui/activity/BaseGameActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/andengine/ui/activity/BaseGameActivity$1;->this$0:Lorg/andengine/ui/activity/BaseGameActivity;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPopulateSceneFinished()V
    .locals 3

    .prologue
    .line 132
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/andengine/ui/activity/BaseGameActivity$1;->this$0:Lorg/andengine/ui/activity/BaseGameActivity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".onGameCreated"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " @(Thread: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/andengine/util/debug/Debug;->d(Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lorg/andengine/ui/activity/BaseGameActivity$1;->this$0:Lorg/andengine/ui/activity/BaseGameActivity;

    invoke-virtual {v1}, Lorg/andengine/ui/activity/BaseGameActivity;->onGameCreated()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    iget-object v1, p0, Lorg/andengine/ui/activity/BaseGameActivity$1;->this$0:Lorg/andengine/ui/activity/BaseGameActivity;

    #calls: Lorg/andengine/ui/activity/BaseGameActivity;->callGameResumedOnUIThread()V
    invoke-static {v1}, Lorg/andengine/ui/activity/BaseGameActivity;->access$0(Lorg/andengine/ui/activity/BaseGameActivity;)V

    .line 141
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, pThrowable:Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/andengine/ui/activity/BaseGameActivity$1;->this$0:Lorg/andengine/ui/activity/BaseGameActivity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".onGameCreated failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " @(Thread: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/andengine/util/debug/Debug;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
