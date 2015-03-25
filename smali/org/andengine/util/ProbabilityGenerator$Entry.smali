.class Lorg/andengine/util/ProbabilityGenerator$Entry;
.super Ljava/lang/Object;
.source "ProbabilityGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andengine/util/ProbabilityGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Entry"
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
.field public final mData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field public final mFactor:F


# direct methods
.method public varargs constructor <init>(F[Ljava/lang/Object;)V
    .locals 0
    .parameter "pFactor"
    .parameter "pData"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F[TT;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, this:Lorg/andengine/util/ProbabilityGenerator$Entry;,"Lorg/andengine/util/ProbabilityGenerator<TT;>.Entry<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput p1, p0, Lorg/andengine/util/ProbabilityGenerator$Entry;->mFactor:F

    .line 92
    iput-object p2, p0, Lorg/andengine/util/ProbabilityGenerator$Entry;->mData:[Ljava/lang/Object;

    .line 93
    return-void
.end method


# virtual methods
.method public getReturnValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, this:Lorg/andengine/util/ProbabilityGenerator$Entry;,"Lorg/andengine/util/ProbabilityGenerator<TT;>.Entry<TT;>;"
    iget-object v0, p0, Lorg/andengine/util/ProbabilityGenerator$Entry;->mData:[Ljava/lang/Object;

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 101
    iget-object v0, p0, Lorg/andengine/util/ProbabilityGenerator$Entry;->mData:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 103
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/andengine/util/ProbabilityGenerator$Entry;->mData:[Ljava/lang/Object;

    invoke-static {v0}, Lorg/andengine/util/adt/array/ArrayUtils;->random([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
