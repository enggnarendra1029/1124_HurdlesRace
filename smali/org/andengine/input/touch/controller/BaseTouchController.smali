.class public abstract Lorg/andengine/input/touch/controller/BaseTouchController;
.super Ljava/lang/Object;
.source "BaseTouchController.java"

# interfaces
.implements Lorg/andengine/input/touch/controller/ITouchController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/andengine/input/touch/controller/BaseTouchController$TouchEventRunnablePoolItem;
    }
.end annotation


# instance fields
.field private mTouchEventCallback:Lorg/andengine/input/touch/controller/ITouchEventCallback;

.field private final mTouchEventRunnablePoolUpdateHandler:Lorg/andengine/util/adt/pool/RunnablePoolUpdateHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/andengine/util/adt/pool/RunnablePoolUpdateHandler",
            "<",
            "Lorg/andengine/input/touch/controller/BaseTouchController$TouchEventRunnablePoolItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lorg/andengine/input/touch/controller/BaseTouchController$1;

    invoke-direct {v0, p0}, Lorg/andengine/input/touch/controller/BaseTouchController$1;-><init>(Lorg/andengine/input/touch/controller/BaseTouchController;)V

    iput-object v0, p0, Lorg/andengine/input/touch/controller/BaseTouchController;->mTouchEventRunnablePoolUpdateHandler:Lorg/andengine/util/adt/pool/RunnablePoolUpdateHandler;

    .line 40
    return-void
.end method

.method static synthetic access$0(Lorg/andengine/input/touch/controller/BaseTouchController;)Lorg/andengine/input/touch/controller/ITouchEventCallback;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lorg/andengine/input/touch/controller/BaseTouchController;->mTouchEventCallback:Lorg/andengine/input/touch/controller/ITouchEventCallback;

    return-object v0
.end method


# virtual methods
.method protected fireTouchEvent(FFIILandroid/view/MotionEvent;)V
    .locals 3
    .parameter "pX"
    .parameter "pY"
    .parameter "pAction"
    .parameter "pPointerID"
    .parameter "pMotionEvent"

    .prologue
    .line 66
    invoke-static {p5}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-static {p1, p2, p3, p4, v2}, Lorg/andengine/input/touch/TouchEvent;->obtain(FFIILandroid/view/MotionEvent;)Lorg/andengine/input/touch/TouchEvent;

    move-result-object v0

    .line 68
    .local v0, touchEvent:Lorg/andengine/input/touch/TouchEvent;
    iget-object v2, p0, Lorg/andengine/input/touch/controller/BaseTouchController;->mTouchEventRunnablePoolUpdateHandler:Lorg/andengine/util/adt/pool/RunnablePoolUpdateHandler;

    invoke-virtual {v2}, Lorg/andengine/util/adt/pool/RunnablePoolUpdateHandler;->obtainPoolItem()Lorg/andengine/util/adt/pool/PoolItem;

    move-result-object v1

    check-cast v1, Lorg/andengine/input/touch/controller/BaseTouchController$TouchEventRunnablePoolItem;

    .line 69
    .local v1, touchEventRunnablePoolItem:Lorg/andengine/input/touch/controller/BaseTouchController$TouchEventRunnablePoolItem;
    invoke-virtual {v1, v0}, Lorg/andengine/input/touch/controller/BaseTouchController$TouchEventRunnablePoolItem;->set(Lorg/andengine/input/touch/TouchEvent;)V

    .line 70
    iget-object v2, p0, Lorg/andengine/input/touch/controller/BaseTouchController;->mTouchEventRunnablePoolUpdateHandler:Lorg/andengine/util/adt/pool/RunnablePoolUpdateHandler;

    invoke-virtual {v2, v1}, Lorg/andengine/util/adt/pool/RunnablePoolUpdateHandler;->postPoolItem(Lorg/andengine/util/adt/pool/PoolItem;)V

    .line 71
    return-void
.end method

.method public onUpdate(F)V
    .locals 1
    .parameter "pSecondsElapsed"

    .prologue
    .line 62
    iget-object v0, p0, Lorg/andengine/input/touch/controller/BaseTouchController;->mTouchEventRunnablePoolUpdateHandler:Lorg/andengine/util/adt/pool/RunnablePoolUpdateHandler;

    invoke-virtual {v0, p1}, Lorg/andengine/util/adt/pool/RunnablePoolUpdateHandler;->onUpdate(F)V

    .line 63
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/andengine/input/touch/controller/BaseTouchController;->mTouchEventRunnablePoolUpdateHandler:Lorg/andengine/util/adt/pool/RunnablePoolUpdateHandler;

    invoke-virtual {v0}, Lorg/andengine/util/adt/pool/RunnablePoolUpdateHandler;->reset()V

    .line 58
    return-void
.end method

.method public setTouchEventCallback(Lorg/andengine/input/touch/controller/ITouchEventCallback;)V
    .locals 0
    .parameter "pTouchEventCallback"

    .prologue
    .line 48
    iput-object p1, p0, Lorg/andengine/input/touch/controller/BaseTouchController;->mTouchEventCallback:Lorg/andengine/input/touch/controller/ITouchEventCallback;

    .line 49
    return-void
.end method
