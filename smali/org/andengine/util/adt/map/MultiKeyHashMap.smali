.class public Lorg/andengine/util/adt/map/MultiKeyHashMap;
.super Ljava/util/HashMap;
.source "MultiKeyHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/HashMap",
        "<",
        "Lorg/andengine/util/adt/map/MultiKey",
        "<TK;>;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x56e8aef2c276d562L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    .local p0, this:Lorg/andengine/util/adt/map/MultiKeyHashMap;,"Lorg/andengine/util/adt/map/MultiKeyHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method private isEqualKey([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 6
    .parameter "pKeysA"
    .parameter "pKeysB"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TK;[TK;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Lorg/andengine/util/adt/map/MultiKeyHashMap;,"Lorg/andengine/util/adt/map/MultiKeyHashMap<TK;TV;>;"
    const/4 v3, 0x0

    .line 56
    array-length v4, p1

    array-length v5, p2

    if-eq v4, v5, :cond_1

    .line 73
    :cond_0
    :goto_0
    return v3

    .line 59
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v4, p1

    if-lt v0, v4, :cond_2

    .line 73
    const/4 v3, 0x1

    goto :goto_0

    .line 60
    :cond_2
    aget-object v1, p1, v0

    .line 61
    .local v1, keyA:Ljava/lang/Object;,"TK;"
    aget-object v2, p2, v0

    .line 62
    .local v2, keyB:Ljava/lang/Object;,"TK;"
    if-nez v1, :cond_4

    .line 63
    if-nez v2, :cond_0

    .line 59
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 67
    :cond_4
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0
.end method


# virtual methods
.method public varargs get([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "pKeys"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TK;)TV;"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, this:Lorg/andengine/util/adt/map/MultiKeyHashMap;,"Lorg/andengine/util/adt/map/MultiKeyHashMap<TK;TV;>;"
    invoke-static {p1}, Lorg/andengine/util/adt/map/MultiKey;->hash([Ljava/lang/Object;)I

    move-result v2

    .line 36
    .local v2, hashCode:I
    invoke-virtual {p0}, Lorg/andengine/util/adt/map/MultiKeyHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 37
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/andengine/util/adt/map/MultiKey<TK;>;TV;>;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 44
    const/4 v4, 0x0

    :goto_0
    return-object v4

    .line 38
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 39
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lorg/andengine/util/adt/map/MultiKey<TK;>;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/andengine/util/adt/map/MultiKey;

    .line 40
    .local v1, entryKey:Lorg/andengine/util/adt/map/MultiKey;,"Lorg/andengine/util/adt/map/MultiKey<TK;>;"
    invoke-virtual {v1}, Lorg/andengine/util/adt/map/MultiKey;->hashCode()I

    move-result v4

    if-ne v4, v2, :cond_0

    invoke-virtual {v1}, Lorg/andengine/util/adt/map/MultiKey;->getKeys()[Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v4, p1}, Lorg/andengine/util/adt/map/MultiKeyHashMap;->isEqualKey([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 41
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    goto :goto_0
.end method
