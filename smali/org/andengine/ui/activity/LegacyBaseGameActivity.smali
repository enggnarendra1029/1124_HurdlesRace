.class public abstract Lorg/andengine/ui/activity/LegacyBaseGameActivity;
.super Lorg/andengine/ui/activity/BaseGameActivity;
.source "LegacyBaseGameActivity.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lorg/andengine/ui/activity/BaseGameActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreateEngine(Lorg/andengine/engine/options/EngineOptions;)Lorg/andengine/engine/Engine;
    .locals 1
    .parameter "pEngineOptions"

    .prologue
    .line 53
    invoke-virtual {p0}, Lorg/andengine/ui/activity/LegacyBaseGameActivity;->onLoadEngine()Lorg/andengine/engine/Engine;

    move-result-object v0

    return-object v0
.end method

.method public final onCreateEngineOptions()Lorg/andengine/engine/options/EngineOptions;
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onCreateResources(Lorg/andengine/ui/IGameInterface$OnCreateResourcesCallback;)V
    .locals 0
    .parameter "pOnCreateResourcesCallback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p0}, Lorg/andengine/ui/activity/LegacyBaseGameActivity;->onLoadResources()V

    .line 60
    invoke-interface {p1}, Lorg/andengine/ui/IGameInterface$OnCreateResourcesCallback;->onCreateResourcesFinished()V

    .line 61
    return-void
.end method

.method public final onCreateScene(Lorg/andengine/ui/IGameInterface$OnCreateSceneCallback;)V
    .locals 1
    .parameter "pOnCreateSceneCallback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 65
    invoke-virtual {p0}, Lorg/andengine/ui/activity/LegacyBaseGameActivity;->onLoadScene()Lorg/andengine/entity/scene/Scene;

    move-result-object v0

    .line 67
    .local v0, scene:Lorg/andengine/entity/scene/Scene;
    invoke-interface {p1, v0}, Lorg/andengine/ui/IGameInterface$OnCreateSceneCallback;->onCreateSceneFinished(Lorg/andengine/entity/scene/Scene;)V

    .line 68
    return-void
.end method

.method public final onDestroyResources()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 77
    invoke-super {p0}, Lorg/andengine/ui/activity/BaseGameActivity;->onDestroyResources()V

    .line 79
    invoke-virtual {p0}, Lorg/andengine/ui/activity/LegacyBaseGameActivity;->onUnloadResources()V

    .line 80
    return-void
.end method

.method public declared-synchronized onGameCreated()V
    .locals 1

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/andengine/ui/activity/BaseGameActivity;->onGameCreated()V

    .line 86
    invoke-virtual {p0}, Lorg/andengine/ui/activity/LegacyBaseGameActivity;->onLoadComplete()Lorg/andengine/entity/scene/Scene;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    monitor-exit p0

    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract onLoadComplete()Lorg/andengine/entity/scene/Scene;
.end method

.method protected abstract onLoadEngine()Lorg/andengine/engine/Engine;
.end method

.method protected abstract onLoadResources()V
.end method

.method protected abstract onLoadScene()Lorg/andengine/entity/scene/Scene;
.end method

.method public final onPopulateScene(Lorg/andengine/entity/scene/Scene;Lorg/andengine/ui/IGameInterface$OnPopulateSceneCallback;)V
    .locals 0
    .parameter "pScene"
    .parameter "pOnPopulateSceneCallback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 72
    invoke-interface {p2}, Lorg/andengine/ui/IGameInterface$OnPopulateSceneCallback;->onPopulateSceneFinished()V

    .line 73
    return-void
.end method

.method protected abstract onUnloadResources()V
.end method
