.class public Lorg/andengine/input/sensor/orientation/OrientationData;
.super Lorg/andengine/input/sensor/BaseSensorData;
.source "OrientationData.java"


# instance fields
.field private final mAccelerationValues:[F

.field private mMagneticFieldAccuracy:I

.field private final mMagneticFieldValues:[F

.field private final mRotationMatrix:[F


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .parameter "pDisplayRotation"

    .prologue
    const/4 v1, 0x3

    .line 38
    invoke-direct {p0, v1, p1}, Lorg/andengine/input/sensor/BaseSensorData;-><init>(II)V

    .line 27
    new-array v0, v1, [F

    iput-object v0, p0, Lorg/andengine/input/sensor/orientation/OrientationData;->mAccelerationValues:[F

    .line 28
    new-array v0, v1, [F

    iput-object v0, p0, Lorg/andengine/input/sensor/orientation/OrientationData;->mMagneticFieldValues:[F

    .line 29
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/andengine/input/sensor/orientation/OrientationData;->mRotationMatrix:[F

    .line 39
    return-void
.end method

.method private updateOrientation()V
    .locals 6

    .prologue
    .line 80
    iget-object v2, p0, Lorg/andengine/input/sensor/orientation/OrientationData;->mRotationMatrix:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/andengine/input/sensor/orientation/OrientationData;->mAccelerationValues:[F

    iget-object v5, p0, Lorg/andengine/input/sensor/orientation/OrientationData;->mMagneticFieldValues:[F

    invoke-static {v2, v3, v4, v5}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    .line 83
    iget v2, p0, Lorg/andengine/input/sensor/orientation/OrientationData;->mDisplayRotation:I

    packed-switch v2, :pswitch_data_0

    .line 98
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lorg/andengine/input/sensor/orientation/OrientationData;->mValues:[F

    .line 99
    .local v1, values:[F
    iget-object v2, p0, Lorg/andengine/input/sensor/orientation/OrientationData;->mRotationMatrix:[F

    invoke-static {v2, v1}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 101
    array-length v2, v1

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_1
    if-gez v0, :cond_0

    .line 104
    return-void

    .line 88
    .end local v0           #i:I
    .end local v1           #values:[F
    :pswitch_1
    iget-object v2, p0, Lorg/andengine/input/sensor/orientation/OrientationData;->mRotationMatrix:[F

    const/4 v3, 0x2

    const/16 v4, 0x81

    iget-object v5, p0, Lorg/andengine/input/sensor/orientation/OrientationData;->mRotationMatrix:[F

    invoke-static {v2, v3, v4, v5}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    goto :goto_0

    .line 102
    .restart local v0       #i:I
    .restart local v1       #values:[F
    :cond_0
    aget v2, v1, v0

    const v3, 0x42652ee0

    mul-float/2addr v2, v3

    aput v2, v1, v0

    .line 101
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getAccelerationAccuracy()I
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lorg/andengine/input/sensor/orientation/OrientationData;->getAccuracy()I

    move-result v0

    return v0
.end method

.method public getMagneticFieldAccuracy()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lorg/andengine/input/sensor/orientation/OrientationData;->mMagneticFieldAccuracy:I

    return v0
.end method

.method public getPitch()F
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lorg/andengine/input/sensor/BaseSensorData;->mValues:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getRoll()F
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lorg/andengine/input/sensor/BaseSensorData;->mValues:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getYaw()F
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lorg/andengine/input/sensor/BaseSensorData;->mValues:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public setAccelerationAccuracy(I)V
    .locals 0
    .parameter "pAccelerationAccuracy"

    .prologue
    .line 111
    invoke-super {p0, p1}, Lorg/andengine/input/sensor/BaseSensorData;->setAccuracy(I)V

    .line 112
    return-void
.end method

.method public setAccelerationValues([F)V
    .locals 3
    .parameter "pValues"

    .prologue
    const/4 v2, 0x0

    .line 70
    iget-object v0, p0, Lorg/andengine/input/sensor/orientation/OrientationData;->mAccelerationValues:[F

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    invoke-direct {p0}, Lorg/andengine/input/sensor/orientation/OrientationData;->updateOrientation()V

    .line 72
    return-void
.end method

.method public setAccuracy(I)V
    .locals 0
    .parameter "pAccuracy"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 66
    invoke-super {p0, p1}, Lorg/andengine/input/sensor/BaseSensorData;->setAccuracy(I)V

    .line 67
    return-void
.end method

.method public setMagneticFieldAccuracy(I)V
    .locals 0
    .parameter "pMagneticFieldAccuracy"

    .prologue
    .line 119
    iput p1, p0, Lorg/andengine/input/sensor/orientation/OrientationData;->mMagneticFieldAccuracy:I

    .line 120
    return-void
.end method

.method public setMagneticFieldValues([F)V
    .locals 3
    .parameter "pValues"

    .prologue
    const/4 v2, 0x0

    .line 75
    iget-object v0, p0, Lorg/andengine/input/sensor/orientation/OrientationData;->mMagneticFieldValues:[F

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    invoke-direct {p0}, Lorg/andengine/input/sensor/orientation/OrientationData;->updateOrientation()V

    .line 77
    return-void
.end method

.method public setValues([F)V
    .locals 0
    .parameter "pValues"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 60
    invoke-super {p0, p1}, Lorg/andengine/input/sensor/BaseSensorData;->setValues([F)V

    .line 61
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Orientation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/andengine/input/sensor/orientation/OrientationData;->mValues:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
