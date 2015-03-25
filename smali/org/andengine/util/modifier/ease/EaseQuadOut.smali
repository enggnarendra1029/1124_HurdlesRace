.class public Lorg/andengine/util/modifier/ease/EaseQuadOut;
.super Ljava/lang/Object;
.source "EaseQuadOut.java"

# interfaces
.implements Lorg/andengine/util/modifier/ease/IEaseFunction;


# static fields
.field private static INSTANCE:Lorg/andengine/util/modifier/ease/EaseQuadOut;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static getInstance()Lorg/andengine/util/modifier/ease/EaseQuadOut;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lorg/andengine/util/modifier/ease/EaseQuadOut;->INSTANCE:Lorg/andengine/util/modifier/ease/EaseQuadOut;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lorg/andengine/util/modifier/ease/EaseQuadOut;

    invoke-direct {v0}, Lorg/andengine/util/modifier/ease/EaseQuadOut;-><init>()V

    sput-object v0, Lorg/andengine/util/modifier/ease/EaseQuadOut;->INSTANCE:Lorg/andengine/util/modifier/ease/EaseQuadOut;

    .line 34
    :cond_0
    sget-object v0, Lorg/andengine/util/modifier/ease/EaseQuadOut;->INSTANCE:Lorg/andengine/util/modifier/ease/EaseQuadOut;

    return-object v0
.end method

.method public static getValue(F)F
    .locals 2
    .parameter "pPercentage"

    .prologue
    .line 55
    neg-float v0, p0

    const/high16 v1, 0x4000

    sub-float v1, p0, v1

    mul-float/2addr v0, v1

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

    invoke-static {v0}, Lorg/andengine/util/modifier/ease/EaseQuadOut;->getValue(F)F

    move-result v0

    return v0
.end method
