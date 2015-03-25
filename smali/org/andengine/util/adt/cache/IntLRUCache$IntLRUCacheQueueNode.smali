.class Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;
.super Ljava/lang/Object;
.source "IntLRUCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andengine/util/adt/cache/IntLRUCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IntLRUCacheQueueNode"
.end annotation


# instance fields
.field mKey:I

.field mNext:Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;

.field mPrevious:Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
