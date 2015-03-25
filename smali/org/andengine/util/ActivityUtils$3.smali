.class Lorg/andengine/util/ActivityUtils$3;
.super Ljava/lang/Object;
.source "ActivityUtils.java"

# interfaces
.implements Lorg/andengine/util/call/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/andengine/util/ActivityUtils;->doAsync(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/andengine/util/call/AsyncCallable;Lorg/andengine/util/call/Callback;Lorg/andengine/util/call/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/andengine/util/call/Callback",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final synthetic val$pCallback:Lorg/andengine/util/call/Callback;

.field private final synthetic val$pd:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Landroid/app/ProgressDialog;Lorg/andengine/util/call/Callback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/andengine/util/ActivityUtils$3;->val$pd:Landroid/app/ProgressDialog;

    iput-object p2, p0, Lorg/andengine/util/ActivityUtils$3;->val$pCallback:Lorg/andengine/util/call/Callback;

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Ljava/lang/Object;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 245
    .local p1, result:Ljava/lang/Object;,"TT;"
    :try_start_0
    iget-object v1, p0, Lorg/andengine/util/ActivityUtils$3;->val$pd:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :goto_0
    iget-object v1, p0, Lorg/andengine/util/ActivityUtils$3;->val$pCallback:Lorg/andengine/util/call/Callback;

    invoke-interface {v1, p1}, Lorg/andengine/util/call/Callback;->onCallback(Ljava/lang/Object;)V

    .line 252
    return-void

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Error"

    invoke-static {v1, v0}, Lorg/andengine/util/debug/Debug;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
