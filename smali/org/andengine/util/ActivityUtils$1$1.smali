.class Lorg/andengine/util/ActivityUtils$1$1;
.super Ljava/lang/Object;
.source "ActivityUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/andengine/util/ActivityUtils$1;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/andengine/util/ActivityUtils$1;

.field private final synthetic val$pExceptionCallback:Lorg/andengine/util/call/Callback;


# direct methods
.method constructor <init>(Lorg/andengine/util/ActivityUtils$1;Lorg/andengine/util/call/Callback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/andengine/util/ActivityUtils$1$1;->this$1:Lorg/andengine/util/ActivityUtils$1;

    iput-object p2, p0, Lorg/andengine/util/ActivityUtils$1$1;->val$pExceptionCallback:Lorg/andengine/util/call/Callback;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "pDialogInterface"

    .prologue
    .line 114
    iget-object v0, p0, Lorg/andengine/util/ActivityUtils$1$1;->val$pExceptionCallback:Lorg/andengine/util/call/Callback;

    new-instance v1, Lorg/andengine/util/exception/CancelledException;

    invoke-direct {v1}, Lorg/andengine/util/exception/CancelledException;-><init>()V

    invoke-interface {v0, v1}, Lorg/andengine/util/call/Callback;->onCallback(Ljava/lang/Object;)V

    .line 115
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 116
    return-void
.end method
