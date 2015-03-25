.class Lorg/andengine/input/touch/detector/ContinuousHoldDetector$1;
.super Ljava/lang/Object;
.source "ContinuousHoldDetector.java"

# interfaces
.implements Lorg/andengine/engine/handler/timer/ITimerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/andengine/input/touch/detector/ContinuousHoldDetector;-><init>(JFFLorg/andengine/input/touch/detector/HoldDetector$IHoldDetectorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/andengine/input/touch/detector/ContinuousHoldDetector;


# direct methods
.method constructor <init>(Lorg/andengine/input/touch/detector/ContinuousHoldDetector;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/andengine/input/touch/detector/ContinuousHoldDetector$1;->this$0:Lorg/andengine/input/touch/detector/ContinuousHoldDetector;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimePassed(Lorg/andengine/engine/handler/timer/TimerHandler;)V
    .locals 1
    .parameter "pTimerHandler"

    .prologue
    .line 49
    iget-object v0, p0, Lorg/andengine/input/touch/detector/ContinuousHoldDetector$1;->this$0:Lorg/andengine/input/touch/detector/ContinuousHoldDetector;

    invoke-virtual {v0}, Lorg/andengine/input/touch/detector/ContinuousHoldDetector;->fireListener()V

    .line 50
    return-void
.end method
