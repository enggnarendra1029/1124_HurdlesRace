.class public Lorg/andengine/entity/modifier/PathModifier;
.super Lorg/andengine/entity/modifier/EntityModifier;
.source "PathModifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/andengine/entity/modifier/PathModifier$IPathModifierListener;,
        Lorg/andengine/entity/modifier/PathModifier$Path;
    }
.end annotation


# instance fields
.field private final mPath:Lorg/andengine/entity/modifier/PathModifier$Path;

.field private mPathModifierListener:Lorg/andengine/entity/modifier/PathModifier$IPathModifierListener;

.field private final mSequenceModifier:Lorg/andengine/util/modifier/SequenceModifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/andengine/util/modifier/SequenceModifier",
            "<",
            "Lorg/andengine/entity/IEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(FLorg/andengine/entity/modifier/PathModifier$Path;)V
    .locals 6
    .parameter "pDuration"
    .parameter "pPath"

    .prologue
    const/4 v3, 0x0

    .line 39
    invoke-static {}, Lorg/andengine/util/modifier/ease/EaseLinear;->getInstance()Lorg/andengine/util/modifier/ease/EaseLinear;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lorg/andengine/entity/modifier/PathModifier;-><init>(FLorg/andengine/entity/modifier/PathModifier$Path;Lorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/entity/modifier/PathModifier$IPathModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 40
    return-void
.end method

.method public constructor <init>(FLorg/andengine/entity/modifier/PathModifier$Path;Lorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V
    .locals 6
    .parameter "pDuration"
    .parameter "pPath"
    .parameter "pEntityModiferListener"

    .prologue
    .line 47
    const/4 v4, 0x0

    invoke-static {}, Lorg/andengine/util/modifier/ease/EaseLinear;->getInstance()Lorg/andengine/util/modifier/ease/EaseLinear;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/andengine/entity/modifier/PathModifier;-><init>(FLorg/andengine/entity/modifier/PathModifier$Path;Lorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/entity/modifier/PathModifier$IPathModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 48
    return-void
.end method

.method public constructor <init>(FLorg/andengine/entity/modifier/PathModifier$Path;Lorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/entity/modifier/PathModifier$IPathModifierListener;)V
    .locals 6
    .parameter "pDuration"
    .parameter "pPath"
    .parameter "pEntityModiferListener"
    .parameter "pPathModifierListener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-static {}, Lorg/andengine/util/modifier/ease/EaseLinear;->getInstance()Lorg/andengine/util/modifier/ease/EaseLinear;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/andengine/entity/modifier/PathModifier;-><init>(FLorg/andengine/entity/modifier/PathModifier$Path;Lorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/entity/modifier/PathModifier$IPathModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 64
    return-void
.end method

.method public constructor <init>(FLorg/andengine/entity/modifier/PathModifier$Path;Lorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/entity/modifier/PathModifier$IPathModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 17
    .parameter "pDuration"
    .parameter "pPath"
    .parameter "pEntityModiferListener"
    .parameter "pPathModifierListener"
    .parameter "pEaseFunction"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 67
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/andengine/entity/modifier/EntityModifier;-><init>(Lorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V

    .line 68
    invoke-virtual/range {p2 .. p2}, Lorg/andengine/entity/modifier/PathModifier$Path;->getSize()I

    move-result v15

    .line 70
    .local v15, pathSize:I
    const/4 v2, 0x2

    if-ge v15, v2, :cond_0

    .line 71
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Path needs at least 2 waypoints!"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 74
    :cond_0
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/andengine/entity/modifier/PathModifier;->mPath:Lorg/andengine/entity/modifier/PathModifier$Path;

    .line 75
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/andengine/entity/modifier/PathModifier;->mPathModifierListener:Lorg/andengine/entity/modifier/PathModifier$IPathModifierListener;

    .line 77
    add-int/lit8 v2, v15, -0x1

    new-array v14, v2, [Lorg/andengine/entity/modifier/MoveModifier;

    .line 79
    .local v14, moveModifiers:[Lorg/andengine/entity/modifier/MoveModifier;
    invoke-virtual/range {p2 .. p2}, Lorg/andengine/entity/modifier/PathModifier$Path;->getCoordinatesX()[F

    move-result-object v10

    .line 80
    .local v10, coordinatesX:[F
    invoke-virtual/range {p2 .. p2}, Lorg/andengine/entity/modifier/PathModifier$Path;->getCoordinatesY()[F

    move-result-object v11

    .line 82
    .local v11, coordinatesY:[F
    invoke-virtual/range {p2 .. p2}, Lorg/andengine/entity/modifier/PathModifier$Path;->getLength()F

    move-result v2

    div-float v16, v2, p1

    .line 84
    .local v16, velocity:F
    array-length v13, v14

    .line 85
    .local v13, modifierCount:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    if-lt v12, v13, :cond_1

    .line 92
    new-instance v2, Lorg/andengine/util/modifier/SequenceModifier;

    .line 93
    new-instance v4, Lorg/andengine/entity/modifier/PathModifier$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/andengine/entity/modifier/PathModifier$1;-><init>(Lorg/andengine/entity/modifier/PathModifier;)V

    .line 108
    new-instance v5, Lorg/andengine/entity/modifier/PathModifier$2;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/andengine/entity/modifier/PathModifier$2;-><init>(Lorg/andengine/entity/modifier/PathModifier;)V

    .line 125
    invoke-direct {v2, v4, v5, v14}, Lorg/andengine/util/modifier/SequenceModifier;-><init>(Lorg/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener;Lorg/andengine/util/modifier/IModifier$IModifierListener;[Lorg/andengine/util/modifier/IModifier;)V

    .line 92
    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/andengine/entity/modifier/PathModifier;->mSequenceModifier:Lorg/andengine/util/modifier/SequenceModifier;

    .line 127
    return-void

    .line 86
    :cond_1
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lorg/andengine/entity/modifier/PathModifier$Path;->getSegmentLength(I)F

    move-result v2

    div-float v3, v2, v16

    .line 87
    .local v3, duration:F
    new-instance v2, Lorg/andengine/entity/modifier/MoveModifier;

    aget v4, v10, v12

    add-int/lit8 v5, v12, 0x1

    aget v5, v10, v5

    aget v6, v11, v12

    add-int/lit8 v7, v12, 0x1

    aget v7, v11, v7

    const/4 v8, 0x0

    move-object/from16 v9, p5

    invoke-direct/range {v2 .. v9}, Lorg/andengine/entity/modifier/MoveModifier;-><init>(FFFFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    aput-object v2, v14, v12

    .line 85
    add-int/lit8 v12, v12, 0x1

    goto :goto_0
.end method

.method public constructor <init>(FLorg/andengine/entity/modifier/PathModifier$Path;Lorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 6
    .parameter "pDuration"
    .parameter "pPath"
    .parameter "pEntityModiferListener"
    .parameter "pEaseFunction"

    .prologue
    .line 59
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/andengine/entity/modifier/PathModifier;-><init>(FLorg/andengine/entity/modifier/PathModifier$Path;Lorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/entity/modifier/PathModifier$IPathModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 60
    return-void
.end method

.method public constructor <init>(FLorg/andengine/entity/modifier/PathModifier$Path;Lorg/andengine/entity/modifier/PathModifier$IPathModifierListener;)V
    .locals 6
    .parameter "pDuration"
    .parameter "pPath"
    .parameter "pPathModifierListener"

    .prologue
    .line 51
    const/4 v3, 0x0

    invoke-static {}, Lorg/andengine/util/modifier/ease/EaseLinear;->getInstance()Lorg/andengine/util/modifier/ease/EaseLinear;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/andengine/entity/modifier/PathModifier;-><init>(FLorg/andengine/entity/modifier/PathModifier$Path;Lorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/entity/modifier/PathModifier$IPathModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 52
    return-void
.end method

.method public constructor <init>(FLorg/andengine/entity/modifier/PathModifier$Path;Lorg/andengine/entity/modifier/PathModifier$IPathModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 6
    .parameter "pDuration"
    .parameter "pPath"
    .parameter "pPathModifierListener"
    .parameter "pEaseFunction"

    .prologue
    .line 55
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/andengine/entity/modifier/PathModifier;-><init>(FLorg/andengine/entity/modifier/PathModifier$Path;Lorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/entity/modifier/PathModifier$IPathModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 56
    return-void
.end method

.method public constructor <init>(FLorg/andengine/entity/modifier/PathModifier$Path;Lorg/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 6
    .parameter "pDuration"
    .parameter "pPath"
    .parameter "pEaseFunction"

    .prologue
    const/4 v3, 0x0

    .line 43
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/andengine/entity/modifier/PathModifier;-><init>(FLorg/andengine/entity/modifier/PathModifier$Path;Lorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/entity/modifier/PathModifier$IPathModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 44
    return-void
.end method

.method protected constructor <init>(Lorg/andengine/entity/modifier/PathModifier;)V
    .locals 1
    .parameter "pPathModifier"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-direct {p0}, Lorg/andengine/entity/modifier/EntityModifier;-><init>()V

    .line 130
    iget-object v0, p1, Lorg/andengine/entity/modifier/PathModifier;->mPath:Lorg/andengine/entity/modifier/PathModifier$Path;

    invoke-virtual {v0}, Lorg/andengine/entity/modifier/PathModifier$Path;->deepCopy()Lorg/andengine/entity/modifier/PathModifier$Path;

    move-result-object v0

    iput-object v0, p0, Lorg/andengine/entity/modifier/PathModifier;->mPath:Lorg/andengine/entity/modifier/PathModifier$Path;

    .line 131
    iget-object v0, p1, Lorg/andengine/entity/modifier/PathModifier;->mSequenceModifier:Lorg/andengine/util/modifier/SequenceModifier;

    invoke-virtual {v0}, Lorg/andengine/util/modifier/SequenceModifier;->deepCopy()Lorg/andengine/util/modifier/SequenceModifier;

    move-result-object v0

    iput-object v0, p0, Lorg/andengine/entity/modifier/PathModifier;->mSequenceModifier:Lorg/andengine/util/modifier/SequenceModifier;

    .line 132
    return-void
.end method

.method static synthetic access$3(Lorg/andengine/entity/modifier/PathModifier;)Lorg/andengine/entity/modifier/PathModifier$IPathModifierListener;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lorg/andengine/entity/modifier/PathModifier;->mPathModifierListener:Lorg/andengine/entity/modifier/PathModifier$IPathModifierListener;

    return-object v0
.end method

.method static synthetic access$4(Lorg/andengine/entity/modifier/PathModifier;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lorg/andengine/entity/modifier/PathModifier;->onModifierStarted(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$5(Lorg/andengine/entity/modifier/PathModifier;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lorg/andengine/entity/modifier/PathModifier;->onModifierFinished(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic deepCopy()Lorg/andengine/entity/modifier/IEntityModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/entity/modifier/PathModifier;->deepCopy()Lorg/andengine/entity/modifier/PathModifier;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lorg/andengine/entity/modifier/PathModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    .prologue
    .line 136
    new-instance v0, Lorg/andengine/entity/modifier/PathModifier;

    invoke-direct {v0, p0}, Lorg/andengine/entity/modifier/PathModifier;-><init>(Lorg/andengine/entity/modifier/PathModifier;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/andengine/util/modifier/IModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/entity/modifier/PathModifier;->deepCopy()Lorg/andengine/entity/modifier/PathModifier;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()F
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lorg/andengine/entity/modifier/PathModifier;->mSequenceModifier:Lorg/andengine/util/modifier/SequenceModifier;

    invoke-virtual {v0}, Lorg/andengine/util/modifier/SequenceModifier;->getDuration()F

    move-result v0

    return v0
.end method

.method public getPath()Lorg/andengine/entity/modifier/PathModifier$Path;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lorg/andengine/entity/modifier/PathModifier;->mPath:Lorg/andengine/entity/modifier/PathModifier$Path;

    return-object v0
.end method

.method public getPathModifierListener()Lorg/andengine/entity/modifier/PathModifier$IPathModifierListener;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lorg/andengine/entity/modifier/PathModifier;->mPathModifierListener:Lorg/andengine/entity/modifier/PathModifier$IPathModifierListener;

    return-object v0
.end method

.method public getSecondsElapsed()F
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lorg/andengine/entity/modifier/PathModifier;->mSequenceModifier:Lorg/andengine/util/modifier/SequenceModifier;

    invoke-virtual {v0}, Lorg/andengine/util/modifier/SequenceModifier;->getSecondsElapsed()F

    move-result v0

    return v0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lorg/andengine/entity/modifier/PathModifier;->mSequenceModifier:Lorg/andengine/util/modifier/SequenceModifier;

    invoke-virtual {v0}, Lorg/andengine/util/modifier/SequenceModifier;->isFinished()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onUpdate(FLjava/lang/Object;)F
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p2, Lorg/andengine/entity/IEntity;

    invoke-virtual {p0, p1, p2}, Lorg/andengine/entity/modifier/PathModifier;->onUpdate(FLorg/andengine/entity/IEntity;)F

    move-result v0

    return v0
.end method

.method public onUpdate(FLorg/andengine/entity/IEntity;)F
    .locals 1
    .parameter "pSecondsElapsed"
    .parameter "pEntity"

    .prologue
    .line 181
    iget-object v0, p0, Lorg/andengine/entity/modifier/PathModifier;->mSequenceModifier:Lorg/andengine/util/modifier/SequenceModifier;

    invoke-virtual {v0, p1, p2}, Lorg/andengine/util/modifier/SequenceModifier;->onUpdate(FLjava/lang/Object;)F

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lorg/andengine/entity/modifier/PathModifier;->mSequenceModifier:Lorg/andengine/util/modifier/SequenceModifier;

    invoke-virtual {v0}, Lorg/andengine/util/modifier/SequenceModifier;->reset()V

    .line 177
    return-void
.end method

.method public setPathModifierListener(Lorg/andengine/entity/modifier/PathModifier$IPathModifierListener;)V
    .locals 0
    .parameter "pPathModifierListener"

    .prologue
    .line 171
    iput-object p1, p0, Lorg/andengine/entity/modifier/PathModifier;->mPathModifierListener:Lorg/andengine/entity/modifier/PathModifier$IPathModifierListener;

    .line 172
    return-void
.end method
