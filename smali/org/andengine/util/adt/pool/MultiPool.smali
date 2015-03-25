.class public Lorg/andengine/util/adt/pool/MultiPool;
.super Ljava/lang/Object;
.source "MultiPool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mPools:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/andengine/util/adt/pool/GenericPool",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    .local p0, this:Lorg/andengine/util/adt/pool/MultiPool;,"Lorg/andengine/util/adt/pool/MultiPool<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/andengine/util/adt/pool/MultiPool;->mPools:Landroid/util/SparseArray;

    .line 12
    return-void
.end method


# virtual methods
.method public obtainPoolItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "pID"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, this:Lorg/andengine/util/adt/pool/MultiPool;,"Lorg/andengine/util/adt/pool/MultiPool<TT;>;"
    iget-object v1, p0, Lorg/andengine/util/adt/pool/MultiPool;->mPools:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/andengine/util/adt/pool/GenericPool;

    .line 45
    .local v0, pool:Lorg/andengine/util/adt/pool/GenericPool;,"Lorg/andengine/util/adt/pool/GenericPool<TT;>;"
    if-nez v0, :cond_0

    .line 46
    const/4 v1, 0x0

    .line 48
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/andengine/util/adt/pool/GenericPool;->obtainPoolItem()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public recyclePoolItem(ILjava/lang/Object;)V
    .locals 2
    .parameter "pID"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, this:Lorg/andengine/util/adt/pool/MultiPool;,"Lorg/andengine/util/adt/pool/MultiPool<TT;>;"
    .local p2, pItem:Ljava/lang/Object;,"TT;"
    iget-object v1, p0, Lorg/andengine/util/adt/pool/MultiPool;->mPools:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/andengine/util/adt/pool/GenericPool;

    .line 54
    .local v0, pool:Lorg/andengine/util/adt/pool/GenericPool;,"Lorg/andengine/util/adt/pool/GenericPool<TT;>;"
    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0, p2}, Lorg/andengine/util/adt/pool/GenericPool;->recyclePoolItem(Ljava/lang/Object;)V

    .line 57
    :cond_0
    return-void
.end method

.method public registerPool(ILorg/andengine/util/adt/pool/GenericPool;)V
    .locals 1
    .parameter "pID"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/andengine/util/adt/pool/GenericPool",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, this:Lorg/andengine/util/adt/pool/MultiPool;,"Lorg/andengine/util/adt/pool/MultiPool<TT;>;"
    .local p2, pPool:Lorg/andengine/util/adt/pool/GenericPool;,"Lorg/andengine/util/adt/pool/GenericPool<TT;>;"
    iget-object v0, p0, Lorg/andengine/util/adt/pool/MultiPool;->mPools:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 41
    return-void
.end method
