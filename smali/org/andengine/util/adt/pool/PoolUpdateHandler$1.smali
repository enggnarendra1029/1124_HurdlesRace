.class Lorg/andengine/util/adt/pool/PoolUpdateHandler$1;
.super Lorg/andengine/util/adt/pool/Pool;
.source "PoolUpdateHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/andengine/util/adt/pool/PoolUpdateHandler;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/andengine/util/adt/pool/Pool",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/andengine/util/adt/pool/PoolUpdateHandler;


# direct methods
.method constructor <init>(Lorg/andengine/util/adt/pool/PoolUpdateHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/andengine/util/adt/pool/PoolUpdateHandler$1;->this$0:Lorg/andengine/util/adt/pool/PoolUpdateHandler;

    .line 34
    invoke-direct {p0}, Lorg/andengine/util/adt/pool/Pool;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic onAllocatePoolItem()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/util/adt/pool/PoolUpdateHandler$1;->onAllocatePoolItem()Lorg/andengine/util/adt/pool/PoolItem;

    move-result-object v0

    return-object v0
.end method

.method protected onAllocatePoolItem()Lorg/andengine/util/adt/pool/PoolItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lorg/andengine/util/adt/pool/PoolUpdateHandler$1;->this$0:Lorg/andengine/util/adt/pool/PoolUpdateHandler;

    invoke-virtual {v0}, Lorg/andengine/util/adt/pool/PoolUpdateHandler;->onAllocatePoolItem()Lorg/andengine/util/adt/pool/PoolItem;

    move-result-object v0

    return-object v0
.end method
