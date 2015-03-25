.class public Lorg/andengine/entity/modifier/PathModifier$Path;
.super Ljava/lang/Object;
.source "PathModifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andengine/entity/modifier/PathModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Path"
.end annotation


# instance fields
.field private mIndex:I

.field private mLength:F

.field private mLengthChanged:Z

.field private final mXs:[F

.field private final mYs:[F


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .parameter "pLength"

    .prologue
    const/4 v1, 0x0

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    iput-boolean v1, p0, Lorg/andengine/entity/modifier/PathModifier$Path;->mLengthChanged:Z

    .line 228
    new-array v0, p1, [F

    iput-object v0, p0, Lorg/andengine/entity/modifier/PathModifier$Path;->mXs:[F

    .line 229
    new-array v0, p1, [F

    iput-object v0, p0, Lorg/andengine/entity/modifier/PathModifier$Path;->mYs:[F

    .line 231
    iput v1, p0, Lorg/andengine/entity/modifier/PathModifier$Path;->mIndex:I

    .line 232
    iput-boolean v1, p0, Lorg/andengine/entity/modifier/PathModifier$Path;->mLengthChanged:Z

    .line 233
    return-void
.end method

.method public constructor <init>(Lorg/andengine/entity/modifier/PathModifier$Path;)V
    .locals 4
    .parameter "pPath"

    .prologue
    const/4 v3, 0x0

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    iput-boolean v3, p0, Lorg/andengine/entity/modifier/PathModifier$Path;->mLengthChanged:Z

    .line 248
    invoke-virtual {p1}, Lorg/andengine/entity/modifier/PathModifier$Path;->getSize()I

    move-result v0

    .line 249
    .local v0, size:I
    new-array v1, v0, [F

    iput-object v1, p0, Lorg/andengine/entity/modifier/PathModifier$Path;->mXs:[F

    .line 250
    new-array v1, v0, [F

    iput-object v1, p0, Lorg/andengine/entity/modifier/PathModifier$Path;->mYs:[F

    .line 252
    iget-object v1, p1, Lorg/andengine/entity/modifier/PathModifier$Path;->mXs:[F

    iget-object v2, p0, Lorg/andengine/entity/modifier/PathModifier$Path;->mXs:[F

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 253
    iget-object v1, p1, Lorg/andengine/entity/modifier/PathModifier$Path;->mYs:[F

    iget-object v2, p0, Lorg/andengine/entity/modifier/PathModifier$Path;->mYs:[F

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 255
    iget v1, p1, Lorg/andengine/entity/modifier/PathModifier$Path;->mIndex:I

    iput v1, p0, Lorg/andengine/entity/modifier/PathModifier$Path;->mIndex:I

    .line 256
    iget-boolean v1, p1, Lorg/andengine/entity/modifier/PathModifier$Path;->mLengthChanged:Z

    iput-boolean v1, p0, Lorg/andengine/entity/modifier/PathModifier$Path;->mLengthChanged:Z

    .line 257
    iget v1, p1, Lorg/andengine/entity/modifier/PathModifier$Path;->mLength:F

    iput v1, p0, Lorg/andengine/entity/modifier/PathModifier$Path;->mLength:F

    .line 258
    return-void
.end method

.method public constructor <init>([F[F)V
    .locals 2
    .parameter "pCoordinatesX"
    .parameter "pCoordinatesY"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/andengine/entity/modifier/PathModifier$Path;->mLengthChanged:Z

    .line 236
    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_0

    .line 237
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Coordinate-Arrays must have the same length."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_0
    iput-object p1, p0, Lorg/andengine/entity/modifier/PathModifier$Path;->mXs:[F

    .line 241
    iput-object p2, p0, Lorg/andengine/entity/modifier/PathModifier$Path;->mYs:[F

    .line 243
    array-length v0, p1

    iput v0, p0, Lorg/andengine/entity/modifier/PathModifier$Path;->mIndex:I

    .line 244
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/andengine/entity/modifier/PathModifier$Path;->mLengthChanged:Z

    .line 245
    return-void
.end method

.method private updateLength()V
    .locals 3

    .prologue
    .line 319
    const/4 v1, 0x0

    .line 321
    .local v1, length:F
    iget v2, p0, Lorg/andengine/entity/modifier/PathModifier$Path;->mIndex:I

    add-int/lit8 v0, v2, -0x2

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 324
    iput v1, p0, Lorg/andengine/entity/modifier/PathModifier$Path;->mLength:F

    .line 325
    return-void

    .line 322
    :cond_0
    invoke-virtual {p0, v0}, Lorg/andengine/entity/modifier/PathModifier$Path;->getSegmentLength(I)F

    move-result v2

    add-float/2addr v1, v2

    .line 321
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public deepCopy()Lorg/andengine/entity/modifier/PathModifier$Path;
    .locals 1

    .prologue
    .line 261
    new-instance v0, Lorg/andengine/entity/modifier/PathModifier$Path;

    invoke-direct {v0, p0}, Lorg/andengine/entity/modifier/PathModifier$Path;-><init>(Lorg/andengine/entity/modifier/PathModifier$Path;)V

    return-object v0
.end method

.method public getCoordinatesX()[F
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lorg/andengine/entity/modifier/PathModifier$Path;->mXs:[F

    return-object v0
.end method

.method public getCoordinatesY()[F
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lorg/andengine/entity/modifier/PathModifier$Path;->mYs:[F

    return-object v0
.end method

.method public getLength()F
    .locals 1

    .prologue
    .line 292
    iget-boolean v0, p0, Lorg/andengine/entity/modifier/PathModifier$Path;->mLengthChanged:Z

    if-eqz v0, :cond_0

    .line 293
    invoke-direct {p0}, Lorg/andengine/entity/modifier/PathModifier$Path;->updateLength()V

    .line 295
    :cond_0
    iget v0, p0, Lorg/andengine/entity/modifier/PathModifier$Path;->mLength:F

    return v0
.end method

.method public getSegmentLength(I)F
    .locals 7
    .parameter "pSegmentIndex"

    .prologue
    .line 299
    iget-object v0, p0, Lorg/andengine/entity/modifier/PathModifier$Path;->mXs:[F

    .line 300
    .local v0, coordinatesX:[F
    iget-object v1, p0, Lorg/andengine/entity/modifier/PathModifier$Path;->mYs:[F

    .line 302
    .local v1, coordinatesY:[F
    add-int/lit8 v4, p1, 0x1

    .line 304
    .local v4, nextSegmentIndex:I
    aget v5, v0, p1

    aget v6, v0, v4

    sub-float v2, v5, v6

    .line 305
    .local v2, dx:F
    aget v5, v1, p1

    aget v6, v1, v4

    sub-float v3, v5, v6

    .line 307
    .local v3, dy:F
    mul-float v5, v2, v2

    mul-float v6, v3, v3

    add-float/2addr v5, v6

    invoke-static {v5}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v5

    return v5
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lorg/andengine/entity/modifier/PathModifier$Path;->mXs:[F

    array-length v0, v0

    return v0
.end method

.method public to(FF)Lorg/andengine/entity/modifier/PathModifier$Path;
    .locals 2
    .parameter "pX"
    .parameter "pY"

    .prologue
    .line 269
    iget-object v0, p0, Lorg/andengine/entity/modifier/PathModifier$Path;->mXs:[F

    iget v1, p0, Lorg/andengine/entity/modifier/PathModifier$Path;->mIndex:I

    aput p1, v0, v1

    .line 270
    iget-object v0, p0, Lorg/andengine/entity/modifier/PathModifier$Path;->mYs:[F

    iget v1, p0, Lorg/andengine/entity/modifier/PathModifier$Path;->mIndex:I

    aput p2, v0, v1

    .line 272
    iget v0, p0, Lorg/andengine/entity/modifier/PathModifier$Path;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/andengine/entity/modifier/PathModifier$Path;->mIndex:I

    .line 274
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/andengine/entity/modifier/PathModifier$Path;->mLengthChanged:Z

    .line 276
    return-object p0
.end method
