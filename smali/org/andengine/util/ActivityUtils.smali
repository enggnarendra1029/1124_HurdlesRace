.class public Lorg/andengine/util/ActivityUtils;
.super Ljava/lang/Object;
.source "ActivityUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doAsync(Landroid/content/Context;IILorg/andengine/util/call/AsyncCallable;Lorg/andengine/util/call/Callback;Lorg/andengine/util/call/Callback;)V
    .locals 6
    .parameter "pContext"
    .parameter "pTitleResourceID"
    .parameter "pMessageResourceID"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "II",
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
    .line 236
    .local p3, pAsyncCallable:Lorg/andengine/util/call/AsyncCallable;,"Lorg/andengine/util/call/AsyncCallable<TT;>;"
    .local p4, pCallback:Lorg/andengine/util/call/Callback;,"Lorg/andengine/util/call/Callback<TT;>;"
    .local p5, pExceptionCallback:Lorg/andengine/util/call/Callback;,"Lorg/andengine/util/call/Callback<Ljava/lang/Exception;>;"
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lorg/andengine/util/ActivityUtils;->doAsync(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/andengine/util/call/AsyncCallable;Lorg/andengine/util/call/Callback;Lorg/andengine/util/call/Callback;)V

    .line 237
    return-void
.end method

.method public static doAsync(Landroid/content/Context;IILorg/andengine/util/call/Callable;Lorg/andengine/util/call/Callback;)V
    .locals 7
    .parameter "pContext"
    .parameter "pTitleResourceID"
    .parameter "pMessageResourceID"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "II",
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

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lorg/andengine/util/ActivityUtils;->doAsync(Landroid/content/Context;IILorg/andengine/util/call/Callable;Lorg/andengine/util/call/Callback;Lorg/andengine/util/call/Callback;Z)V

    .line 76
    return-void
.end method

.method public static doAsync(Landroid/content/Context;IILorg/andengine/util/call/Callable;Lorg/andengine/util/call/Callback;Lorg/andengine/util/call/Callback;)V
    .locals 7
    .parameter "pContext"
    .parameter "pTitleResourceID"
    .parameter "pMessageResourceID"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "II",
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
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lorg/andengine/util/ActivityUtils;->doAsync(Landroid/content/Context;IILorg/andengine/util/call/Callable;Lorg/andengine/util/call/Callback;Lorg/andengine/util/call/Callback;Z)V

    .line 92
    return-void
.end method

.method public static doAsync(Landroid/content/Context;IILorg/andengine/util/call/Callable;Lorg/andengine/util/call/Callback;Lorg/andengine/util/call/Callback;Z)V
    .locals 7
    .parameter "pContext"
    .parameter "pTitleResourceID"
    .parameter "pMessageResourceID"
    .parameter
    .parameter
    .parameter
    .parameter "pCancelable"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "II",
            "Lorg/andengine/util/call/Callable",
            "<TT;>;",
            "Lorg/andengine/util/call/Callback",
            "<TT;>;",
            "Lorg/andengine/util/call/Callback",
            "<",
            "Ljava/lang/Exception;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p3, pCallable:Lorg/andengine/util/call/Callable;,"Lorg/andengine/util/call/Callable<TT;>;"
    .local p4, pCallback:Lorg/andengine/util/call/Callback;,"Lorg/andengine/util/call/Callback<TT;>;"
    .local p5, pExceptionCallback:Lorg/andengine/util/call/Callback;,"Lorg/andengine/util/call/Callback<Ljava/lang/Exception;>;"
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lorg/andengine/util/ActivityUtils;->doAsync(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/andengine/util/call/Callable;Lorg/andengine/util/call/Callback;Lorg/andengine/util/call/Callback;Z)V

    .line 100
    return-void
.end method

.method public static doAsync(Landroid/content/Context;IILorg/andengine/util/call/Callable;Lorg/andengine/util/call/Callback;Z)V
    .locals 7
    .parameter "pContext"
    .parameter "pTitleResourceID"
    .parameter "pMessageResourceID"
    .parameter
    .parameter
    .parameter "pCancelable"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "II",
            "Lorg/andengine/util/call/Callable",
            "<TT;>;",
            "Lorg/andengine/util/call/Callback",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p3, pCallable:Lorg/andengine/util/call/Callable;,"Lorg/andengine/util/call/Callable<TT;>;"
    .local p4, pCallback:Lorg/andengine/util/call/Callback;,"Lorg/andengine/util/call/Callback<TT;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lorg/andengine/util/ActivityUtils;->doAsync(Landroid/content/Context;IILorg/andengine/util/call/Callable;Lorg/andengine/util/call/Callback;Lorg/andengine/util/call/Callback;Z)V

    .line 84
    return-void
.end method

