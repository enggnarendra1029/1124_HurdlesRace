.class public Lorg/andengine/util/adt/trie/Trie;
.super Ljava/lang/Object;
.source "Trie.java"

# interfaces
.implements Lorg/andengine/util/adt/trie/ITrie;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/andengine/util/adt/trie/Trie$TrieNode;
    }
.end annotation


# static fields
.field private static final CHILDREN_SIZE_DEFAULT:I = 0x1a


# instance fields
.field private final mRoot:Lorg/andengine/util/adt/trie/Trie$TrieNode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lorg/andengine/util/adt/trie/Trie$TrieNode;

    invoke-direct {v0}, Lorg/andengine/util/adt/trie/Trie$TrieNode;-><init>()V

    iput-object v0, p0, Lorg/andengine/util/adt/trie/Trie;->mRoot:Lorg/andengine/util/adt/trie/Trie$TrieNode;

    .line 11
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "pCharSequence"

    .prologue
    .line 38
    iget-object v0, p0, Lorg/andengine/util/adt/trie/Trie;->mRoot:Lorg/andengine/util/adt/trie/Trie$TrieNode;

    invoke-virtual {v0, p1}, Lorg/andengine/util/adt/trie/Trie$TrieNode;->add(Ljava/lang/CharSequence;)V

    .line 39
    return-void
.end method

.method public add(Ljava/lang/CharSequence;II)V
    .locals 1
    .parameter "pCharSequence"
    .parameter "pStart"
    .parameter "pEnd"

    .prologue
    .line 43
    iget-object v0, p0, Lorg/andengine/util/adt/trie/Trie;->mRoot:Lorg/andengine/util/adt/trie/Trie$TrieNode;

    invoke-virtual {v0, p1, p2, p3}, Lorg/andengine/util/adt/trie/Trie$TrieNode;->add(Ljava/lang/CharSequence;II)V

    .line 44
    return-void
.end method

.method public contains(Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter "pCharSequence"

    .prologue
    .line 48
    iget-object v0, p0, Lorg/andengine/util/adt/trie/Trie;->mRoot:Lorg/andengine/util/adt/trie/Trie$TrieNode;

    invoke-virtual {v0, p1}, Lorg/andengine/util/adt/trie/Trie$TrieNode;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public contains(Ljava/lang/CharSequence;II)Z
    .locals 1
    .parameter "pCharSequence"
    .parameter "pStart"
    .parameter "pEnd"

    .prologue
    .line 53
    iget-object v0, p0, Lorg/andengine/util/adt/trie/Trie;->mRoot:Lorg/andengine/util/adt/trie/Trie$TrieNode;

    invoke-virtual {v0, p1, p2, p3}, Lorg/andengine/util/adt/trie/Trie$TrieNode;->contains(Ljava/lang/CharSequence;II)Z

    move-result v0

    return v0
.end method
