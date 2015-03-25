.class public abstract Lcom/badlogic/gdx/utils/Pool;
.super Ljava/lang/Object;
.source "Pool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/Pool$Poolable;
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


# instance fields
.field private final freeObjects:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<TT;>;"
        }
    .end annotation
.end field

.field public final max:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    .local p0, this:Lcom/badlogic/gdx/utils/Pool;,"Lcom/badlogic/gdx/utils/Pool<TT;>;"
    const/16 v0, 0x10

    const v1, 0x7fffffff

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/Pool;-><init>(II)V

    .line 29
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "initialCapacity"

    .prologue
    .line 33
    .local p0, this:Lcom/badlogic/gdx/utils/Pool;,"Lcom/badlogic/gdx/utils/Pool<TT;>;"
    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/Pool;-><init>(II)V

    .line 34
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .parameter "initialCapacity"
    .parameter "max"

    .prologue
    .line 37
    .local p0, this:Lcom/badlogic/gdx/utils/Pool;,"Lcom/badlogic/gdx/utils/Pool<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZI)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Pool;->freeObjects:Lcom/badlogic/gdx/utils/Array;

    .line 39
    iput p2, p0, Lcom/badlogic/gdx/utils/Pool;->max:I

    .line 40
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 72
    .local p0, this:Lcom/badlogic/gdx/utils/Pool;,"Lcom/badlogic/gdx/utils/Pool<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Pool;->freeObjects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 73
    return-void
.end method

.method public free(Ljava/lang/Object;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, this:Lcom/badlogic/gdx/utils/Pool;,"Lcom/badlogic/gdx/utils/Pool<TT;>;"
    .local p1, object:Ljava/lang/Object;,"TT;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "object cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Pool;->freeObjects:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/Pool;->max:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/Pool;->freeObjects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 55
    :cond_1
    instance-of v0, p1, Lcom/badlogic/gdx/utils/Pool$Poolable;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/badlogic/gdx/utils/Pool$Poolable;

    .end local p1           #object:Ljava/lang/Object;,"TT;"
    invoke-interface {p1}, Lcom/badlogic/gdx/utils/Pool$Poolable;->reset()V

    .line 56
    :cond_2
    return-void
.end method

.method public freeAll(Lcom/badlogic/gdx/utils/Array;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, this:Lcom/badlogic/gdx/utils/Pool;,"Lcom/badlogic/gdx/utils/Pool<TT;>;"
    .local p1, objects:Lcom/badlogic/gdx/utils/Array;,"Lcom/badlogic/gdx/utils/Array<TT;>;"
    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "object cannot be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 62
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lt v0, v2, :cond_1

    .line 68
    return-void

    .line 63
    :cond_1
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 64
    .local v1, object:Ljava/lang/Object;,"TT;"
    if-nez v1, :cond_3

    .line 62
    .end local v1           #object:Ljava/lang/Object;,"TT;"
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    .restart local v1       #object:Ljava/lang/Object;,"TT;"
    :cond_3
    iget-object v2, p0, Lcom/badlogic/gdx/utils/Pool;->freeObjects:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    iget v3, p0, Lcom/badlogic/gdx/utils/Pool;->max:I

    if-ge v2, v3, :cond_4

    iget-object v2, p0, Lcom/badlogic/gdx/utils/Pool;->freeObjects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 66
    :cond_4
    instance-of v2, v1, Lcom/badlogic/gdx/utils/Pool$Poolable;

    if-eqz v2, :cond_2

    check-cast v1, Lcom/badlogic/gdx/utils/Pool$Poolable;

    .end local v1           #object:Ljava/lang/Object;,"TT;"
    invoke-interface {v1}, Lcom/badlogic/gdx/utils/Pool$Poolable;->reset()V

    goto :goto_1
.end method

.method protected abstract newObject()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public obtain()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, this:Lcom/badlogic/gdx/utils/Pool;,"Lcom/badlogic/gdx/utils/Pool<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Pool;->freeObjects:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Pool;->newObject()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Pool;->freeObjects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
