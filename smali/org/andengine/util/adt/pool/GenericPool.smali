.class public abstract Lorg/andengine/util/adt/pool/GenericPool;
.super Ljava/lang/Object;
.source "GenericPool.java"


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
.field private final mAvailableItemCountMaximum:I

.field private final mAvailableItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mGrowth:I

.field private mUnrecycledItemCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    .local p0, this:Lorg/andengine/util/adt/pool/GenericPool;,"Lorg/andengine/util/adt/pool/GenericPool<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/andengine/util/adt/pool/GenericPool;-><init>(I)V

    .line 39
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "pInitialSize"

    .prologue
    .line 42
    .local p0, this:Lorg/andengine/util/adt/pool/GenericPool;,"Lorg/andengine/util/adt/pool/GenericPool<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/andengine/util/adt/pool/GenericPool;-><init>(II)V

    .line 43
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "pInitialSize"
    .parameter "pGrowth"

    .prologue
    .line 46
    .local p0, this:Lorg/andengine/util/adt/pool/GenericPool;,"Lorg/andengine/util/adt/pool/GenericPool<TT;>;"
    const v0, 0x7fffffff

    invoke-direct {p0, p1, p2, v0}, Lorg/andengine/util/adt/pool/GenericPool;-><init>(III)V

    .line 47
    return-void
.end method

.method public constructor <init>(III)V
    .locals 2
    .parameter "pInitialSize"
    .parameter "pGrowth"
    .parameter "pAvailableItemsMaximum"

    .prologue
    .line 49
    .local p0, this:Lorg/andengine/util/adt/pool/GenericPool;,"Lorg/andengine/util/adt/pool/GenericPool<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    if-gtz p2, :cond_0

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pGrowth must be greater than 0!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    if-gez p3, :cond_1

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pAvailableItemsMaximum must be at least 0!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_1
    iput p2, p0, Lorg/andengine/util/adt/pool/GenericPool;->mGrowth:I

    .line 58
    iput p3, p0, Lorg/andengine/util/adt/pool/GenericPool;->mAvailableItemCountMaximum:I

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/andengine/util/adt/pool/GenericPool;->mAvailableItems:Ljava/util/ArrayList;

    .line 61
    if-lez p1, :cond_2

    .line 62
    invoke-virtual {p0, p1}, Lorg/andengine/util/adt/pool/GenericPool;->batchAllocatePoolItems(I)V

    .line 64
    :cond_2
    return-void
.end method


# virtual methods
.method public declared-synchronized batchAllocatePoolItems(I)V
    .locals 5
    .parameter "pCount"

    .prologue
    .line 111
    .local p0, this:Lorg/andengine/util/adt/pool/GenericPool;,"Lorg/andengine/util/adt/pool/GenericPool<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/andengine/util/adt/pool/GenericPool;->mAvailableItems:Ljava/util/ArrayList;

    .line 113
    .local v1, availableItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    iget v3, p0, Lorg/andengine/util/adt/pool/GenericPool;->mAvailableItemCountMaximum:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    sub-int v0, v3, v4

    .line 114
    .local v0, allocationCount:I
    if-ge p1, v0, :cond_0

    .line 115
    move v0, p1

    .line 118
    :cond_0
    add-int/lit8 v2, v0, -0x1

    .local v2, i:I
    :goto_0
    if-gez v2, :cond_1

    .line 121
    monitor-exit p0

    return-void

    .line 119
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lorg/andengine/util/adt/pool/GenericPool;->onHandleAllocatePoolItem()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 111
    .end local v0           #allocationCount:I
    .end local v1           #availableItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    .end local v2           #i:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getAvailableItemCount()I
    .locals 1

    .prologue
    .line 75
    .local p0, this:Lorg/andengine/util/adt/pool/GenericPool;,"Lorg/andengine/util/adt/pool/GenericPool<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/andengine/util/adt/pool/GenericPool;->mAvailableItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
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

.method public getAvailableItemCountMaximum()I
    .locals 1

    .prologue
    .line 79
    .local p0, this:Lorg/andengine/util/adt/pool/GenericPool;,"Lorg/andengine/util/adt/pool/GenericPool<TT;>;"
    iget v0, p0, Lorg/andengine/util/adt/pool/GenericPool;->mAvailableItemCountMaximum:I

    return v0
.end method

