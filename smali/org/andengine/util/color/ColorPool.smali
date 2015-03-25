.class public Lorg/andengine/util/color/ColorPool;
.super Lorg/andengine/util/adt/pool/GenericPool;
.source "ColorPool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/andengine/util/adt/pool/GenericPool",
        "<",
        "Lorg/andengine/util/color/Color;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lorg/andengine/util/adt/pool/GenericPool;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic onAllocatePoolItem()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/util/color/ColorPool;->onAllocatePoolItem()Lorg/andengine/util/color/Color;

    move-result-object v0

    return-object v0
.end method

.method protected onAllocatePoolItem()Lorg/andengine/util/color/Color;
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lorg/andengine/util/color/Color;

    sget-object v1, Lorg/andengine/util/color/Color;->WHITE:Lorg/andengine/util/color/Color;

    invoke-direct {v0, v1}, Lorg/andengine/util/color/Color;-><init>(Lorg/andengine/util/color/Color;)V

    return-object v0
.end method

.method protected bridge synthetic onHandleRecycleItem(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lorg/andengine/util/color/Color;

    invoke-virtual {p0, p1}, Lorg/andengine/util/color/ColorPool;->onHandleRecycleItem(Lorg/andengine/util/color/Color;)V

    return-void
.end method

.method protected onHandleRecycleItem(Lorg/andengine/util/color/Color;)V
    .locals 1
    .parameter "pColor"

    .prologue
    .line 39
    sget-object v0, Lorg/andengine/util/color/Color;->WHITE:Lorg/andengine/util/color/Color;

    invoke-virtual {p1, v0}, Lorg/andengine/util/color/Color;->setChecking(Lorg/andengine/util/color/Color;)Z

    .line 41
    invoke-super {p0, p1}, Lorg/andengine/util/adt/pool/GenericPool;->onHandleRecycleItem(Ljava/lang/Object;)V

    .line 42
    return-void
.end method
