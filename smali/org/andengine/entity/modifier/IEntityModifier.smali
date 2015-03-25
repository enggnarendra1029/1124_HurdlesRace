.class public interface abstract Lorg/andengine/entity/modifier/IEntityModifier;
.super Ljava/lang/Object;
.source "IEntityModifier.java"

# interfaces
.implements Lorg/andengine/util/modifier/IModifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;,
        Lorg/andengine/entity/modifier/IEntityModifier$IEntityModifierMatcher;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/andengine/util/modifier/IModifier",
        "<",
        "Lorg/andengine/entity/IEntity;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract deepCopy()Lorg/andengine/entity/modifier/IEntityModifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation
.end method
