.class public final enum Lorg/andengine/entity/primitive/DrawMode;
.super Ljava/lang/Enum;
.source "DrawMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/andengine/entity/primitive/DrawMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/andengine/entity/primitive/DrawMode;

.field public static final enum LINES:Lorg/andengine/entity/primitive/DrawMode;

.field public static final enum LINE_LOOP:Lorg/andengine/entity/primitive/DrawMode;

.field public static final enum LINE_STRIP:Lorg/andengine/entity/primitive/DrawMode;

.field public static final enum POINTS:Lorg/andengine/entity/primitive/DrawMode;

.field public static final enum TRIANGLES:Lorg/andengine/entity/primitive/DrawMode;

.field public static final enum TRIANGLE_FAN:Lorg/andengine/entity/primitive/DrawMode;

.field public static final enum TRIANGLE_STRIP:Lorg/andengine/entity/primitive/DrawMode;


# instance fields
.field public final mDrawMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 12
    new-instance v0, Lorg/andengine/entity/primitive/DrawMode;

    const-string v1, "POINTS"

    .line 16
    invoke-direct {v0, v1, v4, v4}, Lorg/andengine/entity/primitive/DrawMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/andengine/entity/primitive/DrawMode;->POINTS:Lorg/andengine/entity/primitive/DrawMode;

    .line 17
    new-instance v0, Lorg/andengine/entity/primitive/DrawMode;

    const-string v1, "LINE_STRIP"

    invoke-direct {v0, v1, v5, v7}, Lorg/andengine/entity/primitive/DrawMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/andengine/entity/primitive/DrawMode;->LINE_STRIP:Lorg/andengine/entity/primitive/DrawMode;

    .line 18
    new-instance v0, Lorg/andengine/entity/primitive/DrawMode;

    const-string v1, "LINE_LOOP"

    invoke-direct {v0, v1, v6, v6}, Lorg/andengine/entity/primitive/DrawMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/andengine/entity/primitive/DrawMode;->LINE_LOOP:Lorg/andengine/entity/primitive/DrawMode;

    .line 19
    new-instance v0, Lorg/andengine/entity/primitive/DrawMode;

    const-string v1, "LINES"

    invoke-direct {v0, v1, v7, v5}, Lorg/andengine/entity/primitive/DrawMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/andengine/entity/primitive/DrawMode;->LINES:Lorg/andengine/entity/primitive/DrawMode;

    .line 20
    new-instance v0, Lorg/andengine/entity/primitive/DrawMode;

    const-string v1, "TRIANGLE_STRIP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v8, v2}, Lorg/andengine/entity/primitive/DrawMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/andengine/entity/primitive/DrawMode;->TRIANGLE_STRIP:Lorg/andengine/entity/primitive/DrawMode;

    .line 21
    new-instance v0, Lorg/andengine/entity/primitive/DrawMode;

    const-string v1, "TRIANGLE_FAN"

    const/4 v2, 0x5

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lorg/andengine/entity/primitive/DrawMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/andengine/entity/primitive/DrawMode;->TRIANGLE_FAN:Lorg/andengine/entity/primitive/DrawMode;

    .line 22
    new-instance v0, Lorg/andengine/entity/primitive/DrawMode;

    const-string v1, "TRIANGLES"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v8}, Lorg/andengine/entity/primitive/DrawMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/andengine/entity/primitive/DrawMode;->TRIANGLES:Lorg/andengine/entity/primitive/DrawMode;

    .line 11
    const/4 v0, 0x7

    new-array v0, v0, [Lorg/andengine/entity/primitive/DrawMode;

    sget-object v1, Lorg/andengine/entity/primitive/DrawMode;->POINTS:Lorg/andengine/entity/primitive/DrawMode;

    aput-object v1, v0, v4

    sget-object v1, Lorg/andengine/entity/primitive/DrawMode;->LINE_STRIP:Lorg/andengine/entity/primitive/DrawMode;

    aput-object v1, v0, v5

    sget-object v1, Lorg/andengine/entity/primitive/DrawMode;->LINE_LOOP:Lorg/andengine/entity/primitive/DrawMode;

    aput-object v1, v0, v6

    sget-object v1, Lorg/andengine/entity/primitive/DrawMode;->LINES:Lorg/andengine/entity/primitive/DrawMode;

    aput-object v1, v0, v7

    sget-object v1, Lorg/andengine/entity/primitive/DrawMode;->TRIANGLE_STRIP:Lorg/andengine/entity/primitive/DrawMode;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lorg/andengine/entity/primitive/DrawMode;->TRIANGLE_FAN:Lorg/andengine/entity/primitive/DrawMode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/andengine/entity/primitive/DrawMode;->TRIANGLES:Lorg/andengine/entity/primitive/DrawMode;

    aput-object v2, v0, v1

    sput-object v0, Lorg/andengine/entity/primitive/DrawMode;->ENUM$VALUES:[Lorg/andengine/entity/primitive/DrawMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "pDrawMode"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput p3, p0, Lorg/andengine/entity/primitive/DrawMode;->mDrawMode:I

    .line 40
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/andengine/entity/primitive/DrawMode;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lorg/andengine/entity/primitive/DrawMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/andengine/entity/primitive/DrawMode;

    return-object v0
.end method

.method public static values()[Lorg/andengine/entity/primitive/DrawMode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/andengine/entity/primitive/DrawMode;->ENUM$VALUES:[Lorg/andengine/entity/primitive/DrawMode;

    array-length v1, v0

    new-array v2, v1, [Lorg/andengine/entity/primitive/DrawMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getDrawMode()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lorg/andengine/entity/primitive/DrawMode;->mDrawMode:I

    return v0
.end method
