.class public abstract Lorg/andengine/input/touch/detector/BaseDetector;
.super Ljava/lang/Object;
.source "BaseDetector.java"

# interfaces
.implements Lorg/andengine/entity/scene/IOnSceneTouchListener;


# instance fields
.field private mEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/andengine/input/touch/detector/BaseDetector;->mEnabled:Z

    .line 14
    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lorg/andengine/input/touch/detector/BaseDetector;->mEnabled:Z

    return v0
.end method

.method protected abstract onManagedTouchEvent(Lorg/andengine/input/touch/TouchEvent;)Z
.end method

.method public onSceneTouchEvent(Lorg/andengine/entity/scene/Scene;Lorg/andengine/input/touch/TouchEvent;)Z
    .locals 1
    .parameter "pScene"
    .parameter "pSceneTouchEvent"

    .prologue
    .line 51
    invoke-virtual {p0, p2}, Lorg/andengine/input/touch/detector/BaseDetector;->onTouchEvent(Lorg/andengine/input/touch/TouchEvent;)Z

    move-result v0

    return v0
.end method

.method public final onTouchEvent(Lorg/andengine/input/touch/TouchEvent;)Z
    .locals 1
    .parameter "pSceneTouchEvent"

    .prologue
    .line 55
    iget-boolean v0, p0, Lorg/andengine/input/touch/detector/BaseDetector;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0, p1}, Lorg/andengine/input/touch/detector/BaseDetector;->onManagedTouchEvent(Lorg/andengine/input/touch/TouchEvent;)Z

    move-result v0

    .line 58
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract reset()V
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "pEnabled"

    .prologue
    .line 38
    iput-boolean p1, p0, Lorg/andengine/input/touch/detector/BaseDetector;->mEnabled:Z

    .line 39
    return-void
.end method
