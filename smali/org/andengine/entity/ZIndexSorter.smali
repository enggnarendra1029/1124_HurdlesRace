.class public Lorg/andengine/entity/ZIndexSorter;
.super Lorg/andengine/util/algorithm/sort/InsertionSorter;
.source "ZIndexSorter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/andengine/util/algorithm/sort/InsertionSorter",
        "<",
        "Lorg/andengine/entity/IEntity;",
        ">;"
    }
.end annotation


# static fields
.field private static INSTANCE:Lorg/andengine/entity/ZIndexSorter;


# instance fields
.field private final mZIndexComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/andengine/entity/IEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/andengine/util/algorithm/sort/InsertionSorter;-><init>()V

    .line 27
    new-instance v0, Lorg/andengine/entity/ZIndexSorter$1;

    invoke-direct {v0, p0}, Lorg/andengine/entity/ZIndexSorter$1;-><init>(Lorg/andengine/entity/ZIndexSorter;)V

    iput-object v0, p0, Lorg/andengine/entity/ZIndexSorter;->mZIndexComparator:Ljava/util/Comparator;

    .line 40
    return-void
.end method

.method public static getInstance()Lorg/andengine/entity/ZIndexSorter;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lorg/andengine/entity/ZIndexSorter;->INSTANCE:Lorg/andengine/entity/ZIndexSorter;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lorg/andengine/entity/ZIndexSorter;

    invoke-direct {v0}, Lorg/andengine/entity/ZIndexSorter;-><init>()V

    sput-object v0, Lorg/andengine/entity/ZIndexSorter;->INSTANCE:Lorg/andengine/entity/ZIndexSorter;

    .line 46
    :cond_0
    sget-object v0, Lorg/andengine/entity/ZIndexSorter;->INSTANCE:Lorg/andengine/entity/ZIndexSorter;

    return-object v0
.end method


# virtual methods
.method public sort(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/andengine/entity/IEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, pEntities:Ljava/util/List;,"Ljava/util/List<Lorg/andengine/entity/IEntity;>;"
    iget-object v0, p0, Lorg/andengine/entity/ZIndexSorter;->mZIndexComparator:Ljava/util/Comparator;

    invoke-virtual {p0, p1, v0}, Lorg/andengine/entity/ZIndexSorter;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 71
    return-void
.end method

.method public sort(Ljava/util/List;II)V
    .locals 1
    .parameter
    .parameter "pStart"
    .parameter "pEnd"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/andengine/entity/IEntity;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, pEntities:Ljava/util/List;,"Ljava/util/List<Lorg/andengine/entity/IEntity;>;"
    iget-object v0, p0, Lorg/andengine/entity/ZIndexSorter;->mZIndexComparator:Ljava/util/Comparator;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/andengine/entity/ZIndexSorter;->sort(Ljava/util/List;IILjava/util/Comparator;)V

    .line 75
    return-void
.end method

.method public sort(Lorg/andengine/util/adt/list/IList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/adt/list/IList",
            "<",
            "Lorg/andengine/entity/IEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, pEntities:Lorg/andengine/util/adt/list/IList;,"Lorg/andengine/util/adt/list/IList<Lorg/andengine/entity/IEntity;>;"
    iget-object v0, p0, Lorg/andengine/entity/ZIndexSorter;->mZIndexComparator:Ljava/util/Comparator;

    invoke-virtual {p0, p1, v0}, Lorg/andengine/entity/ZIndexSorter;->sort(Lorg/andengine/util/adt/list/IList;Ljava/util/Comparator;)V

    .line 79
    return-void
.end method

.method public sort(Lorg/andengine/util/adt/list/IList;II)V
    .locals 1
    .parameter
    .parameter "pStart"
    .parameter "pEnd"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/adt/list/IList",
            "<",
            "Lorg/andengine/entity/IEntity;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, pEntities:Lorg/andengine/util/adt/list/IList;,"Lorg/andengine/util/adt/list/IList<Lorg/andengine/entity/IEntity;>;"
    iget-object v0, p0, Lorg/andengine/entity/ZIndexSorter;->mZIndexComparator:Ljava/util/Comparator;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/andengine/entity/ZIndexSorter;->sort(Lorg/andengine/util/adt/list/IList;IILjava/util/Comparator;)V

    .line 83
    return-void
.end method

.method public sort([Lorg/andengine/entity/IEntity;)V
    .locals 1
    .parameter "pEntities"

    .prologue
    .line 62
    iget-object v0, p0, Lorg/andengine/entity/ZIndexSorter;->mZIndexComparator:Ljava/util/Comparator;

    invoke-virtual {p0, p1, v0}, Lorg/andengine/entity/ZIndexSorter;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 63
    return-void
.end method

.method public sort([Lorg/andengine/entity/IEntity;II)V
    .locals 1
    .parameter "pEntities"
    .parameter "pStart"
    .parameter "pEnd"

    .prologue
    .line 66
    iget-object v0, p0, Lorg/andengine/entity/ZIndexSorter;->mZIndexComparator:Ljava/util/Comparator;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/andengine/entity/ZIndexSorter;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 67
    return-void
.end method
