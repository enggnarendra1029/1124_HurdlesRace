.class Lorg/andengine/input/touch/controller/BaseTouchController$TouchEventRunnablePoolItem;
.super Lorg/andengine/util/adt/pool/RunnablePoolItem;
.source "BaseTouchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andengine/input/touch/controller/BaseTouchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TouchEventRunnablePoolItem"
.end annotation


# instance fields
.field private mTouchEvent:Lorg/andengine/input/touch/TouchEvent;

.field final synthetic this$0:Lorg/andengine/input/touch/controller/BaseTouchController;


# direct methods
.method constructor <init>(Lorg/andengine/input/touch/controller/BaseTouchController;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lorg/andengine/input/touch/controller/BaseTouchController$TouchEventRunnablePoolItem;->this$0:Lorg/andengine/input/touch/controller/BaseTouchController;

    invoke-direct {p0}, Lorg/andengine/util/adt/pool/RunnablePoolItem;-><init>()V

    return-void
.end method


# virtual methods
.method protected onRecycle()V
    .locals 2

    .prologue
    .line 107
    invoke-super {p0}, Lorg/andengine/util/adt/pool/RunnablePoolItem;->onRecycle()V

    .line 108
    iget-object v0, p0, Lorg/andengine/input/touch/controller/BaseTouchController$TouchEventRunnablePoolItem;->mTouchEvent:Lorg/andengine/input/touch/TouchEvent;

    .line 109
    .local v0, touchEvent:Lorg/andengine/input/touch/TouchEvent;
    invoke-virtual {v0}, Lorg/andengine/input/touch/TouchEvent;->getMotionEvent()Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 110
    invoke-virtual {v0}, Lorg/andengine/input/touch/TouchEvent;->recycle()V

    .line 111
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lorg/andengine/input/touch/controller/BaseTouchController$TouchEventRunnablePoolItem;->this$0:Lorg/andengine/input/touch/controller/BaseTouchController;

    #getter for: Lorg/andengine/input/touch/controller/BaseTouchController;->mTouchEventCallback:Lorg/andengine/input/touch/controller/ITouchEventCallback;
    invoke-static {v0}, Lorg/andengine/input/touch/controller/BaseTouchController;->access$0(Lorg/andengine/input/touch/controller/BaseTouchController;)Lorg/andengine/input/touch/controller/ITouchEventCallback;

    move-result-object v0

    iget-object v1, p0, Lorg/andengine/input/touch/controller/BaseTouchController$TouchEventRunnablePoolItem;->mTouchEvent:Lorg/andengine/input/touch/TouchEvent;

    invoke-interface {v0, v1}, Lorg/andengine/input/touch/controller/ITouchEventCallback;->onTouchEvent(Lorg/andengine/input/touch/TouchEvent;)Z

    .line 103
    return-void
.end method

.method public set(Lorg/andengine/input/touch/TouchEvent;)V
    .locals 0
    .parameter "pTouchEvent"

    .prologue
    .line 93
    iput-object p1, p0, Lorg/andengine/input/touch/controller/BaseTouchController$TouchEventRunnablePoolItem;->mTouchEvent:Lorg/andengine/input/touch/TouchEvent;

    .line 94
    return-void
.end method
