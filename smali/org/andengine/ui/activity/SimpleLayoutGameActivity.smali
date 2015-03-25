.class public abstract Lorg/andengine/ui/activity/SimpleLayoutGameActivity;
.super Lorg/andengine/ui/activity/LayoutGameActivity;
.source "SimpleLayoutGameActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lorg/andengine/ui/activity/LayoutGameActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract onCreateResources()V
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
    .line 41
    invoke-virtual {p0}, Lorg/andengine/ui/activity/SimpleLayoutGameActivity;->onCreateResources()V

    .line 43
    invoke-interface {p1}, Lorg/andengine/ui/IGameInterface$OnCreateResourcesCallback;->onCreateResourcesFinished()V

    .line 44
    return-void
.end method

.method protected abstract onCreateScene()Lorg/andengine/entity/scene/Scene;
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
    .line 48
    invoke-virtual {p0}, Lorg/andengine/ui/activity/SimpleLayoutGameActivity;->onCreateScene()Lorg/andengine/entity/scene/Scene;

    move-result-object v0

    .line 50
    .local v0, scene:Lorg/andengine/entity/scene/Scene;
    invoke-interface {p1, v0}, Lorg/andengine/ui/IGameInterface$OnCreateSceneCallback;->onCreateSceneFinished(Lorg/andengine/entity/scene/Scene;)V

    .line 51
    return-void
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
    .line 55
    invoke-interface {p2}, Lorg/andengine/ui/IGameInterface$OnPopulateSceneCallback;->onPopulateSceneFinished()V

    .line 56
    return-void
.end method
