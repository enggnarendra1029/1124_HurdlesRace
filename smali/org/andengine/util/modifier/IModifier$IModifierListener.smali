.class public interface abstract Lorg/andengine/util/modifier/IModifier$IModifierListener;
.super Ljava/lang/Object;
.source "IModifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andengine/util/modifier/IModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IModifierListener"
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
.method public abstract onModifierFinished(Lorg/andengine/util/modifier/IModifier;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/modifier/IModifier",
            "<TT;>;TT;)V"
        }
    .end annotation
.end method

.method public abstract onModifierStarted(Lorg/andengine/util/modifier/IModifier;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/modifier/IModifier",
            "<TT;>;TT;)V"
        }
    .end annotation
.end method
