.class public final enum Lorg/andengine/util/algorithm/path/Direction;
.super Ljava/lang/Enum;
.source "Direction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/andengine/util/algorithm/path/Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$org$andengine$util$algorithm$path$Direction:[I

.field public static final enum DOWN:Lorg/andengine/util/algorithm/path/Direction;

.field public static final enum DOWN_LEFT:Lorg/andengine/util/algorithm/path/Direction;

.field public static final enum DOWN_RIGHT:Lorg/andengine/util/algorithm/path/Direction;

.field private static final synthetic ENUM$VALUES:[Lorg/andengine/util/algorithm/path/Direction;

.field public static final enum LEFT:Lorg/andengine/util/algorithm/path/Direction;

.field public static final enum RIGHT:Lorg/andengine/util/algorithm/path/Direction;

.field public static final enum UP:Lorg/andengine/util/algorithm/path/Direction;

.field public static final enum UP_LEFT:Lorg/andengine/util/algorithm/path/Direction;

.field public static final enum UP_RIGHT:Lorg/andengine/util/algorithm/path/Direction;


# instance fields
.field private final mDeltaX:I

.field private final mDeltaY:I


# direct methods
.method static synthetic $SWITCH_TABLE$org$andengine$util$algorithm$path$Direction()[I
    .locals 3

    .prologue
    .line 10
    sget-object v0, Lorg/andengine/util/algorithm/path/Direction;->$SWITCH_TABLE$org$andengine$util$algorithm$path$Direction:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/andengine/util/algorithm/path/Direction;->values()[Lorg/andengine/util/algorithm/path/Direction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/andengine/util/algorithm/path/Direction;->DOWN:Lorg/andengine/util/algorithm/path/Direction;

    invoke-virtual {v1}, Lorg/andengine/util/algorithm/path/Direction;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_1
    :try_start_1
    sget-object v1, Lorg/andengine/util/algorithm/path/Direction;->DOWN_LEFT:Lorg/andengine/util/algorithm/path/Direction;

    invoke-virtual {v1}, Lorg/andengine/util/algorithm/path/Direction;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_2
    :try_start_2
    sget-object v1, Lorg/andengine/util/algorithm/path/Direction;->DOWN_RIGHT:Lorg/andengine/util/algorithm/path/Direction;

    invoke-virtual {v1}, Lorg/andengine/util/algorithm/path/Direction;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_3
    :try_start_3
    sget-object v1, Lorg/andengine/util/algorithm/path/Direction;->LEFT:Lorg/andengine/util/algorithm/path/Direction;

    invoke-virtual {v1}, Lorg/andengine/util/algorithm/path/Direction;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_4
    :try_start_4
    sget-object v1, Lorg/andengine/util/algorithm/path/Direction;->RIGHT:Lorg/andengine/util/algorithm/path/Direction;

    invoke-virtual {v1}, Lorg/andengine/util/algorithm/path/Direction;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_5
    :try_start_5
    sget-object v1, Lorg/andengine/util/algorithm/path/Direction;->UP:Lorg/andengine/util/algorithm/path/Direction;

    invoke-virtual {v1}, Lorg/andengine/util/algorithm/path/Direction;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_6
    :try_start_6
    sget-object v1, Lorg/andengine/util/algorithm/path/Direction;->UP_LEFT:Lorg/andengine/util/algorithm/path/Direction;

    invoke-virtual {v1}, Lorg/andengine/util/algorithm/path/Direction;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_7
    :try_start_7
    sget-object v1, Lorg/andengine/util/algorithm/path/Direction;->UP_RIGHT:Lorg/andengine/util/algorithm/path/Direction;

    invoke-virtual {v1}, Lorg/andengine/util/algorithm/path/Direction;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_8
    sput-object v0, Lorg/andengine/util/algorithm/path/Direction;->$SWITCH_TABLE$org$andengine$util$algorithm$path$Direction:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 11
    new-instance v0, Lorg/andengine/util/algorithm/path/Direction;

    const-string v1, "UP"

    .line 15
    invoke-direct {v0, v1, v5, v5, v4}, Lorg/andengine/util/algorithm/path/Direction;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/andengine/util/algorithm/path/Direction;->UP:Lorg/andengine/util/algorithm/path/Direction;

    .line 16
    new-instance v0, Lorg/andengine/util/algorithm/path/Direction;

    const-string v1, "DOWN"

    invoke-direct {v0, v1, v3, v5, v3}, Lorg/andengine/util/algorithm/path/Direction;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/andengine/util/algorithm/path/Direction;->DOWN:Lorg/andengine/util/algorithm/path/Direction;

    .line 17
    new-instance v0, Lorg/andengine/util/algorithm/path/Direction;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v6, v4, v5}, Lorg/andengine/util/algorithm/path/Direction;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/andengine/util/algorithm/path/Direction;->LEFT:Lorg/andengine/util/algorithm/path/Direction;

    .line 18
    new-instance v0, Lorg/andengine/util/algorithm/path/Direction;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v7, v3, v5}, Lorg/andengine/util/algorithm/path/Direction;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/andengine/util/algorithm/path/Direction;->RIGHT:Lorg/andengine/util/algorithm/path/Direction;

    .line 19
    new-instance v0, Lorg/andengine/util/algorithm/path/Direction;

    const-string v1, "UP_LEFT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v4, v4}, Lorg/andengine/util/algorithm/path/Direction;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/andengine/util/algorithm/path/Direction;->UP_LEFT:Lorg/andengine/util/algorithm/path/Direction;

    .line 20
    new-instance v0, Lorg/andengine/util/algorithm/path/Direction;

    const-string v1, "UP_RIGHT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/andengine/util/algorithm/path/Direction;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/andengine/util/algorithm/path/Direction;->UP_RIGHT:Lorg/andengine/util/algorithm/path/Direction;

    .line 21
    new-instance v0, Lorg/andengine/util/algorithm/path/Direction;

    const-string v1, "DOWN_LEFT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/andengine/util/algorithm/path/Direction;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/andengine/util/algorithm/path/Direction;->DOWN_LEFT:Lorg/andengine/util/algorithm/path/Direction;

    .line 22
    new-instance v0, Lorg/andengine/util/algorithm/path/Direction;

    const-string v1, "DOWN_RIGHT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v3, v3}, Lorg/andengine/util/algorithm/path/Direction;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/andengine/util/algorithm/path/Direction;->DOWN_RIGHT:Lorg/andengine/util/algorithm/path/Direction;

    .line 10
    const/16 v0, 0x8

    new-array v0, v0, [Lorg/andengine/util/algorithm/path/Direction;

    sget-object v1, Lorg/andengine/util/algorithm/path/Direction;->UP:Lorg/andengine/util/algorithm/path/Direction;

    aput-object v1, v0, v5

    sget-object v1, Lorg/andengine/util/algorithm/path/Direction;->DOWN:Lorg/andengine/util/algorithm/path/Direction;

    aput-object v1, v0, v3

    sget-object v1, Lorg/andengine/util/algorithm/path/Direction;->LEFT:Lorg/andengine/util/algorithm/path/Direction;

    aput-object v1, v0, v6

    sget-object v1, Lorg/andengine/util/algorithm/path/Direction;->RIGHT:Lorg/andengine/util/algorithm/path/Direction;

    aput-object v1, v0, v7

    const/4 v1, 0x4

    sget-object v2, Lorg/andengine/util/algorithm/path/Direction;->UP_LEFT:Lorg/andengine/util/algorithm/path/Direction;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lorg/andengine/util/algorithm/path/Direction;->UP_RIGHT:Lorg/andengine/util/algorithm/path/Direction;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/andengine/util/algorithm/path/Direction;->DOWN_LEFT:Lorg/andengine/util/algorithm/path/Direction;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/andengine/util/algorithm/path/Direction;->DOWN_RIGHT:Lorg/andengine/util/algorithm/path/Direction;

    aput-object v2, v0, v1

    sput-object v0, Lorg/andengine/util/algorithm/path/Direction;->ENUM$VALUES:[Lorg/andengine/util/algorithm/path/Direction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .parameter
    .parameter
    .parameter "pDeltaX"
    .parameter "pDeltaY"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput p3, p0, Lorg/andengine/util/algorithm/path/Direction;->mDeltaX:I

    .line 41
    iput p4, p0, Lorg/andengine/util/algorithm/path/Direction;->mDeltaY:I

    .line 42
    return-void
.end method

.method public static fromDelta(II)Lorg/andengine/util/algorithm/path/Direction;
    .locals 3
    .parameter "pDeltaX"
    .parameter "pDeltaY"

    .prologue
    .line 45
    packed-switch p0, :pswitch_data_0

    .line 75
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected deltaX: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' deltaY: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :pswitch_0
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 49
    :pswitch_1
    sget-object v0, Lorg/andengine/util/algorithm/path/Direction;->UP_LEFT:Lorg/andengine/util/algorithm/path/Direction;

    .line 71
    :goto_1
    return-object v0

    .line 51
    :pswitch_2
    sget-object v0, Lorg/andengine/util/algorithm/path/Direction;->LEFT:Lorg/andengine/util/algorithm/path/Direction;

    goto :goto_1

    .line 53
    :pswitch_3
    sget-object v0, Lorg/andengine/util/algorithm/path/Direction;->DOWN_LEFT:Lorg/andengine/util/algorithm/path/Direction;

    goto :goto_1

    .line 57
    :pswitch_4
    packed-switch p1, :pswitch_data_2

    :pswitch_5
    goto :goto_0

    .line 59
    :pswitch_6
    sget-object v0, Lorg/andengine/util/algorithm/path/Direction;->UP:Lorg/andengine/util/algorithm/path/Direction;

    goto :goto_1

    .line 61
    :pswitch_7
    sget-object v0, Lorg/andengine/util/algorithm/path/Direction;->DOWN:Lorg/andengine/util/algorithm/path/Direction;

    goto :goto_1

    .line 65
    :pswitch_8
    packed-switch p1, :pswitch_data_3

    goto :goto_0

    .line 67
    :pswitch_9
    sget-object v0, Lorg/andengine/util/algorithm/path/Direction;->UP_RIGHT:Lorg/andengine/util/algorithm/path/Direction;

    goto :goto_1

    .line 69
    :pswitch_a
    sget-object v0, Lorg/andengine/util/algorithm/path/Direction;->RIGHT:Lorg/andengine/util/algorithm/path/Direction;

    goto :goto_1

    .line 71
    :pswitch_b
    sget-object v0, Lorg/andengine/util/algorithm/path/Direction;->DOWN_RIGHT:Lorg/andengine/util/algorithm/path/Direction;

    goto :goto_1

    .line 45
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_4
        :pswitch_8
    .end packed-switch

    .line 47
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 57
    :pswitch_data_2
    .packed-switch -0x1
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch

    .line 65
    :pswitch_data_3
    .packed-switch -0x1
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/andengine/util/algorithm/path/Direction;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lorg/andengine/util/algorithm/path/Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/andengine/util/algorithm/path/Direction;

    return-object v0
.end method

.method public static values()[Lorg/andengine/util/algorithm/path/Direction;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/andengine/util/algorithm/path/Direction;->ENUM$VALUES:[Lorg/andengine/util/algorithm/path/Direction;

    array-length v1, v0

    new-array v2, v1, [Lorg/andengine/util/algorithm/path/Direction;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getDeltaX()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lorg/andengine/util/algorithm/path/Direction;->mDeltaX:I

    return v0
.end method

.method public getDeltaY()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lorg/andengine/util/algorithm/path/Direction;->mDeltaY:I

    return v0
.end method

.method public isHorizontal()Z
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lorg/andengine/util/algorithm/path/Direction;->mDeltaY:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVertical()Z
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lorg/andengine/util/algorithm/path/Direction;->mDeltaX:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public opposite()Lorg/andengine/util/algorithm/path/Direction;
    .locals 2

    .prologue
    .line 143
    invoke-static {}, Lorg/andengine/util/algorithm/path/Direction;->$SWITCH_TABLE$org$andengine$util$algorithm$path$Direction()[I

    move-result-object v0

    invoke-virtual {p0}, Lorg/andengine/util/algorithm/path/Direction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 161
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 145
    :pswitch_0
    sget-object v0, Lorg/andengine/util/algorithm/path/Direction;->DOWN:Lorg/andengine/util/algorithm/path/Direction;

    .line 159
    :goto_0
    return-object v0

    .line 147
    :pswitch_1
    sget-object v0, Lorg/andengine/util/algorithm/path/Direction;->DOWN_LEFT:Lorg/andengine/util/algorithm/path/Direction;

    goto :goto_0

    .line 149
    :pswitch_2
    sget-object v0, Lorg/andengine/util/algorithm/path/Direction;->LEFT:Lorg/andengine/util/algorithm/path/Direction;

    goto :goto_0

    .line 151
    :pswitch_3
    sget-object v0, Lorg/andengine/util/algorithm/path/Direction;->UP_LEFT:Lorg/andengine/util/algorithm/path/Direction;

    goto :goto_0

    .line 153
    :pswitch_4
    sget-object v0, Lorg/andengine/util/algorithm/path/Direction;->UP:Lorg/andengine/util/algorithm/path/Direction;

    goto :goto_0

    .line 155
    :pswitch_5
    sget-object v0, Lorg/andengine/util/algorithm/path/Direction;->UP_RIGHT:Lorg/andengine/util/algorithm/path/Direction;

    goto :goto_0

    .line 157
    :pswitch_6
    sget-object v0, Lorg/andengine/util/algorithm/path/Direction;->RIGHT:Lorg/andengine/util/algorithm/path/Direction;

    goto :goto_0

    .line 159
    :pswitch_7
    sget-object v0, Lorg/andengine/util/algorithm/path/Direction;->DOWN_RIGHT:Lorg/andengine/util/algorithm/path/Direction;

    goto :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_2
        :pswitch_7
        :pswitch_1
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

.method public rotateLeft()Lorg/andengine/util/algorithm/path/Direction;
    .locals 2

    .prologue
    .line 99
    invoke-static {}, Lorg/andengine/util/algorithm/path/Direction;->$SWITCH_TABLE$org$andengine$util$algorithm$path$Direction()[I

    move-result-object v0

    invoke-virtual {p0}, Lorg/andengine/util/algorithm/path/Direction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 101
    :pswitch_0
    sget-object v0, Lorg/andengine/util/algorithm/path/Direction;->LEFT:Lorg/andengine/util/algorithm/path/Direction;

    .line 115
    :goto_0
    return-object v0

    .line 103
    :pswitch_1
    sget-object v0, Lorg/andengine/util/algorithm/path/Direction;->UP_LEFT:Lorg/andengine/util/algorithm/path/Direction;

    goto :goto_0

    .line 105
    :pswitch_2
    sget-object v0, Lorg/andengine/util/algorithm/path/Direction;->UP:Lorg/andengine/util/algorithm/path/Direction;

    goto :goto_0

    .line 107
    :pswitch_3
    sget-object v0, Lorg/andengine/util/algorithm/path/Direction;->UP_RIGHT:Lorg/andengine/util/algorithm/path/Direction;

    goto :goto_0

    .line 109
    :pswitch_4
    sget-object v0, Lorg/andengine/util/algorithm/path/Direction;->UP:Lorg/andengine/util/algorithm/path/Direction;

    goto :goto_0

    .line 111
    :pswitch_5
    sget-object v0, Lorg/andengine/util/algorithm/path/Direction;->DOWN_RIGHT:Lorg/andengine/util/algorithm/path/Direction;

    goto :goto_0

    .line 113
    :pswitch_6
    sget-object v0, Lorg/andengine/util/algorithm/path/Direction;->DOWN:Lorg/andengine/util/algorithm/path/Direction;

    goto :goto_0

    .line 115
    :pswitch_7
    sget-object v0, Lorg/andengine/util/algorithm/path/Direction;->DOWN_LEFT:Lorg/andengine/util/algorithm/path/Direction;

    goto :goto_0

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_2
        :pswitch_7
        :pswitch_1
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

.method public rotateRight()Lorg/andengine/util/algorithm/path/Direction;
    .locals 2

    .prologue
    .line 121
    invoke-static {}, Lorg/andengine/util/algorithm/path/Direction;->$SWITCH_TABLE$org$andengine$util$algorithm$path$Direction()[I

    move-result-object v0

    invoke-virtual {p0}, Lorg/andengine/util/algorithm/path/Direction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 139
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 123
    :pswitch_0
    sget-object v0, Lorg/andengine/util/algorithm/path/Direction;->RIGHT:Lorg/andengine/util/algorithm/path/Direction;

    .line 137
    :goto_0
    return-object v0

    .line 125
    :pswitch_1
    sget-object v0, Lorg/andengine/util/algorithm/path/Direction;->DOWN_RIGHT:Lorg/andengine/util/algorithm/path/Direction;

    goto :goto_0

    .line 127
    :pswitch_2
    sget-object v0, Lorg/andengine/util/algorithm/path/Direction;->DOWN:Lorg/andengine/util/algorithm/path/Direction;

    goto :goto_0

    .line 129
    :pswitch_3
    sget-object v0, Lorg/andengine/util/algorithm/path/Direction;->DOWN_LEFT:Lorg/andengine/util/algorithm/path/Direction;

    goto :goto_0

    .line 131
    :pswitch_4
    sget-object v0, Lorg/andengine/util/algorithm/path/Direction;->LEFT:Lorg/andengine/util/algorithm/path/Direction;

    goto :goto_0

    .line 133
    :pswitch_5
    sget-object v0, Lorg/andengine/util/algorithm/path/Direction;->UP_LEFT:Lorg/andengine/util/algorithm/path/Direction;

    goto :goto_0

    .line 135
    :pswitch_6
    sget-object v0, Lorg/andengine/util/algorithm/path/Direction;->UP:Lorg/andengine/util/algorithm/path/Direction;

    goto :goto_0

    .line 137
    :pswitch_7
    sget-object v0, Lorg/andengine/util/algorithm/path/Direction;->UP_RIGHT:Lorg/andengine/util/algorithm/path/Direction;

    goto :goto_0

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_2
        :pswitch_7
        :pswitch_1
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method
