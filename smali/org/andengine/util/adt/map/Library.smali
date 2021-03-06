.class public Lorg/andengine/util/adt/map/Library;
.super Ljava/lang/Object;
.source "Library.java"


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
.field protected final mItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    .local p0, this:Lorg/andengine/util/adt/map/Library;,"Lorg/andengine/util/adt/map/Library<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/andengine/util/adt/map/Library;->mItems:Landroid/util/SparseArray;

    .line 30
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "pInitialCapacity"

    .prologue
    .line 32
    .local p0, this:Lorg/andengine/util/adt/map/Library;,"Lorg/andengine/util/adt/map/Library<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, p1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lorg/andengine/util/adt/map/Library;->mItems:Landroid/util/SparseArray;

    .line 34
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 58
    .local p0, this:Lorg/andengine/util/adt/map/Library;,"Lorg/andengine/util/adt/map/Library<TT;>;"
    iget-object v0, p0, Lorg/andengine/util/adt/map/Library;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 59
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .parameter "pID"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, this:Lorg/andengine/util/adt/map/Library;,"Lorg/andengine/util/adt/map/Library<TT;>;"
    iget-object v0, p0, Lorg/andengine/util/adt/map/Library;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(ILjava/lang/Object;)V
    .locals 4
    .parameter "pID"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, this:Lorg/andengine/util/adt/map/Library;,"Lorg/andengine/util/adt/map/Library<TT;>;"
    .local p2, pItem:Ljava/lang/Object;,"TT;"
    iget-object v1, p0, Lorg/andengine/util/adt/map/Library;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 46
    .local v0, item:Ljava/lang/Object;,"TT;"
    if-nez v0, :cond_0

    .line 47
    iget-object v1, p0, Lorg/andengine/util/adt/map/Library;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    return-void

    .line 49
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ID: \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is already associated with item: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public remove(I)V
    .locals 1
    .parameter "pID"

    .prologue
    .line 54
    .local p0, this:Lorg/andengine/util/adt/map/Library;,"Lorg/andengine/util/adt/map/Library<TT;>;"
    iget-object v0, p0, Lorg/andengine/util/adt/map/Library;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 55
    return-void
.end method
