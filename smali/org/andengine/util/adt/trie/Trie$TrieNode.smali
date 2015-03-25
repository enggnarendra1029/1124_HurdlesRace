.class public Lorg/andengine/util/adt/trie/Trie$TrieNode;
.super Ljava/lang/Object;
.source "Trie.java"

# interfaces
.implements Lorg/andengine/util/adt/trie/ITrie;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andengine/util/adt/trie/Trie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrieNode"
.end annotation


# instance fields
.field private mChildren:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/andengine/util/adt/trie/Trie$TrieNode;",
            ">;"
        }
    .end annotation
.end field

.field private mWordEndFlag:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/andengine/util/adt/trie/Trie$TrieNode;-><init>(Z)V

    .line 83
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .parameter "pWordEndFlag"

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-boolean p1, p0, Lorg/andengine/util/adt/trie/Trie$TrieNode;->mWordEndFlag:Z

    .line 87
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "pCharSequence"

    .prologue
    .line 103
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 104
    .local v0, length:I
    if-nez v0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 108
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/andengine/util/adt/trie/Trie$TrieNode;->add(Ljava/lang/CharSequence;II)V

    goto :goto_0
.end method

.method public add(Ljava/lang/CharSequence;II)V
    .locals 4
    .parameter "pCharSequence"
    .parameter "pStart"
    .parameter "pEnd"

    .prologue
    .line 113
    iget-object v2, p0, Lorg/andengine/util/adt/trie/Trie$TrieNode;->mChildren:Landroid/util/SparseArray;

    if-nez v2, :cond_0

    .line 114
    new-instance v2, Landroid/util/SparseArray;

    const/16 v3, 0x1a

    invoke-direct {v2, v3}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v2, p0, Lorg/andengine/util/adt/trie/Trie$TrieNode;->mChildren:Landroid/util/SparseArray;

    .line 116
    :cond_0
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 118
    .local v0, character:C
    iget-object v2, p0, Lorg/andengine/util/adt/trie/Trie$TrieNode;->mChildren:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/andengine/util/adt/trie/Trie$TrieNode;

    .line 119
    .local v1, child:Lorg/andengine/util/adt/trie/Trie$TrieNode;
    if-nez v1, :cond_1

    .line 120
    new-instance v1, Lorg/andengine/util/adt/trie/Trie$TrieNode;

    .end local v1           #child:Lorg/andengine/util/adt/trie/Trie$TrieNode;
    invoke-direct {v1}, Lorg/andengine/util/adt/trie/Trie$TrieNode;-><init>()V

    .line 121
    .restart local v1       #child:Lorg/andengine/util/adt/trie/Trie$TrieNode;
    iget-object v2, p0, Lorg/andengine/util/adt/trie/Trie$TrieNode;->mChildren:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 124
    :cond_1
    add-int/lit8 v2, p3, -0x1

    if-ge p2, v2, :cond_2

    .line 125
    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, p1, v2, p3}, Lorg/andengine/util/adt/trie/Trie$TrieNode;->add(Ljava/lang/CharSequence;II)V

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/andengine/util/adt/trie/Trie$TrieNode;->mWordEndFlag:Z

    goto :goto_0
.end method

.method public contains(Ljava/lang/CharSequence;)Z
    .locals 2
    .parameter "pCharSequence"

    .prologue
    .line 133
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 134
    .local v0, length:I
    if-nez v0, :cond_0

    .line 135
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 137
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/andengine/util/adt/trie/Trie$TrieNode;->contains(Ljava/lang/CharSequence;II)Z

    move-result v1

    return v1
.end method

.method public contains(Ljava/lang/CharSequence;II)Z
    .locals 4
    .parameter "pCharSequence"
    .parameter "pStart"
    .parameter "pEnd"

    .prologue
    const/4 v2, 0x0

    .line 142
    iget-object v3, p0, Lorg/andengine/util/adt/trie/Trie$TrieNode;->mChildren:Landroid/util/SparseArray;

    if-nez v3, :cond_1

    .line 154
    :cond_0
    :goto_0
    return v2

    .line 146
    :cond_1
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 147
    .local v0, character:C
    iget-object v3, p0, Lorg/andengine/util/adt/trie/Trie$TrieNode;->mChildren:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/andengine/util/adt/trie/Trie$TrieNode;

    .line 148
    .local v1, child:Lorg/andengine/util/adt/trie/Trie$TrieNode;
    if-eqz v1, :cond_0

    .line 151
    add-int/lit8 v2, p3, -0x1

    if-ge p2, v2, :cond_2

    .line 152
    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, p1, v2, p3}, Lorg/andengine/util/adt/trie/Trie$TrieNode;->contains(Ljava/lang/CharSequence;II)Z

    move-result v2

    goto :goto_0

    .line 154
    :cond_2
    iget-boolean v2, v1, Lorg/andengine/util/adt/trie/Trie$TrieNode;->mWordEndFlag:Z

    goto :goto_0
.end method
