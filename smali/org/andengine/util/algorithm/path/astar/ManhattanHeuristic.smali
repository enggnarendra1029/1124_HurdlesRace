.class public Lorg/andengine/util/algorithm/path/astar/ManhattanHeuristic;
.super Ljava/lang/Object;
.source "ManhattanHeuristic.java"

# interfaces
.implements Lorg/andengine/util/algorithm/path/astar/IAStarHeuristic;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/andengine/util/algorithm/path/astar/IAStarHeuristic",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    .local p0, this:Lorg/andengine/util/algorithm/path/astar/ManhattanHeuristic;,"Lorg/andengine/util/algorithm/path/astar/ManhattanHeuristic<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExpectedRestCost(Lorg/andengine/util/algorithm/path/IPathFinderMap;Ljava/lang/Object;IIII)F
    .locals 2
    .parameter
    .parameter
    .parameter "pFromX"
    .parameter "pFromY"
    .parameter "pToX"
    .parameter "pToY"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/algorithm/path/IPathFinderMap",
            "<TT;>;TT;IIII)F"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, this:Lorg/andengine/util/algorithm/path/astar/ManhattanHeuristic;,"Lorg/andengine/util/algorithm/path/astar/ManhattanHeuristic<TT;>;"
    .local p1, pPathFinderMap:Lorg/andengine/util/algorithm/path/IPathFinderMap;,"Lorg/andengine/util/algorithm/path/IPathFinderMap<TT;>;"
    .local p2, pEntity:Ljava/lang/Object;,"TT;"
    sub-int v0, p3, p5

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sub-int v1, p4, p6

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method
