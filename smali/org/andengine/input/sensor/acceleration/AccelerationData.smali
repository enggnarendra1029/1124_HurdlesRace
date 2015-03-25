.class public Lorg/andengine/input/sensor/acceleration/AccelerationData;
.super Lorg/andengine/input/sensor/BaseSensorData;
.source "AccelerationData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/andengine/input/sensor/acceleration/AccelerationData$IAxisSwap;
    }
.end annotation


# static fields
.field private static final AXISSWAPS:[Lorg/andengine/input/sensor/acceleration/AccelerationData$IAxisSwap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/andengine/input/sensor/acceleration/AccelerationData$IAxisSwap;

    sput-object v0, Lorg/andengine/input/sensor/acceleration/AccelerationData;->AXISSWAPS:[Lorg/andengine/input/sensor/acceleration/AccelerationData$IAxisSwap;

    .line 25
    sget-object v0, Lorg/andengine/input/sensor/acceleration/AccelerationData;->AXISSWAPS:[Lorg/andengine/input/sensor/acceleration/AccelerationData$IAxisSwap;

    const/4 v1, 0x0

    new-instance v2, Lorg/andengine/input/sensor/acceleration/AccelerationData$1;

    invoke-direct {v2}, Lorg/andengine/input/sensor/acceleration/AccelerationData$1;-><init>()V

    aput-object v2, v0, v1

    .line 35
    sget-object v0, Lorg/andengine/input/sensor/acceleration/AccelerationData;->AXISSWAPS:[Lorg/andengine/input/sensor/acceleration/AccelerationData$IAxisSwap;

    const/4 v1, 0x1

    new-instance v2, Lorg/andengine/input/sensor/acceleration/AccelerationData$2;

    invoke-direct {v2}, Lorg/andengine/input/sensor/acceleration/AccelerationData$2;-><init>()V

    aput-object v2, v0, v1

    .line 45
    sget-object v0, Lorg/andengine/input/sensor/acceleration/AccelerationData;->AXISSWAPS:[Lorg/andengine/input/sensor/acceleration/AccelerationData$IAxisSwap;

    const/4 v1, 0x2

    new-instance v2, Lorg/andengine/input/sensor/acceleration/AccelerationData$3;

    invoke-direct {v2}, Lorg/andengine/input/sensor/acceleration/AccelerationData$3;-><init>()V

    aput-object v2, v0, v1

    .line 55
    sget-object v0, Lorg/andengine/input/sensor/acceleration/AccelerationData;->AXISSWAPS:[Lorg/andengine/input/sensor/acceleration/AccelerationData$IAxisSwap;

    const/4 v1, 0x3

    new-instance v2, Lorg/andengine/input/sensor/acceleration/AccelerationData$4;

    invoke-direct {v2}, Lorg/andengine/input/sensor/acceleration/AccelerationData$4;-><init>()V

    aput-object v2, v0, v1

    .line 64
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "pDisplayOrientation"

    .prologue
    .line 75
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lorg/andengine/input/sensor/BaseSensorData;-><init>(II)V

    .line 76
    return-void
.end method


# virtual methods
.method public getX()F
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lorg/andengine/input/sensor/acceleration/AccelerationData;->mValues:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getY()F
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lorg/andengine/input/sensor/acceleration/AccelerationData;->mValues:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getZ()F
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lorg/andengine/input/sensor/acceleration/AccelerationData;->mValues:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public setValues([F)V
    .locals 2
    .parameter "pValues"

    .prologue
    .line 108
    invoke-super {p0, p1}, Lorg/andengine/input/sensor/BaseSensorData;->setValues([F)V

    .line 110
    sget-object v0, Lorg/andengine/input/sensor/acceleration/AccelerationData;->AXISSWAPS:[Lorg/andengine/input/sensor/acceleration/AccelerationData$IAxisSwap;

    iget v1, p0, Lorg/andengine/input/sensor/acceleration/AccelerationData;->mDisplayRotation:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lorg/andengine/input/sensor/acceleration/AccelerationData;->mValues:[F

    invoke-interface {v0, v1}, Lorg/andengine/input/sensor/acceleration/AccelerationData$IAxisSwap;->swapAxis([F)V

    .line 111
    return-void
.end method

.method public setX(F)V
    .locals 2
    .parameter "pX"

    .prologue
    .line 95
    iget-object v0, p0, Lorg/andengine/input/sensor/acceleration/AccelerationData;->mValues:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 96
    return-void
.end method

.method public setY(F)V
    .locals 2
    .parameter "pY"

    .prologue
    .line 99
    iget-object v0, p0, Lorg/andengine/input/sensor/acceleration/AccelerationData;->mValues:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 100
    return-void
.end method

.method public setZ(F)V
    .locals 2
    .parameter "pZ"

    .prologue
    .line 103
    iget-object v0, p0, Lorg/andengine/input/sensor/acceleration/AccelerationData;->mValues:[F

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 104
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Acceleration: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/andengine/input/sensor/acceleration/AccelerationData;->mValues:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
