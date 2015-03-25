.class public Lorg/andengine/util/animationpack/AnimationPackTiledTextureRegion;
.super Lorg/andengine/opengl/texture/region/TiledTextureRegion;
.source "AnimationPackTiledTextureRegion.java"


# instance fields
.field private final mAnimationData:Lorg/andengine/entity/sprite/AnimationData;

.field private final mAnimationName:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[JILorg/andengine/opengl/texture/ITexture;[Lorg/andengine/opengl/texture/region/ITextureRegion;)V
    .locals 4
    .parameter "pAnimationName"
    .parameter "pFrameDurations"
    .parameter "pLoopCount"
    .parameter "pTexture"
    .parameter "pTextureRegions"

    .prologue
    .line 31
    invoke-direct {p0, p4, p5}, Lorg/andengine/opengl/texture/region/TiledTextureRegion;-><init>(Lorg/andengine/opengl/texture/ITexture;[Lorg/andengine/opengl/texture/region/ITextureRegion;)V

    .line 33
    iput-object p1, p0, Lorg/andengine/util/animationpack/AnimationPackTiledTextureRegion;->mAnimationName:Ljava/lang/String;

    .line 34
    array-length v0, p2

    .line 36
    .local v0, frameCount:I
    new-array v1, v0, [I

    .line 37
    .local v1, frames:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v0, :cond_0

    .line 41
    new-instance v3, Lorg/andengine/entity/sprite/AnimationData;

    invoke-direct {v3, p2, v1, p3}, Lorg/andengine/entity/sprite/AnimationData;-><init>([J[II)V

    iput-object v3, p0, Lorg/andengine/util/animationpack/AnimationPackTiledTextureRegion;->mAnimationData:Lorg/andengine/entity/sprite/AnimationData;

    .line 42
    return-void

    .line 38
    :cond_0
    aput v2, v1, v2

    .line 37
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getAnimationData()Lorg/andengine/entity/sprite/AnimationData;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/andengine/util/animationpack/AnimationPackTiledTextureRegion;->mAnimationData:Lorg/andengine/entity/sprite/AnimationData;

    return-object v0
.end method

.method public getAnimationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/andengine/util/animationpack/AnimationPackTiledTextureRegion;->mAnimationName:Ljava/lang/String;

    return-object v0
.end method
