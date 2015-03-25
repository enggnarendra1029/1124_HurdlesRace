.class public Lorg/andengine/util/algorithm/path/astar/AStarPathFinder;
.super Ljava/lang/Object;
.source "AStarPathFinder.java"

# interfaces
.implements Lorg/andengine/util/algorithm/path/IPathFinder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/andengine/util/algorithm/path/IPathFinder",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    .local p0, this:Lorg/andengine/util/algorithm/path/astar/AStarPathFinder;,"Lorg/andengine/util/algorithm/path/astar/AStarPathFinder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findPath(Lorg/andengine/util/algorithm/path/IPathFinderMap;IIIILjava/lang/Object;IIIIZLorg/andengine/util/algorithm/path/astar/IAStarHeuristic;Lorg/andengine/util/algorithm/path/ICostFunction;)Lorg/andengine/util/algorithm/path/Path;
    .locals 15
    .parameter
    .parameter "pXMin"
    .parameter "pYMin"
    .parameter "pXMax"
    .parameter "pYMax"
    .parameter
    .parameter "pFromX"
    .parameter "pFromY"
    .parameter "pToX"
    .parameter "pToY"
    .parameter "pAllowDiagonal"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/algorithm/path/IPathFinderMap",
            "<TT;>;IIIITT;IIIIZ",
            "Lorg/andengine/util/algorithm/path/astar/IAStarHeuristic",
            "<TT;>;",
            "Lorg/andengine/util/algorithm/path/ICostFunction",
            "<TT;>;)",
            "Lorg/andengine/util/algorithm/path/Path;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, this:Lorg/andengine/util/algorithm/path/astar/AStarPathFinder;,"Lorg/andengine/util/algorithm/path/astar/AStarPathFinder<TT;>;"
    .local p1, pPathFinderMap:Lorg/andengine/util/algorithm/path/IPathFinderMap;,"Lorg/andengine/util/algorithm/path/IPathFinderMap<TT;>;"
    .local p6, pEntity:Ljava/lang/Object;,"TT;"
    .local p12, pAStarHeuristic:Lorg/andengine/util/algorithm/path/astar/IAStarHeuristic;,"Lorg/andengine/util/algorithm/path/astar/IAStarHeuristic<TT;>;"
    .local p13, pCostFunction:Lorg/andengine/util/algorithm/path/ICostFunction;,"Lorg/andengine/util/algorithm/path/ICostFunction<TT;>;"
    const v14, 0x7f7fffff

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    invoke-virtual/range {v0 .. v14}, Lorg/andengine/util/algorithm/path/astar/AStarPathFinder;->findPath(Lorg/andengine/util/algorithm/path/IPathFinderMap;IIIILjava/lang/Object;IIIIZLorg/andengine/util/algorithm/path/astar/IAStarHeuristic;Lorg/andengine/util/algorithm/path/ICostFunction;F)Lorg/andengine/util/algorithm/path/Path;

    move-result-object v0

    return-object v0
.end method

