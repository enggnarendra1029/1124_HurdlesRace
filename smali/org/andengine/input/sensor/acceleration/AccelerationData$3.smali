.class Lorg/andengine/input/sensor/acceleration/AccelerationData$3;
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
    .line 45
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

    .line 48
    aget v0, p1, v3

    .line 49
    .local v0, x:F
    aget v2, p1, v4

    neg-float v1, v2

    .line 50
    .local v1, y:F
    aput v0, p1, v3

    .line 51
    aput v1, p1, v4

    .line 52
    return-void
.end method
