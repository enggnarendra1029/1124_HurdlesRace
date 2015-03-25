.class Lorg/andengine/ui/activity/SimpleAsyncGameActivity$2$2;
.super Ljava/lang/Object;
.source "SimpleAsyncGameActivity.java"

# interfaces
.implements Lorg/andengine/util/call/Callback;


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
        "Lorg/andengine/util/call/Callback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/andengine/ui/activity/SimpleAsyncGameActivity$2;


# direct methods
.method constructor <init>(Lorg/andengine/ui/activity/SimpleAsyncGameActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/andengine/ui/activity/SimpleAsyncGameActivity$2$2;->this$1:Lorg/andengine/ui/activity/SimpleAsyncGameActivity$2;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCallback(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/andengine/ui/activity/SimpleAsyncGameActivity$2$2;->onCallback(Ljava/lang/Void;)V

    return-void
.end method

.method public onCallback(Ljava/lang/Void;)V
    .locals 0
    .parameter "pCallbackValue"

    .prologue
    .line 86
    return-void
.end method
