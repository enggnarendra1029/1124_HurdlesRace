.class public Lorg/andengine/engine/camera/hud/HUD;
.super Lorg/andengine/entity/scene/CameraScene;
.source "HUD.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/andengine/entity/scene/CameraScene;-><init>()V

    .line 33
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/andengine/engine/camera/hud/HUD;->setBackgroundEnabled(Z)V

    .line 34
    return-void
.end method
