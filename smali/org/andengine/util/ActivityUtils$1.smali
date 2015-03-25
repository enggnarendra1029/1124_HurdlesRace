.class Lorg/andengine/util/ActivityUtils$1;
.super Landroid/os/AsyncTask;
.source "ActivityUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/andengine/util/ActivityUtils;->doAsync(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/andengine/util/call/Callable;Lorg/andengine/util/call/Callback;Lorg/andengine/util/call/Callback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mException:Ljava/lang/Exception;

.field private mPD:Landroid/app/ProgressDialog;

.field private final synthetic val$pCallable:Lorg/andengine/util/call/Callable;

.field private final synthetic val$pCallback:Lorg/andengine/util/call/Callback;

.field private final synthetic val$pCancelable:Z

.field private final synthetic val$pContext:Landroid/content/Context;

.field private final synthetic val$pExceptionCallback:Lorg/andengine/util/call/Callback;

.field private final synthetic val$pMessage:Ljava/lang/CharSequence;

.field private final synthetic val$pTitle:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLorg/andengine/util/call/Callable;Lorg/andengine/util/call/Callback;Lorg/andengine/util/call/Callback;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/andengine/util/ActivityUtils$1;->val$pContext:Landroid/content/Context;

    iput-object p2, p0, Lorg/andengine/util/ActivityUtils$1;->val$pTitle:Ljava/lang/CharSequence;

    iput-object p3, p0, Lorg/andengine/util/ActivityUtils$1;->val$pMessage:Ljava/lang/CharSequence;

    iput-boolean p4, p0, Lorg/andengine/util/ActivityUtils$1;->val$pCancelable:Z

    iput-object p5, p0, Lorg/andengine/util/ActivityUtils$1;->val$pCallable:Lorg/andengine/util/call/Callable;

    iput-object p6, p0, Lorg/andengine/util/ActivityUtils$1;->val$pCallback:Lorg/andengine/util/call/Callback;

    iput-object p7, p0, Lorg/andengine/util/ActivityUtils$1;->val$pExceptionCallback:Lorg/andengine/util/call/Callback;

    .line 103
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/andengine/util/ActivityUtils$1;->mException:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/andengine/util/ActivityUtils$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 2
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 125
    :try_start_0
    iget-object v1, p0, Lorg/andengine/util/ActivityUtils$1;->val$pCallable:Lorg/andengine/util/call/Callable;

    invoke-interface {v1}, Lorg/andengine/util/call/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 129
    :goto_0
    return-object v1

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, e:Ljava/lang/Exception;
    iput-object v0, p0, Lorg/andengine/util/ActivityUtils$1;->mException:Ljava/lang/Exception;

    .line 129
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p1, result:Ljava/lang/Object;,"TT;"
    :try_start_0
    iget-object v1, p0, Lorg/andengine/util/ActivityUtils$1;->mPD:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    invoke-virtual {p0}, Lorg/andengine/util/ActivityUtils$1;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    new-instance v1, Lorg/andengine/util/exception/CancelledException;

    invoke-direct {v1}, Lorg/andengine/util/exception/CancelledException;-><init>()V

    iput-object v1, p0, Lorg/andengine/util/ActivityUtils$1;->mException:Ljava/lang/Exception;

    .line 144
    :cond_0
    iget-object v1, p0, Lorg/andengine/util/ActivityUtils$1;->mException:Ljava/lang/Exception;

    if-nez v1, :cond_1

    .line 145
    iget-object v1, p0, Lorg/andengine/util/ActivityUtils$1;->val$pCallback:Lorg/andengine/util/call/Callback;

    invoke-interface {v1, p1}, Lorg/andengine/util/call/Callback;->onCallback(Ljava/lang/Object;)V

    .line 154
    :goto_1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 155
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Error"

    invoke-static {v1, v0}, Lorg/andengine/util/debug/Debug;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 147
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    iget-object v1, p0, Lorg/andengine/util/ActivityUtils$1;->val$pExceptionCallback:Lorg/andengine/util/call/Callback;

    if-nez v1, :cond_2

    .line 148
    const-string v1, "Error"

    iget-object v2, p0, Lorg/andengine/util/ActivityUtils$1;->mException:Ljava/lang/Exception;

    invoke-static {v1, v2}, Lorg/andengine/util/debug/Debug;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 150
    :cond_2
    iget-object v1, p0, Lorg/andengine/util/ActivityUtils$1;->val$pExceptionCallback:Lorg/andengine/util/call/Callback;

    iget-object v2, p0, Lorg/andengine/util/ActivityUtils$1;->mException:Ljava/lang/Exception;

    invoke-interface {v1, v2}, Lorg/andengine/util/call/Callback;->onCallback(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public onPreExecute()V
    .locals 5

    .prologue
    .line 109
    iget-object v0, p0, Lorg/andengine/util/ActivityUtils$1;->val$pContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/andengine/util/ActivityUtils$1;->val$pTitle:Ljava/lang/CharSequence;

    iget-object v2, p0, Lorg/andengine/util/ActivityUtils$1;->val$pMessage:Ljava/lang/CharSequence;

    const/4 v3, 0x1

    iget-boolean v4, p0, Lorg/andengine/util/ActivityUtils$1;->val$pCancelable:Z

    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lorg/andengine/util/ActivityUtils$1;->mPD:Landroid/app/ProgressDialog;

    .line 110
    iget-boolean v0, p0, Lorg/andengine/util/ActivityUtils$1;->val$pCancelable:Z

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lorg/andengine/util/ActivityUtils$1;->mPD:Landroid/app/ProgressDialog;

    new-instance v1, Lorg/andengine/util/ActivityUtils$1$1;

    iget-object v2, p0, Lorg/andengine/util/ActivityUtils$1;->val$pExceptionCallback:Lorg/andengine/util/call/Callback;

    invoke-direct {v1, p0, v2}, Lorg/andengine/util/ActivityUtils$1$1;-><init>(Lorg/andengine/util/ActivityUtils$1;Lorg/andengine/util/call/Callback;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 119
    :cond_0
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 120
    return-void
.end method
