.class public Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;
.super Lorg/andengine/util/adt/spatial/quadtree/QuadTree;
.source "FloatQuadTree.java"

# interfaces
.implements Lorg/andengine/util/adt/bounds/IFloatBounds;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/andengine/util/adt/spatial/ISpatialItem",
        "<",
        "Lorg/andengine/util/adt/bounds/IFloatBounds;",
        ">;>",
        "Lorg/andengine/util/adt/spatial/quadtree/QuadTree",
        "<",
        "Lorg/andengine/util/adt/bounds/IFloatBounds;",
        "TT;>;",
        "Lorg/andengine/util/adt/bounds/IFloatBounds;"
    }
.end annotation


# instance fields
.field private final mQueryFloatBounds:Lorg/andengine/util/adt/bounds/FloatBounds;


# direct methods
.method public constructor <init>(FFFF)V
    .locals 2
    .parameter "pXMin"
    .parameter "pYMin"
    .parameter "pXMax"
    .parameter "pYMax"

    .prologue
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree<TT;>;"
    const/4 v1, 0x0

    .line 40
    new-instance v0, Lorg/andengine/util/adt/bounds/FloatBounds;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/andengine/util/adt/bounds/FloatBounds;-><init>(FFFF)V

    invoke-direct {p0, v0}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree;-><init>(Lorg/andengine/util/adt/bounds/IBounds;)V

    .line 29
    new-instance v0, Lorg/andengine/util/adt/bounds/FloatBounds;

    invoke-direct {v0, v1, v1, v1, v1}, Lorg/andengine/util/adt/bounds/FloatBounds;-><init>(FFFF)V

    iput-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;->mQueryFloatBounds:Lorg/andengine/util/adt/bounds/FloatBounds;

    .line 41
    return-void
.end method

.method public constructor <init>(FFFFI)V
    .locals 2
    .parameter "pXMin"
    .parameter "pYMin"
    .parameter "pXMax"
    .parameter "pYMax"
    .parameter "pMaxLevel"

    .prologue
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree<TT;>;"
    const/4 v1, 0x0

    .line 48
    new-instance v0, Lorg/andengine/util/adt/bounds/FloatBounds;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/andengine/util/adt/bounds/FloatBounds;-><init>(FFFF)V

    invoke-direct {p0, v0, p5}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree;-><init>(Lorg/andengine/util/adt/bounds/IBounds;I)V

    .line 29
    new-instance v0, Lorg/andengine/util/adt/bounds/FloatBounds;

    invoke-direct {v0, v1, v1, v1, v1}, Lorg/andengine/util/adt/bounds/FloatBounds;-><init>(FFFF)V

    iput-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;->mQueryFloatBounds:Lorg/andengine/util/adt/bounds/FloatBounds;

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/andengine/util/adt/bounds/IFloatBounds;)V
    .locals 2
    .parameter "pFloatBounds"

    .prologue
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree<TT;>;"
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0, p1}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree;-><init>(Lorg/andengine/util/adt/bounds/IBounds;)V

    .line 29
    new-instance v0, Lorg/andengine/util/adt/bounds/FloatBounds;

    invoke-direct {v0, v1, v1, v1, v1}, Lorg/andengine/util/adt/bounds/FloatBounds;-><init>(FFFF)V

    iput-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;->mQueryFloatBounds:Lorg/andengine/util/adt/bounds/FloatBounds;

    .line 37
    return-void
.end method

.method public constructor <init>(Lorg/andengine/util/adt/bounds/IFloatBounds;I)V
    .locals 2
    .parameter "pFloatBounds"
    .parameter "pMaxLevel"

    .prologue
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree<TT;>;"
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1, p2}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree;-><init>(Lorg/andengine/util/adt/bounds/IBounds;I)V

    .line 29
    new-instance v0, Lorg/andengine/util/adt/bounds/FloatBounds;

    invoke-direct {v0, v1, v1, v1, v1}, Lorg/andengine/util/adt/bounds/FloatBounds;-><init>(FFFF)V

    iput-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;->mQueryFloatBounds:Lorg/andengine/util/adt/bounds/FloatBounds;

    .line 45
    return-void
.end method


