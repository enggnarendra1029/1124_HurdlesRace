.class Lorg/andengine/ui/activity/BaseGameActivity$4;
.super Ljava/lang/Object;
.source "BaseGameActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/andengine/ui/activity/BaseGameActivity;->callGameResumedOnUIThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/andengine/ui/activity/BaseGameActivity;


# direct methods
.method constructor <init>(Lorg/andengine/ui/activity/BaseGameActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/andengine/ui/activity/BaseGameActivity$4;->this$0:Lorg/andengine/ui/activity/BaseGameActivity;

    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lorg/andengine/ui/activity/BaseGameActivity$4;->this$0:Lorg/andengine/ui/activity/BaseGameActivity;

    invoke-virtual {v0}, Lorg/andengine/ui/activity/BaseGameActivity;->onResumeGame()V

    .line 374
    return-void
.end method
