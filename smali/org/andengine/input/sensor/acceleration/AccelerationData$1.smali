.class Lorg/andengine/input/sensor/acceleration/AccelerationData$1;
.super Ljava/lang/Object;
.source "AccelerationData.java"

# interfaces
.implements Lorg/andengine/input/sensor/acceleration/AccelerationData$IAxisSwap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andengine/input/sensor/acceleration/AccelerationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public swapAxis([F)V
    .locals 5
    .parameter "pValues"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 28
    aget v2, p1, v3

    neg-float v0, v2

    .line 29
    .local v0, x:F
    aget v1, p1, v4

    .line 30
    .local v1, y:F
    aput v0, p1, v3

    .line 31
    aput v1, p1, v4

    .line 32
    return-void
.end method
