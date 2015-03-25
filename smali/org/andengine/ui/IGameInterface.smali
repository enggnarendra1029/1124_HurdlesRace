.class public interface abstract Lorg/andengine/ui/IGameInterface;
.super Ljava/lang/Object;
.source "IGameInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/andengine/ui/IGameInterface$OnCreateResourcesCallback;,
        Lorg/andengine/ui/IGameInterface$OnCreateSceneCallback;,
        Lorg/andengine/ui/IGameInterface$OnPopulateSceneCallback;
    }
.end annotation


# virtual methods
.method public abstract onCreateEngine(Lorg/andengine/engine/options/EngineOptions;)Lorg/andengine/engine/Engine;
.end method

.method public abstract onCreateEngineOptions()Lorg/andengine/engine/options/EngineOptions;
.end method

.method public abstract onCreateResources(Lorg/andengine/ui/IGameInterface$OnCreateResourcesCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract onCreateScene(Lorg/andengine/ui/IGameInterface$OnCreateSceneCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract onDestroyResources()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract onGameCreated()V
.end method

.method public abstract onGameDestroyed()V
.end method

.method public abstract onPauseGame()V
.end method

.method public abstract onPopulateScene(Lorg/andengine/entity/scene/Scene;Lorg/andengine/ui/IGameInterface$OnPopulateSceneCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract onReloadResources()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract onResumeGame()V
.end method