.method public findPath(Lorg/andengine/util/algorithm/path/IPathFinderMap;IIIILjava/lang/Object;IIIIZLorg/andengine/util/algorithm/path/astar/IAStarHeuristic;Lorg/andengine/util/algorithm/path/ICostFunction;F)Lorg/andengine/util/algorithm/path/Path;
    .locals 16
    .parameter
    .parameter "pXMin"
    .parameter "pYMin"
    .parameter "pXMax"
    .parameter "pYMax"
    .parameter
    .parameter "pFromX"
    .parameter "pFromY"
    .parameter "pToX"
    .parameter "pToY"
    .parameter "pAllowDiagonal"
    .parameter
    .parameter
    .parameter "pMaxCost"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/algorithm/path/IPathFinderMap",
            "<TT;>;IIIITT;IIIIZ",
            "Lorg/andengine/util/algorithm/path/astar/IAStarHeuristic",
            "<TT;>;",
            "Lorg/andengine/util/algorithm/path/ICostFunction",
            "<TT;>;F)",
            "Lorg/andengine/util/algorithm/path/Path;"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, this:Lorg/andengine/util/algorithm/path/astar/AStarPathFinder;,"Lorg/andengine/util/algorithm/path/astar/AStarPathFinder<TT;>;"
    .local p1, pPathFinderMap:Lorg/andengine/util/algorithm/path/IPathFinderMap;,"Lorg/andengine/util/algorithm/path/IPathFinderMap<TT;>;"
    .local p6, pEntity:Ljava/lang/Object;,"TT;"
    .local p12, pAStarHeuristic:Lorg/andengine/util/algorithm/path/astar/IAStarHeuristic;,"Lorg/andengine/util/algorithm/path/astar/IAStarHeuristic<TT;>;"
    .local p13, pCostFunction:Lorg/andengine/util/algorithm/path/ICostFunction;,"Lorg/andengine/util/algorithm/path/ICostFunction<TT;>;"
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move/from16 v14, p14

    invoke-virtual/range {v0 .. v15}, Lorg/andengine/util/algorithm/path/astar/AStarPathFinder;->findPath(Lorg/andengine/util/algorithm/path/IPathFinderMap;IIIILjava/lang/Object;IIIIZLorg/andengine/util/algorithm/path/astar/IAStarHeuristic;Lorg/andengine/util/algorithm/path/ICostFunction;FLorg/andengine/util/algorithm/path/IPathFinder$IPathFinderListener;)Lorg/andengine/util/algorithm/path/Path;

    move-result-object v0

    return-object v0
.end method