.method public static doAsync(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/andengine/util/call/AsyncCallable;Lorg/andengine/util/call/Callback;Lorg/andengine/util/call/Callback;)V
    .locals 2
    .parameter "pContext"
    .parameter "pTitle"
    .parameter "pMessage"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
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
    .line 240
    .local p3, pAsyncCallable:Lorg/andengine/util/call/AsyncCallable;,"Lorg/andengine/util/call/AsyncCallable<TT;>;"
    .local p4, pCallback:Lorg/andengine/util/call/Callback;,"Lorg/andengine/util/call/Callback<TT;>;"
    .local p5, pExceptionCallback:Lorg/andengine/util/call/Callback;,"Lorg/andengine/util/call/Callback<Ljava/lang/Exception;>;"
    invoke-static {p0, p1, p2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 241
    .local v0, pd:Landroid/app/ProgressDialog;
    new-instance v1, Lorg/andengine/util/ActivityUtils$3;

    invoke-direct {v1, v0, p4}, Lorg/andengine/util/ActivityUtils$3;-><init>(Landroid/app/ProgressDialog;Lorg/andengine/util/call/Callback;)V

    invoke-interface {p3, v1, p5}, Lorg/andengine/util/call/AsyncCallable;->call(Lorg/andengine/util/call/Callback;Lorg/andengine/util/call/Callback;)V

    .line 254
    return-void
.end method

.method public static doAsync(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/andengine/util/call/Callable;Lorg/andengine/util/call/Callback;)V
    .locals 7
    .parameter "pContext"
    .parameter "pTitle"
    .parameter "pMessage"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Lorg/andengine/util/call/Callable",
            "<TT;>;",
            "Lorg/andengine/util/call/Callback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p3, pCallable:Lorg/andengine/util/call/Callable;,"Lorg/andengine/util/call/Callable<TT;>;"
    .local p4, pCallback:Lorg/andengine/util/call/Callback;,"Lorg/andengine/util/call/Callback<TT;>;"
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lorg/andengine/util/ActivityUtils;->doAsync(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/andengine/util/call/Callable;Lorg/andengine/util/call/Callback;Lorg/andengine/util/call/Callback;Z)V

    .line 80
    return-void
.end method

.method public static doAsync(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/andengine/util/call/Callable;Lorg/andengine/util/call/Callback;Lorg/andengine/util/call/Callback;)V
    .locals 7
    .parameter "pContext"
    .parameter "pTitle"
    .parameter "pMessage"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
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
    .line 95
    .local p3, pCallable:Lorg/andengine/util/call/Callable;,"Lorg/andengine/util/call/Callable<TT;>;"
    .local p4, pCallback:Lorg/andengine/util/call/Callback;,"Lorg/andengine/util/call/Callback<TT;>;"
    .local p5, pExceptionCallback:Lorg/andengine/util/call/Callback;,"Lorg/andengine/util/call/Callback<Ljava/lang/Exception;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lorg/andengine/util/ActivityUtils;->doAsync(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/andengine/util/call/Callable;Lorg/andengine/util/call/Callback;Lorg/andengine/util/call/Callback;Z)V

    .line 96
    return-void
.end method

.method public static doAsync(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/andengine/util/call/Callable;Lorg/andengine/util/call/Callback;Lorg/andengine/util/call/Callback;Z)V
    .locals 8
    .parameter "pContext"
    .parameter "pTitle"
    .parameter "pMessage"
    .parameter
    .parameter
    .parameter
    .parameter "pCancelable"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Lorg/andengine/util/call/Callable",
            "<TT;>;",
            "Lorg/andengine/util/call/Callback",
            "<TT;>;",
            "Lorg/andengine/util/call/Callback",
            "<",
            "Ljava/lang/Exception;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p3, pCallable:Lorg/andengine/util/call/Callable;,"Lorg/andengine/util/call/Callable<TT;>;"
    .local p4, pCallback:Lorg/andengine/util/call/Callback;,"Lorg/andengine/util/call/Callback<TT;>;"
    .local p5, pExceptionCallback:Lorg/andengine/util/call/Callback;,"Lorg/andengine/util/call/Callback<Ljava/lang/Exception;>;"
    new-instance v0, Lorg/andengine/util/ActivityUtils$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p6

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/andengine/util/ActivityUtils$1;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLorg/andengine/util/call/Callable;Lorg/andengine/util/call/Callback;Lorg/andengine/util/call/Callback;)V

    .line 156
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/andengine/util/ActivityUtils$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 157
    return-void
.end method

.method public static doAsync(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/andengine/util/call/Callable;Lorg/andengine/util/call/Callback;Z)V
    .locals 7
    .parameter "pContext"
    .parameter "pTitle"
    .parameter "pMessage"
    .parameter
    .parameter
    .parameter "pCancelable"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Lorg/andengine/util/call/Callable",
            "<TT;>;",
            "Lorg/andengine/util/call/Callback",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p3, pCallable:Lorg/andengine/util/call/Callable;,"Lorg/andengine/util/call/Callable<TT;>;"
    .local p4, pCallback:Lorg/andengine/util/call/Callback;,"Lorg/andengine/util/call/Callback<TT;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lorg/andengine/util/ActivityUtils;->doAsync(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/andengine/util/call/Callable;Lorg/andengine/util/call/Callback;Lorg/andengine/util/call/Callback;Z)V

    .line 88
    return-void
.end method

