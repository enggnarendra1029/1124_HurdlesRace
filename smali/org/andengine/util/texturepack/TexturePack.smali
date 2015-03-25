.class public Lorg/andengine/util/texturepack/TexturePack;
.super Ljava/lang/Object;
.source "TexturePack.java"


# instance fields
.field private final mTexture:Lorg/andengine/opengl/texture/ITexture;

.field private final mTexturePackTextureRegionLibrary:Lorg/andengine/util/texturepack/TexturePackTextureRegionLibrary;


# direct methods
.method public constructor <init>(Lorg/andengine/opengl/texture/ITexture;Lorg/andengine/util/texturepack/TexturePackTextureRegionLibrary;)V
    .locals 0
    .parameter "pTexture"
    .parameter "pTexturePackTextureRegionLibrary"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/andengine/util/texturepack/TexturePack;->mTexture:Lorg/andengine/opengl/texture/ITexture;

    .line 29
    iput-object p2, p0, Lorg/andengine/util/texturepack/TexturePack;->mTexturePackTextureRegionLibrary:Lorg/andengine/util/texturepack/TexturePackTextureRegionLibrary;

    .line 30
    return-void
.end method


# virtual methods
.method public getTexture()Lorg/andengine/opengl/texture/ITexture;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lorg/andengine/util/texturepack/TexturePack;->mTexture:Lorg/andengine/opengl/texture/ITexture;

    return-object v0
.end method

.method public getTexturePackTextureRegionLibrary()Lorg/andengine/util/texturepack/TexturePackTextureRegionLibrary;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lorg/andengine/util/texturepack/TexturePack;->mTexturePackTextureRegionLibrary:Lorg/andengine/util/texturepack/TexturePackTextureRegionLibrary;

    return-object v0
.end method

.method public loadTexture()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/andengine/util/texturepack/TexturePack;->mTexture:Lorg/andengine/opengl/texture/ITexture;

    invoke-interface {v0}, Lorg/andengine/opengl/texture/ITexture;->load()V

    .line 50
    return-void
.end method

.method public unloadTexture()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/andengine/util/texturepack/TexturePack;->mTexture:Lorg/andengine/opengl/texture/ITexture;

    invoke-interface {v0}, Lorg/andengine/opengl/texture/ITexture;->unload()V

    .line 54
    return-void
.end method
