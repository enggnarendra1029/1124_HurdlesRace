.class public interface abstract Lorg/andengine/util/modifier/IModifier;
.super Ljava/lang/Object;
.source "IModifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;,
        Lorg/andengine/util/modifier/IModifier$IModifierListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final MODIFIER_COMPARATOR_DURATION_DESCENDING:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/andengine/util/modifier/IModifier",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lorg/andengine/util/modifier/IModifier$1;

    invoke-direct {v0}, Lorg/andengine/util/modifier/IModifier$1;-><init>()V

    sput-object v0, Lorg/andengine/util/modifier/IModifier;->MODIFIER_COMPARATOR_DURATION_DESCENDING:Ljava/util/Comparator;

    .line 34
    return-void
.end method


# virtual methods
.method public abstract addModifierListener(Lorg/andengine/util/modifier/IModifier$IModifierListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/modifier/IModifier$IModifierListener",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method public abstract deepCopy()Lorg/andengine/util/modifier/IModifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/andengine/util/modifier/IModifier",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation
.end method

.method public abstract getDuration()F
.end method

.method public abstract getSecondsElapsed()F
.end method

.method public abstract isAutoUnregisterWhenFinished()Z
.end method

.method public abstract isFinished()Z
.end method

.method public abstract onUpdate(FLjava/lang/Object;)F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FTT;)F"
        }
    .end annotation
.end method

.method public abstract removeModifierListener(Lorg/andengine/util/modifier/IModifier$IModifierListener;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/modifier/IModifier$IModifierListener",
            "<TT;>;)Z"
        }
    .end annotation
.end method

.method public abstract reset()V
.end method

.method public abstract setAutoUnregisterWhenFinished(Z)V
.end method
