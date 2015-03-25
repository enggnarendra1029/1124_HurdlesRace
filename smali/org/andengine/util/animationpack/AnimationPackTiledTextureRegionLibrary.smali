.class public Lorg/andengine/util/animationpack/AnimationPackTiledTextureRegionLibrary;
.super Ljava/lang/Object;
.source "AnimationPackTiledTextureRegionLibrary.java"


# instance fields
.field private final mAnimationPackTiledTextureRegionMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/andengine/util/animationpack/AnimationPackTiledTextureRegion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/andengine/util/animationpack/AnimationPackTiledTextureRegionLibrary;->mAnimationPackTiledTextureRegionMapping:Ljava/util/HashMap;

    .line 11
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lorg/andengine/util/animationpack/AnimationPackTiledTextureRegion;
    .locals 1
    .parameter "pAnimationName"

    .prologue
    .line 43
    iget-object v0, p0, Lorg/andengine/util/animationpack/AnimationPackTiledTextureRegionLibrary;->mAnimationPackTiledTextureRegionMapping:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/andengine/util/animationpack/AnimationPackTiledTextureRegion;

    return-object v0
.end method

.method public put(Lorg/andengine/util/animationpack/AnimationPackTiledTextureRegion;)V
    .locals 2
    .parameter "pAnimationPackTiledTextureRegion"

    .prologue
    .line 39
    iget-object v0, p0, Lorg/andengine/util/animationpack/AnimationPackTiledTextureRegionLibrary;->mAnimationPackTiledTextureRegionMapping:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/andengine/util/animationpack/AnimationPackTiledTextureRegion;->getAnimationName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    return-void
.end method
