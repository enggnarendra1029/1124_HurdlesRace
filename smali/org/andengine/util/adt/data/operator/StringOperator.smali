.class public abstract enum Lorg/andengine/util/adt/data/operator/StringOperator;
.super Ljava/lang/Enum;
.source "StringOperator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/andengine/util/adt/data/operator/StringOperator;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CONTAINS:Lorg/andengine/util/adt/data/operator/StringOperator;

.field public static final enum ENDS_WITH:Lorg/andengine/util/adt/data/operator/StringOperator;

.field private static final synthetic ENUM$VALUES:[Lorg/andengine/util/adt/data/operator/StringOperator;

.field public static final enum EQUALS:Lorg/andengine/util/adt/data/operator/StringOperator;

.field public static final enum EQUALS_IGNORE_CASE:Lorg/andengine/util/adt/data/operator/StringOperator;

.field public static final enum NOT_CONTAINS:Lorg/andengine/util/adt/data/operator/StringOperator;

.field public static final enum NOT_ENDS_WITH:Lorg/andengine/util/adt/data/operator/StringOperator;

.field public static final enum NOT_EQUALS:Lorg/andengine/util/adt/data/operator/StringOperator;

.field public static final enum NOT_EQUALS_IGNORE_CASE:Lorg/andengine/util/adt/data/operator/StringOperator;

.field public static final enum NOT_STARTS_WITH:Lorg/andengine/util/adt/data/operator/StringOperator;

.field public static final enum STARTS_WITH:Lorg/andengine/util/adt/data/operator/StringOperator;


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
    new-instance v0, Lorg/andengine/util/adt/data/operator/StringOperator$1;

    const-string v1, "EQUALS"

    invoke-direct {v0, v1, v3}, Lorg/andengine/util/adt/data/operator/StringOperator$1;-><init>(Ljava/lang/String;I)V

    .line 14
    sput-object v0, Lorg/andengine/util/adt/data/operator/StringOperator;->EQUALS:Lorg/andengine/util/adt/data/operator/StringOperator;

    .line 20
    new-instance v0, Lorg/andengine/util/adt/data/operator/StringOperator$2;

    const-string v1, "EQUALS_IGNORE_CASE"

    invoke-direct {v0, v1, v4}, Lorg/andengine/util/adt/data/operator/StringOperator$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/andengine/util/adt/data/operator/StringOperator;->EQUALS_IGNORE_CASE:Lorg/andengine/util/adt/data/operator/StringOperator;

    .line 26
    new-instance v0, Lorg/andengine/util/adt/data/operator/StringOperator$3;

    const-string v1, "NOT_EQUALS"

    invoke-direct {v0, v1, v5}, Lorg/andengine/util/adt/data/operator/StringOperator$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/andengine/util/adt/data/operator/StringOperator;->NOT_EQUALS:Lorg/andengine/util/adt/data/operator/StringOperator;

    .line 32
    new-instance v0, Lorg/andengine/util/adt/data/operator/StringOperator$4;

    const-string v1, "NOT_EQUALS_IGNORE_CASE"

    invoke-direct {v0, v1, v6}, Lorg/andengine/util/adt/data/operator/StringOperator$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/andengine/util/adt/data/operator/StringOperator;->NOT_EQUALS_IGNORE_CASE:Lorg/andengine/util/adt/data/operator/StringOperator;

    .line 38
    new-instance v0, Lorg/andengine/util/adt/data/operator/StringOperator$5;

    const-string v1, "CONTAINS"

    invoke-direct {v0, v1, v7}, Lorg/andengine/util/adt/data/operator/StringOperator$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/andengine/util/adt/data/operator/StringOperator;->CONTAINS:Lorg/andengine/util/adt/data/operator/StringOperator;

    .line 44
    new-instance v0, Lorg/andengine/util/adt/data/operator/StringOperator$6;

    const-string v1, "NOT_CONTAINS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/andengine/util/adt/data/operator/StringOperator$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/andengine/util/adt/data/operator/StringOperator;->NOT_CONTAINS:Lorg/andengine/util/adt/data/operator/StringOperator;

    .line 50
    new-instance v0, Lorg/andengine/util/adt/data/operator/StringOperator$7;

    const-string v1, "STARTS_WITH"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/andengine/util/adt/data/operator/StringOperator$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/andengine/util/adt/data/operator/StringOperator;->STARTS_WITH:Lorg/andengine/util/adt/data/operator/StringOperator;

    .line 56
    new-instance v0, Lorg/andengine/util/adt/data/operator/StringOperator$8;

    const-string v1, "NOT_STARTS_WITH"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/andengine/util/adt/data/operator/StringOperator$8;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/andengine/util/adt/data/operator/StringOperator;->NOT_STARTS_WITH:Lorg/andengine/util/adt/data/operator/StringOperator;

    .line 62
    new-instance v0, Lorg/andengine/util/adt/data/operator/StringOperator$9;

    const-string v1, "ENDS_WITH"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/andengine/util/adt/data/operator/StringOperator$9;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/andengine/util/adt/data/operator/StringOperator;->ENDS_WITH:Lorg/andengine/util/adt/data/operator/StringOperator;

    .line 68
    new-instance v0, Lorg/andengine/util/adt/data/operator/StringOperator$10;

    const-string v1, "NOT_ENDS_WITH"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/andengine/util/adt/data/operator/StringOperator$10;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/andengine/util/adt/data/operator/StringOperator;->NOT_ENDS_WITH:Lorg/andengine/util/adt/data/operator/StringOperator;

    .line 9
    const/16 v0, 0xa

    new-array v0, v0, [Lorg/andengine/util/adt/data/operator/StringOperator;

    sget-object v1, Lorg/andengine/util/adt/data/operator/StringOperator;->EQUALS:Lorg/andengine/util/adt/data/operator/StringOperator;

    aput-object v1, v0, v3

    sget-object v1, Lorg/andengine/util/adt/data/operator/StringOperator;->EQUALS_IGNORE_CASE:Lorg/andengine/util/adt/data/operator/StringOperator;

    aput-object v1, v0, v4

    sget-object v1, Lorg/andengine/util/adt/data/operator/StringOperator;->NOT_EQUALS:Lorg/andengine/util/adt/data/operator/StringOperator;

    aput-object v1, v0, v5

    sget-object v1, Lorg/andengine/util/adt/data/operator/StringOperator;->NOT_EQUALS_IGNORE_CASE:Lorg/andengine/util/adt/data/operator/StringOperator;

    aput-object v1, v0, v6

    sget-object v1, Lorg/andengine/util/adt/data/operator/StringOperator;->CONTAINS:Lorg/andengine/util/adt/data/operator/StringOperator;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/andengine/util/adt/data/operator/StringOperator;->NOT_CONTAINS:Lorg/andengine/util/adt/data/operator/StringOperator;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/andengine/util/adt/data/operator/StringOperator;->STARTS_WITH:Lorg/andengine/util/adt/data/operator/StringOperator;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/andengine/util/adt/data/operator/StringOperator;->NOT_STARTS_WITH:Lorg/andengine/util/adt/data/operator/StringOperator;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/andengine/util/adt/data/operator/StringOperator;->ENDS_WITH:Lorg/andengine/util/adt/data/operator/StringOperator;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/andengine/util/adt/data/operator/StringOperator;->NOT_ENDS_WITH:Lorg/andengine/util/adt/data/operator/StringOperator;

    aput-object v2, v0, v1

    sput-object v0, Lorg/andengine/util/adt/data/operator/StringOperator;->ENUM$VALUES:[Lorg/andengine/util/adt/data/operator/StringOperator;

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

.method synthetic constructor <init>(Ljava/lang/String;ILorg/andengine/util/adt/data/operator/StringOperator;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Lorg/andengine/util/adt/data/operator/StringOperator;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/andengine/util/adt/data/operator/StringOperator;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lorg/andengine/util/adt/data/operator/StringOperator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/andengine/util/adt/data/operator/StringOperator;

    return-object v0
.end method

.method public static values()[Lorg/andengine/util/adt/data/operator/StringOperator;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/andengine/util/adt/data/operator/StringOperator;->ENUM$VALUES:[Lorg/andengine/util/adt/data/operator/StringOperator;

    array-length v1, v0

    new-array v2, v1, [Lorg/andengine/util/adt/data/operator/StringOperator;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public abstract check(Ljava/lang/String;Ljava/lang/String;)Z
.end method
