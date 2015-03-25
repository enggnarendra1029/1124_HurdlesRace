.class public Lorg/andengine/entity/sprite/AnimationData;
.super Ljava/lang/Object;
.source "AnimationData.java"

# interfaces
.implements Lorg/andengine/entity/sprite/IAnimationData;


# instance fields
.field private mAnimationDuration:J

.field private mFirstFrameIndex:I

.field private mFrameCount:I

.field private mFrameDurations:[J

.field private mFrameEndsInNanoseconds:[J

.field private mFrames:[I

.field private mLoopCount:I


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(JI)V
    .locals 0
    .parameter "pFrameDurationEach"
    .parameter "pFrameCount"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p0, p1, p2, p3}, Lorg/andengine/entity/sprite/AnimationData;->set(JI)V

    .line 45
    return-void
.end method

.method public constructor <init>(JII)V
    .locals 0
    .parameter "pFrameDurationEach"
    .parameter "pFrameCount"
    .parameter "pLoopCount"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/andengine/entity/sprite/AnimationData;->set(JII)V

    .line 53
    return-void
.end method

.method public constructor <init>(JIZ)V
    .locals 0
    .parameter "pFrameDurationEach"
    .parameter "pFrameCount"
    .parameter "pLoop"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/andengine/entity/sprite/AnimationData;->set(JIZ)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/andengine/entity/sprite/IAnimationData;)V
    .locals 0
    .parameter "pAnimationData"

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    invoke-virtual {p0, p1}, Lorg/andengine/entity/sprite/AnimationData;->set(Lorg/andengine/entity/sprite/IAnimationData;)V

    .line 94
    return-void
.end method

.method public constructor <init>([J)V
    .locals 0
    .parameter "pFrameDurations"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p0, p1}, Lorg/andengine/entity/sprite/AnimationData;->set([J)V

    .line 57
    return-void
.end method

.method public constructor <init>([JI)V
    .locals 0
    .parameter "pFrameDurations"
    .parameter "pLoopCount"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-virtual {p0, p1, p2}, Lorg/andengine/entity/sprite/AnimationData;->set([JI)V

    .line 65
    return-void
.end method

.method public constructor <init>([JIII)V
    .locals 0
    .parameter "pFrameDurations"
    .parameter "pFirstFrameIndex"
    .parameter "pLastFrameIndex"
    .parameter "pLoopCount"

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/andengine/entity/sprite/AnimationData;->set([JIII)V

    .line 90
    return-void
.end method

.method public constructor <init>([JIIZ)V
    .locals 0
    .parameter "pFrameDurations"
    .parameter "pFirstFrameIndex"
    .parameter "pLastFrameIndex"
    .parameter "pLoop"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/andengine/entity/sprite/AnimationData;->set([JIIZ)V

    .line 69
    return-void
.end method

.method public constructor <init>([JZ)V
    .locals 0
    .parameter "pFrameDurations"
    .parameter "pLoop"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p0, p1, p2}, Lorg/andengine/entity/sprite/AnimationData;->set([JZ)V

    .line 61
    return-void
.end method

.method public constructor <init>([J[II)V
    .locals 0
    .parameter "pFrameDurations"
    .parameter "pFrames"
    .parameter "pLoopCount"

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-virtual {p0, p1, p2, p3}, Lorg/andengine/entity/sprite/AnimationData;->set([J[II)V

    .line 80
    return-void
.end method

.method private static fillFrameDurations(JI)[J
    .locals 1
    .parameter "pFrameDurationEach"
    .parameter "pFrameCount"

    .prologue
    .line 278
    new-array v0, p2, [J

    .line 279
    .local v0, frameDurations:[J
    invoke-static {v0, p0, p1}, Ljava/util/Arrays;->fill([JJ)V

    .line 280
    return-object v0
.end method

.method private set([JI[III)V
    .locals 6
    .parameter "pFrameDurations"
    .parameter "pFrameCount"
    .parameter "pFrames"
    .parameter "pFirstFrameIndex"
    .parameter "pLoopCount"

    .prologue
    .line 252
    array-length v3, p1

    if-eq v3, p2, :cond_0

    .line 253
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "pFrameDurations does not equal pFrameCount!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 256
    :cond_0
    iput-object p1, p0, Lorg/andengine/entity/sprite/AnimationData;->mFrameDurations:[J

    .line 257
    iput p2, p0, Lorg/andengine/entity/sprite/AnimationData;->mFrameCount:I

    .line 258
    iput-object p3, p0, Lorg/andengine/entity/sprite/AnimationData;->mFrames:[I

    .line 259
    iput p4, p0, Lorg/andengine/entity/sprite/AnimationData;->mFirstFrameIndex:I

    .line 260
    iput p5, p0, Lorg/andengine/entity/sprite/AnimationData;->mLoopCount:I

    .line 262
    iget-object v3, p0, Lorg/andengine/entity/sprite/AnimationData;->mFrameEndsInNanoseconds:[J

    if-eqz v3, :cond_1

    iget v3, p0, Lorg/andengine/entity/sprite/AnimationData;->mFrameCount:I

    iget-object v4, p0, Lorg/andengine/entity/sprite/AnimationData;->mFrameEndsInNanoseconds:[J

    array-length v4, v4

    if-le v3, v4, :cond_2

    .line 263
    :cond_1
    iget v3, p0, Lorg/andengine/entity/sprite/AnimationData;->mFrameCount:I

    new-array v3, v3, [J

    iput-object v3, p0, Lorg/andengine/entity/sprite/AnimationData;->mFrameEndsInNanoseconds:[J

    .line 266
    :cond_2
    iget-object v0, p0, Lorg/andengine/entity/sprite/AnimationData;->mFrameEndsInNanoseconds:[J

    .line 267
    .local v0, frameEndsInNanoseconds:[J
    iget-object v3, p0, Lorg/andengine/entity/sprite/AnimationData;->mFrameDurations:[J

    const-wide/32 v4, 0xf4240

    invoke-static {v3, v0, v4, v5}, Lorg/andengine/util/math/MathUtils;->arraySumInto([J[JJ)V

    .line 269
    iget v3, p0, Lorg/andengine/entity/sprite/AnimationData;->mFrameCount:I

    add-int/lit8 v3, v3, -0x1

    aget-wide v1, v0, v3

    .line 270
    .local v1, lastFrameEnd:J
    iput-wide v1, p0, Lorg/andengine/entity/sprite/AnimationData;->mAnimationDuration:J

    .line 271
    return-void
.end method


# virtual methods
.method public calculateCurrentFrameIndex(J)I
    .locals 5
    .parameter "pAnimationProgress"

    .prologue
    .line 145
    iget-object v1, p0, Lorg/andengine/entity/sprite/AnimationData;->mFrameEndsInNanoseconds:[J

    .line 146
    .local v1, frameEnds:[J
    iget v0, p0, Lorg/andengine/entity/sprite/AnimationData;->mFrameCount:I

    .line 147
    .local v0, frameCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v0, :cond_1

    .line 153
    add-int/lit8 v2, v0, -0x1

    .end local v2           #i:I
    :cond_0
    return v2

    .line 148
    .restart local v2       #i:I
    :cond_1
    aget-wide v3, v1, v2

    cmp-long v3, v3, p1

    if-gtz v3, :cond_0

    .line 147
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public deepCopy()Lorg/andengine/entity/sprite/IAnimationData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    .prologue
    .line 98
    new-instance v0, Lorg/andengine/entity/sprite/AnimationData;

    invoke-direct {v0, p0}, Lorg/andengine/entity/sprite/AnimationData;-><init>(Lorg/andengine/entity/sprite/IAnimationData;)V

    return-object v0
.end method

.method public getAnimationDuration()J
    .locals 2

    .prologue
    .line 136
    iget-wide v0, p0, Lorg/andengine/entity/sprite/AnimationData;->mAnimationDuration:J

    return-wide v0
.end method

.method public getFirstFrameIndex()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lorg/andengine/entity/sprite/AnimationData;->mFirstFrameIndex:I

    return v0
.end method

.method public getFrameCount()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lorg/andengine/entity/sprite/AnimationData;->mFrameCount:I

    return v0
.end method

.method public getFrameDurations()[J
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/andengine/entity/sprite/AnimationData;->mFrameDurations:[J

    return-object v0
.end method

.method public getFrames()[I
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/andengine/entity/sprite/AnimationData;->mFrames:[I

    return-object v0
.end method

.method public getLoopCount()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lorg/andengine/entity/sprite/AnimationData;->mLoopCount:I

    return v0
.end method

.method public set(JI)V
    .locals 1
    .parameter "pFrameDurationEach"
    .parameter "pFrameCount"

    .prologue
    .line 158
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/andengine/entity/sprite/AnimationData;->set(JIZ)V

    .line 159
    return-void
.end method

.method public set(JII)V
    .locals 1
    .parameter "pFrameDurationEach"
    .parameter "pFrameCount"
    .parameter "pLoopCount"

    .prologue
    .line 168
    invoke-static {p1, p2, p3}, Lorg/andengine/entity/sprite/AnimationData;->fillFrameDurations(JI)[J

    move-result-object v0

    invoke-virtual {p0, v0, p4}, Lorg/andengine/entity/sprite/AnimationData;->set([JI)V

    .line 169
    return-void
.end method

.method public set(JIZ)V
    .locals 1
    .parameter "pFrameDurationEach"
    .parameter "pFrameCount"
    .parameter "pLoop"

    .prologue
    .line 163
    if-eqz p4, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/andengine/entity/sprite/AnimationData;->set(JII)V

    .line 164
    return-void

    .line 163
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(Lorg/andengine/entity/sprite/IAnimationData;)V
    .locals 6
    .parameter "pAnimationData"

    .prologue
    .line 248
    invoke-interface {p1}, Lorg/andengine/entity/sprite/IAnimationData;->getFrameDurations()[J

    move-result-object v1

    invoke-interface {p1}, Lorg/andengine/entity/sprite/IAnimationData;->getFrameCount()I

    move-result v2

    invoke-interface {p1}, Lorg/andengine/entity/sprite/IAnimationData;->getFrames()[I

    move-result-object v3

    invoke-interface {p1}, Lorg/andengine/entity/sprite/IAnimationData;->getFirstFrameIndex()I

    move-result v4

    invoke-interface {p1}, Lorg/andengine/entity/sprite/IAnimationData;->getLoopCount()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/andengine/entity/sprite/AnimationData;->set([JI[III)V

    .line 249
    return-void
.end method

.method public set([J)V
    .locals 1
    .parameter "pFrameDurations"

    .prologue
    .line 173
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/andengine/entity/sprite/AnimationData;->set([JZ)V

    .line 174
    return-void
.end method

.method public set([JI)V
    .locals 2
    .parameter "pFrameDurations"
    .parameter "pLoopCount"

    .prologue
    .line 183
    const/4 v0, 0x0

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/andengine/entity/sprite/AnimationData;->set([JIII)V

    .line 184
    return-void
.end method

.method public set([JII)V
    .locals 1
    .parameter "pFrameDurations"
    .parameter "pFirstFrameIndex"
    .parameter "pLastFrameIndex"

    .prologue
    .line 188
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/andengine/entity/sprite/AnimationData;->set([JIIZ)V

    .line 189
    return-void
.end method

.method public set([JIII)V
    .locals 6
    .parameter "pFrameDurations"
    .parameter "pFirstFrameIndex"
    .parameter "pLastFrameIndex"
    .parameter "pLoopCount"

    .prologue
    .line 204
    sub-int v0, p3, p2

    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/andengine/entity/sprite/AnimationData;->set([JI[III)V

    .line 206
    add-int/lit8 v0, p2, 0x1

    if-le v0, p3, :cond_0

    .line 207
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "An animation needs at least two tiles to animate between."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_0
    return-void
.end method

.method public set([JIIZ)V
    .locals 1
    .parameter "pFrameDurations"
    .parameter "pFirstFrameIndex"
    .parameter "pLastFrameIndex"
    .parameter "pLoop"

    .prologue
    .line 193
    if-eqz p4, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/andengine/entity/sprite/AnimationData;->set([JIII)V

    .line 194
    return-void

    .line 193
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set([JZ)V
    .locals 1
    .parameter "pFrameDurations"
    .parameter "pLoop"

    .prologue
    .line 178
    if-eqz p2, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0, p1, v0}, Lorg/andengine/entity/sprite/AnimationData;->set([JI)V

    .line 179
    return-void

    .line 178
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set([J[I)V
    .locals 1
    .parameter "pFrameDurations"
    .parameter "pFrames"

    .prologue
    .line 219
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/andengine/entity/sprite/AnimationData;->set([J[IZ)V

    .line 220
    return-void
.end method

.method public set([J[II)V
    .locals 6
    .parameter "pFrameDurations"
    .parameter "pFrames"
    .parameter "pLoopCount"

    .prologue
    .line 243
    array-length v2, p2

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/andengine/entity/sprite/AnimationData;->set([JI[III)V

    .line 244
    return-void
.end method

.method public set([J[IZ)V
    .locals 1
    .parameter "pFrameDurations"
    .parameter "pFrames"
    .parameter "pLoop"

    .prologue
    .line 231
    if-eqz p3, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lorg/andengine/entity/sprite/AnimationData;->set([J[II)V

    .line 232
    return-void

    .line 231
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
