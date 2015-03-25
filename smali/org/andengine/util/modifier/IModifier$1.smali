.class Lorg/andengine/util/modifier/IModifier$1;
.super Ljava/lang/Object;
.source "IModifier.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andengine/util/modifier/IModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/andengine/util/modifier/IModifier",
        "<*>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lorg/andengine/util/modifier/IModifier;

    check-cast p2, Lorg/andengine/util/modifier/IModifier;

    invoke-virtual {p0, p1, p2}, Lorg/andengine/util/modifier/IModifier$1;->compare(Lorg/andengine/util/modifier/IModifier;Lorg/andengine/util/modifier/IModifier;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/andengine/util/modifier/IModifier;Lorg/andengine/util/modifier/IModifier;)I
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/modifier/IModifier",
            "<*>;",
            "Lorg/andengine/util/modifier/IModifier",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 23
    .local p1, pModifierA:Lorg/andengine/util/modifier/IModifier;,"Lorg/andengine/util/modifier/IModifier<*>;"
    .local p2, pModifierB:Lorg/andengine/util/modifier/IModifier;,"Lorg/andengine/util/modifier/IModifier<*>;"
    invoke-interface {p1}, Lorg/andengine/util/modifier/IModifier;->getDuration()F

    move-result v0

    .line 24
    .local v0, durationA:F
    invoke-interface {p2}, Lorg/andengine/util/modifier/IModifier;->getDuration()F

    move-result v1

    .line 26
    .local v1, durationB:F
    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    .line 27
    const/4 v2, 0x1

    .line 31
    :goto_0
    return v2

    .line 28
    :cond_0
    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    .line 29
    const/4 v2, -0x1

    goto :goto_0

    .line 31
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
