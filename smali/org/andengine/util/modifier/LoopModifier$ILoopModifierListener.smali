.class public interface abstract Lorg/andengine/util/modifier/LoopModifier$ILoopModifierListener;
.super Ljava/lang/Object;
.source "LoopModifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andengine/util/modifier/LoopModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ILoopModifierListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onLoopFinished(Lorg/andengine/util/modifier/LoopModifier;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/modifier/LoopModifier",
            "<TT;>;II)V"
        }
    .end annotation
.end method

.method public abstract onLoopStarted(Lorg/andengine/util/modifier/LoopModifier;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/modifier/LoopModifier",
            "<TT;>;II)V"
        }
    .end annotation
.end method
