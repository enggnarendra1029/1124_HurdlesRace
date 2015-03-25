.class final Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;
.super Ljava/lang/Object;
.source "AStarPathFinder.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andengine/util/algorithm/path/astar/AStarPathFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;",
        ">;"
    }
.end annotation


# instance fields
.field mCost:F

.field final mExpectedRestCost:F

.field final mID:J

.field mParent:Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;

.field mTotalCost:F

.field final mX:I

.field final mY:I


# direct methods
.method public constructor <init>(IIF)V
    .locals 2
    .parameter "pX"
    .parameter "pY"
    .parameter "pExpectedRestCost"

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput p1, p0, Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;->mX:I

    .line 213
    iput p2, p0, Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;->mY:I

    .line 214
    iput p3, p0, Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;->mExpectedRestCost:F

    .line 216
    invoke-static {p1, p2}, Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;->calculateID(II)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;->mID:J

    .line 217
    return-void
.end method

.method public static calculateID(II)J
    .locals 4
    .parameter "pX"
    .parameter "pY"

    .prologue
    .line 267
    int-to-long v0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p1

    or-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;

    invoke-virtual {p0, p1}, Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;->compareTo(Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;)I
    .locals 4
    .parameter

    .prologue
    .local p1, pNode:Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;,"Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;"
    const/4 v3, 0x0

    .line 235
    iget v1, p0, Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;->mTotalCost:F

    iget v2, p1, Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;->mTotalCost:F

    sub-float v0, v1, v2

    .line 236
    .local v0, diff:F
    cmpl-float v1, v0, v3

    if-lez v1, :cond_0

    .line 237
    const/4 v1, 0x1

    .line 241
    :goto_0
    return v1

    .line 238
    :cond_0
    cmpg-float v1, v0, v3

    if-gez v1, :cond_1

    .line 239
    const/4 v1, -0x1

    goto :goto_0

    .line 241
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "pOther"

    .prologue
    const/4 v0, 0x0

    .line 247
    if-ne p0, p1, :cond_1

    .line 248
    const/4 v0, 0x1

    .line 254
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 249
    .restart local p1
    :cond_1
    if-eqz p1, :cond_0

    .line 251
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 254
    check-cast p1, Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;->equals(Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;)Z

    move-result v0

    goto :goto_0
.end method

.method public equals(Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;)Z
    .locals 4
    .parameter

    .prologue
    .line 271
    .local p1, pNode:Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;,"Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;"
    iget-wide v0, p0, Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;->mID:J

    iget-wide v2, p1, Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;->mID:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setParent(Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;F)V
    .locals 1
    .parameter
    .parameter "pCost"

    .prologue
    .line 224
    .local p1, pParent:Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;,"Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;"
    iput-object p1, p0, Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;->mParent:Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;

    .line 225
    iput p2, p0, Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;->mCost:F

    .line 226
    iget v0, p0, Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;->mExpectedRestCost:F

    add-float/2addr v0, p2

    iput v0, p0, Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;->mTotalCost:F

    .line 227
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " [x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;->mX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;->mY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
