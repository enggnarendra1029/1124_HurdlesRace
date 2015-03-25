.class public abstract enum Lorg/andengine/util/adt/data/operator/ShortOperator;
.super Ljava/lang/Enum;
.source "ShortOperator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/andengine/util/adt/data/operator/ShortOperator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/andengine/util/adt/data/operator/ShortOperator;

.field public static final enum EQUALS:Lorg/andengine/util/adt/data/operator/ShortOperator;

.field public static final enum LESS_OR_EQUAL_THAN:Lorg/andengine/util/adt/data/operator/ShortOperator;

.field public static final enum LESS_THAN:Lorg/andengine/util/adt/data/operator/ShortOperator;

.field public static final enum MORE_OR_EQUAL_THAN:Lorg/andengine/util/adt/data/operator/ShortOperator;

.field public static final enum MORE_THAN:Lorg/andengine/util/adt/data/operator/ShortOperator;

.field public static final enum NOT_EQUALS:Lorg/andengine/util/adt/data/operator/ShortOperator;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    new-instance v0, Lorg/andengine/util/adt/data/operator/ShortOperator$1;

    const-string v1, "EQUALS"

    invoke-direct {v0, v1, v3}, Lorg/andengine/util/adt/data/operator/ShortOperator$1;-><init>(Ljava/lang/String;I)V

    .line 14
    sput-object v0, Lorg/andengine/util/adt/data/operator/ShortOperator;->EQUALS:Lorg/andengine/util/adt/data/operator/ShortOperator;

    .line 20
    new-instance v0, Lorg/andengine/util/adt/data/operator/ShortOperator$2;

    const-string v1, "NOT_EQUALS"

    invoke-direct {v0, v1, v4}, Lorg/andengine/util/adt/data/operator/ShortOperator$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/andengine/util/adt/data/operator/ShortOperator;->NOT_EQUALS:Lorg/andengine/util/adt/data/operator/ShortOperator;

    .line 26
    new-instance v0, Lorg/andengine/util/adt/data/operator/ShortOperator$3;

    const-string v1, "LESS_THAN"

    invoke-direct {v0, v1, v5}, Lorg/andengine/util/adt/data/operator/ShortOperator$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/andengine/util/adt/data/operator/ShortOperator;->LESS_THAN:Lorg/andengine/util/adt/data/operator/ShortOperator;

    .line 32
    new-instance v0, Lorg/andengine/util/adt/data/operator/ShortOperator$4;

    const-string v1, "LESS_OR_EQUAL_THAN"

    invoke-direct {v0, v1, v6}, Lorg/andengine/util/adt/data/operator/ShortOperator$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/andengine/util/adt/data/operator/ShortOperator;->LESS_OR_EQUAL_THAN:Lorg/andengine/util/adt/data/operator/ShortOperator;

    .line 38
    new-instance v0, Lorg/andengine/util/adt/data/operator/ShortOperator$5;

    const-string v1, "MORE_THAN"

    invoke-direct {v0, v1, v7}, Lorg/andengine/util/adt/data/operator/ShortOperator$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/andengine/util/adt/data/operator/ShortOperator;->MORE_THAN:Lorg/andengine/util/adt/data/operator/ShortOperator;

    .line 44
    new-instance v0, Lorg/andengine/util/adt/data/operator/ShortOperator$6;

    const-string v1, "MORE_OR_EQUAL_THAN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/andengine/util/adt/data/operator/ShortOperator$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/andengine/util/adt/data/operator/ShortOperator;->MORE_OR_EQUAL_THAN:Lorg/andengine/util/adt/data/operator/ShortOperator;

    .line 9
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/andengine/util/adt/data/operator/ShortOperator;

    sget-object v1, Lorg/andengine/util/adt/data/operator/ShortOperator;->EQUALS:Lorg/andengine/util/adt/data/operator/ShortOperator;

    aput-object v1, v0, v3

    sget-object v1, Lorg/andengine/util/adt/data/operator/ShortOperator;->NOT_EQUALS:Lorg/andengine/util/adt/data/operator/ShortOperator;

    aput-object v1, v0, v4

    sget-object v1, Lorg/andengine/util/adt/data/operator/ShortOperator;->LESS_THAN:Lorg/andengine/util/adt/data/operator/ShortOperator;

    aput-object v1, v0, v5

    sget-object v1, Lorg/andengine/util/adt/data/operator/ShortOperator;->LESS_OR_EQUAL_THAN:Lorg/andengine/util/adt/data/operator/ShortOperator;

    aput-object v1, v0, v6

    sget-object v1, Lorg/andengine/util/adt/data/operator/ShortOperator;->MORE_THAN:Lorg/andengine/util/adt/data/operator/ShortOperator;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/andengine/util/adt/data/operator/ShortOperator;->MORE_OR_EQUAL_THAN:Lorg/andengine/util/adt/data/operator/ShortOperator;

    aput-object v2, v0, v1

    sput-object v0, Lorg/andengine/util/adt/data/operator/ShortOperator;->ENUM$VALUES:[Lorg/andengine/util/adt/data/operator/ShortOperator;

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

.method synthetic constructor <init>(Ljava/lang/String;ILorg/andengine/util/adt/data/operator/ShortOperator;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Lorg/andengine/util/adt/data/operator/ShortOperator;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/andengine/util/adt/data/operator/ShortOperator;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lorg/andengine/util/adt/data/operator/ShortOperator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/andengine/util/adt/data/operator/ShortOperator;

    return-object v0
.end method

.method public static values()[Lorg/andengine/util/adt/data/operator/ShortOperator;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/andengine/util/adt/data/operator/ShortOperator;->ENUM$VALUES:[Lorg/andengine/util/adt/data/operator/ShortOperator;

    array-length v1, v0

    new-array v2, v1, [Lorg/andengine/util/adt/data/operator/ShortOperator;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public abstract check(SS)Z
.end method
