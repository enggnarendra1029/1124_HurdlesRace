.class public Lcom/badlogic/gdx/math/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/math/MathUtils$Atan2;,
        Lcom/badlogic/gdx/math/MathUtils$Cos;,
        Lcom/badlogic/gdx/math/MathUtils$Sin;
    }
.end annotation


# static fields
.field private static final ATAN2_BITS:I = 0x7

.field private static final ATAN2_BITS2:I = 0xe

.field private static final ATAN2_COUNT:I = 0x4000

#the value of this static final field might be set in the static constructor
.field static final ATAN2_DIM:I = 0x0

.field private static final ATAN2_MASK:I = 0x3fff

#the value of this static final field might be set in the static constructor
.field private static final BIG_ENOUGH_CEIL:D = 0.0

.field private static final BIG_ENOUGH_FLOOR:D = 16384.0

.field private static final BIG_ENOUGH_INT:I = 0x4000

.field private static final BIG_ENOUGH_ROUND:D = 16384.5

.field private static final CEIL:D = 0.9999999

#the value of this static final field might be set in the static constructor
.field private static final INV_ATAN2_DIM_MINUS_1:F = 0.0f

.field public static final PI:F = 3.1415927f

.field private static final SIN_BITS:I = 0xd

.field private static final SIN_COUNT:I = 0x2000

.field private static final SIN_MASK:I = 0x1fff

.field private static final degFull:F = 360.0f

.field public static final degRad:F = 0.017453292f

.field private static final degToIndex:F = 22.755556f

.field public static final degreesToRadians:F = 0.017453292f

.field public static final radDeg:F = 57.295776f

.field private static final radFull:F = 6.2831855f

.field private static final radToIndex:F = 1303.7972f

.field public static final radiansToDegrees:F = 57.295776f

