.class public abstract Lorg/andengine/util/adt/spatial/quadtree/QuadTree;
.super Ljava/lang/Object;
.source "QuadTree.java"

# interfaces
.implements Lorg/andengine/util/adt/bounds/IBounds;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B::",
        "Lorg/andengine/util/adt/bounds/IBounds;",
        "T::",
        "Lorg/andengine/util/adt/spatial/ISpatialItem",
        "<TB;>;>",
        "Ljava/lang/Object;",
        "Lorg/andengine/util/adt/bounds/IBounds;"
    }
.end annotation


# static fields
.field protected static final LEVEL_MAX_DEFAULT:I = 0x8

.field protected static final LEVEL_ROOT:I


# instance fields
.field protected final mBounds:Lorg/andengine/util/adt/bounds/IBounds;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TB;"
        }
    .end annotation
.end field

.field protected final mMaxLevel:I

.field protected final mRoot:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/andengine/util/adt/spatial/quadtree/QuadTree",
            "<TB;TT;>.QuadTreeNode;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/andengine/util/adt/bounds/IBounds;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/QuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/QuadTree<TB;TT;>;"
    .local p1, pBounds:Lorg/andengine/util/adt/bounds/IBounds;,"TB;"
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree;-><init>(Lorg/andengine/util/adt/bounds/IBounds;I)V

    .line 47
    return-void
.end method

.method protected constructor <init>(Lorg/andengine/util/adt/bounds/IBounds;I)V
    .locals 1
    .parameter
    .parameter "pMaxLevel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;I)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/QuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/QuadTree<TB;TT;>;"
    .local p1, pBounds:Lorg/andengine/util/adt/bounds/IBounds;,"TB;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree;->mBounds:Lorg/andengine/util/adt/bounds/IBounds;

    .line 51
    iput p2, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree;->mMaxLevel:I

    .line 52
    invoke-virtual {p0, p1}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree;->initRoot(Lorg/andengine/util/adt/bounds/IBounds;)Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    move-result-object v0

    iput-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree;->mRoot:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    .line 53
    return-void
.end method