.method public declared-synchronized getUnrecycledItemCount()I
    .locals 1

    .prologue
    .line 71
    .local p0, this:Lorg/andengine/util/adt/pool/GenericPool;,"Lorg/andengine/util/adt/pool/GenericPool<TT;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/andengine/util/adt/pool/GenericPool;->mUnrecycledItemCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized obtainPoolItem()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, this:Lorg/andengine/util/adt/pool/GenericPool;,"Lorg/andengine/util/adt/pool/GenericPool<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/andengine/util/adt/pool/GenericPool;->mAvailableItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 127
    iget-object v1, p0, Lorg/andengine/util/adt/pool/GenericPool;->mAvailableItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/andengine/util/adt/pool/GenericPool;->mAvailableItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 139
    .local v0, item:Ljava/lang/Object;,"TT;"
    :goto_0
    invoke-virtual {p0, v0}, Lorg/andengine/util/adt/pool/GenericPool;->onHandleObtainItem(Ljava/lang/Object;)V

    .line 141
    iget v1, p0, Lorg/andengine/util/adt/pool/GenericPool;->mUnrecycledItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/andengine/util/adt/pool/GenericPool;->mUnrecycledItemCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    monitor-exit p0

    return-object v0

    .line 129
    .end local v0           #item:Ljava/lang/Object;,"TT;"
    :cond_0
    :try_start_1
    iget v1, p0, Lorg/andengine/util/adt/pool/GenericPool;->mGrowth:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget v1, p0, Lorg/andengine/util/adt/pool/GenericPool;->mAvailableItemCountMaximum:I

    if-nez v1, :cond_2

    .line 130
    :cond_1
    invoke-virtual {p0}, Lorg/andengine/util/adt/pool/GenericPool;->onHandleAllocatePoolItem()Ljava/lang/Object;

    move-result-object v0

    .line 136
    .restart local v0       #item:Ljava/lang/Object;,"TT;"
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> was exhausted, with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/andengine/util/adt/pool/GenericPool;->mUnrecycledItemCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " item not yet recycled. Allocated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/andengine/util/adt/pool/GenericPool;->mGrowth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " more."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/andengine/util/debug/Debug;->v(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 126
    .end local v0           #item:Ljava/lang/Object;,"TT;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 132
    :cond_2
    :try_start_2
    iget v1, p0, Lorg/andengine/util/adt/pool/GenericPool;->mGrowth:I

    invoke-virtual {p0, v1}, Lorg/andengine/util/adt/pool/GenericPool;->batchAllocatePoolItems(I)V

    .line 133
    iget-object v1, p0, Lorg/andengine/util/adt/pool/GenericPool;->mAvailableItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/andengine/util/adt/pool/GenericPool;->mAvailableItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .restart local v0       #item:Ljava/lang/Object;,"TT;"
    goto :goto_1
.end method

.method protected abstract onAllocatePoolItem()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected onHandleAllocatePoolItem()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, this:Lorg/andengine/util/adt/pool/GenericPool;,"Lorg/andengine/util/adt/pool/GenericPool<TT;>;"
    invoke-virtual {p0}, Lorg/andengine/util/adt/pool/GenericPool;->onAllocatePoolItem()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onHandleObtainItem(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, this:Lorg/andengine/util/adt/pool/GenericPool;,"Lorg/andengine/util/adt/pool/GenericPool<TT;>;"
    .local p1, pItem:Ljava/lang/Object;,"TT;"
    return-void
.end method

.method protected onHandleRecycleItem(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, this:Lorg/andengine/util/adt/pool/GenericPool;,"Lorg/andengine/util/adt/pool/GenericPool<TT;>;"
    .local p1, pItem:Ljava/lang/Object;,"TT;"
    return-void
.end method

.method public declared-synchronized recyclePoolItem(Ljava/lang/Object;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, this:Lorg/andengine/util/adt/pool/GenericPool;,"Lorg/andengine/util/adt/pool/GenericPool<TT;>;"
    .local p1, pItem:Ljava/lang/Object;,"TT;"
    monitor-enter p0

    if-nez p1, :cond_0

    .line 147
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot recycle null item!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 150
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/andengine/util/adt/pool/GenericPool;->onHandleRecycleItem(Ljava/lang/Object;)V

    .line 152
    iget-object v0, p0, Lorg/andengine/util/adt/pool/GenericPool;->mAvailableItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lorg/andengine/util/adt/pool/GenericPool;->mAvailableItemCountMaximum:I

    if-ge v0, v1, :cond_1

    .line 153
    iget-object v0, p0, Lorg/andengine/util/adt/pool/GenericPool;->mAvailableItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_1
    iget v0, p0, Lorg/andengine/util/adt/pool/GenericPool;->mUnrecycledItemCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/andengine/util/adt/pool/GenericPool;->mUnrecycledItemCount:I

    .line 158
    iget v0, p0, Lorg/andengine/util/adt/pool/GenericPool;->mUnrecycledItemCount:I

    if-gez v0, :cond_2

    .line 159
    const-string v0, "More items recycled than obtained!"

    invoke-static {v0}, Lorg/andengine/util/debug/Debug;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized shufflePoolItems()V
    .locals 1

    .prologue
    .line 164
    .local p0, this:Lorg/andengine/util/adt/pool/GenericPool;,"Lorg/andengine/util/adt/pool/GenericPool<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/andengine/util/adt/pool/GenericPool;->mAvailableItems:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    monitor-exit p0

    return-void

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
