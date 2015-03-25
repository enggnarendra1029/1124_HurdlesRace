.class public Lorg/andengine/util/ProbabilityGenerator;
.super Ljava/lang/Object;
.source "ProbabilityGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/andengine/util/ProbabilityGenerator$Entry;
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
.field private final mEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/andengine/util/ProbabilityGenerator$Entry",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private mProbabilitySum:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    .local p0, this:Lorg/andengine/util/ProbabilityGenerator;,"Lorg/andengine/util/ProbabilityGenerator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/andengine/util/ProbabilityGenerator;->mEntries:Ljava/util/ArrayList;

    .line 15
    return-void
.end method


# virtual methods
.method public varargs add(F[Ljava/lang/Object;)V
    .locals 2
    .parameter "pFactor"
    .parameter "pElements"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F[TT;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, this:Lorg/andengine/util/ProbabilityGenerator;,"Lorg/andengine/util/ProbabilityGenerator<TT;>;"
    iget v0, p0, Lorg/andengine/util/ProbabilityGenerator;->mProbabilitySum:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/andengine/util/ProbabilityGenerator;->mProbabilitySum:F

    .line 45
    iget-object v0, p0, Lorg/andengine/util/ProbabilityGenerator;->mEntries:Ljava/util/ArrayList;

    new-instance v1, Lorg/andengine/util/ProbabilityGenerator$Entry;

    invoke-direct {v1, p1, p2}, Lorg/andengine/util/ProbabilityGenerator$Entry;-><init>(F[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 66
    .local p0, this:Lorg/andengine/util/ProbabilityGenerator;,"Lorg/andengine/util/ProbabilityGenerator<TT;>;"
    const/4 v0, 0x0

    iput v0, p0, Lorg/andengine/util/ProbabilityGenerator;->mProbabilitySum:F

    .line 67
    iget-object v0, p0, Lorg/andengine/util/ProbabilityGenerator;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 68
    return-void
.end method

.method public next()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .local p0, this:Lorg/andengine/util/ProbabilityGenerator;,"Lorg/andengine/util/ProbabilityGenerator<TT;>;"
    const/4 v6, 0x0

    .line 49
    iget v5, p0, Lorg/andengine/util/ProbabilityGenerator;->mProbabilitySum:F

    invoke-static {v6, v5}, Lorg/andengine/util/math/MathUtils;->random(FF)F

    move-result v4

    .line 51
    .local v4, random:F
    iget-object v1, p0, Lorg/andengine/util/ProbabilityGenerator;->mEntries:Ljava/util/ArrayList;

    .line 53
    .local v1, factors:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/andengine/util/ProbabilityGenerator$Entry<TT;>;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, i:I
    :goto_0
    if-gez v2, :cond_0

    .line 61
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/andengine/util/ProbabilityGenerator$Entry;

    .line 62
    .local v3, lastEntry:Lorg/andengine/util/ProbabilityGenerator$Entry;,"Lorg/andengine/util/ProbabilityGenerator$Entry<TT;>;"
    invoke-virtual {v3}, Lorg/andengine/util/ProbabilityGenerator$Entry;->getReturnValue()Ljava/lang/Object;

    move-result-object v5

    .end local v3           #lastEntry:Lorg/andengine/util/ProbabilityGenerator$Entry;,"Lorg/andengine/util/ProbabilityGenerator$Entry<TT;>;"
    :goto_1
    return-object v5

    .line 54
    :cond_0
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/andengine/util/ProbabilityGenerator$Entry;

    .line 55
    .local v0, entry:Lorg/andengine/util/ProbabilityGenerator$Entry;,"Lorg/andengine/util/ProbabilityGenerator$Entry<TT;>;"
    iget v5, v0, Lorg/andengine/util/ProbabilityGenerator$Entry;->mFactor:F

    sub-float/2addr v4, v5

    .line 56
    cmpg-float v5, v4, v6

    if-gtz v5, :cond_1

    .line 57
    invoke-virtual {v0}, Lorg/andengine/util/ProbabilityGenerator$Entry;->getReturnValue()Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    .line 53
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method
