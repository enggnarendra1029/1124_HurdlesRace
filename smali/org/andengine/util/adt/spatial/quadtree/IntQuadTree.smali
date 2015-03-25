.class public Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;
.super Lorg/andengine/util/adt/spatial/quadtree/QuadTree;
.source "IntQuadTree.java"

# interfaces
.implements Lorg/andengine/util/adt/bounds/IIntBounds;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/andengine/util/adt/spatial/ISpatialItem",
        "<",
        "Lorg/andengine/util/adt/bounds/IIntBounds;",
        ">;>",
        "Lorg/andengine/util/adt/spatial/quadtree/QuadTree",
        "<",
        "Lorg/andengine/util/adt/bounds/IIntBounds;",
        "TT;>;",
        "Lorg/andengine/util/adt/bounds/IIntBounds;"
    }
.end annotation


# instance fields
.field private final mQueryIntBounds:Lorg/andengine/util/adt/bounds/IntBounds;


# direct methods
.method public constructor <init>(IIII)V
    .locals 2
    .parameter "pXMin"
    .parameter "pYMin"
    .parameter "pXMax"
    .parameter "pYMax"

    .prologue
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree<TT;>;"
    const/4 v1, 0x0

    .line 41
    new-instance v0, Lorg/andengine/util/adt/bounds/IntBounds;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/andengine/util/adt/bounds/IntBounds;-><init>(IIII)V

    invoke-direct {p0, v0}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree;-><init>(Lorg/andengine/util/adt/bounds/IBounds;)V

    .line 30
    new-instance v0, Lorg/andengine/util/adt/bounds/IntBounds;

    invoke-direct {v0, v1, v1, v1, v1}, Lorg/andengine/util/adt/bounds/IntBounds;-><init>(IIII)V

    iput-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;->mQueryIntBounds:Lorg/andengine/util/adt/bounds/IntBounds;

    .line 42
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 2
    .parameter "pXMin"
    .parameter "pYMin"
    .parameter "pXMax"
    .parameter "pYMax"
    .parameter "pMaxLevel"

    .prologue
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree<TT;>;"
    const/4 v1, 0x0

    .line 49
    new-instance v0, Lorg/andengine/util/adt/bounds/IntBounds;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/andengine/util/adt/bounds/IntBounds;-><init>(IIII)V

    invoke-direct {p0, v0, p5}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree;-><init>(Lorg/andengine/util/adt/bounds/IBounds;I)V

    .line 30
    new-instance v0, Lorg/andengine/util/adt/bounds/IntBounds;

    invoke-direct {v0, v1, v1, v1, v1}, Lorg/andengine/util/adt/bounds/IntBounds;-><init>(IIII)V

    iput-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;->mQueryIntBounds:Lorg/andengine/util/adt/bounds/IntBounds;

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/andengine/util/adt/bounds/IIntBounds;)V
    .locals 2
    .parameter "pIntBounds"

    .prologue
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree<TT;>;"
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0, p1}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree;-><init>(Lorg/andengine/util/adt/bounds/IBounds;)V

    .line 30
    new-instance v0, Lorg/andengine/util/adt/bounds/IntBounds;

    invoke-direct {v0, v1, v1, v1, v1}, Lorg/andengine/util/adt/bounds/IntBounds;-><init>(IIII)V

    iput-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;->mQueryIntBounds:Lorg/andengine/util/adt/bounds/IntBounds;

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/andengine/util/adt/bounds/IIntBounds;I)V
    .locals 2
    .parameter "pIntBounds"
    .parameter "pMaxLevel"

    .prologue
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree<TT;>;"
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0, p1, p2}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree;-><init>(Lorg/andengine/util/adt/bounds/IBounds;I)V

    .line 30
    new-instance v0, Lorg/andengine/util/adt/bounds/IntBounds;

    invoke-direct {v0, v1, v1, v1, v1}, Lorg/andengine/util/adt/bounds/IntBounds;-><init>(IIII)V

    iput-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;->mQueryIntBounds:Lorg/andengine/util/adt/bounds/IntBounds;

    .line 46
    return-void
.end method


