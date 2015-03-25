.class public Lorg/andengine/util/texturepack/TexturePackLibrary;
.super Ljava/lang/Object;
.source "TexturePackLibrary.java"


# instance fields
.field private final mTexturePackMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/andengine/util/texturepack/TexturePack;",
            ">;"
        }
    .end annotation
.end field

.field private final mTexturePackTextureRegionSourceMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/andengine/util/texturepack/TexturePackTextureRegion;",
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

    iput-object v0, p0, Lorg/andengine/util/texturepack/TexturePackLibrary;->mTexturePackMapping:Ljava/util/HashMap;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/andengine/util/texturepack/TexturePackLibrary;->mTexturePackTextureRegionSourceMapping:Ljava/util/HashMap;

    .line 11
    return-void
.end method


# virtual methods
.method public getTexturePackTextureRegion(Ljava/lang/String;)Lorg/andengine/util/texturepack/TexturePackTextureRegion;
    .locals 1
    .parameter "pTexturePackTextureRegionSource"

    .prologue
    .line 45
    iget-object v0, p0, Lorg/andengine/util/texturepack/TexturePackLibrary;->mTexturePackTextureRegionSourceMapping:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/andengine/util/texturepack/TexturePackTextureRegion;

    return-object v0
.end method

.method public put(Ljava/lang/String;Lorg/andengine/util/texturepack/TexturePack;)V
    .locals 2
    .parameter "pID"
    .parameter "pTexturePack"

    .prologue
    .line 36
    iget-object v0, p0, Lorg/andengine/util/texturepack/TexturePackLibrary;->mTexturePackMapping:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v0, p0, Lorg/andengine/util/texturepack/TexturePackLibrary;->mTexturePackTextureRegionSourceMapping:Ljava/util/HashMap;

    invoke-virtual {p2}, Lorg/andengine/util/texturepack/TexturePack;->getTexturePackTextureRegionLibrary()Lorg/andengine/util/texturepack/TexturePackTextureRegionLibrary;

    move-result-object v1

    invoke-virtual {v1}, Lorg/andengine/util/texturepack/TexturePackTextureRegionLibrary;->getSourceMapping()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 38
    return-void
.end method
