.class public interface abstract Lorg/andengine/entity/scene/background/modifier/IBackgroundModifier;
.super Ljava/lang/Object;
.source "IBackgroundModifier.java"

# interfaces
.implements Lorg/andengine/util/modifier/IModifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/andengine/entity/scene/background/modifier/IBackgroundModifier$IBackgroundModifierListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/andengine/util/modifier/IModifier",
        "<",
        "Lorg/andengine/entity/scene/background/IBackground;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract deepCopy()Lorg/andengine/entity/scene/background/modifier/IBackgroundModifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation
.end method
