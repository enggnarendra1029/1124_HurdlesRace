.class public Lorg/andengine/entity/modifier/FadeOutModifier;
.super Lorg/andengine/entity/modifier/AlphaModifier;
.source "FadeOutModifier.java"


# direct methods
.method public constructor <init>(F)V
    .locals 3
    .parameter "pDuration"

    .prologue
    .line 28
    const/high16 v0, 0x3f80

    const/4 v1, 0x0

    invoke-static {}, Lorg/andengine/util/modifier/ease/EaseLinear;->getInstance()Lorg/andengine/util/modifier/ease/EaseLinear;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/andengine/entity/modifier/AlphaModifier;-><init>(FFFLorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 29
    return-void
.end method

.method public constructor <init>(FLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V
    .locals 6
    .parameter "pDuration"
    .parameter "pEntityModifierListener"

    .prologue
    .line 36
    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    invoke-static {}, Lorg/andengine/util/modifier/ease/EaseLinear;->getInstance()Lorg/andengine/util/modifier/ease/EaseLinear;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/andengine/entity/modifier/AlphaModifier;-><init>(FFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 37
    return-void
.end method

.method public constructor <init>(FLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 6
    .parameter "pDuration"
    .parameter "pEntityModifierListener"
    .parameter "pEaseFunction"

    .prologue
    .line 40
    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/andengine/entity/modifier/AlphaModifier;-><init>(FFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 41
    return-void
.end method

.method public constructor <init>(FLorg/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 2
    .parameter "pDuration"
    .parameter "pEaseFunction"

    .prologue
    .line 32
    const/high16 v0, 0x3f80

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lorg/andengine/entity/modifier/AlphaModifier;-><init>(FFFLorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 33
    return-void
.end method

.method protected constructor <init>(Lorg/andengine/entity/modifier/FadeOutModifier;)V
    .locals 0
    .parameter "pFadeOutModifier"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lorg/andengine/entity/modifier/AlphaModifier;-><init>(Lorg/andengine/entity/modifier/AlphaModifier;)V

    .line 45
    return-void
.end method


# virtual methods
.method public bridge synthetic deepCopy()Lorg/andengine/entity/modifier/AlphaModifier;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/entity/modifier/FadeOutModifier;->deepCopy()Lorg/andengine/entity/modifier/FadeOutModifier;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lorg/andengine/entity/modifier/FadeOutModifier;
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lorg/andengine/entity/modifier/FadeOutModifier;

    invoke-direct {v0, p0}, Lorg/andengine/entity/modifier/FadeOutModifier;-><init>(Lorg/andengine/entity/modifier/FadeOutModifier;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/andengine/entity/modifier/IEntityModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/entity/modifier/FadeOutModifier;->deepCopy()Lorg/andengine/entity/modifier/FadeOutModifier;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/andengine/util/modifier/IModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/entity/modifier/FadeOutModifier;->deepCopy()Lorg/andengine/entity/modifier/FadeOutModifier;

    move-result-object v0

    return-object v0
.end method
