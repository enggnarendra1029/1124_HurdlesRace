.class public Lorg/andengine/util/animationpack/AnimationPack;
.super Ljava/lang/Object;
.source "AnimationPack.java"


# instance fields
.field private final mAnimationPackTiledTextureRegionLibrary:Lorg/andengine/util/animationpack/AnimationPackTiledTextureRegionLibrary;

.field private final mTexturePackLibrary:Lorg/andengine/util/texturepack/TexturePackLibrary;


# direct methods
.method public constructor <init>(Lorg/andengine/util/texturepack/TexturePackLibrary;Lorg/andengine/util/animationpack/AnimationPackTiledTextureRegionLibrary;)V
    .locals 0
    .parameter "pTexturePackLibrary"
    .parameter "pAnimationPackTiledTextureRegionLibrary"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/andengine/util/animationpack/AnimationPack;->mTexturePackLibrary:Lorg/andengine/util/texturepack/TexturePackLibrary;

    .line 30
    iput-object p2, p0, Lorg/andengine/util/animationpack/AnimationPack;->mAnimationPackTiledTextureRegionLibrary:Lorg/andengine/util/animationpack/AnimationPackTiledTextureRegionLibrary;

    .line 31
    return-void
.end method


# virtual methods
.method public getAnimationPackAnimationDataLibrary()Lorg/andengine/util/animationpack/AnimationPackTiledTextureRegionLibrary;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/andengine/util/animationpack/AnimationPack;->mAnimationPackTiledTextureRegionLibrary:Lorg/andengine/util/animationpack/AnimationPackTiledTextureRegionLibrary;

    return-object v0
.end method

.method public getTexturePackLibrary()Lorg/andengine/util/texturepack/TexturePackLibrary;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lorg/andengine/util/animationpack/AnimationPack;->mTexturePackLibrary:Lorg/andengine/util/texturepack/TexturePackLibrary;

    return-object v0
.end method
