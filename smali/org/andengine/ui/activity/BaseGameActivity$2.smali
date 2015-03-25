.class Lorg/andengine/ui/activity/BaseGameActivity$2;
.super Ljava/lang/Object;
.source "BaseGameActivity.java"

# interfaces
.implements Lorg/andengine/ui/IGameInterface$OnCreateSceneCallback;


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

.field private final synthetic val$onPopulateSceneCallback:Lorg/andengine/ui/IGameInterface$OnPopulateSceneCallback;


# direct methods
.method constructor <init>(Lorg/andengine/ui/activity/BaseGameActivity;Lorg/andengine/ui/IGameInterface$OnPopulateSceneCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/andengine/ui/activity/BaseGameActivity$2;->this$0:Lorg/andengine/ui/activity/BaseGameActivity;

    iput-object p2, p0, Lorg/andengine/ui/activity/BaseGameActivity$2;->val$onPopulateSceneCallback:Lorg/andengine/ui/IGameInterface$OnPopulateSceneCallback;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateSceneFinished(Lorg/andengine/entity/scene/Scene;)V
    .locals 3
    .parameter "pScene"

    .prologue
    .line 147
    iget-object v1, p0, Lorg/andengine/ui/activity/BaseGameActivity$2;->this$0:Lorg/andengine/ui/activity/BaseGameActivity;

    iget-object v1, v1, Lorg/andengine/ui/activity/BaseGameActivity;->mEngine:Lorg/andengine/engine/Engine;

    invoke-virtual {v1, p1}, Lorg/andengine/engine/Engine;->setScene(Lorg/andengine/entity/scene/Scene;)V

    .line 151
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/andengine/ui/activity/BaseGameActivity$2;->this$0:Lorg/andengine/ui/activity/BaseGameActivity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".onPopulateScene"

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

    .line 154
    iget-object v1, p0, Lorg/andengine/ui/activity/BaseGameActivity$2;->this$0:Lorg/andengine/ui/activity/BaseGameActivity;

    iget-object v2, p0, Lorg/andengine/ui/activity/BaseGameActivity$2;->val$onPopulateSceneCallback:Lorg/andengine/ui/IGameInterface$OnPopulateSceneCallback;

    invoke-virtual {v1, p1, v2}, Lorg/andengine/ui/activity/BaseGameActivity;->onPopulateScene(Lorg/andengine/entity/scene/Scene;Lorg/andengine/ui/IGameInterface$OnPopulateSceneCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_0
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, pThrowable:Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/andengine/ui/activity/BaseGameActivity$2;->this$0:Lorg/andengine/ui/activity/BaseGameActivity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".onPopulateScene failed."

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
