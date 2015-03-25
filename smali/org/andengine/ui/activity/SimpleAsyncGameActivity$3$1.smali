.class Lorg/andengine/ui/activity/SimpleAsyncGameActivity$3$1;
.super Ljava/lang/Object;
.source "SimpleAsyncGameActivity.java"

# interfaces
.implements Lorg/andengine/util/progress/ProgressCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/andengine/ui/activity/SimpleAsyncGameActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/andengine/util/progress/ProgressCallable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/andengine/ui/activity/SimpleAsyncGameActivity$3;

.field private final synthetic val$pOnPopulateSceneCallback:Lorg/andengine/ui/IGameInterface$OnPopulateSceneCallback;

.field private final synthetic val$pScene:Lorg/andengine/entity/scene/Scene;


# direct methods
.method constructor <init>(Lorg/andengine/ui/activity/SimpleAsyncGameActivity$3;Lorg/andengine/entity/scene/Scene;Lorg/andengine/ui/IGameInterface$OnPopulateSceneCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/andengine/ui/activity/SimpleAsyncGameActivity$3$1;->this$1:Lorg/andengine/ui/activity/SimpleAsyncGameActivity$3;

    iput-object p2, p0, Lorg/andengine/ui/activity/SimpleAsyncGameActivity$3$1;->val$pScene:Lorg/andengine/entity/scene/Scene;

    iput-object p3, p0, Lorg/andengine/ui/activity/SimpleAsyncGameActivity$3$1;->val$pOnPopulateSceneCallback:Lorg/andengine/ui/IGameInterface$OnPopulateSceneCallback;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Lorg/andengine/util/progress/IProgressListener;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lorg/andengine/ui/activity/SimpleAsyncGameActivity$3$1;->call(Lorg/andengine/util/progress/IProgressListener;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call(Lorg/andengine/util/progress/IProgressListener;)Ljava/lang/Void;
    .locals 2
    .parameter "pProgressListener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lorg/andengine/ui/activity/SimpleAsyncGameActivity$3$1;->this$1:Lorg/andengine/ui/activity/SimpleAsyncGameActivity$3;

    #getter for: Lorg/andengine/ui/activity/SimpleAsyncGameActivity$3;->this$0:Lorg/andengine/ui/activity/SimpleAsyncGameActivity;
    invoke-static {v0}, Lorg/andengine/ui/activity/SimpleAsyncGameActivity$3;->access$0(Lorg/andengine/ui/activity/SimpleAsyncGameActivity$3;)Lorg/andengine/ui/activity/SimpleAsyncGameActivity;

    move-result-object v0

    iget-object v1, p0, Lorg/andengine/ui/activity/SimpleAsyncGameActivity$3$1;->val$pScene:Lorg/andengine/entity/scene/Scene;

    invoke-virtual {v0, v1, p1}, Lorg/andengine/ui/activity/SimpleAsyncGameActivity;->onPopulateSceneAsync(Lorg/andengine/entity/scene/Scene;Lorg/andengine/util/progress/IProgressListener;)V

    .line 102
    const/16 v0, 0x64

    invoke-interface {p1, v0}, Lorg/andengine/util/progress/IProgressListener;->onProgressChanged(I)V

    .line 104
    iget-object v0, p0, Lorg/andengine/ui/activity/SimpleAsyncGameActivity$3$1;->val$pOnPopulateSceneCallback:Lorg/andengine/ui/IGameInterface$OnPopulateSceneCallback;

    invoke-interface {v0}, Lorg/andengine/ui/IGameInterface$OnPopulateSceneCallback;->onPopulateSceneFinished()V

    .line 106
    const/4 v0, 0x0

    return-object v0
.end method
