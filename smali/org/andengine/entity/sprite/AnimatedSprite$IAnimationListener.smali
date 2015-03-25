.class public interface abstract Lorg/andengine/entity/sprite/AnimatedSprite$IAnimationListener;
.super Ljava/lang/Object;
.source "AnimatedSprite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andengine/entity/sprite/AnimatedSprite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IAnimationListener"
.end annotation


# virtual methods
.method public abstract onAnimationFinished(Lorg/andengine/entity/sprite/AnimatedSprite;)V
.end method

.method public abstract onAnimationFrameChanged(Lorg/andengine/entity/sprite/AnimatedSprite;II)V
.end method

.method public abstract onAnimationLoopFinished(Lorg/andengine/entity/sprite/AnimatedSprite;II)V
.end method

.method public abstract onAnimationStarted(Lorg/andengine/entity/sprite/AnimatedSprite;I)V
.end method
