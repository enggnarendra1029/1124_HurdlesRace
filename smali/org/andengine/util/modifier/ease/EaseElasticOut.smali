.class public Lorg/andengine/util/modifier/ease/EaseElasticOut;
.super Ljava/lang/Object;
.source "EaseElasticOut.java"

# interfaces
.implements Lorg/andengine/util/modifier/ease/IEaseFunction;


# static fields
.field private static INSTANCE:Lorg/andengine/util/modifier/ease/EaseElasticOut;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static getInstance()Lorg/andengine/util/modifier/ease/EaseElasticOut;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lorg/andengine/util/modifier/ease/EaseElasticOut;->INSTANCE:Lorg/andengine/util/modifier/ease/EaseElasticOut;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lorg/andengine/util/modifier/ease/EaseElasticOut;

    invoke-direct {v0}, Lorg/andengine/util/modifier/ease/EaseElasticOut;-><init>()V

    sput-object v0, Lorg/andengine/util/modifier/ease/EaseElasticOut;->INSTANCE:Lorg/andengine/util/modifier/ease/EaseElasticOut;

    .line 38
    :cond_0
    sget-object v0, Lorg/andengine/util/modifier/ease/EaseElasticOut;->INSTANCE:Lorg/andengine/util/modifier/ease/EaseElasticOut;

    return-object v0
.end method

.method public static getValue(FFF)F
    .locals 8
    .parameter "pSecondsElapsed"
    .parameter "pDuration"
    .parameter "pPercentageDone"

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 59
    cmpl-float v4, p0, v2

    if-nez v4, :cond_0

    .line 69
    :goto_0
    return v2

    .line 62
    :cond_0
    cmpl-float v2, p0, p1

    if-nez v2, :cond_1

    move v2, v3

    .line 63
    goto :goto_0

    .line 66
    :cond_1
    const v2, 0x3e99999a

    mul-float v0, p1, v2

    .line 67
    .local v0, p:F
    const/high16 v2, 0x4080

    div-float v1, v0, v2

    .line 69
    .local v1, s:F
    const-wide/high16 v4, 0x4000

    const/high16 v2, -0x3ee0

    mul-float/2addr v2, p2

    float-to-double v6, v2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v2, v4

    mul-float v4, p2, p1

    sub-float/2addr v4, v1

    const v5, 0x40c90fdb

    mul-float/2addr v4, v5

    div-float/2addr v4, v0

    invoke-static {v4}, Landroid/util/FloatMath;->sin(F)F

    move-result v4

    mul-float/2addr v2, v4

    add-float/2addr v2, v3

    goto :goto_0
.end method


# virtual methods
.method public getPercentage(FF)F
    .locals 1
    .parameter "pSecondsElapsed"
    .parameter "pDuration"

    .prologue
    .line 51
    div-float v0, p1, p2

    invoke-static {p1, p2, v0}, Lorg/andengine/util/modifier/ease/EaseElasticOut;->getValue(FFF)F

    move-result v0

    return v0
.end method