# virtual methods
.method public declared-synchronized containsAny(II)Z
    .locals 1
    .parameter "pX"
    .parameter "pY"

    .prologue
    .line 146
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;->mQueryIntBounds:Lorg/andengine/util/adt/bounds/IntBounds;

    invoke-virtual {v0, p1, p2}, Lorg/andengine/util/adt/bounds/IntBounds;->set(II)V

    .line 147
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;->mQueryIntBounds:Lorg/andengine/util/adt/bounds/IntBounds;

    invoke-virtual {p0, v0}, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;->containsAny(Lorg/andengine/util/adt/bounds/IBounds;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized containsAny(IIII)Z
    .locals 1
    .parameter "pXMin"
    .parameter "pYMin"
    .parameter "pXMax"
    .parameter "pYMax"

    .prologue
    .line 151
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;->mQueryIntBounds:Lorg/andengine/util/adt/bounds/IntBounds;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/andengine/util/adt/bounds/IntBounds;->set(IIII)V

    .line 152
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;->mQueryIntBounds:Lorg/andengine/util/adt/bounds/IntBounds;

    invoke-virtual {p0, v0}, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;->containsAny(Lorg/andengine/util/adt/bounds/IBounds;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized containsAny(IIIILorg/andengine/util/IMatcher;)Z
    .locals 1
    .parameter "pXMin"
    .parameter "pYMin"
    .parameter "pXMax"
    .parameter "pYMax"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Lorg/andengine/util/IMatcher",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 161
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree<TT;>;"
    .local p5, pMatcher:Lorg/andengine/util/IMatcher;,"Lorg/andengine/util/IMatcher<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;->mQueryIntBounds:Lorg/andengine/util/adt/bounds/IntBounds;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/andengine/util/adt/bounds/IntBounds;->set(IIII)V

    .line 162
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;->mQueryIntBounds:Lorg/andengine/util/adt/bounds/IntBounds;

    invoke-virtual {p0, v0, p5}, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;->containsAny(Lorg/andengine/util/adt/bounds/IBounds;Lorg/andengine/util/IMatcher;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized containsAny(IILorg/andengine/util/IMatcher;)Z
    .locals 1
    .parameter "pX"
    .parameter "pY"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lorg/andengine/util/IMatcher",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 156
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree<TT;>;"
    .local p3, pMatcher:Lorg/andengine/util/IMatcher;,"Lorg/andengine/util/IMatcher<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;->mQueryIntBounds:Lorg/andengine/util/adt/bounds/IntBounds;

    invoke-virtual {v0, p1, p2}, Lorg/andengine/util/adt/bounds/IntBounds;->set(II)V

    .line 157
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;->mQueryIntBounds:Lorg/andengine/util/adt/bounds/IntBounds;

    invoke-virtual {p0, v0, p3}, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;->containsAny(Lorg/andengine/util/adt/bounds/IBounds;Lorg/andengine/util/IMatcher;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getRoot()Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree",
            "<TT;>.IntQuadTreeNode;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree<TT;>;"
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;->mRoot:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    check-cast v0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;

    return-object v0
.end method

.method protected bridge synthetic getRoot()Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;->getRoot()Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;

    move-result-object v0

    return-object v0
.end method

.method public getXMax()I
    .locals 1

    .prologue
    .line 73
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree<TT;>;"
    invoke-virtual {p0}, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;->getRoot()Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->getXMax()I

    move-result v0

    return v0
.end method

.method public getXMin()I
    .locals 1

    .prologue
    .line 63
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree<TT;>;"
    invoke-virtual {p0}, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;->getRoot()Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->getXMin()I

    move-result v0

    return v0
.end method

.method public getYMax()I
    .locals 1

    .prologue
    .line 78
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree<TT;>;"
    invoke-virtual {p0}, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;->getRoot()Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->getYMax()I

    move-result v0

    return v0
.end method

.method public getYMin()I
    .locals 1

    .prologue
    .line 68
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree<TT;>;"
    invoke-virtual {p0}, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;->getRoot()Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;->getYMin()I

    move-result v0

    return v0
.end method

.method protected initRoot(Lorg/andengine/util/adt/bounds/IIntBounds;)Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;
    .locals 2
    .parameter "pIntBounds"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/adt/bounds/IIntBounds;",
            ")",
            "Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree",
            "<TT;>.IntQuadTreeNode;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree<TT;>;"
    new-instance v0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;-><init>(Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;ILorg/andengine/util/adt/bounds/IIntBounds;)V

    return-object v0
.end method

.method protected bridge synthetic initRoot(Lorg/andengine/util/adt/bounds/IBounds;)Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, Lorg/andengine/util/adt/bounds/IIntBounds;

    invoke-virtual {p0, p1}, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;->initRoot(Lorg/andengine/util/adt/bounds/IIntBounds;)Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree$IntQuadTreeNode;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized query(II)Ljava/util/ArrayList;
    .locals 1
    .parameter "pX"
    .parameter "pY"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;->mQueryIntBounds:Lorg/andengine/util/adt/bounds/IntBounds;

    invoke-virtual {v0, p1, p2}, Lorg/andengine/util/adt/bounds/IntBounds;->set(II)V

    .line 97
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;->mQueryIntBounds:Lorg/andengine/util/adt/bounds/IntBounds;

    invoke-virtual {p0, v0}, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;->query(Lorg/andengine/util/adt/bounds/IBounds;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized query(IIII)Ljava/util/ArrayList;
    .locals 1
    .parameter "pXMin"
    .parameter "pYMin"
    .parameter "pXMax"
    .parameter "pYMax"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;->mQueryIntBounds:Lorg/andengine/util/adt/bounds/IntBounds;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/andengine/util/adt/bounds/IntBounds;->set(IIII)V

    .line 117
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;->mQueryIntBounds:Lorg/andengine/util/adt/bounds/IntBounds;

    invoke-virtual {p0, v0}, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;->query(Lorg/andengine/util/adt/bounds/IBounds;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized query(IIIILorg/andengine/util/IMatcher;)Ljava/util/ArrayList;
    .locals 1
    .parameter "pXMin"
    .parameter "pYMin"
    .parameter "pXMax"
    .parameter "pYMax"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Lorg/andengine/util/IMatcher",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree<TT;>;"
    .local p5, pMatcher:Lorg/andengine/util/IMatcher;,"Lorg/andengine/util/IMatcher<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;->mQueryIntBounds:Lorg/andengine/util/adt/bounds/IntBounds;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/andengine/util/adt/bounds/IntBounds;->set(IIII)V

    .line 127
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;->mQueryIntBounds:Lorg/andengine/util/adt/bounds/IntBounds;

    invoke-virtual {p0, v0, p5}, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;->query(Lorg/andengine/util/adt/bounds/IBounds;Lorg/andengine/util/IMatcher;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized query(IILorg/andengine/util/IMatcher;)Ljava/util/ArrayList;
    .locals 1
    .parameter "pX"
    .parameter "pY"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lorg/andengine/util/IMatcher",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree<TT;>;"
    .local p3, pMatcher:Lorg/andengine/util/IMatcher;,"Lorg/andengine/util/IMatcher<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;->mQueryIntBounds:Lorg/andengine/util/adt/bounds/IntBounds;

    invoke-virtual {v0, p1, p2}, Lorg/andengine/util/adt/bounds/IntBounds;->set(II)V

    .line 107
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;->mQueryIntBounds:Lorg/andengine/util/adt/bounds/IntBounds;

    invoke-virtual {p0, v0, p3}, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;->query(Lorg/andengine/util/adt/bounds/IBounds;Lorg/andengine/util/IMatcher;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized query(IIIILjava/util/List;)Ljava/util/List;
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
            "<TT;>;>(IIIIT",
            "L;",
            ")T",
            "L;"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree<TT;>;"
    .local p5, pResult:Ljava/util/List;,"TL;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;->mQueryIntBounds:Lorg/andengine/util/adt/bounds/IntBounds;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/andengine/util/adt/bounds/IntBounds;->set(IIII)V

    .line 122
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;->mQueryIntBounds:Lorg/andengine/util/adt/bounds/IntBounds;

    invoke-virtual {p0, v0, p5}, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;->query(Lorg/andengine/util/adt/bounds/IBounds;Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized query(IIIILorg/andengine/util/IMatcher;Ljava/util/List;)Ljava/util/List;
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
            "<TT;>;>(IIII",
            "Lorg/andengine/util/IMatcher",
            "<TT;>;T",
            "L;",
            ")T",
            "L;"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree<TT;>;"
    .local p5, pMatcher:Lorg/andengine/util/IMatcher;,"Lorg/andengine/util/IMatcher<TT;>;"
    .local p6, pResult:Ljava/util/List;,"TL;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;->mQueryIntBounds:Lorg/andengine/util/adt/bounds/IntBounds;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/andengine/util/adt/bounds/IntBounds;->set(IIII)V

    .line 132
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;->mQueryIntBounds:Lorg/andengine/util/adt/bounds/IntBounds;

    invoke-virtual {p0, v0, p5, p6}, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;->query(Lorg/andengine/util/adt/bounds/IBounds;Lorg/andengine/util/IMatcher;Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized query(IILjava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "pX"
    .parameter "pY"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L::Ljava/util/List",
            "<TT;>;>(IIT",
            "L;",
            ")T",
            "L;"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree<TT;>;"
    .local p3, pResult:Ljava/util/List;,"TL;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;->mQueryIntBounds:Lorg/andengine/util/adt/bounds/IntBounds;

    invoke-virtual {v0, p1, p2}, Lorg/andengine/util/adt/bounds/IntBounds;->set(II)V

    .line 102
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;->mQueryIntBounds:Lorg/andengine/util/adt/bounds/IntBounds;

    invoke-virtual {p0, v0, p3}, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;->query(Lorg/andengine/util/adt/bounds/IBounds;Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized query(IILorg/andengine/util/IMatcher;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "pX"
    .parameter "pY"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L::Ljava/util/List",
            "<TT;>;>(II",
            "Lorg/andengine/util/IMatcher",
            "<TT;>;T",
            "L;",
            ")T",
            "L;"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree<TT;>;"
    .local p3, pMatcher:Lorg/andengine/util/IMatcher;,"Lorg/andengine/util/IMatcher<TT;>;"
    .local p4, pResult:Ljava/util/List;,"TL;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;->mQueryIntBounds:Lorg/andengine/util/adt/bounds/IntBounds;

    invoke-virtual {v0, p1, p2}, Lorg/andengine/util/adt/bounds/IntBounds;->set(II)V

    .line 112
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;->mQueryIntBounds:Lorg/andengine/util/adt/bounds/IntBounds;

    invoke-virtual {p0, v0, p3, p4}, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;->query(Lorg/andengine/util/adt/bounds/IBounds;Lorg/andengine/util/IMatcher;Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized queryForSubclass(IIIILorg/andengine/util/IMatcher;Ljava/util/List;)Ljava/util/List;
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
            "<TS;>;S:TT;>(IIII",
            "Lorg/andengine/util/IMatcher",
            "<TT;>;T",
            "L;",
            ")T",
            "L;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .prologue
    .line 141
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree<TT;>;"
    .local p5, pMatcher:Lorg/andengine/util/IMatcher;,"Lorg/andengine/util/IMatcher<TT;>;"
    .local p6, pResult:Ljava/util/List;,"TL;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;->mQueryIntBounds:Lorg/andengine/util/adt/bounds/IntBounds;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/andengine/util/adt/bounds/IntBounds;->set(IIII)V

    .line 142
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;->mQueryIntBounds:Lorg/andengine/util/adt/bounds/IntBounds;

    invoke-virtual {p0, v0, p5, p6}, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;->queryForSubclass(Lorg/andengine/util/adt/bounds/IBounds;Lorg/andengine/util/IMatcher;Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized queryForSubclass(IILorg/andengine/util/IMatcher;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "pX"
    .parameter "pY"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L::Ljava/util/List",
            "<TS;>;S:TT;>(II",
            "Lorg/andengine/util/IMatcher",
            "<TT;>;T",
            "L;",
            ")T",
            "L;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .prologue
    .line 136
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree<TT;>;"
    .local p3, pMatcher:Lorg/andengine/util/IMatcher;,"Lorg/andengine/util/IMatcher<TT;>;"
    .local p4, pResult:Ljava/util/List;,"TL;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;->mQueryIntBounds:Lorg/andengine/util/adt/bounds/IntBounds;

    invoke-virtual {v0, p1, p2}, Lorg/andengine/util/adt/bounds/IntBounds;->set(II)V

    .line 137
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;->mQueryIntBounds:Lorg/andengine/util/adt/bounds/IntBounds;

    invoke-virtual {p0, v0, p3, p4}, Lorg/andengine/util/adt/spatial/quadtree/IntQuadTree;->queryForSubclass(Lorg/andengine/util/adt/bounds/IBounds;Lorg/andengine/util/IMatcher;Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
