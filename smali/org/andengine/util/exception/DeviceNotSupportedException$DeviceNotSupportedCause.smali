.class public final enum Lorg/andengine/util/exception/DeviceNotSupportedException$DeviceNotSupportedCause;
.super Ljava/lang/Enum;
.source "DeviceNotSupportedException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andengine/util/exception/DeviceNotSupportedException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceNotSupportedCause"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/andengine/util/exception/DeviceNotSupportedException$DeviceNotSupportedCause;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CODEPATH_INCOMPLETE:Lorg/andengine/util/exception/DeviceNotSupportedException$DeviceNotSupportedCause;

.field public static final enum EGLCONFIG_NOT_FOUND:Lorg/andengine/util/exception/DeviceNotSupportedException$DeviceNotSupportedCause;

.field private static final synthetic ENUM$VALUES:[Lorg/andengine/util/exception/DeviceNotSupportedException$DeviceNotSupportedCause;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    new-instance v0, Lorg/andengine/util/exception/DeviceNotSupportedException$DeviceNotSupportedCause;

    const-string v1, "CODEPATH_INCOMPLETE"

    invoke-direct {v0, v1, v2}, Lorg/andengine/util/exception/DeviceNotSupportedException$DeviceNotSupportedCause;-><init>(Ljava/lang/String;I)V

    .line 63
    sput-object v0, Lorg/andengine/util/exception/DeviceNotSupportedException$DeviceNotSupportedCause;->CODEPATH_INCOMPLETE:Lorg/andengine/util/exception/DeviceNotSupportedException$DeviceNotSupportedCause;

    .line 64
    new-instance v0, Lorg/andengine/util/exception/DeviceNotSupportedException$DeviceNotSupportedCause;

    const-string v1, "EGLCONFIG_NOT_FOUND"

    invoke-direct {v0, v1, v3}, Lorg/andengine/util/exception/DeviceNotSupportedException$DeviceNotSupportedCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/andengine/util/exception/DeviceNotSupportedException$DeviceNotSupportedCause;->EGLCONFIG_NOT_FOUND:Lorg/andengine/util/exception/DeviceNotSupportedException$DeviceNotSupportedCause;

    .line 58
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/andengine/util/exception/DeviceNotSupportedException$DeviceNotSupportedCause;

    sget-object v1, Lorg/andengine/util/exception/DeviceNotSupportedException$DeviceNotSupportedCause;->CODEPATH_INCOMPLETE:Lorg/andengine/util/exception/DeviceNotSupportedException$DeviceNotSupportedCause;

    aput-object v1, v0, v2

    sget-object v1, Lorg/andengine/util/exception/DeviceNotSupportedException$DeviceNotSupportedCause;->EGLCONFIG_NOT_FOUND:Lorg/andengine/util/exception/DeviceNotSupportedException$DeviceNotSupportedCause;

    aput-object v1, v0, v3

    sput-object v0, Lorg/andengine/util/exception/DeviceNotSupportedException$DeviceNotSupportedCause;->ENUM$VALUES:[Lorg/andengine/util/exception/DeviceNotSupportedException$DeviceNotSupportedCause;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/andengine/util/exception/DeviceNotSupportedException$DeviceNotSupportedCause;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lorg/andengine/util/exception/DeviceNotSupportedException$DeviceNotSupportedCause;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/andengine/util/exception/DeviceNotSupportedException$DeviceNotSupportedCause;

    return-object v0
.end method

.method public static values()[Lorg/andengine/util/exception/DeviceNotSupportedException$DeviceNotSupportedCause;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/andengine/util/exception/DeviceNotSupportedException$DeviceNotSupportedCause;->ENUM$VALUES:[Lorg/andengine/util/exception/DeviceNotSupportedException$DeviceNotSupportedCause;

    array-length v1, v0

    new-array v2, v1, [Lorg/andengine/util/exception/DeviceNotSupportedException$DeviceNotSupportedCause;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
