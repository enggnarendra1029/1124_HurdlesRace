.class public Lorg/andengine/util/modifier/ease/EaseCircularOut;
.super Ljava/lang/Object;
.source "EaseCircularOut.java"

# interfaces
.implements Lorg/andengine/util/modifier/ease/IEaseFunction;


# static fields
.field private static INSTANCE:Lorg/andengine/util/modifier/ease/EaseCircularOut;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static getInstance()Lorg/andengine/util/modifier/ease/EaseCircularOut;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lorg/andengine/util/modifier/ease/EaseCircularOut;->INSTANCE:Lorg/andengine/util/modifier/ease/EaseCircularOut;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lorg/andengine/util/modifier/ease/EaseCircularOut;

    invoke-direct {v0}, Lorg/andengine/util/modifier/ease/EaseCircularOut;-><init>()V

    sput-object v0, Lorg/andengine/util/modifier/ease/EaseCircularOut;->INSTANCE:Lorg/andengine/util/modifier/ease/EaseCircularOut;

    .line 36
    :cond_0
    sget-object v0, Lorg/andengine/util/modifier/ease/EaseCircularOut;->INSTANCE:Lorg/andengine/util/modifier/ease/EaseCircularOut;

    return-object v0
.end method

.method public static getValue(F)F
    .locals 3
    .parameter "pPercentage"

    .prologue
    const/high16 v2, 0x3f80

    .line 57
    sub-float v0, p0, v2

    .line 58
    .local v0, t:F
    mul-float v1, v0, v0

    sub-float v1, v2, v1

    invoke-static {v1}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    return v1
.end method


# virtual methods
.method public getPercentage(FF)F
    .locals 1
    .parameter "pSecondsElapsed"
    .parameter "pDuration"

    .prologue
    .line 49
    div-float v0, p1, p2

    invoke-static {v0}, Lorg/andengine/util/modifier/ease/EaseCircularOut;->getValue(F)F

    move-result v0

    return v0
.end method
