.class public Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlasTextureRegionFactory;
.super Ljava/lang/Object;
.source "BuildableTextureAtlasTextureRegionFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFromSource(Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;Z)Lorg/andengine/opengl/texture/region/TextureRegion;
    .locals 7
    .parameter
    .parameter
    .parameter "pRotated"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;",
            "A::",
            "Lorg/andengine/opengl/texture/atlas/ITextureAtlas",
            "<TT;>;>(",
            "Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas",
            "<TT;TA;>;TT;Z)",
            "Lorg/andengine/opengl/texture/region/TextureRegion;"
        }
    .end annotation

    .prologue
    .local p0, pBuildableTextureAtlas:Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;,"Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas<TT;TA;>;"
    .local p1, pTextureAtlasSource:Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;,"TT;"
    const/4 v2, 0x0

    .line 52
    new-instance v0, Lorg/andengine/opengl/texture/region/TextureRegion;

    invoke-interface {p1}, Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;->getTextureWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-interface {p1}, Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;->getTextureHeight()I

    move-result v1

    int-to-float v5, v1

    move-object v1, p0

    move v3, v2

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/andengine/opengl/texture/region/TextureRegion;-><init>(Lorg/andengine/opengl/texture/ITexture;FFFFZ)V

    .line 53
    .local v0, textureRegion:Lorg/andengine/opengl/texture/region/TextureRegion;
    new-instance v1, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlasTextureRegionFactory$1;

    invoke-direct {v1, v0}, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlasTextureRegionFactory$1;-><init>(Lorg/andengine/opengl/texture/region/TextureRegion;)V

    invoke-virtual {p0, p1, v1}, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->addTextureAtlasSource(Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;Lorg/andengine/util/call/Callback;)V

    .line 59
    return-object v0
.end method

.method public static createTiledFromSource(Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;II)Lorg/andengine/opengl/texture/region/TiledTextureRegion;
    .locals 8
    .parameter
    .parameter
    .parameter "pTileColumns"
    .parameter "pTileRows"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;",
            "A::",
            "Lorg/andengine/opengl/texture/atlas/ITextureAtlas",
            "<TT;>;>(",
            "Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas",
            "<TT;TA;>;TT;II)",
            "Lorg/andengine/opengl/texture/region/TiledTextureRegion;"
        }
    .end annotation

    .prologue
    .local p0, pBuildableTextureAtlas:Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;,"Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas<TT;TA;>;"
    .local p1, pTextureAtlasSource:Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;,"TT;"
    const/4 v1, 0x0

    .line 63
    invoke-interface {p1}, Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;->getTextureWidth()I

    move-result v3

    invoke-interface {p1}, Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;->getTextureHeight()I

    move-result v4

    move-object v0, p0

    move v2, v1

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->create(Lorg/andengine/opengl/texture/ITexture;IIIIII)Lorg/andengine/opengl/texture/region/TiledTextureRegion;

    move-result-object v7

    .line 64
    .local v7, tiledTextureRegion:Lorg/andengine/opengl/texture/region/TiledTextureRegion;
    new-instance v0, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlasTextureRegionFactory$2;

    invoke-direct {v0, p1, p2, p3, v7}, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlasTextureRegionFactory$2;-><init>(Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;IILorg/andengine/opengl/texture/region/TiledTextureRegion;)V

    invoke-virtual {p0, p1, v0}, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->addTextureAtlasSource(Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;Lorg/andengine/util/call/Callback;)V

    .line 82
    return-object v7
.end method