.method public static doProgressAsync(Landroid/content/Context;IILorg/andengine/util/progress/ProgressCallable;Lorg/andengine/util/call/Callback;)V
    .locals 6
    .parameter "pContext"
    .parameter "pTitleResourceID"
    .parameter "pIconResourceID"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "II",
            "Lorg/andengine/util/progress/ProgressCallable",
            "<TT;>;",
            "Lorg/andengine/util/call/Callback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p3, pCallable:Lorg/andengine/util/progress/ProgressCallable;,"Lorg/andengine/util/progress/ProgressCallable<TT;>;"
    .local p4, pCallback:Lorg/andengine/util/call/Callback;,"Lorg/andengine/util/call/Callback<TT;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lorg/andengine/util/ActivityUtils;->doProgressAsync(Landroid/content/Context;IILorg/andengine/util/progress/ProgressCallable;Lorg/andengine/util/call/Callback;Lorg/andengine/util/call/Callback;)V

    .line 161
    return-void
.end method

.method public static doProgressAsync(Landroid/content/Context;IILorg/andengine/util/progress/ProgressCallable;Lorg/andengine/util/call/Callback;Lorg/andengine/util/call/Callback;)V
    .locals 6
    .parameter "pContext"
    .parameter "pTitleResourceID"
    .parameter "pIconResourceID"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "II",
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
    .line 168
    .local p3, pCallable:Lorg/andengine/util/progress/ProgressCallable;,"Lorg/andengine/util/progress/ProgressCallable<TT;>;"
    .local p4, pCallback:Lorg/andengine/util/call/Callback;,"Lorg/andengine/util/call/Callback<TT;>;"
    .local p5, pExceptionCallback:Lorg/andengine/util/call/Callback;,"Lorg/andengine/util/call/Callback<Ljava/lang/Exception;>;"
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lorg/andengine/util/ActivityUtils;->doProgressAsync(Landroid/content/Context;Ljava/lang/CharSequence;ILorg/andengine/util/progress/ProgressCallable;Lorg/andengine/util/call/Callback;Lorg/andengine/util/call/Callback;)V

    .line 169
    return-void
.end method

.method public static doProgressAsync(Landroid/content/Context;Ljava/lang/CharSequence;ILorg/andengine/util/progress/ProgressCallable;Lorg/andengine/util/call/Callback;)V
    .locals 6
    .parameter "pContext"
    .parameter "pTitle"
    .parameter "pIconResourceID"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "I",
            "Lorg/andengine/util/progress/ProgressCallable",
            "<TT;>;",
            "Lorg/andengine/util/call/Callback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p3, pCallable:Lorg/andengine/util/progress/ProgressCallable;,"Lorg/andengine/util/progress/ProgressCallable<TT;>;"
    .local p4, pCallback:Lorg/andengine/util/call/Callback;,"Lorg/andengine/util/call/Callback<TT;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lorg/andengine/util/ActivityUtils;->doProgressAsync(Landroid/content/Context;Ljava/lang/CharSequence;ILorg/andengine/util/progress/ProgressCallable;Lorg/andengine/util/call/Callback;Lorg/andengine/util/call/Callback;)V

    .line 165
    return-void
.end method

.method public static doProgressAsync(Landroid/content/Context;Ljava/lang/CharSequence;ILorg/andengine/util/progress/ProgressCallable;Lorg/andengine/util/call/Callback;Lorg/andengine/util/call/Callback;)V
    .locals 7
    .parameter "pContext"
    .parameter "pTitle"
    .parameter "pIconResourceID"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "I",
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
    .line 172
    .local p3, pCallable:Lorg/andengine/util/progress/ProgressCallable;,"Lorg/andengine/util/progress/ProgressCallable<TT;>;"
    .local p4, pCallback:Lorg/andengine/util/call/Callback;,"Lorg/andengine/util/call/Callback<TT;>;"
    .local p5, pExceptionCallback:Lorg/andengine/util/call/Callback;,"Lorg/andengine/util/call/Callback<Ljava/lang/Exception;>;"
    new-instance v0, Lorg/andengine/util/ActivityUtils$2;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/andengine/util/ActivityUtils$2;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;ILorg/andengine/util/progress/ProgressCallable;Lorg/andengine/util/call/Callback;Lorg/andengine/util/call/Callback;)V

    .line 232
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/andengine/util/ActivityUtils$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 233
    return-void
.end method

.method public static keepScreenOn(Landroid/app/Activity;)V
    .locals 2
    .parameter "pActivity"

    .prologue
    .line 71
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 72
    return-void
.end method

.method public static requestFullscreen(Landroid/app/Activity;)V
    .locals 2
    .parameter "pActivity"

    .prologue
    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 54
    .local v0, window:Landroid/view/Window;
    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 55
    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 56
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 57
    return-void
.end method

.method public static setScreenBrightness(Landroid/app/Activity;F)V
    .locals 2
    .parameter "pActivity"
    .parameter "pScreenBrightness"

    .prologue
    .line 64
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 65
    .local v0, window:Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 66
    .local v1, windowLayoutParams:Landroid/view/WindowManager$LayoutParams;
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 67
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 68
    return-void
.end method
