.class enum Lorg/andengine/util/adt/data/operator/DoubleOperator$3;
.super Lorg/andengine/util/adt/data/operator/DoubleOperator;
.source "DoubleOperator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andengine/util/adt/data/operator/DoubleOperator;
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
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/andengine/util/adt/data/operator/DoubleOperator;-><init>(Ljava/lang/String;ILorg/andengine/util/adt/data/operator/DoubleOperator;)V

    .line 1
    return-void
.end method


# virtual methods
.method public check(DD)Z
    .locals 1
    .parameter "pDoubleA"
    .parameter "pDoubleB"

    .prologue
    .line 29
    cmpg-double v0, p1, p3

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
