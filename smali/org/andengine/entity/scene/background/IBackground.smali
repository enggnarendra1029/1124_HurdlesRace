.class public interface abstract Lorg/andengine/entity/scene/background/IBackground;
.super Ljava/lang/Object;
.source "IBackground.java"

# interfaces
.implements Lorg/andengine/engine/handler/IDrawHandler;
.implements Lorg/andengine/engine/handler/IUpdateHandler;


# virtual methods
.method public abstract clearBackgroundModifiers()V
.end method

.method public abstract isColorEnabled()Z
.end method

.method public abstract registerBackgroundModifier(Lorg/andengine/util/modifier/IModifier;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/modifier/IModifier",
            "<",
            "Lorg/andengine/entity/scene/background/IBackground;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setColor(FFF)V
.end method

.method public abstract setColor(FFFF)V
.end method

.method public abstract setColor(Lorg/andengine/util/color/Color;)V
.end method

.method public abstract setColorEnabled(Z)V
.end method

.method public abstract unregisterBackgroundModifier(Lorg/andengine/util/modifier/IModifier;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/modifier/IModifier",
            "<",
            "Lorg/andengine/entity/scene/background/IBackground;",
            ">;)Z"
        }
    .end annotation
.end method