# virtual methods
.method public declared-synchronized containsAny(FF)Z
    .locals 1
    .parameter "pX"
    .parameter "pY"

    .prologue
    .line 145
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;->mQueryFloatBounds:Lorg/andengine/util/adt/bounds/FloatBounds;

    invoke-virtual {v0, p1, p2}, Lorg/andengine/util/adt/bounds/FloatBounds;->set(FF)V

    .line 146
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;->mQueryFloatBounds:Lorg/andengine/util/adt/bounds/FloatBounds;

    invoke-virtual {p0, v0}, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;->containsAny(Lorg/andengine/util/adt/bounds/IBounds;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized containsAny(FFFF)Z
    .locals 1
    .parameter "pXMin"
    .parameter "pYMin"
    .parameter "pXMax"
    .parameter "pYMax"

    .prologue
    .line 150
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;->mQueryFloatBounds:Lorg/andengine/util/adt/bounds/FloatBounds;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/andengine/util/adt/bounds/FloatBounds;->set(FFFF)V

    .line 151
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;->mQueryFloatBounds:Lorg/andengine/util/adt/bounds/FloatBounds;

    invoke-virtual {p0, v0}, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;->containsAny(Lorg/andengine/util/adt/bounds/IBounds;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized containsAny(FFFFLorg/andengine/util/IMatcher;)Z
    .locals 1
    .parameter "pXMin"
    .parameter "pYMin"
    .parameter "pXMax"
    .parameter "pYMax"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFF",
            "Lorg/andengine/util/IMatcher",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 160
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree<TT;>;"
    .local p5, pMatcher:Lorg/andengine/util/IMatcher;,"Lorg/andengine/util/IMatcher<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;->mQueryFloatBounds:Lorg/andengine/util/adt/bounds/FloatBounds;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/andengine/util/adt/bounds/FloatBounds;->set(FFFF)V

    .line 161
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;->mQueryFloatBounds:Lorg/andengine/util/adt/bounds/FloatBounds;

    invoke-virtual {p0, v0, p5}, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;->containsAny(Lorg/andengine/util/adt/bounds/IBounds;Lorg/andengine/util/IMatcher;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized containsAny(FFLorg/andengine/util/IMatcher;)Z
    .locals 1
    .parameter "pX"
    .parameter "pY"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Lorg/andengine/util/IMatcher",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 155
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree<TT;>;"
    .local p3, pMatcher:Lorg/andengine/util/IMatcher;,"Lorg/andengine/util/IMatcher<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;->mQueryFloatBounds:Lorg/andengine/util/adt/bounds/FloatBounds;

    invoke-virtual {v0, p1, p2}, Lorg/andengine/util/adt/bounds/FloatBounds;->set(FF)V

    .line 156
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;->mQueryFloatBounds:Lorg/andengine/util/adt/bounds/FloatBounds;

    invoke-virtual {p0, v0, p3}, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;->containsAny(Lorg/andengine/util/adt/bounds/IBounds;Lorg/andengine/util/IMatcher;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getRoot()Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree",
            "<TT;>.FloatQuadTreeNode;"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree<TT;>;"
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;->mRoot:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    check-cast v0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;

    return-object v0
.end method

.method protected bridge synthetic getRoot()Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;->getRoot()Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;

    move-result-object v0

    return-object v0
.end method

.method public getXMax()F
    .locals 1

    .prologue
    .line 72
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree<TT;>;"
    invoke-virtual {p0}, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;->getRoot()Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->getXMax()F

    move-result v0

    return v0
.end method

.method public getXMin()F
    .locals 1

    .prologue
    .line 62
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree<TT;>;"
    invoke-virtual {p0}, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;->getRoot()Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->getXMin()F

    move-result v0

    return v0
.end method

.method public getYMax()F
    .locals 1

    .prologue
    .line 77
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree<TT;>;"
    invoke-virtual {p0}, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;->getRoot()Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->getYMax()F

    move-result v0

    return v0
.end method

.method public getYMin()F
    .locals 1

    .prologue
    .line 67
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree<TT;>;"
    invoke-virtual {p0}, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;->getRoot()Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;->getYMin()F

    move-result v0

    return v0
.end method

.method protected initRoot(Lorg/andengine/util/adt/bounds/IFloatBounds;)Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;
    .locals 2
    .parameter "pFloatBounds"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/adt/bounds/IFloatBounds;",
            ")",
            "Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree",
            "<TT;>.FloatQuadTreeNode;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree<TT;>;"
    new-instance v0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;-><init>(Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;ILorg/andengine/util/adt/bounds/IFloatBounds;)V

    return-object v0
.end method

.method protected bridge synthetic initRoot(Lorg/andengine/util/adt/bounds/IBounds;)Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, Lorg/andengine/util/adt/bounds/IFloatBounds;

    invoke-virtual {p0, p1}, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;->initRoot(Lorg/andengine/util/adt/bounds/IFloatBounds;)Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree$FloatQuadTreeNode;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized query(FF)Ljava/util/ArrayList;
    .locals 1
    .parameter "pX"
    .parameter "pY"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;->mQueryFloatBounds:Lorg/andengine/util/adt/bounds/FloatBounds;

    invoke-virtual {v0, p1, p2}, Lorg/andengine/util/adt/bounds/FloatBounds;->set(FF)V

    .line 96
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;->mQueryFloatBounds:Lorg/andengine/util/adt/bounds/FloatBounds;

    invoke-virtual {p0, v0}, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;->query(Lorg/andengine/util/adt/bounds/IBounds;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized query(FFFF)Ljava/util/ArrayList;
    .locals 1
    .parameter "pXMin"
    .parameter "pYMin"
    .parameter "pXMax"
    .parameter "pYMax"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFF)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;->mQueryFloatBounds:Lorg/andengine/util/adt/bounds/FloatBounds;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/andengine/util/adt/bounds/FloatBounds;->set(FFFF)V

    .line 116
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;->mQueryFloatBounds:Lorg/andengine/util/adt/bounds/FloatBounds;

    invoke-virtual {p0, v0}, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;->query(Lorg/andengine/util/adt/bounds/IBounds;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized query(FFFFLorg/andengine/util/IMatcher;)Ljava/util/ArrayList;
    .locals 1
    .parameter "pXMin"
    .parameter "pYMin"
    .parameter "pXMax"
    .parameter "pYMax"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFF",
            "Lorg/andengine/util/IMatcher",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 125
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree<TT;>;"
    .local p5, pMatcher:Lorg/andengine/util/IMatcher;,"Lorg/andengine/util/IMatcher<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;->mQueryFloatBounds:Lorg/andengine/util/adt/bounds/FloatBounds;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/andengine/util/adt/bounds/FloatBounds;->set(FFFF)V

    .line 126
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;->mQueryFloatBounds:Lorg/andengine/util/adt/bounds/FloatBounds;

    invoke-virtual {p0, v0, p5}, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;->query(Lorg/andengine/util/adt/bounds/IBounds;Lorg/andengine/util/IMatcher;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized query(FFLorg/andengine/util/IMatcher;)Ljava/util/ArrayList;
    .locals 1
    .parameter "pX"
    .parameter "pY"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Lorg/andengine/util/IMatcher",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree<TT;>;"
    .local p3, pMatcher:Lorg/andengine/util/IMatcher;,"Lorg/andengine/util/IMatcher<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;->mQueryFloatBounds:Lorg/andengine/util/adt/bounds/FloatBounds;

    invoke-virtual {v0, p1, p2}, Lorg/andengine/util/adt/bounds/FloatBounds;->set(FF)V

    .line 106
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;->mQueryFloatBounds:Lorg/andengine/util/adt/bounds/FloatBounds;

    invoke-virtual {p0, v0, p3}, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;->query(Lorg/andengine/util/adt/bounds/IBounds;Lorg/andengine/util/IMatcher;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized query(FFFFLjava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "pXMin"
    .parameter "pYMin"
    .parameter "pXMax"
    .parameter "pYMax"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L::Ljava/util/List",
            "<TT;>;>(FFFFT",
            "L;",
            ")T",
            "L;"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree<TT;>;"
    .local p5, pResult:Ljava/util/List;,"TL;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;->mQueryFloatBounds:Lorg/andengine/util/adt/bounds/FloatBounds;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/andengine/util/adt/bounds/FloatBounds;->set(FFFF)V

    .line 121
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;->mQueryFloatBounds:Lorg/andengine/util/adt/bounds/FloatBounds;

    invoke-virtual {p0, v0, p5}, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;->query(Lorg/andengine/util/adt/bounds/IBounds;Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized query(FFFFLorg/andengine/util/IMatcher;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "pXMin"
    .parameter "pYMin"
    .parameter "pXMax"
    .parameter "pYMax"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L::Ljava/util/List",
            "<TT;>;>(FFFF",
            "Lorg/andengine/util/IMatcher",
            "<TT;>;T",
            "L;",
            ")T",
            "L;"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree<TT;>;"
    .local p5, pMatcher:Lorg/andengine/util/IMatcher;,"Lorg/andengine/util/IMatcher<TT;>;"
    .local p6, pResult:Ljava/util/List;,"TL;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;->mQueryFloatBounds:Lorg/andengine/util/adt/bounds/FloatBounds;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/andengine/util/adt/bounds/FloatBounds;->set(FFFF)V

    .line 131
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;->mQueryFloatBounds:Lorg/andengine/util/adt/bounds/FloatBounds;

    invoke-virtual {p0, v0, p5, p6}, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;->query(Lorg/andengine/util/adt/bounds/IBounds;Lorg/andengine/util/IMatcher;Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized query(FFLjava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "pX"
    .parameter "pY"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L::Ljava/util/List",
            "<TT;>;>(FFT",
            "L;",
            ")T",
            "L;"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree<TT;>;"
    .local p3, pResult:Ljava/util/List;,"TL;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;->mQueryFloatBounds:Lorg/andengine/util/adt/bounds/FloatBounds;

    invoke-virtual {v0, p1, p2}, Lorg/andengine/util/adt/bounds/FloatBounds;->set(FF)V

    .line 101
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;->mQueryFloatBounds:Lorg/andengine/util/adt/bounds/FloatBounds;

    invoke-virtual {p0, v0, p3}, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;->query(Lorg/andengine/util/adt/bounds/IBounds;Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized query(FFLorg/andengine/util/IMatcher;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "pX"
    .parameter "pY"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L::Ljava/util/List",
            "<TT;>;>(FF",
            "Lorg/andengine/util/IMatcher",
            "<TT;>;T",
            "L;",
            ")T",
            "L;"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree<TT;>;"
    .local p3, pMatcher:Lorg/andengine/util/IMatcher;,"Lorg/andengine/util/IMatcher<TT;>;"
    .local p4, pResult:Ljava/util/List;,"TL;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;->mQueryFloatBounds:Lorg/andengine/util/adt/bounds/FloatBounds;

    invoke-virtual {v0, p1, p2}, Lorg/andengine/util/adt/bounds/FloatBounds;->set(FF)V

    .line 111
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;->mQueryFloatBounds:Lorg/andengine/util/adt/bounds/FloatBounds;

    invoke-virtual {p0, v0, p3, p4}, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;->query(Lorg/andengine/util/adt/bounds/IBounds;Lorg/andengine/util/IMatcher;Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized queryForSubclass(FFFFLorg/andengine/util/IMatcher;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "pXMin"
    .parameter "pYMin"
    .parameter "pXMax"
    .parameter "pYMax"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>(FFFF",
            "Lorg/andengine/util/IMatcher",
            "<TT;>;",
            "Ljava/util/List",
            "<TS;>;)",
            "Ljava/util/List",
            "<TS;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .prologue
    .line 140
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree<TT;>;"
    .local p5, pMatcher:Lorg/andengine/util/IMatcher;,"Lorg/andengine/util/IMatcher<TT;>;"
    .local p6, pResult:Ljava/util/List;,"Ljava/util/List<TS;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;->mQueryFloatBounds:Lorg/andengine/util/adt/bounds/FloatBounds;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/andengine/util/adt/bounds/FloatBounds;->set(FFFF)V

    .line 141
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;->mQueryFloatBounds:Lorg/andengine/util/adt/bounds/FloatBounds;

    invoke-virtual {p0, v0, p5, p6}, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;->queryForSubclass(Lorg/andengine/util/adt/bounds/IBounds;Lorg/andengine/util/IMatcher;Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized queryForSubclass(FFLorg/andengine/util/IMatcher;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "pX"
    .parameter "pY"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>(FF",
            "Lorg/andengine/util/IMatcher",
            "<TT;>;",
            "Ljava/util/List",
            "<TS;>;)",
            "Ljava/util/List",
            "<TS;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .prologue
    .line 135
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree<TT;>;"
    .local p3, pMatcher:Lorg/andengine/util/IMatcher;,"Lorg/andengine/util/IMatcher<TT;>;"
    .local p4, pResult:Ljava/util/List;,"Ljava/util/List<TS;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;->mQueryFloatBounds:Lorg/andengine/util/adt/bounds/FloatBounds;

    invoke-virtual {v0, p1, p2}, Lorg/andengine/util/adt/bounds/FloatBounds;->set(FF)V

    .line 136
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;->mQueryFloatBounds:Lorg/andengine/util/adt/bounds/FloatBounds;

    invoke-virtual {p0, v0, p3, p4}, Lorg/andengine/util/adt/spatial/quadtree/FloatQuadTree;->queryForSubclass(Lorg/andengine/util/adt/bounds/IBounds;Lorg/andengine/util/IMatcher;Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
