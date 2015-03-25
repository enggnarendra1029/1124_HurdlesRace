.class enum Lorg/andengine/util/adt/data/operator/StringOperator$5;
.super Lorg/andengine/util/adt/data/operator/StringOperator;
.source "StringOperator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andengine/util/adt/data/operator/StringOperator;
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

    invoke-direct {p0, p1, p2, v0}, Lorg/andengine/util/adt/data/operator/StringOperator;-><init>(Ljava/lang/String;ILorg/andengine/util/adt/data/operator/StringOperator;)V

    .line 1
    return-void
.end method


# virtual methods
.method public check(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "pStringA"
    .parameter "pStringB"

    .prologue
    .line 41
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
