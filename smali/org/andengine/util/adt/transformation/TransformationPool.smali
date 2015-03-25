.class public Lorg/andengine/util/adt/transformation/TransformationPool;
.super Ljava/lang/Object;
.source "TransformationPool.java"


# static fields
.field private static final POOL:Lorg/andengine/util/adt/pool/GenericPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/andengine/util/adt/pool/GenericPool",
            "<",
            "Lorg/andengine/util/adt/transformation/Transformation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lorg/andengine/util/adt/transformation/TransformationPool$1;

    invoke-direct {v0}, Lorg/andengine/util/adt/transformation/TransformationPool$1;-><init>()V

    sput-object v0, Lorg/andengine/util/adt/transformation/TransformationPool;->POOL:Lorg/andengine/util/adt/pool/GenericPool;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain()Lorg/andengine/util/adt/transformation/Transformation;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lorg/andengine/util/adt/transformation/TransformationPool;->POOL:Lorg/andengine/util/adt/pool/GenericPool;

    invoke-virtual {v0}, Lorg/andengine/util/adt/pool/GenericPool;->obtainPoolItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/andengine/util/adt/transformation/Transformation;

    return-object v0
.end method

.method public static recycle(Lorg/andengine/util/adt/transformation/Transformation;)V
    .locals 1
    .parameter "pTransformation"

    .prologue
    .line 45
    invoke-virtual {p0}, Lorg/andengine/util/adt/transformation/Transformation;->setToIdentity()V

    .line 46
    sget-object v0, Lorg/andengine/util/adt/transformation/TransformationPool;->POOL:Lorg/andengine/util/adt/pool/GenericPool;

    invoke-virtual {v0, p0}, Lorg/andengine/util/adt/pool/GenericPool;->recyclePoolItem(Ljava/lang/Object;)V

    .line 47
    return-void
.end method
