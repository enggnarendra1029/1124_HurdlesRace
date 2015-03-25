.class public abstract Lorg/andengine/ui/activity/SimpleAsyncGameActivity;
.super Lorg/andengine/ui/activity/BaseGameActivity;
.source "SimpleAsyncGameActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lorg/andengine/ui/activity/BaseGameActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateResources(Lorg/andengine/ui/IGameInterface$OnCreateResourcesCallback;)V
    .locals 1
    .parameter "pOnCreateResourcesCallback"

    .prologue
    .line 42
    new-instance v0, Lorg/andengine/ui/activity/SimpleAsyncGameActivity$1;

    invoke-direct {v0, p0, p1}, Lorg/andengine/ui/activity/SimpleAsyncGameActivity$1;-><init>(Lorg/andengine/ui/activity/SimpleAsyncGameActivity;Lorg/andengine/ui/IGameInterface$OnCreateResourcesCallback;)V

    invoke-virtual {p0, v0}, Lorg/andengine/ui/activity/SimpleAsyncGameActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 64
    return-void
.end method

.method public abstract onCreateResourcesAsync(Lorg/andengine/util/progress/IProgressListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public onCreateScene(Lorg/andengine/ui/IGameInterface$OnCreateSceneCallback;)V
    .locals 1
    .parameter "pOnCreateSceneCallback"

    .prologue
    .line 68
    new-instance v0, Lorg/andengine/ui/activity/SimpleAsyncGameActivity$2;

    invoke-direct {v0, p0, p1}, Lorg/andengine/ui/activity/SimpleAsyncGameActivity$2;-><init>(Lorg/andengine/ui/activity/SimpleAsyncGameActivity;Lorg/andengine/ui/IGameInterface$OnCreateSceneCallback;)V

    invoke-virtual {p0, v0}, Lorg/andengine/ui/activity/SimpleAsyncGameActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 90
    return-void
.end method

.method public abstract onCreateSceneAsync(Lorg/andengine/util/progress/IProgressListener;)Lorg/andengine/entity/scene/Scene;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public onPopulateScene(Lorg/andengine/entity/scene/Scene;Lorg/andengine/ui/IGameInterface$OnPopulateSceneCallback;)V
    .locals 1
    .parameter "pScene"
    .parameter "pOnPopulateSceneCallback"

    .prologue
    .line 94
    new-instance v0, Lorg/andengine/ui/activity/SimpleAsyncGameActivity$3;

    invoke-direct {v0, p0, p1, p2}, Lorg/andengine/ui/activity/SimpleAsyncGameActivity$3;-><init>(Lorg/andengine/ui/activity/SimpleAsyncGameActivity;Lorg/andengine/entity/scene/Scene;Lorg/andengine/ui/IGameInterface$OnPopulateSceneCallback;)V

    invoke-virtual {p0, v0}, Lorg/andengine/ui/activity/SimpleAsyncGameActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 116
    return-void
.end method

.method public abstract onPopulateSceneAsync(Lorg/andengine/entity/scene/Scene;Lorg/andengine/util/progress/IProgressListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
