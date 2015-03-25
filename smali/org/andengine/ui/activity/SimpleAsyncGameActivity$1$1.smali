.class Lorg/andengine/ui/activity/SimpleAsyncGameActivity$1$1;
.super Ljava/lang/Object;
.source "SimpleAsyncGameActivity.java"

# interfaces
.implements Lorg/andengine/util/progress/ProgressCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/andengine/ui/activity/SimpleAsyncGameActivity$1;->run()V
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
.field final synthetic this$1:Lorg/andengine/ui/activity/SimpleAsyncGameActivity$1;

.field private final synthetic val$pOnCreateResourcesCallback:Lorg/andengine/ui/IGameInterface$OnCreateResourcesCallback;


# direct methods
.method constructor <init>(Lorg/andengine/ui/activity/SimpleAsyncGameActivity$1;Lorg/andengine/ui/IGameInterface$OnCreateResourcesCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/andengine/ui/activity/SimpleAsyncGameActivity$1$1;->this$1:Lorg/andengine/ui/activity/SimpleAsyncGameActivity$1;

    iput-object p2, p0, Lorg/andengine/ui/activity/SimpleAsyncGameActivity$1$1;->val$pOnCreateResourcesCallback:Lorg/andengine/ui/IGameInterface$OnCreateResourcesCallback;

    .line 45
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
    invoke-virtual {p0, p1}, Lorg/andengine/ui/activity/SimpleAsyncGameActivity$1$1;->call(Lorg/andengine/util/progress/IProgressListener;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call(Lorg/andengine/util/progress/IProgressListener;)Ljava/lang/Void;
    .locals 1
    .parameter "pProgressListener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lorg/andengine/ui/activity/SimpleAsyncGameActivity$1$1;->this$1:Lorg/andengine/ui/activity/SimpleAsyncGameActivity$1;

    #getter for: Lorg/andengine/ui/activity/SimpleAsyncGameActivity$1;->this$0:Lorg/andengine/ui/activity/SimpleAsyncGameActivity;
    invoke-static {v0}, Lorg/andengine/ui/activity/SimpleAsyncGameActivity$1;->access$0(Lorg/andengine/ui/activity/SimpleAsyncGameActivity$1;)Lorg/andengine/ui/activity/SimpleAsyncGameActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/andengine/ui/activity/SimpleAsyncGameActivity;->onCreateResourcesAsync(Lorg/andengine/util/progress/IProgressListener;)V

    .line 50
    const/16 v0, 0x64

    invoke-interface {p1, v0}, Lorg/andengine/util/progress/IProgressListener;->onProgressChanged(I)V

    .line 52
    iget-object v0, p0, Lorg/andengine/ui/activity/SimpleAsyncGameActivity$1$1;->val$pOnCreateResourcesCallback:Lorg/andengine/ui/IGameInterface$OnCreateResourcesCallback;

    invoke-interface {v0}, Lorg/andengine/ui/IGameInterface$OnCreateResourcesCallback;->onCreateResourcesFinished()V

    .line 54
    const/4 v0, 0x0

    return-object v0
.end method
