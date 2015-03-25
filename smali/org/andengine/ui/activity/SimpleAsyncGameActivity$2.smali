.class Lorg/andengine/ui/activity/SimpleAsyncGameActivity$2;
.super Ljava/lang/Object;
.source "SimpleAsyncGameActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/andengine/ui/activity/SimpleAsyncGameActivity;->onCreateScene(Lorg/andengine/ui/IGameInterface$OnCreateSceneCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/andengine/ui/activity/SimpleAsyncGameActivity;

.field private final synthetic val$pOnCreateSceneCallback:Lorg/andengine/ui/IGameInterface$OnCreateSceneCallback;


# direct methods
.method constructor <init>(Lorg/andengine/ui/activity/SimpleAsyncGameActivity;Lorg/andengine/ui/IGameInterface$OnCreateSceneCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/andengine/ui/activity/SimpleAsyncGameActivity$2;->this$0:Lorg/andengine/ui/activity/SimpleAsyncGameActivity;

    iput-object p2, p0, Lorg/andengine/ui/activity/SimpleAsyncGameActivity$2;->val$pOnCreateSceneCallback:Lorg/andengine/ui/IGameInterface$OnCreateSceneCallback;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lorg/andengine/ui/activity/SimpleAsyncGameActivity$2;)Lorg/andengine/ui/activity/SimpleAsyncGameActivity;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lorg/andengine/ui/activity/SimpleAsyncGameActivity$2;->this$0:Lorg/andengine/ui/activity/SimpleAsyncGameActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 71
    iget-object v0, p0, Lorg/andengine/ui/activity/SimpleAsyncGameActivity$2;->this$0:Lorg/andengine/ui/activity/SimpleAsyncGameActivity;

    const-string v1, "Loading Scene..."

    const v2, 0x108004d

    new-instance v3, Lorg/andengine/ui/activity/SimpleAsyncGameActivity$2$1;

    iget-object v4, p0, Lorg/andengine/ui/activity/SimpleAsyncGameActivity$2;->val$pOnCreateSceneCallback:Lorg/andengine/ui/IGameInterface$OnCreateSceneCallback;

    invoke-direct {v3, p0, v4}, Lorg/andengine/ui/activity/SimpleAsyncGameActivity$2$1;-><init>(Lorg/andengine/ui/activity/SimpleAsyncGameActivity$2;Lorg/andengine/ui/IGameInterface$OnCreateSceneCallback;)V

    .line 82
    new-instance v4, Lorg/andengine/ui/activity/SimpleAsyncGameActivity$2$2;

    invoke-direct {v4, p0}, Lorg/andengine/ui/activity/SimpleAsyncGameActivity$2$2;-><init>(Lorg/andengine/ui/activity/SimpleAsyncGameActivity$2;)V

    .line 71
    invoke-static {v0, v1, v2, v3, v4}, Lorg/andengine/util/ActivityUtils;->doProgressAsync(Landroid/content/Context;Ljava/lang/CharSequence;ILorg/andengine/util/progress/ProgressCallable;Lorg/andengine/util/call/Callback;)V

    .line 88
    return-void
.end method
