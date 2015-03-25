.class public interface abstract Lorg/andengine/entity/util/ScreenGrabber$IScreenGrabberCallback;
.super Ljava/lang/Object;
.source "ScreenGrabber.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andengine/entity/util/ScreenGrabber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IScreenGrabberCallback"
.end annotation


# virtual methods
.method public abstract onScreenGrabFailed(Ljava/lang/Exception;)V
.end method

.method public abstract onScreenGrabbed(Landroid/graphics/Bitmap;)V
.end method
