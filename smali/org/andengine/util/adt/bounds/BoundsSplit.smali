.class public final enum Lorg/andengine/util/adt/bounds/BoundsSplit;
.super Ljava/lang/Enum;
.source "BoundsSplit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/andengine/util/adt/bounds/BoundsSplit$BoundsSplitException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/andengine/util/adt/bounds/BoundsSplit;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BOTTOM_LEFT:Lorg/andengine/util/adt/bounds/BoundsSplit;

.field public static final enum BOTTOM_RIGHT:Lorg/andengine/util/adt/bounds/BoundsSplit;

.field private static final synthetic ENUM$VALUES:[Lorg/andengine/util/adt/bounds/BoundsSplit;

.field public static final enum TOP_LEFT:Lorg/andengine/util/adt/bounds/BoundsSplit;

.field public static final enum TOP_RIGHT:Lorg/andengine/util/adt/bounds/BoundsSplit;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lorg/andengine/util/adt/bounds/BoundsSplit;

    const-string v1, "TOP_LEFT"

    invoke-direct {v0, v1, v2}, Lorg/andengine/util/adt/bounds/BoundsSplit;-><init>(Ljava/lang/String;I)V

    .line 16
    sput-object v0, Lorg/andengine/util/adt/bounds/BoundsSplit;->TOP_LEFT:Lorg/andengine/util/adt/bounds/BoundsSplit;

    new-instance v0, Lorg/andengine/util/adt/bounds/BoundsSplit;

    const-string v1, "TOP_RIGHT"

    invoke-direct {v0, v1, v3}, Lorg/andengine/util/adt/bounds/BoundsSplit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/andengine/util/adt/bounds/BoundsSplit;->TOP_RIGHT:Lorg/andengine/util/adt/bounds/BoundsSplit;

    new-instance v0, Lorg/andengine/util/adt/bounds/BoundsSplit;

    const-string v1, "BOTTOM_LEFT"

    invoke-direct {v0, v1, v4}, Lorg/andengine/util/adt/bounds/BoundsSplit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/andengine/util/adt/bounds/BoundsSplit;->BOTTOM_LEFT:Lorg/andengine/util/adt/bounds/BoundsSplit;

    new-instance v0, Lorg/andengine/util/adt/bounds/BoundsSplit;

    const-string v1, "BOTTOM_RIGHT"

    invoke-direct {v0, v1, v5}, Lorg/andengine/util/adt/bounds/BoundsSplit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/andengine/util/adt/bounds/BoundsSplit;->BOTTOM_RIGHT:Lorg/andengine/util/adt/bounds/BoundsSplit;

    .line 11
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/andengine/util/adt/bounds/BoundsSplit;

    sget-object v1, Lorg/andengine/util/adt/bounds/BoundsSplit;->TOP_LEFT:Lorg/andengine/util/adt/bounds/BoundsSplit;

    aput-object v1, v0, v2

    sget-object v1, Lorg/andengine/util/adt/bounds/BoundsSplit;->TOP_RIGHT:Lorg/andengine/util/adt/bounds/BoundsSplit;

    aput-object v1, v0, v3

    sget-object v1, Lorg/andengine/util/adt/bounds/BoundsSplit;->BOTTOM_LEFT:Lorg/andengine/util/adt/bounds/BoundsSplit;

    aput-object v1, v0, v4

    sget-object v1, Lorg/andengine/util/adt/bounds/BoundsSplit;->BOTTOM_RIGHT:Lorg/andengine/util/adt/bounds/BoundsSplit;

    aput-object v1, v0, v5

    sput-object v0, Lorg/andengine/util/adt/bounds/BoundsSplit;->ENUM$VALUES:[Lorg/andengine/util/adt/bounds/BoundsSplit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/andengine/util/adt/bounds/BoundsSplit;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lorg/andengine/util/adt/bounds/BoundsSplit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/andengine/util/adt/bounds/BoundsSplit;

    return-object v0
.end method

.method public static values()[Lorg/andengine/util/adt/bounds/BoundsSplit;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/andengine/util/adt/bounds/BoundsSplit;->ENUM$VALUES:[Lorg/andengine/util/adt/bounds/BoundsSplit;

    array-length v1, v0

    new-array v2, v1, [Lorg/andengine/util/adt/bounds/BoundsSplit;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
