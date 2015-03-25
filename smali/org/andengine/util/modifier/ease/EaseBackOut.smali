.class public Lorg/andengine/util/modifier/ease/EaseBackOut;
.super Ljava/lang/Object;
.source "EaseBackOut.java"

# interfaces
.implements Lorg/andengine/util/modifier/ease/IEaseFunction;


# static fields
.field private static INSTANCE:Lorg/andengine/util/modifier/ease/EaseBackOut;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static getInstance()Lorg/andengine/util/modifier/ease/EaseBackOut;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lorg/andengine/util/modifier/ease/EaseBackOut;->INSTANCE:Lorg/andengine/util/modifier/ease/EaseBackOut;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lorg/andengine/util/modifier/ease/EaseBackOut;

    invoke-direct {v0}, Lorg/andengine/util/modifier/ease/EaseBackOut;-><init>()V

    sput-object v0, Lorg/andengine/util/modifier/ease/EaseBackOut;->INSTANCE:Lorg/andengine/util/modifier/ease/EaseBackOut;

    .line 34
    :cond_0
    sget-object v0, Lorg/andengine/util/modifier/ease/EaseBackOut;->INSTANCE:Lorg/andengine/util/modifier/ease/EaseBackOut;

    return-object v0
.end method

.method public static getValue(F)F
    .locals 5
    .parameter "pPercentage"

    .prologue
    const/high16 v4, 0x3f80

    .line 55
    sub-float v0, p0, v4

    .line 56
    .local v0, t:F
    mul-float v1, v0, v0

    const v2, 0x402ce6b0

    mul-float/2addr v2, v0

    const v3, 0x3fd9cd60

    add-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v1, v4

    return v1
.end method


# virtual methods
.method public getPercentage(FF)F
    .locals 1
    .parameter "pSecondsElapsed"
    .parameter "pDuration"

    .prologue
    .line 47
    div-float v0, p1, p2

    invoke-static {v0}, Lorg/andengine/util/modifier/ease/EaseBackOut;->getValue(F)F

    move-result v0

    return v0
.end method
