.class public interface abstract Lorg/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener;
.super Ljava/lang/Object;
.source "SequenceModifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andengine/util/modifier/SequenceModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ISubSequenceModifierListener"
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
.method public abstract onSubSequenceFinished(Lorg/andengine/util/modifier/IModifier;Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/modifier/IModifier",
            "<TT;>;TT;I)V"
        }
    .end annotation
.end method

.method public abstract onSubSequenceStarted(Lorg/andengine/util/modifier/IModifier;Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/modifier/IModifier",
            "<TT;>;TT;I)V"
        }
    .end annotation
.end method
