.class Lorg/andengine/entity/ZIndexSorter$1;
.super Ljava/lang/Object;
.source "ZIndexSorter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andengine/entity/ZIndexSorter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/andengine/entity/IEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/andengine/entity/ZIndexSorter;


# direct methods
.method constructor <init>(Lorg/andengine/entity/ZIndexSorter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/andengine/entity/ZIndexSorter$1;->this$0:Lorg/andengine/entity/ZIndexSorter;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lorg/andengine/entity/IEntity;

    check-cast p2, Lorg/andengine/entity/IEntity;

    invoke-virtual {p0, p1, p2}, Lorg/andengine/entity/ZIndexSorter$1;->compare(Lorg/andengine/entity/IEntity;Lorg/andengine/entity/IEntity;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/andengine/entity/IEntity;Lorg/andengine/entity/IEntity;)I
    .locals 2
    .parameter "pEntityA"
    .parameter "pEntityB"

    .prologue
    .line 30
    invoke-interface {p1}, Lorg/andengine/entity/IEntity;->getZIndex()I

    move-result v0

    invoke-interface {p2}, Lorg/andengine/entity/IEntity;->getZIndex()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
