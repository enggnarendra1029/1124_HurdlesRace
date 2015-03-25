.class public abstract Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;
.super Ljava/lang/Object;
.source "QuadTree.java"

# interfaces
.implements Lorg/andengine/util/adt/bounds/IBounds;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andengine/util/adt/spatial/quadtree/QuadTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "QuadTreeNode"
.end annotation


# instance fields
.field protected mBottomLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/andengine/util/adt/spatial/quadtree/QuadTree",
            "<TB;TT;>.QuadTreeNode;"
        }
    .end annotation
.end field

.field protected mBottomRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/andengine/util/adt/spatial/quadtree/QuadTree",
            "<TB;TT;>.QuadTreeNode;"
        }
    .end annotation
.end field

.field protected mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected final mLevel:I

.field protected mTopLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/andengine/util/adt/spatial/quadtree/QuadTree",
            "<TB;TT;>.QuadTreeNode;"
        }
    .end annotation
.end field

.field protected mTopRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/andengine/util/adt/spatial/quadtree/QuadTree",
            "<TB;TT;>.QuadTreeNode;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/andengine/util/adt/spatial/quadtree/QuadTree;


# direct methods
.method protected constructor <init>(Lorg/andengine/util/adt/spatial/quadtree/QuadTree;I)V
    .locals 0
    .parameter
    .parameter "pLevel"

    .prologue
    .line 261
    iput-object p1, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->this$0:Lorg/andengine/util/adt/spatial/quadtree/QuadTree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    iput p2, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mLevel:I

    .line 263
    return-void
.end method

