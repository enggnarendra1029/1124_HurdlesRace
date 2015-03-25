.class public Lorg/andengine/util/modifier/ease/EaseElasticInOut;
.super Ljava/lang/Object;
.source "EaseElasticInOut.java"

# interfaces
.implements Lorg/andengine/util/modifier/ease/IEaseFunction;


# static fields
.field private static INSTANCE:Lorg/andengine/util/modifier/ease/EaseElasticInOut;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static getInstance()Lorg/andengine/util/modifier/ease/EaseElasticInOut;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lorg/andengine/util/modifier/ease/EaseElasticInOut;->INSTANCE:Lorg/andengine/util/modifier/ease/EaseElasticInOut;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lorg/andengine/util/modifier/ease/EaseElasticInOut;

    invoke-direct {v0}, Lorg/andengine/util/modifier/ease/EaseElasticInOut;-><init>()V

    sput-object v0, Lorg/andengine/util/modifier/ease/EaseElasticInOut;->INSTANCE:Lorg/andengine/util/modifier/ease/EaseElasticInOut;

    .line 35
    :cond_0
    sget-object v0, Lorg/andengine/util/modifier/ease/EaseElasticInOut;->INSTANCE:Lorg/andengine/util/modifier/ease/EaseElasticInOut;

    return-object v0
.end method


# virtual methods
.method public getPercentage(FF)F
    .locals 5
    .parameter "pSecondsElapsed"
    .parameter "pDuration"

    .prologue
    const/high16 v2, 0x4000

    const/high16 v4, 0x3f00

    .line 48
    div-float v0, p1, p2

    .line 50
    .local v0, percentage:F
    cmpg-float v1, v0, v4

    if-gez v1, :cond_0

    .line 51
    mul-float v1, v2, p1

    mul-float/2addr v2, v0

    invoke-static {v1, p2, v2}, Lorg/andengine/util/modifier/ease/EaseElasticIn;->getValue(FFF)F

    move-result v1

    mul-float/2addr v1, v4

    .line 53
    :goto_0
    return v1

    :cond_0
    mul-float v1, p1, v2

    sub-float/2addr v1, p2

    mul-float/2addr v2, v0

    const/high16 v3, 0x3f80

    sub-float/2addr v2, v3

    invoke-static {v1, p2, v2}, Lorg/andengine/util/modifier/ease/EaseElasticOut;->getValue(FFF)F

    move-result v1

    mul-float/2addr v1, v4

    add-float/2addr v1, v4

    goto :goto_0
.end method
