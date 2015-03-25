.class public Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;
.super Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;
.source "FloatQuadTree.java"

# interfaces
.implements Lorg/andengine/util/adt/bounds/IFloatBounds;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FloatQuadTreeNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/andengine/util/adt/spatial/quadtree/QuadTree",
        "<",
        "Lorg/andengine/util/adt/bounds/IFloatBounds;",
        "TT;>.QuadTreeNode;",
        "Lorg/andengine/util/adt/bounds/IFloatBounds;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$org$andengine$util$adt$bounds$BoundsSplit:[I


# instance fields
.field private final mXMax:F

.field private final mXMin:F

.field private final mYMax:F

.field private final mYMin:F

.field final synthetic this$0:Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;


# direct methods
.method static synthetic $SWITCH_TABLE$org$andengine$util$adt$bounds$BoundsSplit()[I
    .locals 3

    .prologue
    .line 168
    sget-object v0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->$SWITCH_TABLE$org$andengine$util$adt$bounds$BoundsSplit:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/andengine/util/adt/bounds/BoundsSplit;->values()[Lorg/andengine/util/adt/bounds/BoundsSplit;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/andengine/util/adt/bounds/BoundsSplit;->BOTTOM_LEFT:Lorg/andengine/util/adt/bounds/BoundsSplit;

    invoke-virtual {v1}, Lorg/andengine/util/adt/bounds/BoundsSplit;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lorg/andengine/util/adt/bounds/BoundsSplit;->BOTTOM_RIGHT:Lorg/andengine/util/adt/bounds/BoundsSplit;

    invoke-virtual {v1}, Lorg/andengine/util/adt/bounds/BoundsSplit;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lorg/andengine/util/adt/bounds/BoundsSplit;->TOP_LEFT:Lorg/andengine/util/adt/bounds/BoundsSplit;

    invoke-virtual {v1}, Lorg/andengine/util/adt/bounds/BoundsSplit;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lorg/andengine/util/adt/bounds/BoundsSplit;->TOP_RIGHT:Lorg/andengine/util/adt/bounds/BoundsSplit;

    invoke-virtual {v1}, Lorg/andengine/util/adt/bounds/BoundsSplit;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->$SWITCH_TABLE$org$andengine$util$adt$bounds$BoundsSplit:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;IFFFF)V
    .locals 2
    .parameter
    .parameter "pLevel"
    .parameter "pXMin"
    .parameter "pYMin"
    .parameter "pXMax"
    .parameter "pYMax"

    .prologue
    .line 190
    iput-object p1, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->this$0:Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;

    .line 191
    invoke-direct {p0, p1, p2}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;-><init>(Lorg/andengine/util/adt/spatial/quadtree/QuadTree;I)V

    .line 193
    iput p3, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->mXMin:F

    .line 194
    iput p4, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->mYMin:F

    .line 195
    iput p5, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->mXMax:F

    .line 196
    iput p6, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->mYMax:F

    .line 198
    cmpl-float v0, p3, p5

    if-lez v0, :cond_0

    .line 199
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pXMin must be smaller or equal to pXMax."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_0
    cmpl-float v0, p4, p6

    if-lez v0, :cond_1

    .line 202
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pYMin must be smaller or equal to pYMax."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_1
    return-void
.end method

.method public constructor <init>(Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;ILorg/andengine/util/adt/bounds/IFloatBounds;)V
    .locals 7
    .parameter
    .parameter "pLevel"
    .parameter "pFloatBounds"

    .prologue
    .line 187
    invoke-interface {p3}, Lorg/andengine/util/adt/bounds/IFloatBounds;->getXMin()F

    move-result v3

    invoke-interface {p3}, Lorg/andengine/util/adt/bounds/IFloatBounds;->getYMin()F

    move-result v4

    invoke-interface {p3}, Lorg/andengine/util/adt/bounds/IFloatBounds;->getXMax()F

    move-result v5

    invoke-interface {p3}, Lorg/andengine/util/adt/bounds/IFloatBounds;->getYMax()F

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;-><init>(Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;IFFFF)V

    .line 188
    return-void
.end method

.method private getXMax(Lorg/andengine/util/adt/bounds/BoundsSplit;)F
    .locals 4
    .parameter "pBoundsSplit"

    .prologue
    .line 330
    invoke-virtual {p0}, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->getWidth()F

    move-result v1

    const/high16 v2, 0x4000

    div-float v0, v1, v2

    .line 332
    .local v0, halfWidth:F
    invoke-static {}, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->$SWITCH_TABLE$org$andengine$util$adt$bounds$BoundsSplit()[I

    move-result-object v1

    invoke-virtual {p1}, Lorg/andengine/util/adt/bounds/BoundsSplit;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 342
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v3, Lorg/andengine/util/adt/bounds/BoundsSplit;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 334
    :pswitch_0
    iget v1, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->mXMin:F

    add-float/2addr v1, v0

    .line 340
    :goto_0
    return v1

    .line 336
    :pswitch_1
    iget v1, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->mXMax:F

    goto :goto_0

    .line 338
    :pswitch_2
    iget v1, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->mXMin:F

    add-float/2addr v1, v0

    goto :goto_0

    .line 340
    :pswitch_3
    iget v1, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->mXMax:F

    goto :goto_0

    .line 332
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getXMin(Lorg/andengine/util/adt/bounds/BoundsSplit;)F
    .locals 4
    .parameter "pBoundsSplit"

    .prologue
    .line 296
    invoke-virtual {p0}, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->getWidth()F

    move-result v1

    const/high16 v2, 0x4000

    div-float v0, v1, v2

    .line 298
    .local v0, halfWidth:F
    invoke-static {}, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->$SWITCH_TABLE$org$andengine$util$adt$bounds$BoundsSplit()[I

    move-result-object v1

    invoke-virtual {p1}, Lorg/andengine/util/adt/bounds/BoundsSplit;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 308
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v3, Lorg/andengine/util/adt/bounds/BoundsSplit;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 300
    :pswitch_0
    iget v1, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->mXMin:F

    .line 306
    :goto_0
    return v1

    .line 302
    :pswitch_1
    iget v1, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->mXMin:F

    add-float/2addr v1, v0

    goto :goto_0

    .line 304
    :pswitch_2
    iget v1, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->mXMin:F

    goto :goto_0

    .line 306
    :pswitch_3
    iget v1, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->mXMin:F

    add-float/2addr v1, v0

    goto :goto_0

    .line 298
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getYMax(Lorg/andengine/util/adt/bounds/BoundsSplit;)F
    .locals 4
    .parameter "pBoundsSplit"

    .prologue
    .line 347
    invoke-virtual {p0}, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->getHeight()F

    move-result v1

    const/high16 v2, 0x4000

    div-float v0, v1, v2

    .line 349
    .local v0, halfHeight:F
    invoke-static {}, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->$SWITCH_TABLE$org$andengine$util$adt$bounds$BoundsSplit()[I

    move-result-object v1

    invoke-virtual {p1}, Lorg/andengine/util/adt/bounds/BoundsSplit;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 359
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v3, Lorg/andengine/util/adt/bounds/BoundsSplit;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 351
    :pswitch_0
    iget v1, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->mYMin:F

    add-float/2addr v1, v0

    .line 357
    :goto_0
    return v1

    .line 353
    :pswitch_1
    iget v1, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->mYMin:F

    add-float/2addr v1, v0

    goto :goto_0

    .line 355
    :pswitch_2
    iget v1, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->mYMax:F

    goto :goto_0

    .line 357
    :pswitch_3
    iget v1, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->mYMax:F

    goto :goto_0

    .line 349
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getYMin(Lorg/andengine/util/adt/bounds/BoundsSplit;)F
    .locals 4
    .parameter "pBoundsSplit"

    .prologue
    .line 313
    invoke-virtual {p0}, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->getHeight()F

    move-result v1

    const/high16 v2, 0x4000

    div-float v0, v1, v2

    .line 315
    .local v0, halfHeight:F
    invoke-static {}, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->$SWITCH_TABLE$org$andengine$util$adt$bounds$BoundsSplit()[I

    move-result-object v1

    invoke-virtual {p1}, Lorg/andengine/util/adt/bounds/BoundsSplit;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 325
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v3, Lorg/andengine/util/adt/bounds/BoundsSplit;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 317
    :pswitch_0
    iget v1, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->mYMin:F

    .line 323
    :goto_0
    return v1

    .line 319
    :pswitch_1
    iget v1, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->mYMin:F

    goto :goto_0

    .line 321
    :pswitch_2
    iget v1, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->mYMin:F

    add-float/2addr v1, v0

    goto :goto_0

    .line 323
    :pswitch_3
    iget v1, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->mYMin:F

    add-float/2addr v1, v0

    goto :goto_0

    .line 315
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected appendBoundsToString(Ljava/lang/StringBuilder;)V
    .locals 2
    .parameter "pStringBuilder"

    .prologue
    .line 279
    .line 280
    const-string v0, "[XMin: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 281
    iget v1, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->mXMin:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 282
    const-string v1, ", YMin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 283
    iget v1, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->mYMin:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 284
    const-string v1, ", XMax: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 285
    iget v1, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->mXMax:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 286
    const-string v1, ", YMax: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 287
    iget v1, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->mYMax:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 288
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    return-void
.end method

.method protected bridge synthetic containedBy(Lorg/andengine/util/adt/bounds/IBounds;)Z
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, Lorg/andengine/util/adt/bounds/IFloatBounds;

    invoke-virtual {p0, p1}, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->containedBy(Lorg/andengine/util/adt/bounds/IFloatBounds;)Z

    move-result v0

    return v0
.end method

.method protected containedBy(Lorg/andengine/util/adt/bounds/IFloatBounds;)Z
    .locals 8
    .parameter "pFloatBounds"

    .prologue
    .line 274
    invoke-interface {p1}, Lorg/andengine/util/adt/bounds/IFloatBounds;->getXMin()F

    move-result v0

    invoke-interface {p1}, Lorg/andengine/util/adt/bounds/IFloatBounds;->getYMin()F

    move-result v1

    invoke-interface {p1}, Lorg/andengine/util/adt/bounds/IFloatBounds;->getXMax()F

    move-result v2

    invoke-interface {p1}, Lorg/andengine/util/adt/bounds/IFloatBounds;->getYMax()F

    move-result v3

    iget v4, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->mXMin:F

    iget v5, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->mYMin:F

    iget v6, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->mXMax:F

    iget v7, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->mYMax:F

    invoke-static/range {v0 .. v7}, Lorg/andengine/util/adt/spatial/bounds/util/FloatBoundsUtils;->contains(FFFFFFFF)Z

    move-result v0

    return v0
.end method

.method public contains(FFFF)Z
    .locals 8
    .parameter "pXMin"
    .parameter "pYMin"
    .parameter "pXMax"
    .parameter "pYMax"

    .prologue
    .line 368
    iget v0, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->mXMin:F

    iget v1, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->mYMin:F

    iget v2, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->mXMax:F

    iget v3, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->mYMax:F

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-static/range {v0 .. v7}, Lorg/andengine/util/adt/spatial/bounds/util/FloatBoundsUtils;->contains(FFFFFFFF)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic contains(Lorg/andengine/util/adt/bounds/BoundsSplit;Lorg/andengine/util/adt/bounds/IBounds;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p2, Lorg/andengine/util/adt/bounds/IFloatBounds;

    invoke-virtual {p0, p1, p2}, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->contains(Lorg/andengine/util/adt/bounds/BoundsSplit;Lorg/andengine/util/adt/bounds/IFloatBounds;)Z

    move-result v0

    return v0
.end method

.method protected contains(Lorg/andengine/util/adt/bounds/BoundsSplit;Lorg/andengine/util/adt/bounds/IFloatBounds;)Z
    .locals 8
    .parameter "pBoundsSplit"
    .parameter "pFloatBounds"

    .prologue
    .line 259
    invoke-direct {p0, p1}, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->getXMin(Lorg/andengine/util/adt/bounds/BoundsSplit;)F

    move-result v0

    invoke-direct {p0, p1}, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->getYMin(Lorg/andengine/util/adt/bounds/BoundsSplit;)F

    move-result v1

    invoke-direct {p0, p1}, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->getXMax(Lorg/andengine/util/adt/bounds/BoundsSplit;)F

    move-result v2

    invoke-direct {p0, p1}, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->getYMax(Lorg/andengine/util/adt/bounds/BoundsSplit;)F

    move-result v3

    invoke-interface {p2}, Lorg/andengine/util/adt/bounds/IFloatBounds;->getXMin()F

    move-result v4

    invoke-interface {p2}, Lorg/andengine/util/adt/bounds/IFloatBounds;->getYMin()F

    move-result v5

    invoke-interface {p2}, Lorg/andengine/util/adt/bounds/IFloatBounds;->getXMax()F

    move-result v6

    invoke-interface {p2}, Lorg/andengine/util/adt/bounds/IFloatBounds;->getYMax()F

    move-result v7

    invoke-static/range {v0 .. v7}, Lorg/andengine/util/adt/spatial/bounds/util/FloatBoundsUtils;->contains(FFFFFFFF)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic contains(Lorg/andengine/util/adt/bounds/IBounds;)Z
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, Lorg/andengine/util/adt/bounds/IFloatBounds;

    invoke-virtual {p0, p1}, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->contains(Lorg/andengine/util/adt/bounds/IFloatBounds;)Z

    move-result v0

    return v0
.end method

.method protected contains(Lorg/andengine/util/adt/bounds/IFloatBounds;)Z
    .locals 4
    .parameter "pFloatBounds"

    .prologue
    .line 254
    invoke-interface {p1}, Lorg/andengine/util/adt/bounds/IFloatBounds;->getXMin()F

    move-result v0

    invoke-interface {p1}, Lorg/andengine/util/adt/bounds/IFloatBounds;->getYMin()F

    move-result v1

    invoke-interface {p1}, Lorg/andengine/util/adt/bounds/IFloatBounds;->getXMax()F

    move-result v2

    invoke-interface {p1}, Lorg/andengine/util/adt/bounds/IFloatBounds;->getYMax()F

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->contains(FFFF)Z

    move-result v0

    return v0
.end method

.method public getHeight()F
    .locals 2

    .prologue
    .line 235
    iget v0, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->mYMax:F

    iget v1, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->mYMin:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getWidth()F
    .locals 2

    .prologue
    .line 231
    iget v0, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->mXMax:F

    iget v1, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->mXMin:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getXMax()F
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->mXMax:F

    return v0
.end method

.method public getXMin()F
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->mXMin:F

    return v0
.end method

.method public getYMax()F
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->mYMax:F

    return v0
.end method

.method public getYMin()F
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->mYMin:F

    return v0
.end method

.method public intersects(FFFF)Z
    .locals 8
    .parameter "pXMin"
    .parameter "pYMin"
    .parameter "pXMax"
    .parameter "pYMax"

    .prologue
    .line 364
    iget v0, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->mXMin:F

    iget v1, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->mYMin:F

    iget v2, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->mXMax:F

    iget v3, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->mYMax:F

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-static/range {v0 .. v7}, Lorg/andengine/util/adt/spatial/bounds/util/FloatBoundsUtils;->intersects(FFFFFFFF)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic intersects(Lorg/andengine/util/adt/bounds/IBounds;)Z
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, Lorg/andengine/util/adt/bounds/IFloatBounds;

    invoke-virtual {p0, p1}, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->intersects(Lorg/andengine/util/adt/bounds/IFloatBounds;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic intersects(Lorg/andengine/util/adt/bounds/IBounds;Lorg/andengine/util/adt/bounds/IBounds;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lorg/andengine/util/adt/bounds/IFloatBounds;

    check-cast p2, Lorg/andengine/util/adt/bounds/IFloatBounds;

    invoke-virtual {p0, p1, p2}, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->intersects(Lorg/andengine/util/adt/bounds/IFloatBounds;Lorg/andengine/util/adt/bounds/IFloatBounds;)Z

    move-result v0

    return v0
.end method

.method protected intersects(Lorg/andengine/util/adt/bounds/IFloatBounds;)Z
    .locals 8
    .parameter "pFloatBounds"

    .prologue
    .line 264
    iget v0, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->mXMin:F

    iget v1, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->mYMin:F

    iget v2, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->mXMax:F

    iget v3, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->mYMax:F

    invoke-interface {p1}, Lorg/andengine/util/adt/bounds/IFloatBounds;->getXMin()F

    move-result v4

    invoke-interface {p1}, Lorg/andengine/util/adt/bounds/IFloatBounds;->getYMin()F

    move-result v5

    invoke-interface {p1}, Lorg/andengine/util/adt/bounds/IFloatBounds;->getXMax()F

    move-result v6

    invoke-interface {p1}, Lorg/andengine/util/adt/bounds/IFloatBounds;->getYMax()F

    move-result v7

    invoke-static/range {v0 .. v7}, Lorg/andengine/util/adt/spatial/bounds/util/FloatBoundsUtils;->intersects(FFFFFFFF)Z

    move-result v0

    return v0
.end method

.method protected intersects(Lorg/andengine/util/adt/bounds/IFloatBounds;Lorg/andengine/util/adt/bounds/IFloatBounds;)Z
    .locals 1
    .parameter "pFloatBoundsA"
    .parameter "pFloatBoundsB"

    .prologue
    .line 269
    invoke-static {p1, p2}, Lorg/andengine/util/adt/spatial/bounds/util/FloatBoundsUtils;->intersects(Lorg/andengine/util/adt/bounds/IFloatBounds;Lorg/andengine/util/adt/bounds/IFloatBounds;)Z

    move-result v0

    return v0
.end method

.method protected split(Lorg/andengine/util/adt/bounds/BoundsSplit;)Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;
    .locals 7
    .parameter "pBoundsSplit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/adt/bounds/BoundsSplit;",
            ")",
            "Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree",
            "<TT;>.FloatQuadTreeNode;"
        }
    .end annotation

    .prologue
    .line 244
    invoke-direct {p0, p1}, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->getXMin(Lorg/andengine/util/adt/bounds/BoundsSplit;)F

    move-result v3

    .line 245
    .local v3, xMin:F
    invoke-direct {p0, p1}, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->getYMin(Lorg/andengine/util/adt/bounds/BoundsSplit;)F

    move-result v4

    .line 246
    .local v4, yMin:F
    invoke-direct {p0, p1}, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->getXMax(Lorg/andengine/util/adt/bounds/BoundsSplit;)F

    move-result v5

    .line 247
    .local v5, xMax:F
    invoke-direct {p0, p1}, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->getYMax(Lorg/andengine/util/adt/bounds/BoundsSplit;)F

    move-result v6

    .line 249
    .local v6, yMax:F
    new-instance v0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;

    iget-object v1, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->this$0:Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;

    iget v2, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->mLevel:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct/range {v0 .. v6}, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;-><init>(Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;IFFFF)V

    return-object v0
.end method

.method protected bridge synthetic split(Lorg/andengine/util/adt/bounds/BoundsSplit;)Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->split(Lorg/andengine/util/adt/bounds/BoundsSplit;)Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;

    move-result-object v0

    return-object v0
.end method
