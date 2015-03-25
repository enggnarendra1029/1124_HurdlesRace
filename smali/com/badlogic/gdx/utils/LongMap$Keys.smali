.class public Lcom/badlogic/gdx/utils/LongMap$Keys;
.super Lcom/badlogic/gdx/utils/LongMap$MapIterator;
.source "LongMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/LongMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Keys"
.end annotation


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/LongMap;)V
    .locals 0
    .parameter "map"

    .prologue
    .line 687
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/LongMap$MapIterator;-><init>(Lcom/badlogic/gdx/utils/LongMap;)V

    .line 688
    return-void
.end method


# virtual methods
.method public next()J
    .locals 4

    .prologue
    .line 691
    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap$Keys;->nextIndex:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const-wide/16 v0, 0x0

    .line 692
    .local v0, key:J
    :goto_0
    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap$Keys;->nextIndex:I

    iput v2, p0, Lcom/badlogic/gdx/utils/LongMap$Keys;->currentIndex:I

    .line 693
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/LongMap$Keys;->findNextIndex()V

    .line 694
    return-wide v0

    .line 691
    .end local v0           #key:J
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongMap$Keys;->map:Lcom/badlogic/gdx/utils/LongMap;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    iget v3, p0, Lcom/badlogic/gdx/utils/LongMap$Keys;->nextIndex:I

    aget-wide v0, v2, v3

    goto :goto_0
.end method

.method public bridge synthetic remove()V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0}, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->remove()V

    return-void
.end method

.method public bridge synthetic reset()V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0}, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->reset()V

    return-void
.end method

.method public toArray()Lcom/badlogic/gdx/utils/LongArray;
    .locals 3

    .prologue
    .line 699
    new-instance v0, Lcom/badlogic/gdx/utils/LongArray;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongMap$Keys;->map:Lcom/badlogic/gdx/utils/LongMap;

    iget v2, v2, Lcom/badlogic/gdx/utils/LongMap;->size:I

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/LongArray;-><init>(ZI)V

    .line 700
    .local v0, array:Lcom/badlogic/gdx/utils/LongArray;
    :goto_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/LongMap$Keys;->hasNext:Z

    if-nez v1, :cond_0

    .line 702
    return-object v0

    .line 701
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/LongMap$Keys;->next()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/LongArray;->add(J)V

    goto :goto_0
.end method
