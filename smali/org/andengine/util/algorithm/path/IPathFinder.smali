.class public interface abstract Lorg/andengine/util/algorithm/path/IPathFinder;
.super Ljava/lang/Object;
.source "IPathFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/andengine/util/algorithm/path/IPathFinder$IPathFinderListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract findPath(Lorg/andengine/util/algorithm/path/IPathFinderMap;IIIILjava/lang/Object;IIIIZLorg/andengine/util/algorithm/path/astar/IAStarHeuristic;Lorg/andengine/util/algorithm/path/ICostFunction;)Lorg/andengine/util/algorithm/path/Path;
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
.end method

.method public abstract findPath(Lorg/andengine/util/algorithm/path/IPathFinderMap;IIIILjava/lang/Object;IIIIZLorg/andengine/util/algorithm/path/astar/IAStarHeuristic;Lorg/andengine/util/algorithm/path/ICostFunction;F)Lorg/andengine/util/algorithm/path/Path;
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
.end method

.method public abstract findPath(Lorg/andengine/util/algorithm/path/IPathFinderMap;IIIILjava/lang/Object;IIIIZLorg/andengine/util/algorithm/path/astar/IAStarHeuristic;Lorg/andengine/util/algorithm/path/ICostFunction;FLorg/andengine/util/algorithm/path/IPathFinder$IPathFinderListener;)Lorg/andengine/util/algorithm/path/Path;
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
.end method
