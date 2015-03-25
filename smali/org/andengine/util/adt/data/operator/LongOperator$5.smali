.class enum Lorg/andengine/util/adt/data/operator/LongOperator$5;
.super Lorg/andengine/util/adt/data/operator/LongOperator;
.source "LongOperator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andengine/util/adt/data/operator/LongOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4000
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/andengine/util/adt/data/operator/LongOperator;-><init>(Ljava/lang/String;ILorg/andengine/util/adt/data/operator/LongOperator;)V

    .line 1
    return-void
.end method


# virtual methods
.method public check(JJ)Z
    .locals 1
    .parameter "pLongA"
    .parameter "pLongB"

    .prologue
    .line 41
    cmp-long v0, p1, p3

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
