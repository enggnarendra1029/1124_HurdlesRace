.class public final enum Lorg/andengine/entity/text/AutoWrap;
.super Ljava/lang/Enum;
.source "AutoWrap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/andengine/entity/text/AutoWrap;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CJK:Lorg/andengine/entity/text/AutoWrap;

.field private static final synthetic ENUM$VALUES:[Lorg/andengine/entity/text/AutoWrap;

.field public static final enum LETTERS:Lorg/andengine/entity/text/AutoWrap;

.field public static final enum NONE:Lorg/andengine/entity/text/AutoWrap;

.field public static final enum WORDS:Lorg/andengine/entity/text/AutoWrap;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lorg/andengine/entity/text/AutoWrap;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lorg/andengine/entity/text/AutoWrap;-><init>(Ljava/lang/String;I)V

    .line 14
    sput-object v0, Lorg/andengine/entity/text/AutoWrap;->NONE:Lorg/andengine/entity/text/AutoWrap;

    .line 15
    new-instance v0, Lorg/andengine/entity/text/AutoWrap;

    const-string v1, "WORDS"

    invoke-direct {v0, v1, v3}, Lorg/andengine/entity/text/AutoWrap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/andengine/entity/text/AutoWrap;->WORDS:Lorg/andengine/entity/text/AutoWrap;

    .line 16
    new-instance v0, Lorg/andengine/entity/text/AutoWrap;

    const-string v1, "LETTERS"

    invoke-direct {v0, v1, v4}, Lorg/andengine/entity/text/AutoWrap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/andengine/entity/text/AutoWrap;->LETTERS:Lorg/andengine/entity/text/AutoWrap;

    .line 17
    new-instance v0, Lorg/andengine/entity/text/AutoWrap;

    const-string v1, "CJK"

    invoke-direct {v0, v1, v5}, Lorg/andengine/entity/text/AutoWrap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/andengine/entity/text/AutoWrap;->CJK:Lorg/andengine/entity/text/AutoWrap;

    .line 9
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/andengine/entity/text/AutoWrap;

    sget-object v1, Lorg/andengine/entity/text/AutoWrap;->NONE:Lorg/andengine/entity/text/AutoWrap;

    aput-object v1, v0, v2

    sget-object v1, Lorg/andengine/entity/text/AutoWrap;->WORDS:Lorg/andengine/entity/text/AutoWrap;

    aput-object v1, v0, v3

    sget-object v1, Lorg/andengine/entity/text/AutoWrap;->LETTERS:Lorg/andengine/entity/text/AutoWrap;

    aput-object v1, v0, v4

    sget-object v1, Lorg/andengine/entity/text/AutoWrap;->CJK:Lorg/andengine/entity/text/AutoWrap;

    aput-object v1, v0, v5

    sput-object v0, Lorg/andengine/entity/text/AutoWrap;->ENUM$VALUES:[Lorg/andengine/entity/text/AutoWrap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/andengine/entity/text/AutoWrap;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lorg/andengine/entity/text/AutoWrap;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/andengine/entity/text/AutoWrap;

    return-object v0
.end method

.method public static values()[Lorg/andengine/entity/text/AutoWrap;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/andengine/entity/text/AutoWrap;->ENUM$VALUES:[Lorg/andengine/entity/text/AutoWrap;

    array-length v1, v0

    new-array v2, v1, [Lorg/andengine/entity/text/AutoWrap;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
