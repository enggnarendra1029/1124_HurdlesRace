.class public final enum Lorg/andengine/util/debug/Debug$DebugLevel;
.super Ljava/lang/Enum;
.source "Debug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andengine/util/debug/Debug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DebugLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/andengine/util/debug/Debug$DebugLevel;",
        ">;"
    }
.end annotation


# static fields
.field public static ALL:Lorg/andengine/util/debug/Debug$DebugLevel;

.field public static final enum DEBUG:Lorg/andengine/util/debug/Debug$DebugLevel;

.field private static final synthetic ENUM$VALUES:[Lorg/andengine/util/debug/Debug$DebugLevel;

.field public static final enum ERROR:Lorg/andengine/util/debug/Debug$DebugLevel;

.field public static final enum INFO:Lorg/andengine/util/debug/Debug$DebugLevel;

.field public static final enum NONE:Lorg/andengine/util/debug/Debug$DebugLevel;

.field public static final enum VERBOSE:Lorg/andengine/util/debug/Debug$DebugLevel;

.field public static final enum WARNING:Lorg/andengine/util/debug/Debug$DebugLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 412
    new-instance v0, Lorg/andengine/util/debug/Debug$DebugLevel;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lorg/andengine/util/debug/Debug$DebugLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/andengine/util/debug/Debug$DebugLevel;->NONE:Lorg/andengine/util/debug/Debug$DebugLevel;

    new-instance v0, Lorg/andengine/util/debug/Debug$DebugLevel;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v4}, Lorg/andengine/util/debug/Debug$DebugLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/andengine/util/debug/Debug$DebugLevel;->ERROR:Lorg/andengine/util/debug/Debug$DebugLevel;

    new-instance v0, Lorg/andengine/util/debug/Debug$DebugLevel;

    const-string v1, "WARNING"

    invoke-direct {v0, v1, v5}, Lorg/andengine/util/debug/Debug$DebugLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/andengine/util/debug/Debug$DebugLevel;->WARNING:Lorg/andengine/util/debug/Debug$DebugLevel;

    new-instance v0, Lorg/andengine/util/debug/Debug$DebugLevel;

    const-string v1, "INFO"

    invoke-direct {v0, v1, v6}, Lorg/andengine/util/debug/Debug$DebugLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/andengine/util/debug/Debug$DebugLevel;->INFO:Lorg/andengine/util/debug/Debug$DebugLevel;

    new-instance v0, Lorg/andengine/util/debug/Debug$DebugLevel;

    const-string v1, "DEBUG"

    invoke-direct {v0, v1, v7}, Lorg/andengine/util/debug/Debug$DebugLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/andengine/util/debug/Debug$DebugLevel;->DEBUG:Lorg/andengine/util/debug/Debug$DebugLevel;

    new-instance v0, Lorg/andengine/util/debug/Debug$DebugLevel;

    const-string v1, "VERBOSE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/andengine/util/debug/Debug$DebugLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/andengine/util/debug/Debug$DebugLevel;->VERBOSE:Lorg/andengine/util/debug/Debug$DebugLevel;

    const/4 v0, 0x6

    new-array v0, v0, [Lorg/andengine/util/debug/Debug$DebugLevel;

    sget-object v1, Lorg/andengine/util/debug/Debug$DebugLevel;->NONE:Lorg/andengine/util/debug/Debug$DebugLevel;

    aput-object v1, v0, v3

    sget-object v1, Lorg/andengine/util/debug/Debug$DebugLevel;->ERROR:Lorg/andengine/util/debug/Debug$DebugLevel;

    aput-object v1, v0, v4

    sget-object v1, Lorg/andengine/util/debug/Debug$DebugLevel;->WARNING:Lorg/andengine/util/debug/Debug$DebugLevel;

    aput-object v1, v0, v5

    sget-object v1, Lorg/andengine/util/debug/Debug$DebugLevel;->INFO:Lorg/andengine/util/debug/Debug$DebugLevel;

    aput-object v1, v0, v6

    sget-object v1, Lorg/andengine/util/debug/Debug$DebugLevel;->DEBUG:Lorg/andengine/util/debug/Debug$DebugLevel;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/andengine/util/debug/Debug$DebugLevel;->VERBOSE:Lorg/andengine/util/debug/Debug$DebugLevel;

    aput-object v2, v0, v1

    sput-object v0, Lorg/andengine/util/debug/Debug$DebugLevel;->ENUM$VALUES:[Lorg/andengine/util/debug/Debug$DebugLevel;

    .line 414
    sget-object v0, Lorg/andengine/util/debug/Debug$DebugLevel;->VERBOSE:Lorg/andengine/util/debug/Debug$DebugLevel;

    sput-object v0, Lorg/andengine/util/debug/Debug$DebugLevel;->ALL:Lorg/andengine/util/debug/Debug$DebugLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 411
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/andengine/util/debug/Debug$DebugLevel;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lorg/andengine/util/debug/Debug$DebugLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/andengine/util/debug/Debug$DebugLevel;

    return-object v0
.end method

.method public static values()[Lorg/andengine/util/debug/Debug$DebugLevel;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/andengine/util/debug/Debug$DebugLevel;->ENUM$VALUES:[Lorg/andengine/util/debug/Debug$DebugLevel;

    array-length v1, v0

    new-array v2, v1, [Lorg/andengine/util/debug/Debug$DebugLevel;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public isSameOrLessThan(Lorg/andengine/util/debug/Debug$DebugLevel;)Z
    .locals 1
    .parameter "pDebugLevel"

    .prologue
    .line 417
    invoke-virtual {p0, p1}, Lorg/andengine/util/debug/Debug$DebugLevel;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
