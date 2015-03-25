.class public Lorg/andengine/util/modifier/util/ModifierUtils;
.super Ljava/lang/Object;
.source "ModifierUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSequenceDurationOfModifier([Lorg/andengine/util/modifier/IModifier;)F
    .locals 3
    .parameter "pModifiers"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/andengine/util/modifier/IModifier",
            "<*>;)F"
        }
    .end annotation

    .prologue
    .line 38
    const/4 v0, 0x1

    .line 40
    .local v0, duration:F
    array-length v2, p0

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-gez v1, :cond_0

    .line 44
    return v0

    .line 41
    :cond_0
    aget-object v2, p0, v1

    invoke-interface {v2}, Lorg/andengine/util/modifier/IModifier;->getDuration()F

    move-result v2

    add-float/2addr v0, v2

    .line 40
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method