.field public static random:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 90
    const-wide/high16 v0, 0x40d0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    sput v0, Lcom/badlogic/gdx/math/MathUtils;->ATAN2_DIM:I

    .line 91
    const/high16 v0, 0x3f80

    sget v1, Lcom/badlogic/gdx/math/MathUtils;->ATAN2_DIM:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    div-float/2addr v0, v1

    sput v0, Lcom/badlogic/gdx/math/MathUtils;->INV_ATAN2_DIM_MINUS_1:F

    .line 133
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    .line 207
    const-wide v0, 0x40d0004000000000L

    invoke-static {v0, v1}, Lcom/badlogic/gdx/utils/NumberUtils;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/badlogic/gdx/utils/NumberUtils;->longBitsToDouble(J)D

    move-result-wide v0

    .line 206
    sput-wide v0, Lcom/badlogic/gdx/math/MathUtils;->BIG_ENOUGH_CEIL:D

    .line 208
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final atan2(FF)F
    .locals 8
    .parameter "y"
    .parameter "x"

    .prologue
    const/4 v6, 0x0

    .line 109
    cmpg-float v5, p1, v6

    if-gez v5, :cond_1

    .line 110
    cmpg-float v5, p0, v6

    if-gez v5, :cond_0

    .line 111
    neg-float p0, p0

    .line 112
    const/high16 v2, 0x3f80

    .line 115
    .local v2, mul:F
    :goto_0
    neg-float p1, p1

    .line 116
    const v0, -0x3fb6f025

    .line 125
    .local v0, add:F
    :goto_1
    const/high16 v6, 0x3f80

    cmpg-float v5, p1, p0

    if-gez v5, :cond_3

    move v5, p0

    :goto_2
    sget v7, Lcom/badlogic/gdx/math/MathUtils;->INV_ATAN2_DIM_MINUS_1:F

    mul-float/2addr v5, v7

    div-float v1, v6, v5

    .line 126
    .local v1, invDiv:F
    mul-float v5, p1, v1

    float-to-int v3, v5

    .line 127
    .local v3, xi:I
    mul-float v5, p0, v1

    float-to-int v4, v5

    .line 128
    .local v4, yi:I
    sget-object v5, Lcom/badlogic/gdx/math/MathUtils$Atan2;->table:[F

    sget v6, Lcom/badlogic/gdx/math/MathUtils;->ATAN2_DIM:I

    mul-int/2addr v6, v4

    add-int/2addr v6, v3

    aget v5, v5, v6

    add-float/2addr v5, v0

    mul-float/2addr v5, v2

    return v5

    .line 114
    .end local v0           #add:F
    .end local v1           #invDiv:F
    .end local v2           #mul:F
    .end local v3           #xi:I
    .end local v4           #yi:I
    :cond_0
    const/high16 v2, -0x4080

    .restart local v2       #mul:F
    goto :goto_0

    .line 118
    .end local v2           #mul:F
    :cond_1
    cmpg-float v5, p0, v6

    if-gez v5, :cond_2

    .line 119
    neg-float p0, p0

    .line 120
    const/high16 v2, -0x4080

    .line 123
    .restart local v2       #mul:F
    :goto_3
    const/4 v0, 0x0

    .restart local v0       #add:F
    goto :goto_1

    .line 122
    .end local v0           #add:F
    .end local v2           #mul:F
    :cond_2
    const/high16 v2, 0x3f80

    .restart local v2       #mul:F
    goto :goto_3

    .restart local v0       #add:F
    :cond_3
    move v5, p1

    .line 125
    goto :goto_2
.end method

.method public static ceil(F)I
    .locals 4
    .parameter "x"

    .prologue
    .line 225
    float-to-double v0, p0

    sget-wide v2, Lcom/badlogic/gdx/math/MathUtils;->BIG_ENOUGH_CEIL:D

    add-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit16 v0, v0, -0x4000

    return v0
.end method

.method public static ceilPositive(F)I
    .locals 4
    .parameter "x"

    .prologue
    .line 231
    float-to-double v0, p0

    const-wide v2, 0x3fefffffca501acbL

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public static clamp(FFF)F
    .locals 1
    .parameter "value"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 196
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    .line 198
    .end local p1
    :goto_0
    return p1

    .line 197
    .restart local p1
    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    .line 198
    goto :goto_0
.end method

.method public static clamp(III)I
    .locals 0
    .parameter "value"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 184
    if-ge p0, p1, :cond_0

    .line 186
    .end local p1
    :goto_0
    return p1

    .line 185
    .restart local p1
    :cond_0
    if-le p0, p2, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    .line 186
    goto :goto_0
.end method

.method public static clamp(SSS)S
    .locals 0
    .parameter "value"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 190
    if-ge p0, p1, :cond_0

    .line 192
    .end local p1
    :goto_0
    return p1

    .line 191
    .restart local p1
    :cond_0
    if-le p0, p2, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    .line 192
    goto :goto_0
.end method

.method public static final cos(F)F
    .locals 2
    .parameter "radians"

    .prologue
    .line 71
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils$Cos;->table:[F

    const v1, 0x44a2f983

    mul-float/2addr v1, p0

    float-to-int v1, v1

    and-int/lit16 v1, v1, 0x1fff

    aget v0, v0, v1

    return v0
.end method

.method public static final cosDeg(F)F
    .locals 2
    .parameter "degrees"

    .prologue
    .line 81
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils$Cos;->table:[F

    const v1, 0x41b60b61

    mul-float/2addr v1, p0

    float-to-int v1, v1

    and-int/lit16 v1, v1, 0x1fff

    aget v0, v0, v1

    return v0
.end method

.method public static floor(F)I
    .locals 4
    .parameter "x"

    .prologue
    .line 213
    float-to-double v0, p0

    const-wide/high16 v2, 0x40d0

    add-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit16 v0, v0, -0x4000

    return v0
.end method

.method public static floorPositive(F)I
    .locals 1
    .parameter "x"

    .prologue
    .line 219
    float-to-int v0, p0

    return v0
.end method

.method public static isPowerOfTwo(I)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 178
    if-eqz p0, :cond_0

    add-int/lit8 v0, p0, -0x1

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static nextPowerOfTwo(I)I
    .locals 1
    .parameter "value"

    .prologue
    .line 167
    if-nez p0, :cond_0

    const/4 v0, 0x1

    .line 174
    :goto_0
    return v0

    .line 168
    :cond_0
    add-int/lit8 p0, p0, -0x1

    .line 169
    shr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 170
    shr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 171
    shr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 172
    shr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 173
    shr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 174
    add-int/lit8 v0, p0, 0x1

    goto :goto_0
.end method

.method public static final random()F
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    return v0
.end method

.method public static final random(F)F
    .locals 1
    .parameter "range"

    .prologue
    .line 155
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    mul-float/2addr v0, p0

    return v0
.end method

.method public static final random(FF)F
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    .line 160
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    sub-float v1, p1, p0

    mul-float/2addr v0, v1

    add-float/2addr v0, p0

    return v0
.end method

.method public static final random(I)I
    .locals 2
    .parameter "range"

    .prologue
    .line 137
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    add-int/lit8 v1, p0, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    return v0
.end method

.method public static final random(II)I
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    .line 142
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    sub-int v1, p1, p0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static final randomBoolean()Z
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    return v0
.end method

.method public static round(F)I
    .locals 4
    .parameter "x"

    .prologue
    .line 237
    float-to-double v0, p0

    const-wide v2, 0x40d0002000000000L

    add-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit16 v0, v0, -0x4000

    return v0
.end method

.method public static roundPositive(F)I
    .locals 1
    .parameter "x"

    .prologue
    .line 242
    const/high16 v0, 0x3f00

    add-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method

.method public static final sin(F)F
    .locals 2
    .parameter "radians"

    .prologue
    .line 66
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils$Sin;->table:[F

    const v1, 0x44a2f983

    mul-float/2addr v1, p0

    float-to-int v1, v1

    and-int/lit16 v1, v1, 0x1fff

    aget v0, v0, v1

    return v0
.end method

.method public static final sinDeg(F)F
    .locals 2
    .parameter "degrees"

    .prologue
    .line 76
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils$Sin;->table:[F

    const v1, 0x41b60b61

    mul-float/2addr v1, p0

    float-to-int v1, v1

    and-int/lit16 v1, v1, 0x1fff

    aget v0, v0, v1

    return v0
.end method
