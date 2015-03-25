.class public Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;
.super Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;
.source "IntQuadTree.java"

# interfaces
.implements Lorg/andengine/util/adt/bounds/IIntBounds;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IntQuadTreeNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/andengine/util/adt/spatial/quadtree/QuadTree",
        "<",
        "Lorg/andengine/util/adt/bounds/IIntBounds;",
        "TT;>.QuadTreeNode;",
        "Lorg/andengine/util/adt/bounds/IIntBounds;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$org$andengine$util$adt$bounds$BoundsSplit:[I


# instance fields
.field private final mXMax:I

.field private final mXMin:I

.field private final mYMax:I

.field private final mYMin:I

.field final synthetic this$0:Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;


# direct methods
.method static synthetic $SWITCH_TABLE$org$andengine$util$adt$bounds$BoundsSplit()[I
    .locals 3

    .prologue
    .line 169
    sget-object v0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->$SWITCH_TABLE$org$andengine$util$adt$bounds$BoundsSplit:[I

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
    sput-object v0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->$SWITCH_TABLE$org$andengine$util$adt$bounds$BoundsSplit:[I

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

.method public constructor <init>(Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;IIIII)V
    .locals 2
    .parameter
    .parameter "pLevel"
    .parameter "pXMin"
    .parameter "pYMin"
    .parameter "pXMax"
    .parameter "pYMax"

    .prologue
    .line 191
    iput-object p1, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->this$0:Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;

    .line 192
    invoke-direct {p0, p1, p2}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;-><init>(Lorg/andengine/util/adt/spatial/quadtree/QuadTree;I)V

    .line 194
    iput p3, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->mXMin:I

    .line 195
    iput p4, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->mYMin:I

    .line 196
    iput p5, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->mXMax:I

    .line 197
    iput p6, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->mYMax:I

    .line 199
    if-le p3, p5, :cond_0

    .line 200
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pXMin must be smaller or equal to pXMax."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_0
    if-le p4, p6, :cond_1

    .line 203
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pYMin must be smaller or equal to pYMax."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_1
    return-void
.end method

.method public constructor <init>(Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;ILorg/andengine/util/adt/bounds/IIntBounds;)V
    .locals 7
    .parameter
    .parameter "pLevel"
    .parameter "pIntBounds"

    .prologue
    .line 188
    invoke-interface {p3}, Lorg/andengine/util/adt/bounds/IIntBounds;->getXMin()I

    move-result v3

    invoke-interface {p3}, Lorg/andengine/util/adt/bounds/IIntBounds;->getYMin()I

    move-result v4

    invoke-interface {p3}, Lorg/andengine/util/adt/bounds/IIntBounds;->getXMax()I

    move-result v5

    invoke-interface {p3}, Lorg/andengine/util/adt/bounds/IIntBounds;->getYMax()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;-><init>(Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;IIIII)V

    .line 189
    return-void
.end method

.method private getXMax(Lorg/andengine/util/adt/bounds/BoundsSplit;)I
    .locals 5
    .parameter "pBoundsSplit"

    .prologue
    .line 366
    invoke-virtual {p0}, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->getWidth()I

    move-result v1

    .line 367
    .local v1, width:I
    div-int/lit8 v0, v1, 0x2

    .line 369
    .local v0, halfWidth:I
    const/4 v2, 0x2

    if-gt v1, v2, :cond_0

    .line 370
    invoke-static {}, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->$SWITCH_TABLE$org$andengine$util$adt$bounds$BoundsSplit()[I

    move-result-object v2

    invoke-virtual {p1}, Lorg/andengine/util/adt/bounds/BoundsSplit;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 378
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v4, Lorg/andengine/util/adt/bounds/BoundsSplit;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 373
    :pswitch_0
    iget v2, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->mXMax:I

    .line 389
    :goto_0
    return v2

    .line 376
    :pswitch_1
    new-instance v2, Lorg/andengine/util/adt/bounds/BoundsSplit$BoundsSplitException;

    invoke-direct {v2}, Lorg/andengine/util/adt/bounds/BoundsSplit$BoundsSplitException;-><init>()V

    throw v2

    .line 381
    :cond_0
    invoke-static {}, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->$SWITCH_TABLE$org$andengine$util$adt$bounds$BoundsSplit()[I

    move-result-object v2

    invoke-virtual {p1}, Lorg/andengine/util/adt/bounds/BoundsSplit;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    .line 391
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v4, Lorg/andengine/util/adt/bounds/BoundsSplit;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 383
    :pswitch_2
    iget v2, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->mXMin:I

    add-int/2addr v2, v0

    goto :goto_0

    .line 385
    :pswitch_3
    iget v2, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->mXMax:I

    goto :goto_0

    .line 387
    :pswitch_4
    iget v2, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->mXMin:I

    add-int/2addr v2, v0

    goto :goto_0

    .line 389
    :pswitch_5
    iget v2, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->mXMax:I

    goto :goto_0

    .line 370
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 381
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getXMin(Lorg/andengine/util/adt/bounds/BoundsSplit;)I
    .locals 5
    .parameter "pBoundsSplit"

    .prologue
    .line 304
    invoke-virtual {p0}, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->getWidth()I

    move-result v1

    .line 305
    .local v1, width:I
    div-int/lit8 v0, v1, 0x2

    .line 307
    .local v0, halfWidth:I
    const/4 v2, 0x2

    if-gt v1, v2, :cond_0

    .line 308
    invoke-static {}, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->$SWITCH_TABLE$org$andengine$util$adt$bounds$BoundsSplit()[I

    move-result-object v2

    invoke-virtual {p1}, Lorg/andengine/util/adt/bounds/BoundsSplit;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 316
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v4, Lorg/andengine/util/adt/bounds/BoundsSplit;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 311
    :pswitch_0
    iget v2, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->mXMin:I

    .line 327
    :goto_0
    return v2

    .line 314
    :pswitch_1
    new-instance v2, Lorg/andengine/util/adt/bounds/BoundsSplit$BoundsSplitException;

    invoke-direct {v2}, Lorg/andengine/util/adt/bounds/BoundsSplit$BoundsSplitException;-><init>()V

    throw v2

    .line 319
    :cond_0
    invoke-static {}, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->$SWITCH_TABLE$org$andengine$util$adt$bounds$BoundsSplit()[I

    move-result-object v2

    invoke-virtual {p1}, Lorg/andengine/util/adt/bounds/BoundsSplit;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    .line 329
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v4, Lorg/andengine/util/adt/bounds/BoundsSplit;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 321
    :pswitch_2
    iget v2, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->mXMin:I

    goto :goto_0

    .line 323
    :pswitch_3
    iget v2, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->mXMin:I

    add-int/2addr v2, v0

    goto :goto_0

    .line 325
    :pswitch_4
    iget v2, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->mXMin:I

    goto :goto_0

    .line 327
    :pswitch_5
    iget v2, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->mXMin:I

    add-int/2addr v2, v0

    goto :goto_0

    .line 308
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 319
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getYMax(Lorg/andengine/util/adt/bounds/BoundsSplit;)I
    .locals 5
    .parameter "pBoundsSplit"

    .prologue
    .line 397
    invoke-virtual {p0}, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->getHeight()I

    move-result v1

    .line 398
    .local v1, height:I
    div-int/lit8 v0, v1, 0x2

    .line 400
    .local v0, halfHeight:I
    const/4 v2, 0x2

    if-gt v1, v2, :cond_0

    .line 401
    invoke-static {}, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->$SWITCH_TABLE$org$andengine$util$adt$bounds$BoundsSplit()[I

    move-result-object v2

    invoke-virtual {p1}, Lorg/andengine/util/adt/bounds/BoundsSplit;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 409
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v4, Lorg/andengine/util/adt/bounds/BoundsSplit;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 404
    :pswitch_0
    iget v2, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->mYMax:I

    .line 420
    :goto_0
    return v2

    .line 407
    :pswitch_1
    new-instance v2, Lorg/andengine/util/adt/bounds/BoundsSplit$BoundsSplitException;

    invoke-direct {v2}, Lorg/andengine/util/adt/bounds/BoundsSplit$BoundsSplitException;-><init>()V

    throw v2

    .line 412
    :cond_0
    invoke-static {}, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->$SWITCH_TABLE$org$andengine$util$adt$bounds$BoundsSplit()[I

    move-result-object v2

    invoke-virtual {p1}, Lorg/andengine/util/adt/bounds/BoundsSplit;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    .line 422
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v4, Lorg/andengine/util/adt/bounds/BoundsSplit;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 414
    :pswitch_2
    iget v2, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->mYMin:I

    add-int/2addr v2, v0

    goto :goto_0

    .line 416
    :pswitch_3
    iget v2, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->mYMin:I

    add-int/2addr v2, v0

    goto :goto_0

    .line 418
    :pswitch_4
    iget v2, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->mYMax:I

    goto :goto_0

    .line 420
    :pswitch_5
    iget v2, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->mYMax:I

    goto :goto_0

    .line 401
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 412
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getYMin(Lorg/andengine/util/adt/bounds/BoundsSplit;)I
    .locals 5
    .parameter "pBoundsSplit"

    .prologue
    .line 335
    invoke-virtual {p0}, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->getHeight()I

    move-result v1

    .line 336
    .local v1, height:I
    div-int/lit8 v0, v1, 0x2

    .line 338
    .local v0, halfHeight:I
    const/4 v2, 0x2

    if-gt v1, v2, :cond_0

    .line 339
    invoke-static {}, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->$SWITCH_TABLE$org$andengine$util$adt$bounds$BoundsSplit()[I

    move-result-object v2

    invoke-virtual {p1}, Lorg/andengine/util/adt/bounds/BoundsSplit;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 347
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v4, Lorg/andengine/util/adt/bounds/BoundsSplit;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 342
    :pswitch_0
    iget v2, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->mYMin:I

    .line 358
    :goto_0
    return v2

    .line 345
    :pswitch_1
    new-instance v2, Lorg/andengine/util/adt/bounds/BoundsSplit$BoundsSplitException;

    invoke-direct {v2}, Lorg/andengine/util/adt/bounds/BoundsSplit$BoundsSplitException;-><init>()V

    throw v2

    .line 350
    :cond_0
    invoke-static {}, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->$SWITCH_TABLE$org$andengine$util$adt$bounds$BoundsSplit()[I

    move-result-object v2

    invoke-virtual {p1}, Lorg/andengine/util/adt/bounds/BoundsSplit;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    .line 360
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v4, Lorg/andengine/util/adt/bounds/BoundsSplit;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 352
    :pswitch_2
    iget v2, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->mYMin:I

    goto :goto_0

    .line 354
    :pswitch_3
    iget v2, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->mYMin:I

    goto :goto_0

    .line 356
    :pswitch_4
    iget v2, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->mYMin:I

    add-int/2addr v2, v0

    goto :goto_0

    .line 358
    :pswitch_5
    iget v2, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->mYMin:I

    add-int/2addr v2, v0

    goto :goto_0

    .line 339
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 350
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method protected appendBoundsToString(Ljava/lang/StringBuilder;)V
    .locals 2
    .parameter "pStringBuilder"

    .prologue
    .line 287
    .line 288
    const-string v0, "[XMin: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 289
    iget v1, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->mXMin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 290
    const-string v1, ", YMin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 291
    iget v1, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->mYMin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 292
    const-string v1, ", XMax: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 293
    iget v1, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->mXMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 294
    const-string v1, ", YMax: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 295
    iget v1, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->mYMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 296
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    return-void
.end method

.method protected bridge synthetic containedBy(Lorg/andengine/util/adt/bounds/IBounds;)Z
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, Lorg/andengine/util/adt/bounds/IIntBounds;

    invoke-virtual {p0, p1}, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->containedBy(Lorg/andengine/util/adt/bounds/IIntBounds;)Z

    move-result v0

    return v0
.end method

.method protected containedBy(Lorg/andengine/util/adt/bounds/IIntBounds;)Z
    .locals 8
    .parameter "pBounds"

    .prologue
    .line 282
    invoke-interface {p1}, Lorg/andengine/util/adt/bounds/IIntBounds;->getXMin()I

    move-result v0

    invoke-interface {p1}, Lorg/andengine/util/adt/bounds/IIntBounds;->getYMin()I

    move-result v1

    invoke-interface {p1}, Lorg/andengine/util/adt/bounds/IIntBounds;->getXMax()I

    move-result v2

    invoke-interface {p1}, Lorg/andengine/util/adt/bounds/IIntBounds;->getYMax()I

    move-result v3

    iget v4, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->mXMin:I

    iget v5, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->mYMin:I

    iget v6, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->mXMax:I

    iget v7, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->mYMax:I

    invoke-static/range {v0 .. v7}, Lorg/andengine/util/adt/spatial/bounds/util/IntBoundsUtils;->contains(IIIIIIII)Z

    move-result v0

    return v0
.end method

.method public contains(IIII)Z
    .locals 8
    .parameter "pXMin"
    .parameter "pYMin"
    .parameter "pXMax"
    .parameter "pYMax"

    .prologue
    .line 432
    iget v0, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->mXMin:I

    iget v1, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->mYMin:I

    iget v2, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->mXMax:I

    iget v3, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->mYMax:I

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-static/range {v0 .. v7}, Lorg/andengine/util/adt/spatial/bounds/util/IntBoundsUtils;->contains(IIIIIIII)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic contains(Lorg/andengine/util/adt/bounds/BoundsSplit;Lorg/andengine/util/adt/bounds/IBounds;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p2, Lorg/andengine/util/adt/bounds/IIntBounds;

    invoke-virtual {p0, p1, p2}, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->contains(Lorg/andengine/util/adt/bounds/BoundsSplit;Lorg/andengine/util/adt/bounds/IIntBounds;)Z

    move-result v0

    return v0
.end method

.method protected contains(Lorg/andengine/util/adt/bounds/BoundsSplit;Lorg/andengine/util/adt/bounds/IIntBounds;)Z
    .locals 8
    .parameter "pBoundsSplit"
    .parameter "pIntBounds"

    .prologue
    .line 267
    invoke-direct {p0, p1}, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->getXMin(Lorg/andengine/util/adt/bounds/BoundsSplit;)I

    move-result v0

    invoke-direct {p0, p1}, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->getYMin(Lorg/andengine/util/adt/bounds/BoundsSplit;)I

    move-result v1

    invoke-direct {p0, p1}, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->getXMax(Lorg/andengine/util/adt/bounds/BoundsSplit;)I

    move-result v2

    invoke-direct {p0, p1}, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->getYMax(Lorg/andengine/util/adt/bounds/BoundsSplit;)I

    move-result v3

    invoke-interface {p2}, Lorg/andengine/util/adt/bounds/IIntBounds;->getXMin()I

    move-result v4

    invoke-interface {p2}, Lorg/andengine/util/adt/bounds/IIntBounds;->getYMin()I

    move-result v5

    invoke-interface {p2}, Lorg/andengine/util/adt/bounds/IIntBounds;->getXMax()I

    move-result v6

    invoke-interface {p2}, Lorg/andengine/util/adt/bounds/IIntBounds;->getYMax()I

    move-result v7

    invoke-static/range {v0 .. v7}, Lorg/andengine/util/adt/spatial/bounds/util/IntBoundsUtils;->contains(IIIIIIII)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic contains(Lorg/andengine/util/adt/bounds/IBounds;)Z
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, Lorg/andengine/util/adt/bounds/IIntBounds;

    invoke-virtual {p0, p1}, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->contains(Lorg/andengine/util/adt/bounds/IIntBounds;)Z

    move-result v0

    return v0
.end method

.method protected contains(Lorg/andengine/util/adt/bounds/IIntBounds;)Z
    .locals 4
    .parameter "pIntBounds"

    .prologue
    .line 262
    invoke-interface {p1}, Lorg/andengine/util/adt/bounds/IIntBounds;->getXMin()I

    move-result v0

    invoke-interface {p1}, Lorg/andengine/util/adt/bounds/IIntBounds;->getYMin()I

    move-result v1

    invoke-interface {p1}, Lorg/andengine/util/adt/bounds/IIntBounds;->getXMax()I

    move-result v2

    invoke-interface {p1}, Lorg/andengine/util/adt/bounds/IIntBounds;->getYMax()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->contains(IIII)Z

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 236
    iget v0, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->mYMax:I

    iget v1, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->mYMin:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 232
    iget v0, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->mXMax:I

    iget v1, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->mXMin:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getXMax()I
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->mXMax:I

    return v0
.end method

.method public getXMin()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->mXMin:I

    return v0
.end method

.method public getYMax()I
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->mYMax:I

    return v0
.end method

.method public getYMin()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->mYMin:I

    return v0
.end method

.method public intersects(IIII)Z
    .locals 8
    .parameter "pXMin"
    .parameter "pYMin"
    .parameter "pXMax"
    .parameter "pYMax"

    .prologue
    .line 428
    iget v0, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->mXMin:I

    iget v1, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->mYMin:I

    iget v2, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->mXMax:I

    iget v3, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->mYMax:I

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-static/range {v0 .. v7}, Lorg/andengine/util/adt/spatial/bounds/util/IntBoundsUtils;->intersects(IIIIIIII)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic intersects(Lorg/andengine/util/adt/bounds/IBounds;)Z
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, Lorg/andengine/util/adt/bounds/IIntBounds;

    invoke-virtual {p0, p1}, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->intersects(Lorg/andengine/util/adt/bounds/IIntBounds;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic intersects(Lorg/andengine/util/adt/bounds/IBounds;Lorg/andengine/util/adt/bounds/IBounds;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lorg/andengine/util/adt/bounds/IIntBounds;

    check-cast p2, Lorg/andengine/util/adt/bounds/IIntBounds;

    invoke-virtual {p0, p1, p2}, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->intersects(Lorg/andengine/util/adt/bounds/IIntBounds;Lorg/andengine/util/adt/bounds/IIntBounds;)Z

    move-result v0

    return v0
.end method

.method protected intersects(Lorg/andengine/util/adt/bounds/IIntBounds;)Z
    .locals 8
    .parameter "pIntBounds"

    .prologue
    .line 272
    iget v0, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->mXMin:I

    iget v1, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->mYMin:I

    iget v2, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->mXMax:I

    iget v3, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->mYMax:I

    invoke-interface {p1}, Lorg/andengine/util/adt/bounds/IIntBounds;->getXMin()I

    move-result v4

    invoke-interface {p1}, Lorg/andengine/util/adt/bounds/IIntBounds;->getYMin()I

    move-result v5

    invoke-interface {p1}, Lorg/andengine/util/adt/bounds/IIntBounds;->getXMax()I

    move-result v6

    invoke-interface {p1}, Lorg/andengine/util/adt/bounds/IIntBounds;->getYMax()I

    move-result v7

    invoke-static/range {v0 .. v7}, Lorg/andengine/util/adt/spatial/bounds/util/IntBoundsUtils;->intersects(IIIIIIII)Z

    move-result v0

    return v0
.end method

.method protected intersects(Lorg/andengine/util/adt/bounds/IIntBounds;Lorg/andengine/util/adt/bounds/IIntBounds;)Z
    .locals 1
    .parameter "pIntBoundsA"
    .parameter "pIntBoundsB"

    .prologue
    .line 277
    invoke-static {p1, p2}, Lorg/andengine/util/adt/spatial/bounds/util/IntBoundsUtils;->intersects(Lorg/andengine/util/adt/bounds/IIntBounds;Lorg/andengine/util/adt/bounds/IIntBounds;)Z

    move-result v0

    return v0
.end method

.method protected split(Lorg/andengine/util/adt/bounds/BoundsSplit;)Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;
    .locals 9
    .parameter "pBoundsSplit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/adt/bounds/BoundsSplit;",
            ")",
            "Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree",
            "<TT;>.IntQuadTreeNode;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x2

    .line 245
    invoke-virtual {p0}, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->getWidth()I

    move-result v8

    .line 246
    .local v8, width:I
    invoke-virtual {p0}, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->getHeight()I

    move-result v7

    .line 248
    .local v7, height:I
    if-gt v8, v0, :cond_0

    if-gt v7, v0, :cond_0

    .line 249
    new-instance v0, Lorg/andengine/util/adt/bounds/BoundsSplit$BoundsSplitException;

    invoke-direct {v0}, Lorg/andengine/util/adt/bounds/BoundsSplit$BoundsSplitException;-><init>()V

    throw v0

    .line 252
    :cond_0
    invoke-direct {p0, p1}, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->getXMin(Lorg/andengine/util/adt/bounds/BoundsSplit;)I

    move-result v3

    .line 253
    .local v3, xMin:I
    invoke-direct {p0, p1}, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->getYMin(Lorg/andengine/util/adt/bounds/BoundsSplit;)I

    move-result v4

    .line 254
    .local v4, yMin:I
    invoke-direct {p0, p1}, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->getXMax(Lorg/andengine/util/adt/bounds/BoundsSplit;)I

    move-result v5

    .line 255
    .local v5, xMax:I
    invoke-direct {p0, p1}, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->getYMax(Lorg/andengine/util/adt/bounds/BoundsSplit;)I

    move-result v6

    .line 257
    .local v6, yMax:I
    new-instance v0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;

    iget-object v1, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->this$0:Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;

    iget v2, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->mLevel:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct/range {v0 .. v6}, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;-><init>(Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;IIIII)V

    return-object v0
.end method

.method protected bridge synthetic split(Lorg/andengine/util/adt/bounds/BoundsSplit;)Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->split(Lorg/andengine/util/adt/bounds/BoundsSplit;)Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;

    move-result-object v0

    return-object v0
.end method
