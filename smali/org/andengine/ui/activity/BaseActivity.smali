.class public abstract Lorg/andengine/ui/activity/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected doAsync(IILorg/andengine/util/call/AsyncCallable;Lorg/andengine/util/call/Callback;Lorg/andengine/util/call/Callback;)V
    .locals 0
    .parameter "pTitleResourceID"
    .parameter "pMessageResourceID"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Lorg/andengine/util/call/AsyncCallable",
            "<TT;>;",
            "Lorg/andengine/util/call/Callback",
            "<TT;>;",
            "Lorg/andengine/util/call/Callback",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p3, pAsyncCallable:Lorg/andengine/util/call/AsyncCallable;,"Lorg/andengine/util/call/AsyncCallable<TT;>;"
    .local p4, pCallback:Lorg/andengine/util/call/Callback;,"Lorg/andengine/util/call/Callback<TT;>;"
    .local p5, pExceptionCallback:Lorg/andengine/util/call/Callback;,"Lorg/andengine/util/call/Callback<Ljava/lang/Exception;>;"
    invoke-static/range {p0 .. p5}, Lorg/andengine/util/ActivityUtils;->doAsync(Landroid/content/Context;IILorg/andengine/util/call/AsyncCallable;Lorg/andengine/util/call/Callback;Lorg/andengine/util/call/Callback;)V

    .line 139
    return-void
.end method

.method protected doAsync(IILorg/andengine/util/call/Callable;Lorg/andengine/util/call/Callback;)V
    .locals 6
    .parameter "pTitleResourceID"
    .parameter "pMessageResourceID"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Lorg/andengine/util/call/Callable",
            "<TT;>;",
            "Lorg/andengine/util/call/Callback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p3, pCallable:Lorg/andengine/util/call/Callable;,"Lorg/andengine/util/call/Callable<TT;>;"
    .local p4, pCallback:Lorg/andengine/util/call/Callback;,"Lorg/andengine/util/call/Callback<TT;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/andengine/ui/activity/BaseActivity;->doAsync(IILorg/andengine/util/call/Callable;Lorg/andengine/util/call/Callback;Lorg/andengine/util/call/Callback;)V

    .line 76
    return-void
.end method

.method protected doAsync(IILorg/andengine/util/call/Callable;Lorg/andengine/util/call/Callback;Lorg/andengine/util/call/Callback;)V
    .locals 0
    .parameter "pTitleResourceID"
    .parameter "pMessageResourceID"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Lorg/andengine/util/call/Callable",
            "<TT;>;",
            "Lorg/andengine/util/call/Callback",
            "<TT;>;",
            "Lorg/andengine/util/call/Callback",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p3, pCallable:Lorg/andengine/util/call/Callable;,"Lorg/andengine/util/call/Callable<TT;>;"
    .local p4, pCallback:Lorg/andengine/util/call/Callback;,"Lorg/andengine/util/call/Callback<TT;>;"
    .local p5, pExceptionCallback:Lorg/andengine/util/call/Callback;,"Lorg/andengine/util/call/Callback<Ljava/lang/Exception;>;"
    invoke-static/range {p0 .. p5}, Lorg/andengine/util/ActivityUtils;->doAsync(Landroid/content/Context;IILorg/andengine/util/call/Callable;Lorg/andengine/util/call/Callback;Lorg/andengine/util/call/Callback;)V

    .line 92
    return-void
.end method

.method protected doProgressAsync(IILorg/andengine/util/progress/ProgressCallable;Lorg/andengine/util/call/Callback;)V
    .locals 6
    .parameter "pTitleResourceID"
    .parameter "pIconResourceID"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Lorg/andengine/util/progress/ProgressCallable",
            "<TT;>;",
            "Lorg/andengine/util/call/Callback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p3, pCallable:Lorg/andengine/util/progress/ProgressCallable;,"Lorg/andengine/util/progress/ProgressCallable<TT;>;"
    .local p4, pCallback:Lorg/andengine/util/call/Callback;,"Lorg/andengine/util/call/Callback<TT;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/andengine/ui/activity/BaseActivity;->doProgressAsync(IILorg/andengine/util/progress/ProgressCallable;Lorg/andengine/util/call/Callback;Lorg/andengine/util/call/Callback;)V

    .line 107
    return-void
.end method

.method protected doProgressAsync(IILorg/andengine/util/progress/ProgressCallable;Lorg/andengine/util/call/Callback;Lorg/andengine/util/call/Callback;)V
    .locals 0
    .parameter "pTitleResourceID"
    .parameter "pIconResourceID"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Lorg/andengine/util/progress/ProgressCallable",
            "<TT;>;",
            "Lorg/andengine/util/call/Callback",
            "<TT;>;",
            "Lorg/andengine/util/call/Callback",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p3, pCallable:Lorg/andengine/util/progress/ProgressCallable;,"Lorg/andengine/util/progress/ProgressCallable<TT;>;"
    .local p4, pCallback:Lorg/andengine/util/call/Callback;,"Lorg/andengine/util/call/Callback<TT;>;"
    .local p5, pExceptionCallback:Lorg/andengine/util/call/Callback;,"Lorg/andengine/util/call/Callback<Ljava/lang/Exception;>;"
    invoke-static/range {p0 .. p5}, Lorg/andengine/util/ActivityUtils;->doProgressAsync(Landroid/content/Context;IILorg/andengine/util/progress/ProgressCallable;Lorg/andengine/util/call/Callback;Lorg/andengine/util/call/Callback;)V

    .line 123
    return-void
.end method

.method public toastOnUIThread(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "pText"

    .prologue
    .line 47
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/andengine/ui/activity/BaseActivity;->toastOnUIThread(Ljava/lang/CharSequence;I)V

    .line 48
    return-void
.end method

.method public toastOnUIThread(Ljava/lang/CharSequence;I)V
    .locals 2
    .parameter "pText"
    .parameter "pDuration"

    .prologue
    .line 51
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 52
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 61
    :goto_0
    return-void

    .line 54
    :cond_0
    new-instance v0, Lorg/andengine/ui/activity/BaseActivity$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/andengine/ui/activity/BaseActivity$1;-><init>(Lorg/andengine/ui/activity/BaseActivity;Ljava/lang/CharSequence;I)V

    invoke-virtual {p0, v0}, Lorg/andengine/ui/activity/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
