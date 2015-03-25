.class public Lorg/andengine/util/modifier/ease/EaseQuadInOut;
.super Ljava/lang/Object;
.source "EaseQuadInOut.java"

# interfaces
.implements Lorg/andengine/util/modifier/ease/IEaseFunction;


# static fields
.field private static INSTANCE:Lorg/andengine/util/modifier/ease/EaseQuadInOut;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static getInstance()Lorg/andengine/util/modifier/ease/EaseQuadInOut;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lorg/andengine/util/modifier/ease/EaseQuadInOut;->INSTANCE:Lorg/andengine/util/modifier/ease/EaseQuadInOut;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lorg/andengine/util/modifier/ease/EaseQuadInOut;

    invoke-direct {v0}, Lorg/andengine/util/modifier/ease/EaseQuadInOut;-><init>()V

    sput-object v0, Lorg/andengine/util/modifier/ease/EaseQuadInOut;->INSTANCE:Lorg/andengine/util/modifier/ease/EaseQuadInOut;

    .line 34
    :cond_0
    sget-object v0, Lorg/andengine/util/modifier/ease/EaseQuadInOut;->INSTANCE:Lorg/andengine/util/modifier/ease/EaseQuadInOut;

    return-object v0
.end method


# virtual methods
.method public getPercentage(FF)F
    .locals 4
    .parameter "pSecondsElapsed"
    .parameter "pDuration"

    .prologue
    const/high16 v2, 0x4000

    const/high16 v3, 0x3f00

    .line 47
    div-float v0, p1, p2

    .line 49
    .local v0, percentage:F
    cmpg-float v1, v0, v3

    if-gez v1, :cond_0

    .line 50
    mul-float v1, v2, v0

    invoke-static {v1}, Lorg/andengine/util/modifier/ease/EaseQuadIn;->getValue(F)F

    move-result v1

    mul-float/2addr v1, v3

    .line 52
    :goto_0
    return v1

    :cond_0
    mul-float v1, v0, v2

    const/high16 v2, 0x3f80

    sub-float/2addr v1, v2

    invoke-static {v1}, Lorg/andengine/util/modifier/ease/EaseQuadOut;->getValue(F)F

    move-result v1

    mul-float/2addr v1, v3

    add-float/2addr v1, v3

    goto :goto_0
.end method
