.class public Lorg/andengine/util/modifier/ease/EaseQuartIn;
.super Ljava/lang/Object;
.source "EaseQuartIn.java"

# interfaces
.implements Lorg/andengine/util/modifier/ease/IEaseFunction;


# static fields
.field private static INSTANCE:Lorg/andengine/util/modifier/ease/EaseQuartIn;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static getInstance()Lorg/andengine/util/modifier/ease/EaseQuartIn;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lorg/andengine/util/modifier/ease/EaseQuartIn;->INSTANCE:Lorg/andengine/util/modifier/ease/EaseQuartIn;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lorg/andengine/util/modifier/ease/EaseQuartIn;

    invoke-direct {v0}, Lorg/andengine/util/modifier/ease/EaseQuartIn;-><init>()V

    sput-object v0, Lorg/andengine/util/modifier/ease/EaseQuartIn;->INSTANCE:Lorg/andengine/util/modifier/ease/EaseQuartIn;

    .line 34
    :cond_0
    sget-object v0, Lorg/andengine/util/modifier/ease/EaseQuartIn;->INSTANCE:Lorg/andengine/util/modifier/ease/EaseQuartIn;

    return-object v0
.end method

.method public static getValue(F)F
    .locals 1
    .parameter "pPercentage"

    .prologue
    .line 55
    mul-float v0, p0, p0

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    return v0
.end method


# virtual methods
.method public getPercentage(FF)F
    .locals 1
    .parameter "pSecondsElapsed"
    .parameter "pDuration"

    .prologue
    .line 47
    div-float v0, p1, p2

    invoke-static {v0}, Lorg/andengine/util/modifier/ease/EaseQuartIn;->getValue(F)F

    move-result v0

    return v0
.end method
