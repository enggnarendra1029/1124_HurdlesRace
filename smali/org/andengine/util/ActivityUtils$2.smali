.class Lorg/andengine/util/ActivityUtils$2;
.super Landroid/os/AsyncTask;
.source "ActivityUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/andengine/util/ActivityUtils;->doProgressAsync(Landroid/content/Context;Ljava/lang/CharSequence;ILorg/andengine/util/progress/ProgressCallable;Lorg/andengine/util/call/Callback;Lorg/andengine/util/call/Callback;)V
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
        "Ljava/lang/Integer;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mException:Ljava/lang/Exception;

.field private mPD:Landroid/app/ProgressDialog;

.field private final synthetic val$pCallable:Lorg/andengine/util/progress/ProgressCallable;

.field private final synthetic val$pCallback:Lorg/andengine/util/call/Callback;

.field private final synthetic val$pContext:Landroid/content/Context;

.field private final synthetic val$pExceptionCallback:Lorg/andengine/util/call/Callback;

.field private final synthetic val$pIconResourceID:I

.field private final synthetic val$pTitle:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;ILorg/andengine/util/progress/ProgressCallable;Lorg/andengine/util/call/Callback;Lorg/andengine/util/call/Callback;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/andengine/util/ActivityUtils$2;->val$pContext:Landroid/content/Context;

    iput-object p2, p0, Lorg/andengine/util/ActivityUtils$2;->val$pTitle:Ljava/lang/CharSequence;

    iput p3, p0, Lorg/andengine/util/ActivityUtils$2;->val$pIconResourceID:I

    iput-object p4, p0, Lorg/andengine/util/ActivityUtils$2;->val$pCallable:Lorg/andengine/util/progress/ProgressCallable;

    iput-object p5, p0, Lorg/andengine/util/ActivityUtils$2;->val$pCallback:Lorg/andengine/util/call/Callback;

    iput-object p6, p0, Lorg/andengine/util/ActivityUtils$2;->val$pExceptionCallback:Lorg/andengine/util/call/Callback;

    .line 172
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/andengine/util/ActivityUtils$2;->mException:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/andengine/util/ActivityUtils$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 3
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 190
    :try_start_0
    iget-object v1, p0, Lorg/andengine/util/ActivityUtils$2;->val$pCallable:Lorg/andengine/util/progress/ProgressCallable;

    new-instance v2, Lorg/andengine/util/ActivityUtils$2$1;

    invoke-direct {v2, p0}, Lorg/andengine/util/ActivityUtils$2$1;-><init>(Lorg/andengine/util/ActivityUtils$2;)V

    invoke-interface {v1, v2}, Lorg/andengine/util/progress/ProgressCallable;->call(Lorg/andengine/util/progress/IProgressListener;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 199
    :goto_0
    return-object v1

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, e:Ljava/lang/Exception;
    iput-object v0, p0, Lorg/andengine/util/ActivityUtils$2;->mException:Ljava/lang/Exception;

    .line 199
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
    .line 210
    .local p1, result:Ljava/lang/Object;,"TT;"
    :try_start_0
    iget-object v1, p0, Lorg/andengine/util/ActivityUtils$2;->mPD:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :goto_0
    invoke-virtual {p0}, Lorg/andengine/util/ActivityUtils$2;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    new-instance v1, Lorg/andengine/util/exception/CancelledException;

    invoke-direct {v1}, Lorg/andengine/util/exception/CancelledException;-><init>()V

    iput-object v1, p0, Lorg/andengine/util/ActivityUtils$2;->mException:Ljava/lang/Exception;

    .line 220
    :cond_0
    iget-object v1, p0, Lorg/andengine/util/ActivityUtils$2;->mException:Ljava/lang/Exception;

    if-nez v1, :cond_1

    .line 221
    iget-object v1, p0, Lorg/andengine/util/ActivityUtils$2;->val$pCallback:Lorg/andengine/util/call/Callback;

    invoke-interface {v1, p1}, Lorg/andengine/util/call/Callback;->onCallback(Ljava/lang/Object;)V

    .line 230
    :goto_1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 231
    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Error"

    invoke-static {v1, v0}, Lorg/andengine/util/debug/Debug;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 223
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    iget-object v1, p0, Lorg/andengine/util/ActivityUtils$2;->val$pExceptionCallback:Lorg/andengine/util/call/Callback;

    if-nez v1, :cond_2

    .line 224
    const-string v1, "Error"

    iget-object v2, p0, Lorg/andengine/util/ActivityUtils$2;->mException:Ljava/lang/Exception;

    invoke-static {v1, v2}, Lorg/andengine/util/debug/Debug;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 226
    :cond_2
    iget-object v1, p0, Lorg/andengine/util/ActivityUtils$2;->val$pExceptionCallback:Lorg/andengine/util/call/Callback;

    iget-object v2, p0, Lorg/andengine/util/ActivityUtils$2;->mException:Ljava/lang/Exception;

    invoke-interface {v1, v2}, Lorg/andengine/util/call/Callback;->onCallback(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 178
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lorg/andengine/util/ActivityUtils$2;->val$pContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/andengine/util/ActivityUtils$2;->mPD:Landroid/app/ProgressDialog;

    .line 179
    iget-object v0, p0, Lorg/andengine/util/ActivityUtils$2;->mPD:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lorg/andengine/util/ActivityUtils$2;->val$pTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v0, p0, Lorg/andengine/util/ActivityUtils$2;->mPD:Landroid/app/ProgressDialog;

    iget v1, p0, Lorg/andengine/util/ActivityUtils$2;->val$pIconResourceID:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIcon(I)V

    .line 181
    iget-object v0, p0, Lorg/andengine/util/ActivityUtils$2;->mPD:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 182
    iget-object v0, p0, Lorg/andengine/util/ActivityUtils$2;->mPD:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 183
    iget-object v0, p0, Lorg/andengine/util/ActivityUtils$2;->mPD:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 184
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 185
    return-void
.end method

.method public varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 204
    iget-object v0, p0, Lorg/andengine/util/ActivityUtils$2;->mPD:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 205
    return-void
.end method

.method public bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lorg/andengine/util/ActivityUtils$2;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
