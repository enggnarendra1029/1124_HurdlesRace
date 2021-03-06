.class public Lorg/andengine/util/adt/map/MultiKey;
.super Ljava/lang/Object;
.source "MultiKey.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mCachedHashCode:I

.field private final mKeys:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Ljava/lang/Object;)V
    .locals 1
    .parameter "pKeys"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TK;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, this:Lorg/andengine/util/adt/map/MultiKey;,"Lorg/andengine/util/adt/map/MultiKey<TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/andengine/util/adt/map/MultiKey;->mKeys:[Ljava/lang/Object;

    .line 31
    invoke-static {p1}, Lorg/andengine/util/adt/map/MultiKey;->hash([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lorg/andengine/util/adt/map/MultiKey;->mCachedHashCode:I

    .line 32
    return-void
.end method

.method public static varargs hash([Ljava/lang/Object;)I
    .locals 5
    .parameter "pKeys"

    .prologue
    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, hashCode:I
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 65
    return v0

    .line 60
    :cond_0
    aget-object v1, p0, v2

    .line 61
    .local v1, key:Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 62
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    xor-int/2addr v0, v4

    .line 60
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "pOther"

    .prologue
    .line 48
    .local p0, this:Lorg/andengine/util/adt/map/MultiKey;,"Lorg/andengine/util/adt/map/MultiKey<TK;>;"
    if-ne p1, p0, :cond_0

    .line 49
    const/4 v1, 0x1

    .line 55
    :goto_0
    return v1

    .line 51
    :cond_0
    instance-of v1, p1, Lorg/andengine/util/adt/map/MultiKey;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 52
    check-cast v0, Lorg/andengine/util/adt/map/MultiKey;

    .line 53
    .local v0, otherMultiKey:Lorg/andengine/util/adt/map/MultiKey;,"Lorg/andengine/util/adt/map/MultiKey<*>;"
    iget-object v1, p0, Lorg/andengine/util/adt/map/MultiKey;->mKeys:[Ljava/lang/Object;

    iget-object v2, v0, Lorg/andengine/util/adt/map/MultiKey;->mKeys:[Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 55
    .end local v0           #otherMultiKey:Lorg/andengine/util/adt/map/MultiKey;,"Lorg/andengine/util/adt/map/MultiKey<*>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getKey(I)Ljava/lang/Object;
    .locals 1
    .parameter "pIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, this:Lorg/andengine/util/adt/map/MultiKey;,"Lorg/andengine/util/adt/map/MultiKey<TK;>;"
    iget-object v0, p0, Lorg/andengine/util/adt/map/MultiKey;->mKeys:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getKeys()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TK;"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, this:Lorg/andengine/util/adt/map/MultiKey;,"Lorg/andengine/util/adt/map/MultiKey<TK;>;"
    iget-object v0, p0, Lorg/andengine/util/adt/map/MultiKey;->mKeys:[Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 71
    .local p0, this:Lorg/andengine/util/adt/map/MultiKey;,"Lorg/andengine/util/adt/map/MultiKey<TK;>;"
    iget v0, p0, Lorg/andengine/util/adt/map/MultiKey;->mCachedHashCode:I

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 88
    .local p0, this:Lorg/andengine/util/adt/map/MultiKey;,"Lorg/andengine/util/adt/map/MultiKey<TK;>;"
    iget-object v0, p0, Lorg/andengine/util/adt/map/MultiKey;->mKeys:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    .local p0, this:Lorg/andengine/util/adt/map/MultiKey;,"Lorg/andengine/util/adt/map/MultiKey<TK;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MultiKey"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/andengine/util/adt/map/MultiKey;->mKeys:[Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
