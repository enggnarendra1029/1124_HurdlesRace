.class public Lorg/andengine/opengl/texture/region/TextureRegionFactory;
.super Ljava/lang/Object;
.source "TextureRegionFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFromSource(Lorg/andengine/opengl/texture/atlas/ITextureAtlas;Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;II)Lorg/andengine/opengl/texture/region/TextureRegion;
    .locals 1
    .parameter
    .parameter
    .parameter "pTextureX"
    .parameter "pTextureY"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;",
            ">(",
            "Lorg/andengine/opengl/texture/atlas/ITextureAtlas",
            "<TT;>;TT;II)",
            "Lorg/andengine/opengl/texture/region/TextureRegion;"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, pTextureAtlas:Lorg/andengine/opengl/texture/atlas/ITextureAtlas;,"Lorg/andengine/opengl/texture/atlas/ITextureAtlas<TT;>;"
    .local p1, pTextureAtlasSource:Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;,"TT;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/andengine/opengl/texture/region/TextureRegionFactory;->createFromSource(Lorg/andengine/opengl/texture/atlas/ITextureAtlas;Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;IIZ)Lorg/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public static createFromSource(Lorg/andengine/opengl/texture/atlas/ITextureAtlas;Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;IIZ)Lorg/andengine/opengl/texture/region/TextureRegion;
    .locals 7
    .parameter
    .parameter
    .parameter "pTextureX"
    .parameter "pTextureY"
    .parameter "pRotated"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;",
            ">(",
            "Lorg/andengine/opengl/texture/atlas/ITextureAtlas",
            "<TT;>;TT;IIZ)",
            "Lorg/andengine/opengl/texture/region/TextureRegion;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, pTextureAtlas:Lorg/andengine/opengl/texture/atlas/ITextureAtlas;,"Lorg/andengine/opengl/texture/atlas/ITextureAtlas<TT;>;"
    .local p1, pTextureAtlasSource:Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;,"TT;"
    new-instance v0, Lorg/andengine/opengl/texture/region/TextureRegion;

    int-to-float v2, p2

    int-to-float v3, p3

    invoke-interface {p1}, Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;->getTextureWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-interface {p1}, Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;->getTextureHeight()I

    move-result v1

    int-to-float v5, v1

    move-object v1, p0

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/andengine/opengl/texture/region/TextureRegion;-><init>(Lorg/andengine/opengl/texture/ITexture;FFFFZ)V

    .line 71
    .local v0, textureRegion:Lorg/andengine/opengl/texture/region/TextureRegion;
    invoke-interface {p0, p1, p2, p3}, Lorg/andengine/opengl/texture/atlas/ITextureAtlas;->addTextureAtlasSource(Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;II)V

    .line 72
    return-object v0
.end method

.method public static createTiledFromSource(Lorg/andengine/opengl/texture/atlas/ITextureAtlas;Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;IIII)Lorg/andengine/opengl/texture/region/TiledTextureRegion;
    .locals 7
    .parameter
    .parameter
    .parameter "pTextureX"
    .parameter "pTextureY"
    .parameter "pTileColumns"
    .parameter "pTileRows"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;",
            ">(",
            "Lorg/andengine/opengl/texture/atlas/ITextureAtlas",
            "<TT;>;TT;IIII)",
            "Lorg/andengine/opengl/texture/region/TiledTextureRegion;"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, pTextureAtlas:Lorg/andengine/opengl/texture/atlas/ITextureAtlas;,"Lorg/andengine/opengl/texture/atlas/ITextureAtlas<TT;>;"
    .local p1, pTextureAtlasSource:Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;,"TT;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lorg/andengine/opengl/texture/region/TextureRegionFactory;->createTiledFromSource(Lorg/andengine/opengl/texture/atlas/ITextureAtlas;Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;IIIIZ)Lorg/andengine/opengl/texture/region/TiledTextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public static createTiledFromSource(Lorg/andengine/opengl/texture/atlas/ITextureAtlas;Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;IIIIZ)Lorg/andengine/opengl/texture/region/TiledTextureRegion;
    .locals 9
    .parameter
    .parameter
    .parameter "pTextureX"
    .parameter "pTextureY"
    .parameter "pTileColumns"
    .parameter "pTileRows"
    .parameter "pRotated"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;",
            ">(",
            "Lorg/andengine/opengl/texture/atlas/ITextureAtlas",
            "<TT;>;TT;IIIIZ)",
            "Lorg/andengine/opengl/texture/region/TiledTextureRegion;"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, pTextureAtlas:Lorg/andengine/opengl/texture/atlas/ITextureAtlas;,"Lorg/andengine/opengl/texture/atlas/ITextureAtlas<TT;>;"
    .local p1, pTextureAtlasSource:Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;,"TT;"
    invoke-interface {p1}, Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;->getTextureWidth()I

    move-result v3

    invoke-interface {p1}, Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;->getTextureHeight()I

    move-result v4

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->create(Lorg/andengine/opengl/texture/ITexture;IIIIIIZ)Lorg/andengine/opengl/texture/region/TiledTextureRegion;

    move-result-object v8

    .line 81
    .local v8, tiledTextureRegion:Lorg/andengine/opengl/texture/region/TiledTextureRegion;
    invoke-interface {p0, p1, p2, p3}, Lorg/andengine/opengl/texture/atlas/ITextureAtlas;->addTextureAtlasSource(Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;II)V

    .line 82
    return-object v8
