.class public Lorg/andengine/util/modifier/ease/EaseExponentialIn;
.super Ljava/lang/Object;
.source "EaseExponentialIn.java"

# interfaces
.implements Lorg/andengine/util/modifier/ease/IEaseFunction;


# static fields
.field private static INSTANCE:Lorg/andengine/util/modifier/ease/EaseExponentialIn;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static getInstance()Lorg/andengine/util/modifier/ease/EaseExponentialIn;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lorg/andengine/util/modifier/ease/EaseExponentialIn;->INSTANCE:Lorg/andengine/util/modifier/ease/EaseExponentialIn;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lorg/andengine/util/modifier/ease/EaseExponentialIn;

    invoke-direct {v0}, Lorg/andengine/util/modifier/ease/EaseExponentialIn;-><init>()V

    sput-object v0, Lorg/andengine/util/modifier/ease/EaseExponentialIn;->INSTANCE:Lorg/andengine/util/modifier/ease/EaseExponentialIn;

    .line 34
    :cond_0
    sget-object v0, Lorg/andengine/util/modifier/ease/EaseExponentialIn;->INSTANCE:Lorg/andengine/util/modifier/ease/EaseExponentialIn;

    return-object v0
.end method

.method public static getValue(F)F
    .locals 4
    .parameter "pPercentage"

    .prologue
    .line 56
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    double-to-float v0, v0

    return v0

    :cond_0
    const-wide/high16 v0, 0x4000

    const/high16 v2, 0x4120

    const/high16 v3, 0x3f80

    sub-float v3, p0, v3

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide v2, 0x3f50624de0000000L

    sub-double/2addr v0, v2

    goto :goto_0
.end method


# virtual methods
.method public getPercentage(FF)F
    .locals 1
    .parameter "pSecondsElapsed"
    .parameter "pDuration"

    .prologue
    .line 47
    div-float v0, p1, p2

    invoke-static {v0}, Lorg/andengine/util/modifier/ease/EaseExponentialIn;->getValue(F)F

    move-result v0

    return v0
.end method
