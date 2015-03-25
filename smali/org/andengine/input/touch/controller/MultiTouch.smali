.class public Lorg/andengine/input/touch/controller/MultiTouch;
.super Ljava/lang/Object;
.source "MultiTouch.java"


# static fields
.field private static SUPPORTED:Ljava/lang/Boolean;

.field private static SUPPORTED_DISTINCT:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    sput-object v0, Lorg/andengine/input/touch/controller/MultiTouch;->SUPPORTED:Ljava/lang/Boolean;

    .line 25
    sput-object v0, Lorg/andengine/input/touch/controller/MultiTouch;->SUPPORTED_DISTINCT:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSupported(Landroid/content/Context;)Z
    .locals 1
    .parameter "pContext"

    .prologue
    .line 44
    sget-object v0, Lorg/andengine/input/touch/controller/MultiTouch;->SUPPORTED:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 45
    const-string v0, "android.hardware.touchscreen.multitouch"

    invoke-static {p0, v0}, Lorg/andengine/util/system/SystemUtils;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/andengine/input/touch/controller/MultiTouch;->SUPPORTED:Ljava/lang/Boolean;

    .line 48
    :cond_0
    sget-object v0, Lorg/andengine/input/touch/controller/MultiTouch;->SUPPORTED:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isSupportedDistinct(Landroid/content/Context;)Z
    .locals 1
    .parameter "pContext"

    .prologue
    .line 52
    sget-object v0, Lorg/andengine/input/touch/controller/MultiTouch;->SUPPORTED_DISTINCT:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 53
    const-string v0, "android.hardware.touchscreen.multitouch.distinct"

    invoke-static {p0, v0}, Lorg/andengine/util/system/SystemUtils;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/andengine/input/touch/controller/MultiTouch;->SUPPORTED_DISTINCT:Ljava/lang/Boolean;

    .line 56
    :cond_0
    sget-object v0, Lorg/andengine/input/touch/controller/MultiTouch;->SUPPORTED_DISTINCT:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
