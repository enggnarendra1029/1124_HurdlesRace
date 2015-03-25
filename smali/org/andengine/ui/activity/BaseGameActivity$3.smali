.class Lorg/andengine/ui/activity/BaseGameActivity$3;
.super Ljava/lang/Object;
.source "BaseGameActivity.java"

# interfaces
.implements Lorg/andengine/ui/IGameInterface$OnCreateResourcesCallback;


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

.field private final synthetic val$onCreateSceneCallback:Lorg/andengine/ui/IGameInterface$OnCreateSceneCallback;


# direct methods
.method constructor <init>(Lorg/andengine/ui/activity/BaseGameActivity;Lorg/andengine/ui/IGameInterface$OnCreateSceneCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/andengine/ui/activity/BaseGameActivity$3;->this$0:Lorg/andengine/ui/activity/BaseGameActivity;

    iput-object p2, p0, Lorg/andengine/ui/activity/BaseGameActivity$3;->val$onCreateSceneCallback:Lorg/andengine/ui/IGameInterface$OnCreateSceneCallback;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateResourcesFinished()V
    .locals 3

    .prologue
    .line 166
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/andengine/ui/activity/BaseGameActivity$3;->this$0:Lorg/andengine/ui/activity/BaseGameActivity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".onCreateScene"

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

    .line 169
    iget-object v1, p0, Lorg/andengine/ui/activity/BaseGameActivity$3;->this$0:Lorg/andengine/ui/activity/BaseGameActivity;

    iget-object v2, p0, Lorg/andengine/ui/activity/BaseGameActivity$3;->val$onCreateSceneCallback:Lorg/andengine/ui/IGameInterface$OnCreateSceneCallback;

    invoke-virtual {v1, v2}, Lorg/andengine/ui/activity/BaseGameActivity;->onCreateScene(Lorg/andengine/ui/IGameInterface$OnCreateSceneCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, pThrowable:Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/andengine/ui/activity/BaseGameActivity$3;->this$0:Lorg/andengine/ui/activity/BaseGameActivity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".onCreateScene failed."

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
