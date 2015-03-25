.class public Lorg/andengine/engine/Engine$UpdateThread;
.super Ljava/lang/Thread;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andengine/engine/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateThread"
.end annotation


# instance fields
.field private mEngine:Lorg/andengine/engine/Engine;

.field private final mRunnableHandler:Lorg/andengine/engine/handler/runnable/RunnableHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 799
    const-class v0, Lorg/andengine/engine/Engine$UpdateThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 792
    new-instance v0, Lorg/andengine/engine/handler/runnable/RunnableHandler;

    invoke-direct {v0}, Lorg/andengine/engine/handler/runnable/RunnableHandler;-><init>()V

    iput-object v0, p0, Lorg/andengine/engine/Engine$UpdateThread;->mRunnableHandler:Lorg/andengine/engine/handler/runnable/RunnableHandler;

    .line 800
    return-void
.end method


# virtual methods
.method public postRunnable(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "pRunnable"

    .prologue
    .line 835
    iget-object v0, p0, Lorg/andengine/engine/Engine$UpdateThread;->mRunnableHandler:Lorg/andengine/engine/handler/runnable/RunnableHandler;

    invoke-virtual {v0, p1}, Lorg/andengine/engine/handler/runnable/RunnableHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 836
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 816
    iget-object v1, p0, Lorg/andengine/engine/Engine$UpdateThread;->mEngine:Lorg/andengine/engine/Engine;

    invoke-virtual {v1}, Lorg/andengine/engine/Engine;->getEngineOptions()Lorg/andengine/engine/options/EngineOptions;

    move-result-object v1

    invoke-virtual {v1}, Lorg/andengine/engine/options/EngineOptions;->getUpdateThreadPriority()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 819
    :goto_0
    :try_start_0
    iget-object v1, p0, Lorg/andengine/engine/Engine$UpdateThread;->mRunnableHandler:Lorg/andengine/engine/handler/runnable/RunnableHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/andengine/engine/handler/runnable/RunnableHandler;->onUpdate(F)V

    .line 820
    iget-object v1, p0, Lorg/andengine/engine/Engine$UpdateThread;->mEngine:Lorg/andengine/engine/Engine;

    invoke-virtual {v1}, Lorg/andengine/engine/Engine;->onTickUpdate()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 822
    :catch_0
    move-exception v0

    .line 824
    .local v0, e:Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " interrupted. Don\'t worry - this "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is most likely expected!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/andengine/util/debug/Debug;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 826
    invoke-virtual {p0}, Lorg/andengine/engine/Engine$UpdateThread;->interrupt()V

    .line 828
    return-void
.end method

.method public setEngine(Lorg/andengine/engine/Engine;)V
    .locals 0
    .parameter "pEngine"

    .prologue
    .line 807
    iput-object p1, p0, Lorg/andengine/engine/Engine$UpdateThread;->mEngine:Lorg/andengine/engine/Engine;

    .line 808
    return-void
.end method
