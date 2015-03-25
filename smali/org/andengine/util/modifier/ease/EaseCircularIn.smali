.class public Lorg/andengine/util/modifier/ease/EaseCircularIn;
.super Ljava/lang/Object;
.source "EaseCircularIn.java"

# interfaces
.implements Lorg/andengine/util/modifier/ease/IEaseFunction;


# static fields
.field private static INSTANCE:Lorg/andengine/util/modifier/ease/EaseCircularIn;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static getInstance()Lorg/andengine/util/modifier/ease/EaseCircularIn;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lorg/andengine/util/modifier/ease/EaseCircularIn;->INSTANCE:Lorg/andengine/util/modifier/ease/EaseCircularIn;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lorg/andengine/util/modifier/ease/EaseCircularIn;

    invoke-direct {v0}, Lorg/andengine/util/modifier/ease/EaseCircularIn;-><init>()V

    sput-object v0, Lorg/andengine/util/modifier/ease/EaseCircularIn;->INSTANCE:Lorg/andengine/util/modifier/ease/EaseCircularIn;

    .line 36
    :cond_0
    sget-object v0, Lorg/andengine/util/modifier/ease/EaseCircularIn;->INSTANCE:Lorg/andengine/util/modifier/ease/EaseCircularIn;

    return-object v0
.end method

.method public static getValue(F)F
    .locals 2
    .parameter "pPercentage"

    .prologue
    const/high16 v1, 0x3f80

    .line 57
    mul-float v0, p0, p0

    sub-float v0, v1, v0

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    sub-float/2addr v0, v1

    neg-float v0, v0

    return v0
.end method


# virtual methods
.method public getPercentage(FF)F
    .locals 1
    .parameter "pSecondsElapsed"
    .parameter "pDuration"

    .prologue
    .line 49
    div-float v0, p1, p2

    invoke-static {v0}, Lorg/andengine/util/modifier/ease/EaseCircularIn;->getValue(F)F

    move-result v0

    return v0
.end method
