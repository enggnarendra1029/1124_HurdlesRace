.class Lorg/andengine/extension/physics/box2d/util/Vector2Pool$1;
.super Lorg/andengine/util/adt/pool/GenericPool;
.source "Vector2Pool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andengine/extension/physics/box2d/util/Vector2Pool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/andengine/util/adt/pool/GenericPool",
        "<",
        "Lcom/badlogic/gdx/math/Vector2;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/andengine/util/adt/pool/GenericPool;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method protected onAllocatePoolItem()Lcom/badlogic/gdx/math/Vector2;
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic onAllocatePoolItem()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/extension/physics/box2d/util/Vector2Pool$1;->onAllocatePoolItem()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method
