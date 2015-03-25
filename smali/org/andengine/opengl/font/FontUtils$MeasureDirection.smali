.class public final enum Lorg/andengine/opengl/font/FontUtils$MeasureDirection;
.super Ljava/lang/Enum;
.source "FontUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andengine/opengl/font/FontUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MeasureDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/andengine/opengl/font/FontUtils$MeasureDirection;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BACKWARDS:Lorg/andengine/opengl/font/FontUtils$MeasureDirection;

.field private static final synthetic ENUM$VALUES:[Lorg/andengine/opengl/font/FontUtils$MeasureDirection;

.field public static final enum FORWARDS:Lorg/andengine/opengl/font/FontUtils$MeasureDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 413
    new-instance v0, Lorg/andengine/opengl/font/FontUtils$MeasureDirection;

    const-string v1, "FORWARDS"

    invoke-direct {v0, v1, v2}, Lorg/andengine/opengl/font/FontUtils$MeasureDirection;-><init>(Ljava/lang/String;I)V

    .line 417
    sput-object v0, Lorg/andengine/opengl/font/FontUtils$MeasureDirection;->FORWARDS:Lorg/andengine/opengl/font/FontUtils$MeasureDirection;

    .line 418
    new-instance v0, Lorg/andengine/opengl/font/FontUtils$MeasureDirection;

    const-string v1, "BACKWARDS"

    invoke-direct {v0, v1, v3}, Lorg/andengine/opengl/font/FontUtils$MeasureDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/andengine/opengl/font/FontUtils$MeasureDirection;->BACKWARDS:Lorg/andengine/opengl/font/FontUtils$MeasureDirection;

    .line 412
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/andengine/opengl/font/FontUtils$MeasureDirection;

    sget-object v1, Lorg/andengine/opengl/font/FontUtils$MeasureDirection;->FORWARDS:Lorg/andengine/opengl/font/FontUtils$MeasureDirection;

    aput-object v1, v0, v2

    sget-object v1, Lorg/andengine/opengl/font/FontUtils$MeasureDirection;->BACKWARDS:Lorg/andengine/opengl/font/FontUtils$MeasureDirection;

    aput-object v1, v0, v3

    sput-object v0, Lorg/andengine/opengl/font/FontUtils$MeasureDirection;->ENUM$VALUES:[Lorg/andengine/opengl/font/FontUtils$MeasureDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 412
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/andengine/opengl/font/FontUtils$MeasureDirection;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lorg/andengine/opengl/font/FontUtils$MeasureDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/andengine/opengl/font/FontUtils$MeasureDirection;

    return-object v0
.end method

.method public static values()[Lorg/andengine/opengl/font/FontUtils$MeasureDirection;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/andengine/opengl/font/FontUtils$MeasureDirection;->ENUM$VALUES:[Lorg/andengine/opengl/font/FontUtils$MeasureDirection;

    array-length v1, v0

    new-array v2, v1, [Lorg/andengine/opengl/font/FontUtils$MeasureDirection;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
