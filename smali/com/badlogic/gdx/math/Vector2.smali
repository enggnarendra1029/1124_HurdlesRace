.class public Lcom/badlogic/gdx/math/Vector2;
.super Ljava/lang/Object;
.source "Vector2.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final X:Lcom/badlogic/gdx/math/Vector2; = null

.field public static final Y:Lcom/badlogic/gdx/math/Vector2; = null

.field public static final Zero:Lcom/badlogic/gdx/math/Vector2; = null

.field private static final serialVersionUID:J = 0xcaed5be6c419bb3L

.field public static final tmp:Lcom/badlogic/gdx/math/Vector2;

.field public static final tmp2:Lcom/badlogic/gdx/math/Vector2;

.field public static final tmp3:Lcom/badlogic/gdx/math/Vector2;


# instance fields
.field public x:F

.field public y:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 30
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Vector2;->tmp:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Vector2;->tmp2:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Vector2;->tmp3:Lcom/badlogic/gdx/math/Vector2;

    .line 32
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, v2, v1}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    sput-object v0, Lcom/badlogic/gdx/math/Vector2;->X:Lcom/badlogic/gdx/math/Vector2;

    .line 33
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    sput-object v0, Lcom/badlogic/gdx/math/Vector2;->Y:Lcom/badlogic/gdx/math/Vector2;

    .line 34
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, v1, v1}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    sput-object v0, Lcom/badlogic/gdx/math/Vector2;->Zero:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 50
    iput p2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 57
    return-void
.end method


# virtual methods
.method public add(FF)Lcom/badlogic/gdx/math/Vector2;
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 127
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 128
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 129
    return-object p0
.end method

.method public add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 2
    .parameter "v"

    .prologue
    .line 117
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 118
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 119
    return-object p0
.end method

.method public angle()F
    .locals 5

    .prologue
    .line 244
    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-double v1, v1

    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    double-to-float v1, v1

    const v2, 0x42652ee0

    mul-float v0, v1, v2

    .line 245
    .local v0, angle:F
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    const/high16 v1, 0x43b4

    add-float/2addr v0, v1

    .line 246
    :cond_0
    return v0
.end method

.method public cpy()Lcom/badlogic/gdx/math/Vector2;
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/math/Vector2;-><init>(Lcom/badlogic/gdx/math/Vector2;)V

    return-object v0
.end method

.method public crs(FF)F
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 238
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v0, p2

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v1, p1

    sub-float/2addr v0, v1

    return v0
.end method