.method static synthetic access$0(Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;Lorg/andengine/util/adt/spatial/ISpatialItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 864
    invoke-direct {p0, p1}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->addItemSafe(Lorg/andengine/util/adt/spatial/ISpatialItem;)V

    return-void
.end method

.method private addItemSafe(Lorg/andengine/util/adt/spatial/ISpatialItem;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 865
    .local p1, pItem:Lorg/andengine/util/adt/spatial/ISpatialItem;,"TT;"
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mItems:Ljava/util/List;

    if-nez v0, :cond_0

    .line 866
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mItems:Ljava/util/List;

    .line 868
    :cond_0
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 869
    return-void
.end method

.method private containsAnyChild(Lorg/andengine/util/adt/bounds/IBounds;Lorg/andengine/util/IMatcher;Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;",
            "Lorg/andengine/util/IMatcher",
            "<TT;>;",
            "Lorg/andengine/util/adt/spatial/quadtree/QuadTree",
            "<TB;TT;>.QuadTreeNode;)Z"
        }
    .end annotation

    .prologue
    .local p1, pBounds:Lorg/andengine/util/adt/bounds/IBounds;,"TB;"
    .local p2, pMatcher:Lorg/andengine/util/IMatcher;,"Lorg/andengine/util/IMatcher<TT;>;"
    .local p3, pChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;,"Lorg/andengine/util/adt/spatial/quadtree/QuadTree<TB;TT;>.QuadTreeNode;"
    const/4 v0, 0x0

    .line 739
    if-nez p3, :cond_1

    .line 747
    :cond_0
    :goto_0
    return v0

    .line 743
    :cond_1
    invoke-virtual {p3, p1}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->intersects(Lorg/andengine/util/adt/bounds/IBounds;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p3, p1, p2}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->containsAny(Lorg/andengine/util/adt/bounds/IBounds;Lorg/andengine/util/IMatcher;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 744
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private containsAnyChild(Lorg/andengine/util/adt/bounds/IBounds;Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;)Z
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;",
            "Lorg/andengine/util/adt/spatial/quadtree/QuadTree",
            "<TB;TT;>.QuadTreeNode;)Z"
        }
    .end annotation

    .prologue
    .local p1, pBounds:Lorg/andengine/util/adt/bounds/IBounds;,"TB;"
    .local p2, pChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;,"Lorg/andengine/util/adt/spatial/quadtree/QuadTree<TB;TT;>.QuadTreeNode;"
    const/4 v0, 0x0

    .line 751
    if-nez p2, :cond_1

    .line 759
    :cond_0
    :goto_0
    return v0

    .line 755
    :cond_1
    invoke-virtual {p2, p1}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->intersects(Lorg/andengine/util/adt/bounds/IBounds;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, p1}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->containsAny(Lorg/andengine/util/adt/bounds/IBounds;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 756
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private queryChild(Lorg/andengine/util/adt/bounds/IBounds;Ljava/util/List;Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L::Ljava/util/List",
            "<TT;>;>(TB;T",
            "L;",
            "Lorg/andengine/util/adt/spatial/quadtree/QuadTree",
            "<TB;TT;>.QuadTreeNode;)Z"
        }
    .end annotation

    .prologue
    .local p1, pBounds:Lorg/andengine/util/adt/bounds/IBounds;,"TB;"
    .local p2, pResult:Ljava/util/List;,"TL;"
    .local p3, pChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;,"Lorg/andengine/util/adt/spatial/quadtree/QuadTree<TB;TT;>.QuadTreeNode;"
    const/4 v0, 0x0

    .line 616
    if-nez p3, :cond_1

    .line 631
    :cond_0
    :goto_0
    return v0

    .line 620
    :cond_1
    invoke-virtual {p3, p1}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->contains(Lorg/andengine/util/adt/bounds/IBounds;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 621
    invoke-virtual {p3, p1, p2}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->query(Lorg/andengine/util/adt/bounds/IBounds;Ljava/util/List;)Ljava/util/List;

    .line 622
    const/4 v0, 0x1

    goto :goto_0

    .line 625
    :cond_2
    invoke-virtual {p3, p1}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->containedBy(Lorg/andengine/util/adt/bounds/IBounds;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 626
    invoke-virtual {p3, p2}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->getItemsAndItemsBelow(Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 627
    :cond_3
    invoke-virtual {p3, p1}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->intersects(Lorg/andengine/util/adt/bounds/IBounds;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 628
    invoke-virtual {p3, p1, p2}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->query(Lorg/andengine/util/adt/bounds/IBounds;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method

.method private queryChild(Lorg/andengine/util/adt/bounds/IBounds;Lorg/andengine/util/IMatcher;Ljava/util/List;Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;)Z
    .locals 2
    .parameter
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
            "Lorg/andengine/util/adt/spatial/quadtree/QuadTree",
            "<TB;TT;>.QuadTreeNode;)Z"
        }
    .end annotation

    .prologue
    .local p1, pBounds:Lorg/andengine/util/adt/bounds/IBounds;,"TB;"
    .local p2, pMatcher:Lorg/andengine/util/IMatcher;,"Lorg/andengine/util/IMatcher<TT;>;"
    .local p3, pResult:Ljava/util/List;,"TL;"
    .local p4, pChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;,"Lorg/andengine/util/adt/spatial/quadtree/QuadTree<TB;TT;>.QuadTreeNode;"
    const/4 v0, 0x0

    .line 642
    if-nez p4, :cond_1

    .line 657
    :cond_0
    :goto_0
    return v0

    .line 646
    :cond_1
    invoke-virtual {p4, p1}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->contains(Lorg/andengine/util/adt/bounds/IBounds;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 647
    invoke-virtual {p4, p1, p2, p3}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->query(Lorg/andengine/util/adt/bounds/IBounds;Lorg/andengine/util/IMatcher;Ljava/util/List;)Ljava/util/List;

    .line 648
    const/4 v0, 0x1

    goto :goto_0

    .line 651
    :cond_2
    invoke-virtual {p4, p1}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->containedBy(Lorg/andengine/util/adt/bounds/IBounds;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 652
    invoke-virtual {p4, p2, p3}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->getItemsAndItemsBelow(Lorg/andengine/util/IMatcher;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 653
    :cond_3
    invoke-virtual {p4, p1}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->intersects(Lorg/andengine/util/adt/bounds/IBounds;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 654
    invoke-virtual {p4, p1, p2, p3}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->query(Lorg/andengine/util/adt/bounds/IBounds;Lorg/andengine/util/IMatcher;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method

.method private queryChildForSubclass(Lorg/andengine/util/adt/bounds/IBounds;Lorg/andengine/util/IMatcher;Ljava/util/List;Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;)Z
    .locals 2
    .parameter
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
            "Lorg/andengine/util/adt/spatial/quadtree/QuadTree",
            "<TB;TT;>.QuadTreeNode;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .prologue
    .local p1, pBounds:Lorg/andengine/util/adt/bounds/IBounds;,"TB;"
    .local p2, pMatcher:Lorg/andengine/util/IMatcher;,"Lorg/andengine/util/IMatcher<TT;>;"
    .local p3, pResult:Ljava/util/List;,"TL;"
    .local p4, pChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;,"Lorg/andengine/util/adt/spatial/quadtree/QuadTree<TB;TT;>.QuadTreeNode;"
    const/4 v0, 0x0

    .line 668
    if-nez p4, :cond_1

    .line 683
    :cond_0
    :goto_0
    return v0

    .line 672
    :cond_1
    invoke-virtual {p4, p1}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->contains(Lorg/andengine/util/adt/bounds/IBounds;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 673
    invoke-virtual {p4, p1, p2, p3}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->queryForSubclass(Lorg/andengine/util/adt/bounds/IBounds;Lorg/andengine/util/IMatcher;Ljava/util/List;)Ljava/util/List;

    .line 674
    const/4 v0, 0x1

    goto :goto_0

    .line 677
    :cond_2
    invoke-virtual {p4, p1}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->containedBy(Lorg/andengine/util/adt/bounds/IBounds;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 678
    invoke-virtual {p4, p2, p3}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->getItemsAndItemsBelowForSubclass(Lorg/andengine/util/IMatcher;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 679
    :cond_3
    invoke-virtual {p4, p1}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->intersects(Lorg/andengine/util/adt/bounds/IBounds;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 680
    invoke-virtual {p4, p1, p2, p3}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->queryForSubclass(Lorg/andengine/util/adt/bounds/IBounds;Lorg/andengine/util/IMatcher;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public add(Lorg/andengine/util/adt/spatial/ISpatialItem;Lorg/andengine/util/adt/bounds/IBounds;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TB;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 764
    .local p1, pItem:Lorg/andengine/util/adt/spatial/ISpatialItem;,"TT;"
    .local p2, pBounds:Lorg/andengine/util/adt/bounds/IBounds;,"TB;"
    iget v1, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mLevel:I

    iget-object v2, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->this$0:Lorg/andengine/util/adt/spatial/quadtree/QuadTree;

    iget v2, v2, Lorg/andengine/util/adt/spatial/quadtree/QuadTree;->mMaxLevel:I

    if-lt v1, v2, :cond_0

    .line 766
    invoke-direct {p0, p1}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->addItemSafe(Lorg/andengine/util/adt/spatial/ISpatialItem;)V

    .line 833
    :goto_0
    return-void

    .line 771
    :cond_0
    iget-object v1, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mTopLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mTopLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-virtual {v1, p2}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->contains(Lorg/andengine/util/adt/bounds/IBounds;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 772
    iget-object v1, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mTopLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-virtual {v1, p1, p2}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->add(Lorg/andengine/util/adt/spatial/ISpatialItem;Lorg/andengine/util/adt/bounds/IBounds;)V

    goto :goto_0

    .line 774
    :cond_1
    sget-object v1, Lorg/andengine/util/adt/bounds/BoundsSplit;->TOP_LEFT:Lorg/andengine/util/adt/bounds/BoundsSplit;

    invoke-virtual {p0, v1, p2}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->contains(Lorg/andengine/util/adt/bounds/BoundsSplit;Lorg/andengine/util/adt/bounds/IBounds;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 775
    iget-object v1, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mTopLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    if-nez v1, :cond_2

    .line 777
    :try_start_0
    sget-object v1, Lorg/andengine/util/adt/bounds/BoundsSplit;->TOP_LEFT:Lorg/andengine/util/adt/bounds/BoundsSplit;

    invoke-virtual {p0, v1}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->split(Lorg/andengine/util/adt/bounds/BoundsSplit;)Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    move-result-object v1

    iput-object v1, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mTopLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    .line 778
    iget-object v1, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mTopLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-virtual {v1, p1, p2}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->add(Lorg/andengine/util/adt/spatial/ISpatialItem;Lorg/andengine/util/adt/bounds/IBounds;)V
    :try_end_0
    .catch Lorg/andengine/util/adt/bounds/BoundsSplit$BoundsSplitException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 779
    :catch_0
    move-exception v0

    .line 780
    .local v0, e:Lorg/andengine/util/adt/bounds/BoundsSplit$BoundsSplitException;
    invoke-direct {p0, p1}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->addItemSafe(Lorg/andengine/util/adt/spatial/ISpatialItem;)V

    goto :goto_0

    .line 786
    .end local v0           #e:Lorg/andengine/util/adt/bounds/BoundsSplit$BoundsSplitException;
    :cond_2
    iget-object v1, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mTopRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mTopRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-virtual {v1, p2}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->contains(Lorg/andengine/util/adt/bounds/IBounds;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 787
    iget-object v1, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mTopRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-virtual {v1, p1, p2}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->add(Lorg/andengine/util/adt/spatial/ISpatialItem;Lorg/andengine/util/adt/bounds/IBounds;)V

    goto :goto_0

    .line 789
    :cond_3
    sget-object v1, Lorg/andengine/util/adt/bounds/BoundsSplit;->TOP_RIGHT:Lorg/andengine/util/adt/bounds/BoundsSplit;

    invoke-virtual {p0, v1, p2}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->contains(Lorg/andengine/util/adt/bounds/BoundsSplit;Lorg/andengine/util/adt/bounds/IBounds;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 790
    iget-object v1, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mTopRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    if-nez v1, :cond_4

    .line 792
    :try_start_1
    sget-object v1, Lorg/andengine/util/adt/bounds/BoundsSplit;->TOP_RIGHT:Lorg/andengine/util/adt/bounds/BoundsSplit;

    invoke-virtual {p0, v1}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->split(Lorg/andengine/util/adt/bounds/BoundsSplit;)Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    move-result-object v1

    iput-object v1, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mTopRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    .line 793
    iget-object v1, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mTopRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-virtual {v1, p1, p2}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->add(Lorg/andengine/util/adt/spatial/ISpatialItem;Lorg/andengine/util/adt/bounds/IBounds;)V
    :try_end_1
    .catch Lorg/andengine/util/adt/bounds/BoundsSplit$BoundsSplitException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 794
    :catch_1
    move-exception v0

    .line 795
    .restart local v0       #e:Lorg/andengine/util/adt/bounds/BoundsSplit$BoundsSplitException;
    invoke-direct {p0, p1}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->addItemSafe(Lorg/andengine/util/adt/spatial/ISpatialItem;)V

    goto :goto_0

    .line 801
    .end local v0           #e:Lorg/andengine/util/adt/bounds/BoundsSplit$BoundsSplitException;
    :cond_4
    iget-object v1, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-virtual {v1, p2}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->contains(Lorg/andengine/util/adt/bounds/IBounds;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 802
    iget-object v1, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-virtual {v1, p1, p2}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->add(Lorg/andengine/util/adt/spatial/ISpatialItem;Lorg/andengine/util/adt/bounds/IBounds;)V

    goto :goto_0

    .line 804
    :cond_5
    sget-object v1, Lorg/andengine/util/adt/bounds/BoundsSplit;->BOTTOM_LEFT:Lorg/andengine/util/adt/bounds/BoundsSplit;

    invoke-virtual {p0, v1, p2}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->contains(Lorg/andengine/util/adt/bounds/BoundsSplit;Lorg/andengine/util/adt/bounds/IBounds;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 805
    iget-object v1, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    if-nez v1, :cond_6

    .line 807
    :try_start_2
    sget-object v1, Lorg/andengine/util/adt/bounds/BoundsSplit;->BOTTOM_LEFT:Lorg/andengine/util/adt/bounds/BoundsSplit;

    invoke-virtual {p0, v1}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->split(Lorg/andengine/util/adt/bounds/BoundsSplit;)Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    move-result-object v1

    iput-object v1, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    .line 808
    iget-object v1, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-virtual {v1, p1, p2}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->add(Lorg/andengine/util/adt/spatial/ISpatialItem;Lorg/andengine/util/adt/bounds/IBounds;)V
    :try_end_2
    .catch Lorg/andengine/util/adt/bounds/BoundsSplit$BoundsSplitException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 809
    :catch_2
    move-exception v0

    .line 810
    .restart local v0       #e:Lorg/andengine/util/adt/bounds/BoundsSplit$BoundsSplitException;
    invoke-direct {p0, p1}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->addItemSafe(Lorg/andengine/util/adt/spatial/ISpatialItem;)V

    goto/16 :goto_0

    .line 816
    .end local v0           #e:Lorg/andengine/util/adt/bounds/BoundsSplit$BoundsSplitException;
    :cond_6
    iget-object v1, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-virtual {v1, p2}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->contains(Lorg/andengine/util/adt/bounds/IBounds;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 817
    iget-object v1, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-virtual {v1, p1, p2}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->add(Lorg/andengine/util/adt/spatial/ISpatialItem;Lorg/andengine/util/adt/bounds/IBounds;)V

    goto/16 :goto_0

    .line 819
    :cond_7
    sget-object v1, Lorg/andengine/util/adt/bounds/BoundsSplit;->BOTTOM_RIGHT:Lorg/andengine/util/adt/bounds/BoundsSplit;

    invoke-virtual {p0, v1, p2}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->contains(Lorg/andengine/util/adt/bounds/BoundsSplit;Lorg/andengine/util/adt/bounds/IBounds;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 820
    iget-object v1, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    if-nez v1, :cond_8

    .line 822
    :try_start_3
    sget-object v1, Lorg/andengine/util/adt/bounds/BoundsSplit;->BOTTOM_RIGHT:Lorg/andengine/util/adt/bounds/BoundsSplit;

    invoke-virtual {p0, v1}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->split(Lorg/andengine/util/adt/bounds/BoundsSplit;)Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    move-result-object v1

    iput-object v1, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    .line 823
    iget-object v1, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-virtual {v1, p1, p2}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->add(Lorg/andengine/util/adt/spatial/ISpatialItem;Lorg/andengine/util/adt/bounds/IBounds;)V
    :try_end_3
    .catch Lorg/andengine/util/adt/bounds/BoundsSplit$BoundsSplitException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 824
    :catch_3
    move-exception v0

    .line 825
    .restart local v0       #e:Lorg/andengine/util/adt/bounds/BoundsSplit$BoundsSplitException;
    invoke-direct {p0, p1}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->addItemSafe(Lorg/andengine/util/adt/spatial/ISpatialItem;)V

    goto/16 :goto_0

    .line 832
    .end local v0           #e:Lorg/andengine/util/adt/bounds/BoundsSplit$BoundsSplitException;
    :cond_8
    invoke-direct {p0, p1}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->addItemSafe(Lorg/andengine/util/adt/spatial/ISpatialItem;)V

    goto/16 :goto_0
.end method

.method protected abstract appendBoundsToString(Ljava/lang/StringBuilder;)V
.end method

.method public callItems(Lorg/andengine/util/call/ParameterCallable;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/call/ParameterCallable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 406
    .local p1, pParameterCallable:Lorg/andengine/util/call/ParameterCallable;,"Lorg/andengine/util/call/ParameterCallable<TT;>;"
    iget-object v3, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mItems:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 407
    iget-object v3, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 408
    .local v2, itemCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v2, :cond_5

    .line 414
    .end local v0           #i:I
    .end local v2           #itemCount:I
    :cond_0
    iget-object v3, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mTopLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    if-eqz v3, :cond_1

    .line 415
    iget-object v3, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mTopLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-virtual {v3, p1}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->callItems(Lorg/andengine/util/call/ParameterCallable;)V

    .line 417
    :cond_1
    iget-object v3, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mTopRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    if-eqz v3, :cond_2

    .line 418
    iget-object v3, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mTopRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-virtual {v3, p1}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->callItems(Lorg/andengine/util/call/ParameterCallable;)V

    .line 420
    :cond_2
    iget-object v3, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    if-eqz v3, :cond_3

    .line 421
    iget-object v3, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-virtual {v3, p1}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->callItems(Lorg/andengine/util/call/ParameterCallable;)V

    .line 423
    :cond_3
    iget-object v3, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    if-eqz v3, :cond_4

    .line 424
    iget-object v3, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-virtual {v3, p1}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->callItems(Lorg/andengine/util/call/ParameterCallable;)V

    .line 426
    :cond_4
    return-void

    .line 409
    .restart local v0       #i:I
    .restart local v2       #itemCount:I
    :cond_5
    iget-object v3, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mItems:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/andengine/util/adt/spatial/ISpatialItem;

    .line 410
    .local v1, item:Lorg/andengine/util/adt/spatial/ISpatialItem;,"TT;"
    invoke-interface {p1, v1}, Lorg/andengine/util/call/ParameterCallable;->call(Ljava/lang/Object;)V

    .line 408
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public callNodes(Lorg/andengine/util/call/ParameterCallable;)V
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
    .line 429
    .local p1, pParameterCallable:Lorg/andengine/util/call/ParameterCallable;,"Lorg/andengine/util/call/ParameterCallable<Lorg/andengine/util/adt/spatial/quadtree/QuadTree<TB;TT;>.QuadTreeNode;>;"
    invoke-interface {p1, p0}, Lorg/andengine/util/call/ParameterCallable;->call(Ljava/lang/Object;)V

    .line 431
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mTopLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mTopLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-virtual {v0, p1}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->callNodes(Lorg/andengine/util/call/ParameterCallable;)V

    .line 434
    :cond_0
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mTopRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    if-eqz v0, :cond_1

    .line 435
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mTopRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-virtual {v0, p1}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->callNodes(Lorg/andengine/util/call/ParameterCallable;)V

    .line 437
    :cond_1
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    if-eqz v0, :cond_2

    .line 438
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-virtual {v0, p1}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->callNodes(Lorg/andengine/util/call/ParameterCallable;)V

    .line 440
    :cond_2
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    if-eqz v0, :cond_3

    .line 441
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-virtual {v0, p1}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->callNodes(Lorg/andengine/util/call/ParameterCallable;)V

    .line 443
    :cond_3
    return-void
.end method

.method protected clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 872
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    if-eqz v0, :cond_0

    .line 873
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-virtual {v0}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->clear()V

    .line 874
    iput-object v1, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    .line 876
    :cond_0
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    if-eqz v0, :cond_1

    .line 877
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-virtual {v0}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->clear()V

    .line 878
    iput-object v1, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    .line 880
    :cond_1
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mTopLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    if-eqz v0, :cond_2

    .line 881
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mTopLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-virtual {v0}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->clear()V

    .line 882
    iput-object v1, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mTopLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    .line 884
    :cond_2
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mTopRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    if-eqz v0, :cond_3

    .line 885
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mTopRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-virtual {v0}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->clear()V

    .line 886
    iput-object v1, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mTopRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    .line 889
    :cond_3
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mItems:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 890
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 891
    iput-object v1, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mItems:Ljava/util/List;

    .line 893
    :cond_4
    return-void
.end method

.method protected abstract containedBy(Lorg/andengine/util/adt/bounds/IBounds;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)Z"
        }
    .end annotation
.end method

.method protected abstract contains(Lorg/andengine/util/adt/bounds/BoundsSplit;Lorg/andengine/util/adt/bounds/IBounds;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/adt/bounds/BoundsSplit;",
            "TB;)Z"
        }
    .end annotation
.end method

.method protected abstract contains(Lorg/andengine/util/adt/bounds/IBounds;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)Z"
        }
    .end annotation
.end method

.method public containsAny(Lorg/andengine/util/adt/bounds/IBounds;)Z
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)Z"
        }
    .end annotation

    .prologue
    .local p1, pBounds:Lorg/andengine/util/adt/bounds/IBounds;,"TB;"
    const/4 v3, 0x1

    .line 714
    iget-object v4, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mItems:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 715
    iget-object v4, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 716
    .local v2, itemCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v2, :cond_2

    .line 725
    .end local v0           #i:I
    .end local v2           #itemCount:I
    :cond_0
    iget-object v4, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mTopLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-direct {p0, p1, v4}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->containsAnyChild(Lorg/andengine/util/adt/bounds/IBounds;Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 734
    :cond_1
    :goto_1
    return v3

    .line 717
    .restart local v0       #i:I
    .restart local v2       #itemCount:I
    :cond_2
    iget-object v4, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mItems:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/andengine/util/adt/spatial/ISpatialItem;

    .line 718
    .local v1, item:Lorg/andengine/util/adt/spatial/ISpatialItem;,"TT;"
    invoke-interface {v1}, Lorg/andengine/util/adt/spatial/ISpatialItem;->getBounds()Lorg/andengine/util/adt/bounds/IBounds;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->intersects(Lorg/andengine/util/adt/bounds/IBounds;Lorg/andengine/util/adt/bounds/IBounds;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 716
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 727
    .end local v0           #i:I
    .end local v1           #item:Lorg/andengine/util/adt/spatial/ISpatialItem;,"TT;"
    .end local v2           #itemCount:I
    :cond_3
    iget-object v4, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mTopRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-direct {p0, p1, v4}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->containsAnyChild(Lorg/andengine/util/adt/bounds/IBounds;Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 729
    iget-object v4, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-direct {p0, p1, v4}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->containsAnyChild(Lorg/andengine/util/adt/bounds/IBounds;Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 731
    iget-object v4, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-direct {p0, p1, v4}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->containsAnyChild(Lorg/andengine/util/adt/bounds/IBounds;Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 734
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public containsAny(Lorg/andengine/util/adt/bounds/IBounds;Lorg/andengine/util/IMatcher;)Z
    .locals 5
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
    .local p1, pBounds:Lorg/andengine/util/adt/bounds/IBounds;,"TB;"
    .local p2, pMatcher:Lorg/andengine/util/IMatcher;,"Lorg/andengine/util/IMatcher<TT;>;"
    const/4 v3, 0x1

    .line 688
    iget-object v4, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mItems:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 689
    iget-object v4, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 690
    .local v2, itemCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v2, :cond_2

    .line 699
    .end local v0           #i:I
    .end local v2           #itemCount:I
    :cond_0
    iget-object v4, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mTopLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-direct {p0, p1, p2, v4}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->containsAnyChild(Lorg/andengine/util/adt/bounds/IBounds;Lorg/andengine/util/IMatcher;Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 708
    :cond_1
    :goto_1
    return v3

    .line 691
    .restart local v0       #i:I
    .restart local v2       #itemCount:I
    :cond_2
    iget-object v4, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mItems:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/andengine/util/adt/spatial/ISpatialItem;

    .line 692
    .local v1, item:Lorg/andengine/util/adt/spatial/ISpatialItem;,"TT;"
    invoke-interface {v1}, Lorg/andengine/util/adt/spatial/ISpatialItem;->getBounds()Lorg/andengine/util/adt/bounds/IBounds;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->intersects(Lorg/andengine/util/adt/bounds/IBounds;Lorg/andengine/util/adt/bounds/IBounds;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p2, v1}, Lorg/andengine/util/IMatcher;->matches(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 690
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 701
    .end local v0           #i:I
    .end local v1           #item:Lorg/andengine/util/adt/spatial/ISpatialItem;,"TT;"
    .end local v2           #itemCount:I
    :cond_4
    iget-object v4, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mTopRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-direct {p0, p1, p2, v4}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->containsAnyChild(Lorg/andengine/util/adt/bounds/IBounds;Lorg/andengine/util/IMatcher;Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 703
    iget-object v4, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-direct {p0, p1, p2, v4}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->containsAnyChild(Lorg/andengine/util/adt/bounds/IBounds;Lorg/andengine/util/IMatcher;Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 705
    iget-object v4, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-direct {p0, p1, p2, v4}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->containsAnyChild(Lorg/andengine/util/adt/bounds/IBounds;Lorg/andengine/util/IMatcher;Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 708
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 383
    iget-object v1, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mItems:Ljava/util/List;

    if-nez v1, :cond_4

    .line 384
    const/4 v0, 0x0

    .line 389
    .local v0, count:I
    :goto_0
    iget-object v1, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mTopLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    if-eqz v1, :cond_0

    .line 390
    iget-object v1, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mTopLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-virtual {v1}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->getItemCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 392
    :cond_0
    iget-object v1, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mTopRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    if-eqz v1, :cond_1

    .line 393
    iget-object v1, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mTopRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-virtual {v1}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->getItemCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 395
    :cond_1
    iget-object v1, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    if-eqz v1, :cond_2

    .line 396
    iget-object v1, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-virtual {v1}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->getItemCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 398
    :cond_2
    iget-object v1, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    if-eqz v1, :cond_3

    .line 399
    iget-object v1, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-virtual {v1}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->getItemCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 402
    :cond_3
    return v0

    .line 386
    .end local v0           #count:I
    :cond_4
    iget-object v1, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .restart local v0       #count:I
    goto :goto_0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 277
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getItemsAndItemsBelow()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 446
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->getItemsAndItemsBelow(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItemsAndItemsBelow(Lorg/andengine/util/IMatcher;)Ljava/util/ArrayList;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/IMatcher",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 474
    .local p1, pMatcher:Lorg/andengine/util/IMatcher;,"Lorg/andengine/util/IMatcher<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, v0}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->getItemsAndItemsBelow(Lorg/andengine/util/IMatcher;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItemsAndItemsBelow(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L::Ljava/util/List",
            "<TT;>;>(T",
            "L;",
            ")T",
            "L;"
        }
    .end annotation

    .prologue
    .line 453
    .local p1, pResult:Ljava/util/List;,"TL;"
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mItems:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mItems:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 457
    :cond_0
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mTopLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    if-eqz v0, :cond_1

    .line 458
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mTopLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-virtual {v0, p1}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->getItemsAndItemsBelow(Ljava/util/List;)Ljava/util/List;

    .line 460
    :cond_1
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mTopRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    if-eqz v0, :cond_2

    .line 461
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mTopRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-virtual {v0, p1}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->getItemsAndItemsBelow(Ljava/util/List;)Ljava/util/List;

    .line 463
    :cond_2
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    if-eqz v0, :cond_3

    .line 464
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-virtual {v0, p1}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->getItemsAndItemsBelow(Ljava/util/List;)Ljava/util/List;

    .line 466
    :cond_3
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    if-eqz v0, :cond_4

    .line 467
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-virtual {v0, p1}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->getItemsAndItemsBelow(Ljava/util/List;)Ljava/util/List;

    .line 470
    :cond_4
    return-object p1
.end method

.method public getItemsAndItemsBelow(Lorg/andengine/util/IMatcher;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L::Ljava/util/List",
            "<TT;>;>(",
            "Lorg/andengine/util/IMatcher",
            "<TT;>;T",
            "L;",
            ")T",
            "L;"
        }
    .end annotation

    .prologue
    .line 478
    .local p1, pMatcher:Lorg/andengine/util/IMatcher;,"Lorg/andengine/util/IMatcher<TT;>;"
    .local p2, pResult:Ljava/util/List;,"TL;"
    iget-object v1, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mItems:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 479
    iget-object v1, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_6

    .line 486
    :cond_1
    iget-object v1, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mTopLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    if-eqz v1, :cond_2

    .line 487
    iget-object v1, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mTopLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-virtual {v1, p1, p2}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->getItemsAndItemsBelow(Lorg/andengine/util/IMatcher;Ljava/util/List;)Ljava/util/List;

    .line 489
    :cond_2
    iget-object v1, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mTopRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    if-eqz v1, :cond_3

    .line 490
    iget-object v1, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mTopRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-virtual {v1, p1, p2}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->getItemsAndItemsBelow(Lorg/andengine/util/IMatcher;Ljava/util/List;)Ljava/util/List;

    .line 492
    :cond_3
    iget-object v1, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    if-eqz v1, :cond_4

    .line 493
    iget-object v1, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-virtual {v1, p1, p2}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->getItemsAndItemsBelow(Lorg/andengine/util/IMatcher;Ljava/util/List;)Ljava/util/List;

    .line 495
    :cond_4
    iget-object v1, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    if-eqz v1, :cond_5

    .line 496
    iget-object v1, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-virtual {v1, p1, p2}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->getItemsAndItemsBelow(Lorg/andengine/util/IMatcher;Ljava/util/List;)Ljava/util/List;

    .line 499
    :cond_5
    return-object p2

    .line 479
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/andengine/util/adt/spatial/ISpatialItem;

    .line 480
    .local v0, item:Lorg/andengine/util/adt/spatial/ISpatialItem;,"TT;"
    invoke-interface {p1, v0}, Lorg/andengine/util/IMatcher;->matches(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 481
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getItemsAndItemsBelowForSubclass(Lorg/andengine/util/IMatcher;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L::Ljava/util/List",
            "<TS;>;S:TT;>(",
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
    .line 504
    .local p1, pMatcher:Lorg/andengine/util/IMatcher;,"Lorg/andengine/util/IMatcher<TT;>;"
    .local p2, pResult:Ljava/util/List;,"TL;"
    iget-object v3, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mItems:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 505
    iget-object v3, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 506
    .local v2, itemCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v2, :cond_5

    .line 514
    .end local v0           #i:I
    .end local v2           #itemCount:I
    :cond_0
    iget-object v3, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mTopLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    if-eqz v3, :cond_1

    .line 515
    iget-object v3, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mTopLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-virtual {v3, p1, p2}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->getItemsAndItemsBelowForSubclass(Lorg/andengine/util/IMatcher;Ljava/util/List;)Ljava/util/List;

    .line 517
    :cond_1
    iget-object v3, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mTopRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    if-eqz v3, :cond_2

    .line 518
    iget-object v3, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mTopRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-virtual {v3, p1, p2}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->getItemsAndItemsBelowForSubclass(Lorg/andengine/util/IMatcher;Ljava/util/List;)Ljava/util/List;

    .line 520
    :cond_2
    iget-object v3, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    if-eqz v3, :cond_3

    .line 521
    iget-object v3, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-virtual {v3, p1, p2}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->getItemsAndItemsBelowForSubclass(Lorg/andengine/util/IMatcher;Ljava/util/List;)Ljava/util/List;

    .line 523
    :cond_3
    iget-object v3, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    if-eqz v3, :cond_4

    .line 524
    iget-object v3, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-virtual {v3, p1, p2}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->getItemsAndItemsBelowForSubclass(Lorg/andengine/util/IMatcher;Ljava/util/List;)Ljava/util/List;

    .line 527
    :cond_4
    return-object p2

    .line 507
    .restart local v0       #i:I
    .restart local v2       #itemCount:I
    :cond_5
    iget-object v3, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mItems:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/andengine/util/adt/spatial/ISpatialItem;

    .line 508
    .local v1, item:Lorg/andengine/util/adt/spatial/ISpatialItem;,"TT;"
    invoke-interface {p1, v1}, Lorg/andengine/util/IMatcher;->matches(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 509
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 506
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public hasChildren()Z
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mTopLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mTopRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract intersects(Lorg/andengine/util/adt/bounds/IBounds;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)Z"
        }
    .end annotation
.end method

.method protected abstract intersects(Lorg/andengine/util/adt/bounds/IBounds;Lorg/andengine/util/adt/bounds/IBounds;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;TB;)Z"
        }
    .end annotation
.end method

.method public query(Lorg/andengine/util/adt/bounds/IBounds;)Ljava/util/ArrayList;
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
    .line 531
    .local p1, pBounds:Lorg/andengine/util/adt/bounds/IBounds;,"TB;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, v0}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->query(Lorg/andengine/util/adt/bounds/IBounds;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public query(Lorg/andengine/util/adt/bounds/IBounds;Ljava/util/List;)Ljava/util/List;
    .locals 4
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
    .line 536
    .local p1, pBounds:Lorg/andengine/util/adt/bounds/IBounds;,"TB;"
    .local p2, pResult:Ljava/util/List;,"TL;"
    iget-object v3, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mItems:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 537
    iget-object v3, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 538
    .local v2, itemCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v2, :cond_2

    .line 547
    .end local v0           #i:I
    .end local v2           #itemCount:I
    :cond_0
    iget-object v3, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mTopLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-direct {p0, p1, p2, v3}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->queryChild(Lorg/andengine/util/adt/bounds/IBounds;Ljava/util/List;Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 556
    :cond_1
    :goto_1
    return-object p2

    .line 539
    .restart local v0       #i:I
    .restart local v2       #itemCount:I
    :cond_2
    iget-object v3, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mItems:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/andengine/util/adt/spatial/ISpatialItem;

    .line 540
    .local v1, item:Lorg/andengine/util/adt/spatial/ISpatialItem;,"TT;"
    invoke-interface {v1}, Lorg/andengine/util/adt/spatial/ISpatialItem;->getBounds()Lorg/andengine/util/adt/bounds/IBounds;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->intersects(Lorg/andengine/util/adt/bounds/IBounds;Lorg/andengine/util/adt/bounds/IBounds;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 541
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 538
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 549
    .end local v0           #i:I
    .end local v1           #item:Lorg/andengine/util/adt/spatial/ISpatialItem;,"TT;"
    .end local v2           #itemCount:I
    :cond_4
    iget-object v3, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mTopRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-direct {p0, p1, p2, v3}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->queryChild(Lorg/andengine/util/adt/bounds/IBounds;Ljava/util/List;Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 551
    iget-object v3, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-direct {p0, p1, p2, v3}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->queryChild(Lorg/andengine/util/adt/bounds/IBounds;Ljava/util/List;Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 553
    iget-object v3, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-direct {p0, p1, p2, v3}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->queryChild(Lorg/andengine/util/adt/bounds/IBounds;Ljava/util/List;Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1
.end method

.method public query(Lorg/andengine/util/adt/bounds/IBounds;Lorg/andengine/util/IMatcher;Ljava/util/List;)Ljava/util/List;
    .locals 3
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
    .line 562
    .local p1, pBounds:Lorg/andengine/util/adt/bounds/IBounds;,"TB;"
    .local p2, pMatcher:Lorg/andengine/util/IMatcher;,"Lorg/andengine/util/IMatcher<TT;>;"
    .local p3, pResult:Ljava/util/List;,"TL;"
    iget-object v1, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mItems:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 563
    iget-object v1, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 571
    :cond_1
    iget-object v1, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mTopLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-direct {p0, p1, p2, p3, v1}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->queryChild(Lorg/andengine/util/adt/bounds/IBounds;Lorg/andengine/util/IMatcher;Ljava/util/List;Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 580
    :cond_2
    :goto_1
    return-object p3

    .line 563
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/andengine/util/adt/spatial/ISpatialItem;

    .line 564
    .local v0, item:Lorg/andengine/util/adt/spatial/ISpatialItem;,"TT;"
    invoke-interface {v0}, Lorg/andengine/util/adt/spatial/ISpatialItem;->getBounds()Lorg/andengine/util/adt/bounds/IBounds;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->intersects(Lorg/andengine/util/adt/bounds/IBounds;Lorg/andengine/util/adt/bounds/IBounds;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2, v0}, Lorg/andengine/util/IMatcher;->matches(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 565
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 573
    .end local v0           #item:Lorg/andengine/util/adt/spatial/ISpatialItem;,"TT;"
    :cond_4
    iget-object v1, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mTopRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-direct {p0, p1, p2, p3, v1}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->queryChild(Lorg/andengine/util/adt/bounds/IBounds;Lorg/andengine/util/IMatcher;Ljava/util/List;Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 575
    iget-object v1, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-direct {p0, p1, p2, p3, v1}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->queryChild(Lorg/andengine/util/adt/bounds/IBounds;Lorg/andengine/util/IMatcher;Ljava/util/List;Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 577
    iget-object v1, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-direct {p0, p1, p2, p3, v1}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->queryChild(Lorg/andengine/util/adt/bounds/IBounds;Lorg/andengine/util/IMatcher;Ljava/util/List;Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1
.end method

.method public queryForSubclass(Lorg/andengine/util/adt/bounds/IBounds;Lorg/andengine/util/IMatcher;Ljava/util/List;)Ljava/util/List;
    .locals 3
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
    .line 587
    .local p1, pBounds:Lorg/andengine/util/adt/bounds/IBounds;,"TB;"
    .local p2, pMatcher:Lorg/andengine/util/IMatcher;,"Lorg/andengine/util/IMatcher<TT;>;"
    .local p3, pResult:Ljava/util/List;,"TL;"
    iget-object v1, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mItems:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 588
    iget-object v1, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 596
    :cond_1
    iget-object v1, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mTopLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-direct {p0, p1, p2, p3, v1}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->queryChildForSubclass(Lorg/andengine/util/adt/bounds/IBounds;Lorg/andengine/util/IMatcher;Ljava/util/List;Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 605
    :cond_2
    :goto_1
    return-object p3

    .line 588
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/andengine/util/adt/spatial/ISpatialItem;

    .line 589
    .local v0, item:Lorg/andengine/util/adt/spatial/ISpatialItem;,"TT;"
    invoke-interface {v0}, Lorg/andengine/util/adt/spatial/ISpatialItem;->getBounds()Lorg/andengine/util/adt/bounds/IBounds;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->intersects(Lorg/andengine/util/adt/bounds/IBounds;Lorg/andengine/util/adt/bounds/IBounds;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2, v0}, Lorg/andengine/util/IMatcher;->matches(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 590
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 598
    .end local v0           #item:Lorg/andengine/util/adt/spatial/ISpatialItem;,"TT;"
    :cond_4
    iget-object v1, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mTopRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-direct {p0, p1, p2, p3, v1}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->queryChildForSubclass(Lorg/andengine/util/adt/bounds/IBounds;Lorg/andengine/util/IMatcher;Ljava/util/List;Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 600
    iget-object v1, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-direct {p0, p1, p2, p3, v1}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->queryChildForSubclass(Lorg/andengine/util/adt/bounds/IBounds;Lorg/andengine/util/IMatcher;Ljava/util/List;Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 602
    iget-object v1, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-direct {p0, p1, p2, p3, v1}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->queryChildForSubclass(Lorg/andengine/util/adt/bounds/IBounds;Lorg/andengine/util/IMatcher;Ljava/util/List;Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1
.end method

.method public remove(Lorg/andengine/util/adt/spatial/ISpatialItem;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 836
    .local p1, pItem:Lorg/andengine/util/adt/spatial/ISpatialItem;,"TT;"
    invoke-interface {p1}, Lorg/andengine/util/adt/spatial/ISpatialItem;->getBounds()Lorg/andengine/util/adt/bounds/IBounds;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->remove(Lorg/andengine/util/adt/spatial/ISpatialItem;Lorg/andengine/util/adt/bounds/IBounds;)Z

    move-result v0

    return v0
.end method

.method public remove(Lorg/andengine/util/adt/spatial/ISpatialItem;Lorg/andengine/util/adt/bounds/IBounds;)Z
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TB;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 840
    .local p1, pItem:Lorg/andengine/util/adt/spatial/ISpatialItem;,"TT;"
    .local p2, pBounds:Lorg/andengine/util/adt/bounds/IBounds;,"TB;"
    invoke-virtual {p0, p2}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->contains(Lorg/andengine/util/adt/bounds/IBounds;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 841
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pItem ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is out of the bounds of this "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 845
    :cond_0
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mTopLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mTopLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-virtual {v0, p2}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->contains(Lorg/andengine/util/adt/bounds/IBounds;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 846
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mTopLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-virtual {v0, p1, p2}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->remove(Lorg/andengine/util/adt/spatial/ISpatialItem;Lorg/andengine/util/adt/bounds/IBounds;)Z

    move-result v0

    .line 859
    :goto_0
    return v0

    .line 847
    :cond_1
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mTopRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mTopRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-virtual {v0, p2}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->contains(Lorg/andengine/util/adt/bounds/IBounds;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 848
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mTopRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-virtual {v0, p1, p2}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->remove(Lorg/andengine/util/adt/spatial/ISpatialItem;Lorg/andengine/util/adt/bounds/IBounds;)Z

    move-result v0

    goto :goto_0

    .line 849
    :cond_2
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-virtual {v0, p2}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->contains(Lorg/andengine/util/adt/bounds/IBounds;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 850
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-virtual {v0, p1, p2}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->remove(Lorg/andengine/util/adt/spatial/ISpatialItem;Lorg/andengine/util/adt/bounds/IBounds;)Z

    move-result v0

    goto :goto_0

    .line 851
    :cond_3
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-virtual {v0, p2}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->contains(Lorg/andengine/util/adt/bounds/IBounds;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 852
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    invoke-virtual {v0, p1, p2}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->remove(Lorg/andengine/util/adt/spatial/ISpatialItem;Lorg/andengine/util/adt/bounds/IBounds;)Z

    move-result v0

    goto :goto_0

    .line 855
    :cond_4
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mItems:Ljava/util/List;

    if-nez v0, :cond_5

    .line 856
    const/4 v0, 0x0

    goto :goto_0

    .line 859
    :cond_5
    iget-object v0, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method protected abstract split(Lorg/andengine/util/adt/bounds/BoundsSplit;)Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/adt/bounds/BoundsSplit;",
            ")",
            "Lorg/andengine/util/adt/spatial/quadtree/QuadTree",
            "<TB;TT;>.QuadTreeNode;"
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 8
    .parameter "pIndent"

    .prologue
    const/16 v7, 0x5d

    const/16 v6, 0x2c

    const/16 v5, 0x9

    const/16 v4, 0xa

    .line 298
    new-array v0, p1, [C

    .line 299
    .local v0, indents:[C
    invoke-static {v0, v5}, Ljava/util/Arrays;->fill([CC)V

    .line 301
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 303
    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 304
    const-string v3, " Class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 305
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 306
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 307
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 308
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 309
    const-string v3, "Level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 310
    iget v3, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 311
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 312
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 313
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 314
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 315
    const-string v3, "Bounds: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 317
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0, v1}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->appendBoundsToString(Ljava/lang/StringBuilder;)V

    .line 319
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 320
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 321
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 322
    const-string v3, "\tItems: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    iget-object v2, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mItems:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 325
    iget-object v2, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mItems:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 331
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 332
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 333
    const-string v3, "Children: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    iget-object v2, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mTopLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mTopRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    if-nez v2, :cond_1

    .line 337
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 370
    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 371
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 372
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 374
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 327
    :cond_0
    const-string v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 339
    :cond_1
    iget-object v2, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mTopLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    if-eqz v2, :cond_3

    .line 340
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 341
    iget-object v2, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mTopLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    add-int/lit8 v3, p1, 0x2

    invoke-virtual {v2, v3}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    iget-object v2, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mTopRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    if-eqz v2, :cond_3

    .line 343
    :cond_2
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 346
    :cond_3
    iget-object v2, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mTopRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    if-eqz v2, :cond_5

    .line 347
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 348
    iget-object v2, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mTopRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    add-int/lit8 v3, p1, 0x2

    invoke-virtual {v2, v3}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    iget-object v2, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    if-eqz v2, :cond_5

    .line 350
    :cond_4
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 353
    :cond_5
    iget-object v2, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    if-eqz v2, :cond_6

    .line 354
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 355
    iget-object v2, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomLeftChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    add-int/lit8 v3, p1, 0x2

    invoke-virtual {v2, v3}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    iget-object v2, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    if-eqz v2, :cond_6

    .line 357
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 360
    :cond_6
    iget-object v2, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    if-eqz v2, :cond_7

    .line 361
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 362
    iget-object v2, p0, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->mBottomRightChild:Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;

    add-int/lit8 v3, p1, 0x2

    invoke-virtual {v2, v3}, Lorg/andengine/util/adt/spatial/quadtree/QuadTree$QuadTreeNode;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    :cond_7
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 365
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 366
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 367
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1
.end method
