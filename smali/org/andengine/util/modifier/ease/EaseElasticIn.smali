.class public Lorg/andengine/util/modifier/ease/EaseElasticIn;
.super Ljava/lang/Object;
.source "EaseElasticIn.java"

# interfaces
.implements Lorg/andengine/util/modifier/ease/IEaseFunction;


# static fields
.field private static INSTANCE:Lorg/andengine/util/modifier/ease/EaseElasticIn;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static getInstance()Lorg/andengine/util/modifier/ease/EaseElasticIn;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lorg/andengine/util/modifier/ease/EaseElasticIn;->INSTANCE:Lorg/andengine/util/modifier/ease/EaseElasticIn;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lorg/andengine/util/modifier/ease/EaseElasticIn;

    invoke-direct {v0}, Lorg/andengine/util/modifier/ease/EaseElasticIn;-><init>()V

    sput-object v0, Lorg/andengine/util/modifier/ease/EaseElasticIn;->INSTANCE:Lorg/andengine/util/modifier/ease/EaseElasticIn;

    .line 38
    :cond_0
    sget-object v0, Lorg/andengine/util/modifier/ease/EaseElasticIn;->INSTANCE:Lorg/andengine/util/modifier/ease/EaseElasticIn;

    return-object v0
.end method

.method public static getValue(FFF)F
    .locals 7
    .parameter "pSecondsElapsed"
    .parameter "pDuration"
    .parameter "pPercentage"

    .prologue
    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    .line 59
    cmpl-float v5, p0, v3

    if-nez v5, :cond_0

    .line 70
    :goto_0
    return v3

    .line 62
    :cond_0
    cmpl-float v3, p0, p1

    if-nez v3, :cond_1

    move v3, v4

    .line 63
    goto :goto_0

    .line 66
    :cond_1
    const v3, 0x3e99999a

    mul-float v0, p1, v3

    .line 67
    .local v0, p:F
    const/high16 v3, 0x4080

    div-float v1, v0, v3

    .line 69
    .local v1, s:F
    sub-float v2, p2, v4

    .line 70
    .local v2, t:F
    const-wide/high16 v3, 0x4000

    const/high16 v5, 0x4120

    mul-float/2addr v5, v2

    float-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    neg-float v3, v3

    mul-float v4, v2, p1

    sub-float/2addr v4, v1

    const v5, 0x40c90fdb

    mul-float/2addr v4, v5

    div-float/2addr v4, v0

    invoke-static {v4}, Landroid/util/FloatMath;->sin(F)F

    move-result v4

    mul-float/2addr v3, v4

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

    invoke-static {p1, p2, v0}, Lorg/andengine/util/modifier/ease/EaseElasticIn;->getValue(FFF)F

    move-result v0

    return v0
.end method
