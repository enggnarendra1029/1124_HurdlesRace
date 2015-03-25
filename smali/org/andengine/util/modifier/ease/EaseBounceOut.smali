.class public Lorg/andengine/util/modifier/ease/EaseBounceOut;
.super Ljava/lang/Object;
.source "EaseBounceOut.java"

# interfaces
.implements Lorg/andengine/util/modifier/ease/IEaseFunction;


# static fields
.field private static INSTANCE:Lorg/andengine/util/modifier/ease/EaseBounceOut;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static getInstance()Lorg/andengine/util/modifier/ease/EaseBounceOut;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lorg/andengine/util/modifier/ease/EaseBounceOut;->INSTANCE:Lorg/andengine/util/modifier/ease/EaseBounceOut;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lorg/andengine/util/modifier/ease/EaseBounceOut;

    invoke-direct {v0}, Lorg/andengine/util/modifier/ease/EaseBounceOut;-><init>()V

    sput-object v0, Lorg/andengine/util/modifier/ease/EaseBounceOut;->INSTANCE:Lorg/andengine/util/modifier/ease/EaseBounceOut;

    .line 34
    :cond_0
    sget-object v0, Lorg/andengine/util/modifier/ease/EaseBounceOut;->INSTANCE:Lorg/andengine/util/modifier/ease/EaseBounceOut;

    return-object v0
.end method

.method public static getValue(F)F
    .locals 3
    .parameter "pPercentage"

    .prologue
    const/high16 v2, 0x40f2

    .line 55
    const v1, 0x3eba2e8c

    cmpg-float v1, p0, v1

    if-gez v1, :cond_0

    .line 56
    mul-float v1, v2, p0

    mul-float/2addr v1, p0

    .line 65
    :goto_0
    return v1

    .line 57
    :cond_0
    const v1, 0x3f3a2e8c

    cmpg-float v1, p0, v1

    if-gez v1, :cond_1

    .line 58
    const v1, 0x3f0ba2e9

    sub-float v0, p0, v1

    .line 59
    .local v0, t:F
    mul-float v1, v2, v0

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f40

    add-float/2addr v1, v2

    goto :goto_0

    .line 60
    .end local v0           #t:F
    :cond_1
    const v1, 0x3f68ba2f

    cmpg-float v1, p0, v1

    if-gez v1, :cond_2

    .line 61
    const v1, 0x3f51745d

    sub-float v0, p0, v1

    .line 62
    .restart local v0       #t:F
    mul-float v1, v2, v0

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f70

    add-float/2addr v1, v2

    goto :goto_0

    .line 64
    .end local v0           #t:F
    :cond_2
    const v1, 0x3f745d17

    sub-float v0, p0, v1

    .line 65
    .restart local v0       #t:F
    mul-float v1, v2, v0

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f7c

    add-float/2addr v1, v2

    goto :goto_0
.end method


# virtual methods
.method public getPercentage(FF)F
    .locals 1
    .parameter "pSecondsElapsed"
    .parameter "pDuration"

    .prologue
    .line 47
    div-float v0, p1, p2

    invoke-static {v0}, Lorg/andengine/util/modifier/ease/EaseBounceOut;->getValue(F)F

    move-result v0

    return v0
.end method
