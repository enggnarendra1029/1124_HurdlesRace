.class public Lorg/andengine/input/sensor/location/LocationSensorOptions;
.super Landroid/location/Criteria;
.source "LocationSensorOptions.java"


# static fields
.field private static final MINIMUMTRIGGERDISTANCE_DEFAULT:J = 0xaL

.field private static final MINIMUMTRIGGERTIME_DEFAULT:J = 0x3e8L


# instance fields
.field private mEnabledOnly:Z

.field private mMinimumTriggerDistance:J

.field private mMinimumTriggerTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/location/Criteria;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/andengine/input/sensor/location/LocationSensorOptions;->mEnabledOnly:Z

    .line 28
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lorg/andengine/input/sensor/location/LocationSensorOptions;->mMinimumTriggerTime:J

    .line 29
    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lorg/andengine/input/sensor/location/LocationSensorOptions;->mMinimumTriggerDistance:J

    .line 48
    return-void
.end method

.method public constructor <init>(IZZZIZZJJ)V
    .locals 2
    .parameter "pAccuracy"
    .parameter "pAltitudeRequired"
    .parameter "pBearingRequired"
    .parameter "pCostAllowed"
    .parameter "pPowerRequirement"
    .parameter "pSpeedRequired"
    .parameter "pEnabledOnly"
    .parameter "pMinimumTriggerTime"
    .parameter "pMinimumTriggerDistance"

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/location/Criteria;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/andengine/input/sensor/location/LocationSensorOptions;->mEnabledOnly:Z

    .line 28
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lorg/andengine/input/sensor/location/LocationSensorOptions;->mMinimumTriggerTime:J

    .line 29
    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lorg/andengine/input/sensor/location/LocationSensorOptions;->mMinimumTriggerDistance:J

    .line 62
    iput-boolean p7, p0, Lorg/andengine/input/sensor/location/LocationSensorOptions;->mEnabledOnly:Z

    .line 63
    iput-wide p8, p0, Lorg/andengine/input/sensor/location/LocationSensorOptions;->mMinimumTriggerTime:J

    .line 64
    iput-wide p10, p0, Lorg/andengine/input/sensor/location/LocationSensorOptions;->mMinimumTriggerDistance:J

    .line 66
    invoke-virtual {p0, p1}, Lorg/andengine/input/sensor/location/LocationSensorOptions;->setAccuracy(I)V

    .line 67
    invoke-virtual {p0, p2}, Lorg/andengine/input/sensor/location/LocationSensorOptions;->setAltitudeRequired(Z)V

    .line 68
    invoke-virtual {p0, p3}, Lorg/andengine/input/sensor/location/LocationSensorOptions;->setBearingRequired(Z)V

    .line 69
    invoke-virtual {p0, p4}, Lorg/andengine/input/sensor/location/LocationSensorOptions;->setCostAllowed(Z)V

    .line 70
    invoke-virtual {p0, p5}, Lorg/andengine/input/sensor/location/LocationSensorOptions;->setPowerRequirement(I)V

    .line 71
    invoke-virtual {p0, p6}, Lorg/andengine/input/sensor/location/LocationSensorOptions;->setSpeedRequired(Z)V

    .line 72
    return-void
.end method


# virtual methods
.method public getMinimumTriggerDistance()J
    .locals 2

    .prologue
    .line 95
    iget-wide v0, p0, Lorg/andengine/input/sensor/location/LocationSensorOptions;->mMinimumTriggerDistance:J

    return-wide v0
.end method

.method public getMinimumTriggerTime()J
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lorg/andengine/input/sensor/location/LocationSensorOptions;->mMinimumTriggerTime:J

    return-wide v0
.end method

.method public isEnabledOnly()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lorg/andengine/input/sensor/location/LocationSensorOptions;->mEnabledOnly:Z

    return v0
.end method

.method public setEnabledOnly(Z)V
    .locals 0
    .parameter "pEnabledOnly"

    .prologue
    .line 79
    iput-boolean p1, p0, Lorg/andengine/input/sensor/location/LocationSensorOptions;->mEnabledOnly:Z

    .line 80
    return-void
.end method

.method public setMinimumTriggerDistance(J)V
    .locals 0
    .parameter "pMinimumTriggerDistance"

    .prologue
    .line 99
    iput-wide p1, p0, Lorg/andengine/input/sensor/location/LocationSensorOptions;->mMinimumTriggerDistance:J

    .line 100
    return-void
.end method

.method public setMinimumTriggerTime(J)V
    .locals 0
    .parameter "pMinimumTriggerTime"

    .prologue
    .line 91
    iput-wide p1, p0, Lorg/andengine/input/sensor/location/LocationSensorOptions;->mMinimumTriggerTime:J

    .line 92
    return-void
.end method