# virtual methods
.method public declared-synchronized add(Lorg/andengine/util/adt/spatial/ISpatialItem;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/QuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/QuadTree<TB;TT;>;"
    .local p1, pItem:Lorg/andengine/util/adt/spatial/ISpatialItem;,"TT;"
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lorg/andengine/util/adt/spatial/ISpatialItem;->getBounds()Lorg/andengine/util/adt/bounds/IBounds;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree;->add(Lorg/andengine/util/adt/spatial/ISpatialItem;Lorg/andengine/util/adt/bounds/IBounds;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    monitor-exit p0

    return-void

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized add(Lorg/andengine/util/adt/spatial/ISpatialItem;Lorg/andengine/util/adt/bounds/IBounds;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TB;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 143
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/QuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/QuadTree<TB;TT;>;"
    .local p1, pItem:Lorg/andengine/util/adt/spatial/ISpatialItem;,"TT;"
    .local p2, pBounds:Lorg/andengine/util/adt/bounds/IBounds;,"TB;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree;->mRoot:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-virtual {v0, p2}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->contains(Lorg/andengine/util/adt/bounds/IBounds;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pBounds are out of the bounds of this "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/andengine/util/debug/Debug;->w(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree;->mRoot:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    #calls: Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->addItemSafe(Lorg/andengine/util/adt/spatial/ISpatialItem;)V
    invoke-static {v0, p1}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->access$0(Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;Lorg/andengine/util/adt/spatial/ISpatialItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :goto_0
    monitor-exit p0

    return-void

    .line 148
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree;->mRoot:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-virtual {v0, p1, p2}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->add(Lorg/andengine/util/adt/spatial/ISpatialItem;Lorg/andengine/util/adt/bounds/IBounds;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addAll(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/QuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/QuadTree<TB;TT;>;"
    .local p1, pItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 130
    .local v1, itemCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 133
    monitor-exit p0

    return-void

    .line 131
    :cond_0
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/andengine/util/adt/spatial/ISpatialItem;

    invoke-virtual {p0, v2}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree;->add(Lorg/andengine/util/adt/spatial/ISpatialItem;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    .end local v0           #i:I
    .end local v1           #itemCount:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized addAll(Ljava/util/Collection;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/QuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/QuadTree<TB;TT;>;"
    .local p1, pItems:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 139
    monitor-exit p0

    return-void

    .line 136
    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/andengine/util/adt/spatial/ISpatialItem;

    .line 137
    .local v0, item:Lorg/andengine/util/adt/spatial/ISpatialItem;,"TT;"
    invoke-virtual {p0, v0}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree;->add(Lorg/andengine/util/adt/spatial/ISpatialItem;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 136
    .end local v0           #item:Lorg/andengine/util/adt/spatial/ISpatialItem;,"TT;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public varargs declared-synchronized addAll([Lorg/andengine/util/adt/spatial/ISpatialItem;)V
    .locals 3
    .parameter "pItems"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/QuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/QuadTree<TB;TT;>;"
    monitor-enter p0

    :try_start_0
    array-length v2, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 126
    monitor-exit p0

    return-void

    .line 123
    :cond_0
    :try_start_1
    aget-object v0, p1, v1

    .line 124
    .local v0, item:Lorg/andengine/util/adt/spatial/ISpatialItem;,"TT;"
    invoke-virtual {p0, v0}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree;->add(Lorg/andengine/util/adt/spatial/ISpatialItem;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #item:Lorg/andengine/util/adt/spatial/ISpatialItem;,"TT;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized callItems(Lorg/andengine/util/call/ParameterCallable;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/call/ParameterCallable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 225
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/QuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/QuadTree<TB;TT;>;"
    .local p1, pParameterCallable:Lorg/andengine/util/call/ParameterCallable;,"Lorg/andengine/util/call/ParameterCallable<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree;->mRoot:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-virtual {v0, p1}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->callItems(Lorg/andengine/util/call/ParameterCallable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    monitor-exit p0

    return-void

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized callNodes(Lorg/andengine/util/call/ParameterCallable;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/call/ParameterCallable",
            "<",
            "Lorg/andengine/util/adt/spatial/quadtree/QuadTree",
            "<TB;TT;>.QuadTreeNode;>;)V"
        }
    .end annotation

    .prologue
    .line 229
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/QuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/QuadTree<TB;TT;>;"
    .local p1, pParameterCallable:Lorg/andengine/util/call/ParameterCallable;,"Lorg/andengine/util/call/ParameterCallable<Lorg/andengine/util/adt/spatial/quadtree/QuadTree<TB;TT;>.QuadTreeNode;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree;->mRoot:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-virtual {v0, p1}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->callNodes(Lorg/andengine/util/call/ParameterCallable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    monitor-exit p0

    return-void

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 233
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/QuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/QuadTree<TB;TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree;->mRoot:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-virtual {v0}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    monitor-exit p0

    return-void

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized containsAny(Lorg/andengine/util/adt/bounds/IBounds;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)Z"
        }
    .end annotation

    .prologue
    .line 217
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/QuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/QuadTree<TB;TT;>;"
    .local p1, pBounds:Lorg/andengine/util/adt/bounds/IBounds;,"TB;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree;->mRoot:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-virtual {v0, p1}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->containsAny(Lorg/andengine/util/adt/bounds/IBounds;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized containsAny(Lorg/andengine/util/adt/bounds/IBounds;Lorg/andengine/util/IMatcher;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;",
            "Lorg/andengine/util/IMatcher",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 221
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/QuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/QuadTree<TB;TT;>;"
    .local p1, pBounds:Lorg/andengine/util/adt/bounds/IBounds;,"TB;"
    .local p2, pMatcher:Lorg/andengine/util/IMatcher;,"Lorg/andengine/util/IMatcher<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree;->mRoot:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-virtual {v0, p1, p2}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->containsAny(Lorg/andengine/util/adt/bounds/IBounds;Lorg/andengine/util/IMatcher;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBounds()Lorg/andengine/util/adt/bounds/IBounds;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/QuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/QuadTree<TB;TT;>;"
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree;->mBounds:Lorg/andengine/util/adt/bounds/IBounds;

    return-object v0
.end method

.method public declared-synchronized getItemCount()I
    .locals 1

    .prologue
    .line 110
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/QuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/QuadTree<TB;TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree;->mRoot:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-virtual {v0}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->getItemCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMaxLevel()I
    .locals 1

    .prologue
    .line 62
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/QuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/QuadTree<TB;TT;>;"
    iget v0, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree;->mMaxLevel:I

    return v0
.end method

.method protected abstract getRoot()Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/andengine/util/adt/spatial/quadtree/QuadTree",
            "<TB;TT;>.QuadTreeNode;"
        }
    .end annotation
.end method

.method protected abstract initRoot(Lorg/andengine/util/adt/bounds/IBounds;)Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)",
            "Lorg/andengine/util/adt/spatial/quadtree/QuadTree",
            "<TB;TT;>.QuadTreeNode;"
        }
    .end annotation
.end method

.method public declared-synchronized isEmpty()Z
    .locals 1

    .prologue
    .line 114
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/QuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/QuadTree<TB;TT;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree;->getItemCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized move(Lorg/andengine/util/adt/spatial/ISpatialItem;Lorg/andengine/util/adt/bounds/IBounds;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TB;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/util/exception/AndEngineRuntimeException;
        }
    .end annotation

    .prologue
    .line 158
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/QuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/QuadTree<TB;TT;>;"
    .local p1, pItem:Lorg/andengine/util/adt/spatial/ISpatialItem;,"TT;"
    .local p2, pBounds:Lorg/andengine/util/adt/bounds/IBounds;,"TB;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree;->remove(Lorg/andengine/util/adt/spatial/ISpatialItem;Lorg/andengine/util/adt/bounds/IBounds;)Z

    move-result v0

    .line 159
    .local v0, success:Z
    if-nez v0, :cond_0

    .line 160
    new-instance v1, Lorg/andengine/util/exception/AndEngineRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to remove item: \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from old bounds: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/andengine/util/exception/AndEngineRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    .end local v0           #success:Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 162
    .restart local v0       #success:Z
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree;->add(Lorg/andengine/util/adt/spatial/ISpatialItem;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized move(Lorg/andengine/util/adt/spatial/ISpatialItem;Lorg/andengine/util/adt/bounds/IBounds;Lorg/andengine/util/adt/bounds/IBounds;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TB;TB;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/util/exception/AndEngineRuntimeException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 174
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/QuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/QuadTree<TB;TT;>;"
    .local p1, pItem:Lorg/andengine/util/adt/spatial/ISpatialItem;,"TT;"
    .local p2, pOldBounds:Lorg/andengine/util/adt/bounds/IBounds;,"TB;"
    .local p3, pNewBounds:Lorg/andengine/util/adt/bounds/IBounds;,"TB;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree;->remove(Lorg/andengine/util/adt/spatial/ISpatialItem;Lorg/andengine/util/adt/bounds/IBounds;)Z

    move-result v0

    .line 175
    .local v0, success:Z
    if-nez v0, :cond_0

    .line 176
    new-instance v1, Lorg/andengine/util/exception/AndEngineRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to remove item: \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from old bounds: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/andengine/util/exception/AndEngineRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    .end local v0           #success:Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 178
    .restart local v0       #success:Z
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p3}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree;->add(Lorg/andengine/util/adt/spatial/ISpatialItem;Lorg/andengine/util/adt/bounds/IBounds;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized query(Lorg/andengine/util/adt/bounds/IBounds;)Ljava/util/ArrayList;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 190
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/QuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/QuadTree<TB;TT;>;"
    .local p1, pBounds:Lorg/andengine/util/adt/bounds/IBounds;,"TB;"
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, v0}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree;->query(Lorg/andengine/util/adt/bounds/IBounds;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized query(Lorg/andengine/util/adt/bounds/IBounds;Lorg/andengine/util/IMatcher;)Ljava/util/ArrayList;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;",
            "Lorg/andengine/util/IMatcher",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 198
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/QuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/QuadTree<TB;TT;>;"
    .local p1, pBounds:Lorg/andengine/util/adt/bounds/IBounds;,"TB;"
    .local p2, pMatcher:Lorg/andengine/util/IMatcher;,"Lorg/andengine/util/IMatcher<TT;>;"
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree;->query(Lorg/andengine/util/adt/bounds/IBounds;Lorg/andengine/util/IMatcher;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized query(Lorg/andengine/util/adt/bounds/IBounds;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L::Ljava/util/List",
            "<TT;>;>(TB;T",
            "L;",
            ")T",
            "L;"
        }
    .end annotation

    .prologue
    .line 194
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/QuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/QuadTree<TB;TT;>;"
    .local p1, pBounds:Lorg/andengine/util/adt/bounds/IBounds;,"TB;"
    .local p2, pResult:Ljava/util/List;,"TL;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree;->mRoot:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-virtual {v0, p1, p2}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->query(Lorg/andengine/util/adt/bounds/IBounds;Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized query(Lorg/andengine/util/adt/bounds/IBounds;Lorg/andengine/util/IMatcher;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L::Ljava/util/List",
            "<TT;>;>(TB;",
            "Lorg/andengine/util/IMatcher",
            "<TT;>;T",
            "L;",
            ")T",
            "L;"
        }
    .end annotation

    .prologue
    .line 202
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/QuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/QuadTree<TB;TT;>;"
    .local p1, pBounds:Lorg/andengine/util/adt/bounds/IBounds;,"TB;"
    .local p2, pMatcher:Lorg/andengine/util/IMatcher;,"Lorg/andengine/util/IMatcher<TT;>;"
    .local p3, pResult:Ljava/util/List;,"TL;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree;->mRoot:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-virtual {v0, p1, p2, p3}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->query(Lorg/andengine/util/adt/bounds/IBounds;Lorg/andengine/util/IMatcher;Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized queryForSubclass(Lorg/andengine/util/adt/bounds/IBounds;Lorg/andengine/util/IMatcher;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L::Ljava/util/List",
            "<TS;>;S:TT;>(TB;",
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
    .line 213
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/QuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/QuadTree<TB;TT;>;"
    .local p1, pBounds:Lorg/andengine/util/adt/bounds/IBounds;,"TB;"
    .local p2, pMatcher:Lorg/andengine/util/IMatcher;,"Lorg/andengine/util/IMatcher<TT;>;"
    .local p3, pResult:Ljava/util/List;,"TL;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree;->mRoot:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-virtual {v0, p1, p2, p3}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->queryForSubclass(Lorg/andengine/util/adt/bounds/IBounds;Lorg/andengine/util/IMatcher;Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(Lorg/andengine/util/adt/spatial/ISpatialItem;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 182
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/QuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/QuadTree<TB;TT;>;"
    .local p1, pItem:Lorg/andengine/util/adt/spatial/ISpatialItem;,"TT;"
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lorg/andengine/util/adt/spatial/ISpatialItem;->getBounds()Lorg/andengine/util/adt/bounds/IBounds;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree;->remove(Lorg/andengine/util/adt/spatial/ISpatialItem;Lorg/andengine/util/adt/bounds/IBounds;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(Lorg/andengine/util/adt/spatial/ISpatialItem;Lorg/andengine/util/adt/bounds/IBounds;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TB;)Z"
        }
    .end annotation

    .prologue
    .line 186
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/QuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/QuadTree<TB;TT;>;"
    .local p1, pItem:Lorg/andengine/util/adt/spatial/ISpatialItem;,"TT;"
    .local p2, pBounds:Lorg/andengine/util/adt/bounds/IBounds;,"TB;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree;->mRoot:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-virtual {v0, p1, p2}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->remove(Lorg/andengine/util/adt/spatial/ISpatialItem;Lorg/andengine/util/adt/bounds/IBounds;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .local p0, this:Lorg/andengine/util/adt/spatial/quadtree/QuadTree;,"Lorg/andengine/util/adt/spatial/quadtree/QuadTree<TB;TT;>;"
    const/16 v5, 0x2c

    const/16 v3, 0x9

    const/16 v4, 0xa

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 79
    const-string v2, " Class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 81
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 82
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 83
    const-string v2, "MaxLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 84
    iget v2, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree;->mMaxLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 85
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 86
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 87
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 88
    const-string v2, "Bounds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 90
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree;->mRoot:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-virtual {v1, v0}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->appendBoundsToString(Ljava/lang/StringBuilder;)V

    .line 92
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 93
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 94
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 95
    const-string v2, "Root:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 96
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 97
    iget-object v2, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree;->mRoot:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 98
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 99
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