.method public findPath(Lorg/andengine/util/algorithm/path/IPathFinderMap;IIIILjava/lang/Object;IIIIZLorg/andengine/util/algorithm/path/astar/IAStarHeuristic;Lorg/andengine/util/algorithm/path/ICostFunction;FLorg/andengine/util/algorithm/path/IPathFinder$IPathFinderListener;)Lorg/andengine/util/algorithm/path/Path;
    .locals 36
    .parameter
    .parameter "pXMin"
    .parameter "pYMin"
    .parameter "pXMax"
    .parameter "pYMax"
    .parameter
    .parameter "pFromX"
    .parameter "pFromY"
    .parameter "pToX"
    .parameter "pToY"
    .parameter "pAllowDiagonal"
    .parameter
    .parameter
    .parameter "pMaxCost"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/algorithm/path/IPathFinderMap",
            "<TT;>;IIIITT;IIIIZ",
            "Lorg/andengine/util/algorithm/path/astar/IAStarHeuristic",
            "<TT;>;",
            "Lorg/andengine/util/algorithm/path/ICostFunction",
            "<TT;>;F",
            "Lorg/andengine/util/algorithm/path/IPathFinder$IPathFinderListener",
            "<TT;>;)",
            "Lorg/andengine/util/algorithm/path/Path;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, this:Lorg/andengine/util/algorithm/path/astar/AStarPathFinder;,"Lorg/andengine/util/algorithm/path/astar/AStarPathFinder<TT;>;"
    .local p1, pPathFinderMap:Lorg/andengine/util/algorithm/path/IPathFinderMap;,"Lorg/andengine/util/algorithm/path/IPathFinderMap<TT;>;"
    .local p6, pEntity:Ljava/lang/Object;,"TT;"
    .local p12, pAStarHeuristic:Lorg/andengine/util/algorithm/path/astar/IAStarHeuristic;,"Lorg/andengine/util/algorithm/path/astar/IAStarHeuristic<TT;>;"
    .local p13, pCostFunction:Lorg/andengine/util/algorithm/path/ICostFunction;,"Lorg/andengine/util/algorithm/path/ICostFunction<TT;>;"
    .local p15, pPathFinderListener:Lorg/andengine/util/algorithm/path/IPathFinder$IPathFinderListener;,"Lorg/andengine/util/algorithm/path/IPathFinder$IPathFinderListener<TT;>;"
    move/from16 v0, p7

    move/from16 v1, p9

    if-ne v0, v1, :cond_0

    move/from16 v0, p8

    move/from16 v1, p10

    if-eq v0, v1, :cond_1

    :cond_0
    move-object/from16 v0, p1

    move/from16 v1, p7

    move/from16 v2, p8

    move-object/from16 v3, p6

    invoke-interface {v0, v1, v2, v3}, Lorg/andengine/util/algorithm/path/IPathFinderMap;->isBlocked(IILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object/from16 v0, p1

    move/from16 v1, p9

    move/from16 v2, p10

    move-object/from16 v3, p6

    invoke-interface {v0, v1, v2, v3}, Lorg/andengine/util/algorithm/path/IPathFinderMap;->isBlocked(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 57
    :cond_1
    const/16 v30, 0x0

    .line 177
    :goto_0
    return-object v30

    .line 61
    :cond_2
    new-instance v19, Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;

    move-object/from16 v4, p12

    move-object/from16 v5, p1

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-interface/range {v4 .. v10}, Lorg/andengine/util/algorithm/path/astar/IAStarHeuristic;->getExpectedRestCost(Lorg/andengine/util/algorithm/path/IPathFinderMap;Ljava/lang/Object;IIII)F

    move-result v4

    move-object/from16 v0, v19

    move/from16 v1, p7

    move/from16 v2, p8

    invoke-direct {v0, v1, v2, v4}, Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;-><init>(IIF)V

    .line 63
    .local v19, fromNode:Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;,"Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;"
    move-object/from16 v0, v19

    iget-wide v0, v0, Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;->mID:J

    move-wide/from16 v20, v0

    .line 64
    .local v20, fromNodeID:J
    invoke-static/range {p9 .. p10}, Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;->calculateID(II)J

    move-result-wide v33

    .line 66
    .local v33, toNodeID:J
    new-instance v35, Lorg/andengine/util/adt/map/LongSparseArray;

    invoke-direct/range {v35 .. v35}, Lorg/andengine/util/adt/map/LongSparseArray;-><init>()V

    .line 67
    .local v35, visitedNodes:Lorg/andengine/util/adt/map/LongSparseArray;,"Lorg/andengine/util/adt/map/LongSparseArray<Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;>;"
    new-instance v29, Lorg/andengine/util/adt/map/LongSparseArray;

    invoke-direct/range {v29 .. v29}, Lorg/andengine/util/adt/map/LongSparseArray;-><init>()V

    .line 68
    .local v29, openNodes:Lorg/andengine/util/adt/map/LongSparseArray;,"Lorg/andengine/util/adt/map/LongSparseArray<Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;>;"
    new-instance v31, Lorg/andengine/util/adt/queue/SortedQueue;

    new-instance v4, Lorg/andengine/util/adt/list/ShiftList;

    invoke-direct {v4}, Lorg/andengine/util/adt/list/ShiftList;-><init>()V

    move-object/from16 v0, v31

    invoke-direct {v0, v4}, Lorg/andengine/util/adt/queue/SortedQueue;-><init>(Lorg/andengine/util/adt/queue/IQueue;)V

    .line 70
    .local v31, sortedOpenNodes:Lorg/andengine/util/adt/queue/IQueue;,"Lorg/andengine/util/adt/queue/IQueue<Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;>;"
    move/from16 v12, p11

    .line 73
    .local v12, allowDiagonalMovement:Z
    move-object/from16 v0, v29

    move-wide/from16 v1, v20

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lorg/andengine/util/adt/map/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 74
    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/andengine/util/adt/queue/IQueue;->enter(Ljava/lang/Object;)V

    .line 76
    const/4 v14, 0x0

    .line 77
    .local v14, currentNode:Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;,"Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;"
    :cond_3
    invoke-virtual/range {v29 .. v29}, Lorg/andengine/util/adt/map/LongSparseArray;->size()I

    move-result v4

    if-gtz v4, :cond_5

    .line 149
    :cond_4
    invoke-virtual/range {v35 .. v35}, Lorg/andengine/util/adt/map/LongSparseArray;->clear()V

    .line 150
    invoke-virtual/range {v29 .. v29}, Lorg/andengine/util/adt/map/LongSparseArray;->clear()V

    .line 151
    invoke-interface/range {v31 .. v31}, Lorg/andengine/util/adt/queue/IQueue;->clear()V

    .line 154
    iget-wide v4, v14, Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;->mID:J

    cmp-long v4, v4, v33

    if-eqz v4, :cond_d

    .line 155
    const/16 v30, 0x0

    goto :goto_0

    .line 79
    :cond_5
    invoke-interface/range {v31 .. v31}, Lorg/andengine/util/adt/queue/IQueue;->poll()Ljava/lang/Object;

    move-result-object v14

    .end local v14           #currentNode:Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;,"Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;"
    check-cast v14, Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;

    .line 80
    .restart local v14       #currentNode:Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;,"Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;"
    iget-wide v15, v14, Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;->mID:J

    .line 81
    .local v15, currentNodeID:J
    cmp-long v4, v15, v33

    if-eqz v4, :cond_4

    .line 85
    move-object/from16 v0, v35

    move-wide v1, v15

    invoke-virtual {v0, v1, v2, v14}, Lorg/andengine/util/adt/map/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 88
    const/16 v17, -0x1

    .local v17, dX:I
    :goto_1
    const/4 v4, 0x1

    move/from16 v0, v17

    if-gt v0, v4, :cond_3

    .line 89
    const/16 v18, -0x1

    .local v18, dY:I
    :goto_2
    const/4 v4, 0x1

    move/from16 v0, v18

    if-le v0, v4, :cond_6

    .line 88
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 90
    :cond_6
    if-nez v17, :cond_8

    if-nez v18, :cond_8

    .line 89
    :cond_7
    :goto_3
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 94
    :cond_8
    if-nez v12, :cond_9

    if-eqz v17, :cond_9

    if-nez v18, :cond_7

    .line 98
    :cond_9
    iget v4, v14, Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;->mX:I

    add-int v8, v17, v4

    .line 99
    .local v8, neighborNodeX:I
    iget v4, v14, Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;->mY:I

    add-int v9, v18, v4

    .line 100
    .local v9, neighborNodeY:I
    invoke-static {v8, v9}, Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;->calculateID(II)J

    move-result-wide v26

    .local v26, neighborNodeID:J
    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    .line 102
    invoke-static/range {v4 .. v9}, Lorg/andengine/util/adt/spatial/bounds/util/IntBoundsUtils;->contains(IIIIII)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-interface {v0, v8, v9, v1}, Lorg/andengine/util/algorithm/path/IPathFinderMap;->isBlocked(IILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 106
    move-object/from16 v0, v35

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lorg/andengine/util/adt/map/LongSparseArray;->indexOfKey(J)I

    move-result v4

    if-gez v4, :cond_7

    .line 110
    move-object/from16 v0, v29

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lorg/andengine/util/adt/map/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;

    .line 113
    .local v24, neighborNode:Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;,"Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;"
    if-nez v24, :cond_a

    .line 114
    const/16 v28, 0x1

    .line 115
    .local v28, neighborNodeIsNew:Z
    new-instance v24, Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;

    .end local v24           #neighborNode:Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;,"Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;"
    move-object/from16 v5, p12

    move-object/from16 v6, p1

    move-object/from16 v7, p6

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-interface/range {v5 .. v11}, Lorg/andengine/util/algorithm/path/astar/IAStarHeuristic;->getExpectedRestCost(Lorg/andengine/util/algorithm/path/IPathFinderMap;Ljava/lang/Object;IIII)F

    move-result v4

    move-object/from16 v0, v24

    invoke-direct {v0, v8, v9, v4}, Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;-><init>(IIF)V

    .line 121
    .restart local v24       #neighborNode:Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;,"Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;"
    :goto_4
    iget v6, v14, Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;->mX:I

    iget v7, v14, Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;->mY:I

    move-object/from16 v4, p13

    move-object/from16 v5, p1

    move-object/from16 v10, p6

    invoke-interface/range {v4 .. v10}, Lorg/andengine/util/algorithm/path/ICostFunction;->getCost(Lorg/andengine/util/algorithm/path/IPathFinderMap;IIIILjava/lang/Object;)F

    move-result v13

    .line 122
    .local v13, costFromCurrentToNeigbor:F
    iget v4, v14, Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;->mCost:F

    add-float v25, v4, v13

    .line 123
    .local v25, neighborNodeCost:F
    cmpl-float v4, v25, p14

    if-lez v4, :cond_b

    .line 125
    if-nez v28, :cond_7

    .line 126
    move-object/from16 v0, v29

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lorg/andengine/util/adt/map/LongSparseArray;->remove(J)V

    goto :goto_3

    .line 117
    .end local v13           #costFromCurrentToNeigbor:F
    .end local v25           #neighborNodeCost:F
    .end local v28           #neighborNodeIsNew:Z
    :cond_a
    const/16 v28, 0x0

    .restart local v28       #neighborNodeIsNew:Z
    goto :goto_4

    .line 129
    .restart local v13       #costFromCurrentToNeigbor:F
    .restart local v25       #neighborNodeCost:F
    :cond_b
    move-object/from16 v0, v24

    invoke-virtual {v0, v14, v13}, Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;->setParent(Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;F)V

    .line 130
    if-eqz v28, :cond_c

    .line 131
    move-object/from16 v0, v29

    move-wide/from16 v1, v26

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lorg/andengine/util/adt/map/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 137
    :goto_5
    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/andengine/util/adt/queue/IQueue;->enter(Ljava/lang/Object;)V

    .line 139
    if-eqz p15, :cond_7

    .line 140
    move-object/from16 v0, p15

    move-object/from16 v1, p6

    invoke-interface {v0, v1, v8, v9}, Lorg/andengine/util/algorithm/path/IPathFinder$IPathFinderListener;->onVisited(Ljava/lang/Object;II)V

    goto/16 :goto_3

    .line 134
    :cond_c
    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/andengine/util/adt/queue/IQueue;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    .line 159
    .end local v8           #neighborNodeX:I
    .end local v9           #neighborNodeY:I
    .end local v13           #costFromCurrentToNeigbor:F
    .end local v15           #currentNodeID:J
    .end local v17           #dX:I
    .end local v18           #dY:I
    .end local v24           #neighborNode:Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;,"Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;"
    .end local v25           #neighborNodeCost:F
    .end local v26           #neighborNodeID:J
    .end local v28           #neighborNodeIsNew:Z
    :cond_d
    const/16 v23, 0x1

    .line 160
    .local v23, length:I
    move-object/from16 v32, v14

    .line 161
    .local v32, tmp:Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;,"Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;"
    :goto_6
    move-object/from16 v0, v32

    iget-wide v4, v0, Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;->mID:J

    cmp-long v4, v4, v20

    if-nez v4, :cond_e

    .line 167
    new-instance v30, Lorg/andengine/util/algorithm/path/Path;

    move-object/from16 v0, v30

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/andengine/util/algorithm/path/Path;-><init>(I)V

    .line 168
    .local v30, path:Lorg/andengine/util/algorithm/path/Path;
    add-int/lit8 v22, v23, -0x1

    .line 169
    .local v22, index:I
    move-object/from16 v32, v14

    .line 170
    :goto_7
    move-object/from16 v0, v32

    iget-wide v4, v0, Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;->mID:J

    cmp-long v4, v4, v20

    if-nez v4, :cond_f

    .line 175
    const/4 v4, 0x0

    move-object/from16 v0, v30

    move/from16 v1, p7

    move/from16 v2, p8

    invoke-virtual {v0, v4, v1, v2}, Lorg/andengine/util/algorithm/path/Path;->set(III)V

    goto/16 :goto_0

    .line 162
    .end local v22           #index:I
    .end local v30           #path:Lorg/andengine/util/algorithm/path/Path;
    :cond_e
    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;->mParent:Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;

    move-object/from16 v32, v0

    .line 163
    add-int/lit8 v23, v23, 0x1

    goto :goto_6

    .line 171
    .restart local v22       #index:I
    .restart local v30       #path:Lorg/andengine/util/algorithm/path/Path;
    :cond_f
    move-object/from16 v0, v32

    iget v4, v0, Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;->mX:I

    move-object/from16 v0, v32

    iget v5, v0, Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;->mY:I

    move-object/from16 v0, v30

    move/from16 v1, v22

    invoke-virtual {v0, v1, v4, v5}, Lorg/andengine/util/algorithm/path/Path;->set(III)V

    .line 172
    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;->mParent:Lorg/andengine/util/algorithm/path/astar/AStarPathFinder$Node;

    move-object/from16 v32, v0

    .line 173
    add-int/lit8 v22, v22, -0x1

    goto :goto_7
.end method
