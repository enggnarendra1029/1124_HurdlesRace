.class public Lorg/andengine/util/algorithm/Spiral;
.super Ljava/lang/Object;
.source "Spiral.java"


# instance fields
.field private final mCenterX:I

.field private final mCenterY:I

.field private mDirection:Lorg/andengine/util/algorithm/path/Direction;

.field private mDirectionSegmentIndex:I

.field private mDirectionSegmentLength:I

.field private final mStepSize:I

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .parameter "pCenterX"
    .parameter "pCenterY"

    .prologue
    .line 35
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/andengine/util/algorithm/Spiral;-><init>(III)V

    .line 36
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .parameter "pCenterX"
    .parameter "pCenterY"
    .parameter "pStepSize"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lorg/andengine/util/algorithm/Spiral;->mCenterX:I

    .line 40
    iput p2, p0, Lorg/andengine/util/algorithm/Spiral;->mCenterY:I

    .line 41
    iput p3, p0, Lorg/andengine/util/algorithm/Spiral;->mStepSize:I

    .line 43
    iput p1, p0, Lorg/andengine/util/algorithm/Spiral;->mX:I

    .line 44
    iput p2, p0, Lorg/andengine/util/algorithm/Spiral;->mY:I

    .line 47
    sget-object v0, Lorg/andengine/util/algorithm/path/Direction;->RIGHT:Lorg/andengine/util/algorithm/path/Direction;

    iput-object v0, p0, Lorg/andengine/util/algorithm/Spiral;->mDirection:Lorg/andengine/util/algorithm/path/Direction;

    .line 50
    const/4 v0, 0x1

    iput v0, p0, Lorg/andengine/util/algorithm/Spiral;->mDirectionSegmentLength:I

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lorg/andengine/util/algorithm/Spiral;->mDirectionSegmentIndex:I

    .line 52
    return-void
.end method


# virtual methods
.method public getCenterX()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lorg/andengine/util/algorithm/Spiral;->mCenterX:I

    return v0
.end method

.method public getCenterY()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lorg/andengine/util/algorithm/Spiral;->mCenterY:I

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lorg/andengine/util/algorithm/Spiral;->mX:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lorg/andengine/util/algorithm/Spiral;->mY:I

    return v0
.end method

.method public step()V
    .locals 3

    .prologue
    .line 84
    iget v0, p0, Lorg/andengine/util/algorithm/Spiral;->mX:I

    iget-object v1, p0, Lorg/andengine/util/algorithm/Spiral;->mDirection:Lorg/andengine/util/algorithm/path/Direction;

    invoke-virtual {v1}, Lorg/andengine/util/algorithm/path/Direction;->getDeltaX()I

    move-result v1

    iget v2, p0, Lorg/andengine/util/algorithm/Spiral;->mStepSize:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/andengine/util/algorithm/Spiral;->mX:I

    .line 85
    iget v0, p0, Lorg/andengine/util/algorithm/Spiral;->mY:I

    iget-object v1, p0, Lorg/andengine/util/algorithm/Spiral;->mDirection:Lorg/andengine/util/algorithm/path/Direction;

    invoke-virtual {v1}, Lorg/andengine/util/algorithm/path/Direction;->getDeltaY()I

    move-result v1

    iget v2, p0, Lorg/andengine/util/algorithm/Spiral;->mStepSize:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/andengine/util/algorithm/Spiral;->mY:I

    .line 87
    iget v0, p0, Lorg/andengine/util/algorithm/Spiral;->mDirectionSegmentIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/andengine/util/algorithm/Spiral;->mDirectionSegmentIndex:I

    .line 89
    iget v0, p0, Lorg/andengine/util/algorithm/Spiral;->mDirectionSegmentIndex:I

    iget v1, p0, Lorg/andengine/util/algorithm/Spiral;->mDirectionSegmentLength:I

    if-ne v0, v1, :cond_0

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lorg/andengine/util/algorithm/Spiral;->mDirectionSegmentIndex:I

    .line 94
    iget-object v0, p0, Lorg/andengine/util/algorithm/Spiral;->mDirection:Lorg/andengine/util/algorithm/path/Direction;

    invoke-virtual {v0}, Lorg/andengine/util/algorithm/path/Direction;->rotateRight()Lorg/andengine/util/algorithm/path/Direction;

    move-result-object v0

    iput-object v0, p0, Lorg/andengine/util/algorithm/Spiral;->mDirection:Lorg/andengine/util/algorithm/path/Direction;

    .line 97
    iget-object v0, p0, Lorg/andengine/util/algorithm/Spiral;->mDirection:Lorg/andengine/util/algorithm/path/Direction;

    invoke-virtual {v0}, Lorg/andengine/util/algorithm/path/Direction;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget v0, p0, Lorg/andengine/util/algorithm/Spiral;->mDirectionSegmentLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/andengine/util/algorithm/Spiral;->mDirectionSegmentLength:I

    .line 101
    :cond_0
    return-void
.end method
