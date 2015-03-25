.class Lorg/andengine/ui/activity/SimpleAsyncGameActivity$2$1;
.super Ljava/lang/Object;
.source "SimpleAsyncGameActivity.java"

# interfaces
.implements Lorg/andengine/util/progress/ProgressCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/andengine/ui/activity/SimpleAsyncGameActivity$2;->run()V
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
.field final synthetic this$1:Lorg/andengine/ui/activity/SimpleAsyncGameActivity$2;

.field private final synthetic val$pOnCreateSceneCallback:Lorg/andengine/ui/IGameInterface$OnCreateSceneCallback;


# direct methods
.method constructor <init>(Lorg/andengine/ui/activity/SimpleAsyncGameActivity$2;Lorg/andengine/ui/IGameInterface$OnCreateSceneCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/andengine/ui/activity/SimpleAsyncGameActivity$2$1;->this$1:Lorg/andengine/ui/activity/SimpleAsyncGameActivity$2;

    iput-object p2, p0, Lorg/andengine/ui/activity/SimpleAsyncGameActivity$2$1;->val$pOnCreateSceneCallback:Lorg/andengine/ui/IGameInterface$OnCreateSceneCallback;

    .line 71
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
    invoke-virtual {p0, p1}, Lorg/andengine/ui/activity/SimpleAsyncGameActivity$2$1;->call(Lorg/andengine/util/progress/IProgressListener;)Ljava/lang/Void;

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
    .line 74
    iget-object v1, p0, Lorg/andengine/ui/activity/SimpleAsyncGameActivity$2$1;->this$1:Lorg/andengine/ui/activity/SimpleAsyncGameActivity$2;

    #getter for: Lorg/andengine/ui/activity/SimpleAsyncGameActivity$2;->this$0:Lorg/andengine/ui/activity/SimpleAsyncGameActivity;
    invoke-static {v1}, Lorg/andengine/ui/activity/SimpleAsyncGameActivity$2;->access$0(Lorg/andengine/ui/activity/SimpleAsyncGameActivity$2;)Lorg/andengine/ui/activity/SimpleAsyncGameActivity;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/andengine/ui/activity/SimpleAsyncGameActivity;->onCreateSceneAsync(Lorg/andengine/util/progress/IProgressListener;)Lorg/andengine/entity/scene/Scene;

    move-result-object v0

    .line 76
    .local v0, scene:Lorg/andengine/entity/scene/Scene;
    const/16 v1, 0x64

    invoke-interface {p1, v1}, Lorg/andengine/util/progress/IProgressListener;->onProgressChanged(I)V

    .line 78
    iget-object v1, p0, Lorg/andengine/ui/activity/SimpleAsyncGameActivity$2$1;->val$pOnCreateSceneCallback:Lorg/andengine/ui/IGameInterface$OnCreateSceneCallback;

    invoke-interface {v1, v0}, Lorg/andengine/ui/IGameInterface$OnCreateSceneCallback;->onCreateSceneFinished(Lorg/andengine/entity/scene/Scene;)V

    .line 80
    const/4 v1, 0x0

    return-object v1
.end method
