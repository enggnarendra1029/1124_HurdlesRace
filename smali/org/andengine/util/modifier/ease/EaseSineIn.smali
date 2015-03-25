.class public Lorg/andengine/util/modifier/ease/EaseSineIn;
.super Ljava/lang/Object;
.source "EaseSineIn.java"

# interfaces
.implements Lorg/andengine/util/modifier/ease/IEaseFunction;


# static fields
.field private static INSTANCE:Lorg/andengine/util/modifier/ease/EaseSineIn;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static getInstance()Lorg/andengine/util/modifier/ease/EaseSineIn;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lorg/andengine/util/modifier/ease/EaseSineIn;->INSTANCE:Lorg/andengine/util/modifier/ease/EaseSineIn;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lorg/andengine/util/modifier/ease/EaseSineIn;

    invoke-direct {v0}, Lorg/andengine/util/modifier/ease/EaseSineIn;-><init>()V

    sput-object v0, Lorg/andengine/util/modifier/ease/EaseSineIn;->INSTANCE:Lorg/andengine/util/modifier/ease/EaseSineIn;

    .line 38
    :cond_0
    sget-object v0, Lorg/andengine/util/modifier/ease/EaseSineIn;->INSTANCE:Lorg/andengine/util/modifier/ease/EaseSineIn;

    return-object v0
.end method

.method public static getValue(F)F
    .locals 2
    .parameter "pPercentage"

    .prologue
    .line 59
    const v0, 0x3fc90fdb

    mul-float/2addr v0, p0

    invoke-static {v0}, Landroid/util/FloatMath;->cos(F)F

    move-result v0

    neg-float v0, v0

    const/high16 v1, 0x3f80

    add-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getPercentage(FF)F
    .locals 1
    .parameter "pSecondsElapsed"
    .parameter "pDuration"

    .prologue
    .line 51
    div-float v0, p1, p2

    invoke-static {v0}, Lorg/andengine/util/modifier/ease/EaseSineIn;->getValue(F)F

    move-result v0

    return v0
.end method
