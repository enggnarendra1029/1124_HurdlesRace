.class public Lorg/andengine/util/modifier/ease/EaseSineOut;
.super Ljava/lang/Object;
.source "EaseSineOut.java"

# interfaces
.implements Lorg/andengine/util/modifier/ease/IEaseFunction;


# static fields
.field private static INSTANCE:Lorg/andengine/util/modifier/ease/EaseSineOut;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static getInstance()Lorg/andengine/util/modifier/ease/EaseSineOut;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lorg/andengine/util/modifier/ease/EaseSineOut;->INSTANCE:Lorg/andengine/util/modifier/ease/EaseSineOut;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lorg/andengine/util/modifier/ease/EaseSineOut;

    invoke-direct {v0}, Lorg/andengine/util/modifier/ease/EaseSineOut;-><init>()V

    sput-object v0, Lorg/andengine/util/modifier/ease/EaseSineOut;->INSTANCE:Lorg/andengine/util/modifier/ease/EaseSineOut;

    .line 38
    :cond_0
    sget-object v0, Lorg/andengine/util/modifier/ease/EaseSineOut;->INSTANCE:Lorg/andengine/util/modifier/ease/EaseSineOut;

    return-object v0
.end method

.method public static getValue(F)F
    .locals 1
    .parameter "pPercentage"

    .prologue
    .line 59
    const v0, 0x3fc90fdb

    mul-float/2addr v0, p0

    invoke-static {v0}, Landroid/util/FloatMath;->sin(F)F

    move-result v0

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

    invoke-static {v0}, Lorg/andengine/util/modifier/ease/EaseSineOut;->getValue(F)F

    move-result v0

    return v0
.end method
