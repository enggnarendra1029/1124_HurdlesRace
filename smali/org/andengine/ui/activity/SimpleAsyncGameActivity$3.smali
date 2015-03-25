.class Lorg/andengine/ui/activity/SimpleAsyncGameActivity$3;
.super Ljava/lang/Object;
.source "SimpleAsyncGameActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/andengine/ui/activity/SimpleAsyncGameActivity;->onPopulateScene(Lorg/andengine/entity/scene/Scene;Lorg/andengine/ui/IGameInterface$OnPopulateSceneCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/andengine/ui/activity/SimpleAsyncGameActivity;

.field private final synthetic val$pOnPopulateSceneCallback:Lorg/andengine/ui/IGameInterface$OnPopulateSceneCallback;

.field private final synthetic val$pScene:Lorg/andengine/entity/scene/Scene;


# direct methods
.method constructor <init>(Lorg/andengine/ui/activity/SimpleAsyncGameActivity;Lorg/andengine/entity/scene/Scene;Lorg/andengine/ui/IGameInterface$OnPopulateSceneCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/andengine/ui/activity/SimpleAsyncGameActivity$3;->this$0:Lorg/andengine/ui/activity/SimpleAsyncGameActivity;

    iput-object p2, p0, Lorg/andengine/ui/activity/SimpleAsyncGameActivity$3;->val$pScene:Lorg/andengine/entity/scene/Scene;

    iput-object p3, p0, Lorg/andengine/ui/activity/SimpleAsyncGameActivity$3;->val$pOnPopulateSceneCallback:Lorg/andengine/ui/IGameInterface$OnPopulateSceneCallback;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lorg/andengine/ui/activity/SimpleAsyncGameActivity$3;)Lorg/andengine/ui/activity/SimpleAsyncGameActivity;
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lorg/andengine/ui/activity/SimpleAsyncGameActivity$3;->this$0:Lorg/andengine/ui/activity/SimpleAsyncGameActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 97
    iget-object v0, p0, Lorg/andengine/ui/activity/SimpleAsyncGameActivity$3;->this$0:Lorg/andengine/ui/activity/SimpleAsyncGameActivity;

    const-string v1, "Populating Scene..."

    const v2, 0x108004d

    new-instance v3, Lorg/andengine/ui/activity/SimpleAsyncGameActivity$3$1;

    iget-object v4, p0, Lorg/andengine/ui/activity/SimpleAsyncGameActivity$3;->val$pScene:Lorg/andengine/entity/scene/Scene;

    iget-object v5, p0, Lorg/andengine/ui/activity/SimpleAsyncGameActivity$3;->val$pOnPopulateSceneCallback:Lorg/andengine/ui/IGameInterface$OnPopulateSceneCallback;

    invoke-direct {v3, p0, v4, v5}, Lorg/andengine/ui/activity/SimpleAsyncGameActivity$3$1;-><init>(Lorg/andengine/ui/activity/SimpleAsyncGameActivity$3;Lorg/andengine/entity/scene/Scene;Lorg/andengine/ui/IGameInterface$OnPopulateSceneCallback;)V

    .line 108
    new-instance v4, Lorg/andengine/ui/activity/SimpleAsyncGameActivity$3$2;

    invoke-direct {v4, p0}, Lorg/andengine/ui/activity/SimpleAsyncGameActivity$3$2;-><init>(Lorg/andengine/ui/activity/SimpleAsyncGameActivity$3;)V

    .line 97
    invoke-static {v0, v1, v2, v3, v4}, Lorg/andengine/util/ActivityUtils;->doProgressAsync(Landroid/content/Context;Ljava/lang/CharSequence;ILorg/andengine/util/progress/ProgressCallable;Lorg/andengine/util/call/Callback;)V

    .line 114
    return-void
.end method