.method public crs(Lcom/badlogic/gdx/math/Vector2;)F
    .locals 3
    .parameter "v"

    .prologue
    .line 230
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public div(F)Lcom/badlogic/gdx/math/Vector2;
    .locals 1
    .parameter "value"

    .prologue
    .line 156
    const/high16 v0, 0x3f80

    div-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Vector2;->mul(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public div(FF)Lcom/badlogic/gdx/math/Vector2;
    .locals 2
    .parameter "vx"
    .parameter "vy"

    .prologue
    const/high16 v1, 0x3f80

    .line 160
    div-float v0, v1, p1

    div-float/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/math/Vector2;->mul(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public div(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 3
    .parameter "other"

    .prologue
    const/high16 v2, 0x3f80

    .line 164
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    div-float v0, v2, v0

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    div-float v1, v2, v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/math/Vector2;->mul(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public dot(Lcom/badlogic/gdx/math/Vector2;)F
    .locals 3
    .parameter "v"

    .prologue
    .line 135
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public dst(FF)F
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 179
    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float v0, p1, v2

    .line 180
    .local v0, x_d:F
    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v1, p2, v2

    .line 181
    .local v1, y_d:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method public dst(Lcom/badlogic/gdx/math/Vector2;)F
    .locals 4
    .parameter "v"

    .prologue
    .line 170
    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float v0, v2, v3

    .line 171
    .local v0, x_d:F
    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v1, v2, v3

    .line 172
    .local v1, y_d:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method public dst2(FF)F
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 196
    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float v0, p1, v2

    .line 197
    .local v0, x_d:F
    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v1, p2, v2

    .line 198
    .local v1, y_d:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    return v2
.end method

.method public dst2(Lcom/badlogic/gdx/math/Vector2;)F
    .locals 4
    .parameter "v"

    .prologue
    .line 187
    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float v0, v2, v3

    .line 188
    .local v0, x_d:F
    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v1, v2, v3

    .line 189
    .local v1, y_d:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    return v2
.end method

.method public epsilonEquals(Lcom/badlogic/gdx/math/Vector2;F)Z
    .locals 3
    .parameter "obj"
    .parameter "epsilon"

    .prologue
    const/4 v0, 0x0

    .line 309
    if-nez p1, :cond_1

    .line 312
    :cond_0
    :goto_0
    return v0

    .line 310
    :cond_1
    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, p2

    if-gtz v1, :cond_0

    .line 311
    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, p2

    if-gtz v1, :cond_0

    .line 312
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 295
    if-ne p0, p1, :cond_1

    .line 301
    :cond_0
    :goto_0
    return v1

    .line 296
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    goto :goto_0

    .line 297
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 298
    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    .line 299
    .local v0, other:Lcom/badlogic/gdx/math/Vector2;
    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v3

    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-static {v4}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v4

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 300
    :cond_4
    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v3

    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v4}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v4

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 286
    const/16 v0, 0x1f

    .line 287
    .local v0, prime:I
    const/4 v1, 0x1

    .line 288
    .local v1, result:I
    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-static {v2}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 289
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v3

    add-int v1, v2, v3

    .line 290
    return v1
.end method

.method public len()F
    .locals 3

    .prologue
    .line 66
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public len2()F
    .locals 3

    .prologue
    .line 71
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public lerp(Lcom/badlogic/gdx/math/Vector2;F)Lcom/badlogic/gdx/math/Vector2;
    .locals 2
    .parameter "target"
    .parameter "alpha"

    .prologue
    .line 279
    const/high16 v1, 0x3f80

    sub-float/2addr v1, p2

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/math/Vector2;->mul(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    .line 280
    .local v0, r:Lcom/badlogic/gdx/math/Vector2;
    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Vector2;->tmp()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/badlogic/gdx/math/Vector2;->mul(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 281
    return-object v0
.end method

.method public mul(F)Lcom/badlogic/gdx/math/Vector2;
    .locals 1
    .parameter "scalar"

    .prologue
    .line 142
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 143
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 144
    return-object p0
.end method

.method public mul(FF)Lcom/badlogic/gdx/math/Vector2;
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 150
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 151
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 152
    return-object p0
.end method

.method public nor()Lcom/badlogic/gdx/math/Vector2;
    .locals 2

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector2;->len()F

    move-result v0

    .line 106
    .local v0, len:F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 107
    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 108
    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 110
    :cond_0
    return-object p0
.end method

.method public rotate(F)Lcom/badlogic/gdx/math/Vector2;
    .locals 7
    .parameter "degrees"

    .prologue
    .line 259
    const v5, 0x3c8efa35

    mul-float v3, p1, v5

    .line 260
    .local v3, rad:F
    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v0, v5

    .line 261
    .local v0, cos:F
    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v4, v5

    .line 263
    .local v4, sin:F
    iget v5, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v5, v0

    iget v6, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v6, v4

    sub-float v1, v5, v6

    .line 264
    .local v1, newX:F
    iget v5, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v5, v4

    iget v6, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v6, v0

    add-float v2, v5, v6

    .line 266
    .local v2, newY:F
    iput v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 267
    iput v2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 269
    return-object p0
.end method

.method public set(FF)Lcom/badlogic/gdx/math/Vector2;
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 88
    iput p1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 89
    iput p2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 90
    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 1
    .parameter "v"

    .prologue
    .line 78
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 79
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 80
    return-object p0
.end method

.method public setAngle(F)V
    .locals 2
    .parameter "angle"

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector2;->len()F

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 253
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->rotate(F)Lcom/badlogic/gdx/math/Vector2;

    .line 254
    return-void
.end method

.method public sub(FF)Lcom/badlogic/gdx/math/Vector2;
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 210
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 211
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 212
    return-object p0
.end method

.method public sub(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 2
    .parameter "v"

    .prologue
    .line 97
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 98
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 99
    return-object p0
.end method

.method public tmp()Lcom/badlogic/gdx/math/Vector2;
    .locals 1

    .prologue
    .line 221
    sget-object v0, Lcom/badlogic/gdx/math/Vector2;->tmp:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
