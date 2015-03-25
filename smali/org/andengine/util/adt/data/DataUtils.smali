.class public final Lorg/andengine/util/adt/data/DataUtils;
.super Ljava/lang/Object;
.source "DataUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final unsignedByteToInt(B)I
    .locals 1
    .parameter "pByte"

    .prologue
    .line 34
    and-int/lit16 v0, p0, 0xff

    return v0
.end method
