.class public interface abstract Lorg/andengine/input/touch/detector/HoldDetector$IHoldDetectorListener;
.super Ljava/lang/Object;
.source "HoldDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andengine/input/touch/detector/HoldDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IHoldDetectorListener"
.end annotation


# virtual methods
.method public abstract onHold(Lorg/andengine/input/touch/detector/HoldDetector;JIFF)V
.end method

.method public abstract onHoldFinished(Lorg/andengine/input/touch/detector/HoldDetector;JIFF)V
.end method

.method public abstract onHoldStarted(Lorg/andengine/input/touch/detector/HoldDetector;IFF)V
.end method
