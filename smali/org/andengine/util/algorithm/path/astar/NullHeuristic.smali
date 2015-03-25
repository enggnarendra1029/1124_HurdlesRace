.class public Lorg/andengine/util/algorithm/path/astar/NullHeuristic;
.super Ljava/lang/Object;
.source "NullHeuristic.java"

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
    .local p0, this:Lorg/andengine/util/algorithm/path/astar/NullHeuristic;,"Lorg/andengine/util/algorithm/path/astar/NullHeuristic<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExpectedRestCost(Lorg/andengine/util/algorithm/path/IPathFinderMap;Ljava/lang/Object;IIII)F
    .locals 1
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
    .local p0, this:Lorg/andengine/util/algorithm/path/astar/NullHeuristic;,"Lorg/andengine/util/algorithm/path/astar/NullHeuristic<TT;>;"
    .local p1, pPathFinderMap:Lorg/andengine/util/algorithm/path/IPathFinderMap;,"Lorg/andengine/util/algorithm/path/IPathFinderMap<TT;>;"
    .local p2, pEntity:Ljava/lang/Object;,"TT;"
    const/4 v0, 0x0

    return v0
.end method