.end method

.method public static extractFromTexture(Lorg/andengine/opengl/texture/ITexture;)Lorg/andengine/opengl/texture/region/TextureRegion;
    .locals 1
    .parameter "pTexture"

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/andengine/opengl/texture/region/TextureRegionFactory;->extractFromTexture(Lorg/andengine/opengl/texture/ITexture;Z)Lorg/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public static extractFromTexture(Lorg/andengine/opengl/texture/ITexture;IIII)Lorg/andengine/opengl/texture/region/TextureRegion;
    .locals 6
    .parameter "pTexture"
    .parameter "pTextureX"
    .parameter "pTextureY"
    .parameter "pWidth"
    .parameter "pHeight"

    .prologue
    .line 46
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lorg/andengine/opengl/texture/region/TextureRegionFactory;->extractFromTexture(Lorg/andengine/opengl/texture/ITexture;IIIIZ)Lorg/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public static extractFromTexture(Lorg/andengine/opengl/texture/ITexture;IIIIZ)Lorg/andengine/opengl/texture/region/TextureRegion;
    .locals 7
    .parameter "pTexture"
    .parameter "pTextureX"
    .parameter "pTextureY"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pRotated"

    .prologue
    .line 54
    new-instance v0, Lorg/andengine/opengl/texture/region/TextureRegion;

    int-to-float v2, p1

    int-to-float v3, p2

    int-to-float v4, p3

    int-to-float v5, p4

    move-object v1, p0

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/andengine/opengl/texture/region/TextureRegion;-><init>(Lorg/andengine/opengl/texture/ITexture;FFFFZ)V

    return-object v0
.end method

.method public static extractFromTexture(Lorg/andengine/opengl/texture/ITexture;Z)Lorg/andengine/opengl/texture/region/TextureRegion;
    .locals 7
    .parameter "pTexture"
    .parameter "pRotated"

    .prologue
    const/4 v2, 0x0

    .line 50
    new-instance v0, Lorg/andengine/opengl/texture/region/TextureRegion;

    invoke-interface {p0}, Lorg/andengine/opengl/texture/ITexture;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-interface {p0}, Lorg/andengine/opengl/texture/ITexture;->getHeight()I

    move-result v1

    int-to-float v5, v1

    move-object v1, p0

    move v3, v2

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/andengine/opengl/texture/region/TextureRegion;-><init>(Lorg/andengine/opengl/texture/ITexture;FFFFZ)V

    return-object v0
.end method

.method public static extractTiledFromTexture(Lorg/andengine/opengl/texture/ITexture;II)Lorg/andengine/opengl/texture/region/TiledTextureRegion;
    .locals 7
    .parameter "pTexture"
    .parameter "pTileColumns"
    .parameter "pTileRows"

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-interface {p0}, Lorg/andengine/opengl/texture/ITexture;->getWidth()I

    move-result v3

    invoke-interface {p0}, Lorg/andengine/opengl/texture/ITexture;->getHeight()I

    move-result v4

    move-object v0, p0

    move v2, v1

    move v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->create(Lorg/andengine/opengl/texture/ITexture;IIIIII)Lorg/andengine/opengl/texture/region/TiledTextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public static extractTiledFromTexture(Lorg/andengine/opengl/texture/ITexture;IIIIII)Lorg/andengine/opengl/texture/region/TiledTextureRegion;
    .locals 1
    .parameter "pTexture"
    .parameter "pTextureX"
    .parameter "pTextureY"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pTileColumns"
    .parameter "pTileRows"

    .prologue
    .line 62
    invoke-static/range {p0 .. p6}, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->create(Lorg/andengine/opengl/texture/ITexture;IIIIII)Lorg/andengine/opengl/texture/region/TiledTextureRegion;

    move-result-object v0

    return-object v0
.end method
