.class Lorg/andengine/util/adt/transformation/TransformationPool$1;
.super Lorg/andengine/util/adt/pool/GenericPool;
.source "TransformationPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andengine/util/adt/transformation/TransformationPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/andengine/util/adt/pool/GenericPool",
        "<",
        "Lorg/andengine/util/adt/transformation/Transformation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lorg/andengine/util/adt/pool/GenericPool;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method protected bridge synthetic onAllocatePoolItem()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/util/adt/transformation/TransformationPool$1;->onAllocatePoolItem()Lorg/andengine/util/adt/transformation/Transformation;

    move-result-object v0

    return-object v0
.end method

.method protected onAllocatePoolItem()Lorg/andengine/util/adt/transformation/Transformation;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lorg/andengine/util/adt/transformation/Transformation;

    invoke-direct {v0}, Lorg/andengine/util/adt/transformation/Transformation;-><init>()V

    return-object v0
.end method
