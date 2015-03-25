.class public Lorg/andengine/engine/Engine$EngineLock;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andengine/engine/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EngineLock"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x950a7e3cc23e81eL


# instance fields
.field final mDrawing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final mDrawingCondition:Ljava/util/concurrent/locks/Condition;


# direct methods
.method public constructor <init>(Z)V
    .locals 2
    .parameter "pFair"

    .prologue
    .line 894
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    .line 886
    invoke-virtual {p0}, Lorg/andengine/engine/Engine$EngineLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lorg/andengine/engine/Engine$EngineLock;->mDrawingCondition:Ljava/util/concurrent/locks/Condition;

    .line 887
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/andengine/engine/Engine$EngineLock;->mDrawing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 895
    return-void
.end method


# virtual methods
.method notifyCanDraw()V
    .locals 2

    .prologue
    .line 910
    iget-object v0, p0, Lorg/andengine/engine/Engine$EngineLock;->mDrawing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 911
    iget-object v0, p0, Lorg/andengine/engine/Engine$EngineLock;->mDrawingCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 912
    return-void
.end method

.method notifyCanUpdate()V
    .locals 2

    .prologue
    .line 915
    iget-object v0, p0, Lorg/andengine/engine/Engine$EngineLock;->mDrawing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 916
    iget-object v0, p0, Lorg/andengine/engine/Engine$EngineLock;->mDrawingCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 917
    return-void
.end method

.method waitUntilCanDraw()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 920
    :goto_0
    iget-object v0, p0, Lorg/andengine/engine/Engine$EngineLock;->mDrawing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 923
    return-void

    .line 921
    :cond_0
    iget-object v0, p0, Lorg/andengine/engine/Engine$EngineLock;->mDrawingCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V

    goto :goto_0
.end method

.method waitUntilCanUpdate()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 926
    :goto_0
    iget-object v0, p0, Lorg/andengine/engine/Engine$EngineLock;->mDrawing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 929
    return-void

    .line 927
    :cond_0
    iget-object v0, p0, Lorg/andengine/engine/Engine$EngineLock;->mDrawingCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V

    goto :goto_0
.end method
