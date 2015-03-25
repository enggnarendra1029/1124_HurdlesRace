.class public interface abstract Lorg/andengine/entity/scene/ITouchArea;
.super Ljava/lang/Object;
.source "ITouchArea.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/andengine/entity/scene/ITouchArea$ITouchAreaMatcher;
    }
.end annotation


# virtual methods
.method public abstract contains(FF)Z
.end method

.method public abstract convertLocalToSceneCoordinates(FF)[F
.end method

.method public abstract convertSceneToLocalCoordinates(FF)[F
.end method

.method public abstract onAreaTouched(Lorg/andengine/input/touch/TouchEvent;FF)Z
.end method
