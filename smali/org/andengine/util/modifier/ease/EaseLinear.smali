.class public Lorg/andengine/util/modifier/ease/EaseLinear;
.super Ljava/lang/Object;
.source "EaseLinear.java"

# interfaces
.implements Lorg/andengine/util/modifier/ease/IEaseFunction;


# static fields
.field private static INSTANCE:Lorg/andengine/util/modifier/ease/EaseLinear;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static getInstance()Lorg/andengine/util/modifier/ease/EaseLinear;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lorg/andengine/util/modifier/ease/EaseLinear;->INSTANCE:Lorg/andengine/util/modifier/ease/EaseLinear;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lorg/andengine/util/modifier/ease/EaseLinear;

    invoke-direct {v0}, Lorg/andengine/util/modifier/ease/EaseLinear;-><init>()V

    sput-object v0, Lorg/andengine/util/modifier/ease/EaseLinear;->INSTANCE:Lorg/andengine/util/modifier/ease/EaseLinear;

    .line 34
    :cond_0
    sget-object v0, Lorg/andengine/util/modifier/ease/EaseLinear;->INSTANCE:Lorg/andengine/util/modifier/ease/EaseLinear;

    return-object v0
.end method


# virtual methods
.method public getPercentage(FF)F
    .locals 1
    .parameter "pSecondsElapsed"
    .parameter "pDuration"

    .prologue
    .line 47
    div-float v0, p1, p2

    return v0
.end method
