.class public Lorg/andengine/input/sensor/orientation/OrientationSensorOptions;
.super Ljava/lang/Object;
.source "OrientationSensorOptions.java"


# instance fields
.field final mSensorDelay:Lorg/andengine/input/sensor/SensorDelay;


# direct methods
.method public constructor <init>(Lorg/andengine/input/sensor/SensorDelay;)V
    .locals 0
    .parameter "pSensorDelay"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/andengine/input/sensor/orientation/OrientationSensorOptions;->mSensorDelay:Lorg/andengine/input/sensor/SensorDelay;

    .line 29
    return-void
.end method


# virtual methods
.method public getSensorDelay()Lorg/andengine/input/sensor/SensorDelay;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/andengine/input/sensor/orientation/OrientationSensorOptions;->mSensorDelay:Lorg/andengine/input/sensor/SensorDelay;

    return-object v0
.end method
