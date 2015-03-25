.class public Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;
.super Ljava/lang/Object;
.source "BitmapTextureAtlasTextureRegionFactory.java"


# static fields
.field private static sAssetBasePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, ""

    sput-object v0, Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->sAssetBasePath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFromAsset(Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;Landroid/content/Context;Ljava/lang/String;II)Lorg/andengine/opengl/texture/region/TextureRegion;
    .locals 1
    .parameter "pBitmapTextureAtlas"
    .parameter "pContext"
    .parameter "pAssetPath"
    .parameter "pTextureX"
    .parameter "pTextureY"

    .prologue
    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {p0, v0, p2, p3, p4}, Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->createFromAsset(Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;Landroid/content/res/AssetManager;Ljava/lang/String;II)Lorg/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public static createFromAsset(Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;Landroid/content/res/AssetManager;Ljava/lang/String;II)Lorg/andengine/opengl/texture/region/TextureRegion;
    .locals 3
    .parameter "pBitmapTextureAtlas"
    .parameter "pAssetManager"
    .parameter "pAssetPath"
    .parameter "pTextureX"
    .parameter "pTextureY"

    .prologue
    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->sAssetBasePath:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;->create(Landroid/content/res/AssetManager;Ljava/lang/String;)Lorg/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;

    move-result-object v0

    .line 83
    .local v0, bitmapTextureAtlasSource:Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;
    invoke-static {p0, v0, p3, p4}, Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->createFromSource(Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;II)Lorg/andengine/opengl/texture/region/TextureRegion;

    move-result-object v1

    return-object v1
.end method

.method public static createFromAsset(Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;Landroid/content/Context;Ljava/lang/String;)Lorg/andengine/opengl/texture/region/TextureRegion;
    .locals 1
    .parameter "pBuildableBitmapTextureAtlas"
    .parameter "pContext"
    .parameter "pAssetPath"

    .prologue
    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->createFromAsset(Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;Landroid/content/res/AssetManager;Ljava/lang/String;)Lorg/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public static createFromAsset(Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;Landroid/content/Context;Ljava/lang/String;Z)Lorg/andengine/opengl/texture/region/TextureRegion;
    .locals 1
    .parameter "pBuildableBitmapTextureAtlas"
    .parameter "pContext"
    .parameter "pAssetPath"
    .parameter "pRotated"

    .prologue
    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->createFromAsset(Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;Landroid/content/res/AssetManager;Ljava/lang/String;Z)Lorg/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public static createFromAsset(Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;Landroid/content/res/AssetManager;Ljava/lang/String;)Lorg/andengine/opengl/texture/region/TextureRegion;
    .locals 1
    .parameter "pBuildableBitmapTextureAtlas"
    .parameter "pAssetManager"
    .parameter "pAssetPath"

    .prologue
    .line 132
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->createFromAsset(Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;Landroid/content/res/AssetManager;Ljava/lang/String;Z)Lorg/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public static createFromAsset(Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;Landroid/content/res/AssetManager;Ljava/lang/String;Z)Lorg/andengine/opengl/texture/region/TextureRegion;
    .locals 3
    .parameter "pBuildableBitmapTextureAtlas"
    .parameter "pAssetManager"
    .parameter "pAssetPath"
    .parameter "pRotated"

    .prologue
    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->sAssetBasePath:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;->create(Landroid/content/res/AssetManager;Ljava/lang/String;)Lorg/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;

    move-result-object v0

    .line 141
    .local v0, bitmapTextureAtlasSource:Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;
    invoke-static {p0, v0, p3}, Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->createFromSource(Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Z)Lorg/andengine/opengl/texture/region/TextureRegion;

    move-result-object v1

    return-object v1
.end method

.method public static createFromResource(Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;Landroid/content/Context;III)Lorg/andengine/opengl/texture/region/TextureRegion;
    .locals 1
    .parameter "pBitmapTextureAtlas"
    .parameter "pContext"
    .parameter "pDrawableResourceID"
    .parameter "pTextureX"
    .parameter "pTextureY"

    .prologue
    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0, v0, p2, p3, p4}, Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->createFromResource(Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;Landroid/content/res/Resources;III)Lorg/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public static createFromResource(Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;Landroid/content/res/Resources;III)Lorg/andengine/opengl/texture/region/TextureRegion;
    .locals 2
    .parameter "pBitmapTextureAtlas"
    .parameter "pResources"
    .parameter "pDrawableResourceID"
    .parameter "pTextureX"
    .parameter "pTextureY"

    .prologue
    .line 101
    invoke-static {p1, p2}, Lorg/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;->create(Landroid/content/res/Resources;I)Lorg/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;

    move-result-object v0

    .line 102
    .local v0, bitmapTextureAtlasSource:Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;
    invoke-static {p0, v0, p3, p4}, Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->createFromSource(Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;II)Lorg/andengine/opengl/texture/region/TextureRegion;

    move-result-object v1

    return-object v1
.end method

.method public static createFromResource(Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;Landroid/content/Context;I)Lorg/andengine/opengl/texture/region/TextureRegion;
    .locals 1
    .parameter "pBuildableBitmapTextureAtlas"
    .parameter "pContext"
    .parameter "pDrawableResourceID"

    .prologue
    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->createFromResource(Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;Landroid/content/res/Resources;I)Lorg/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public static createFromResource(Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;Landroid/content/Context;IZ)Lorg/andengine/opengl/texture/region/TextureRegion;
    .locals 1
    .parameter "pBuildableBitmapTextureAtlas"
    .parameter "pContext"
    .parameter "pDrawableResourceID"
    .parameter "pRotated"

    .prologue
    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->createFromResource(Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;Landroid/content/res/Resources;IZ)Lorg/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public static createFromResource(Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;Landroid/content/res/Resources;I)Lorg/andengine/opengl/texture/region/TextureRegion;
    .locals 1
    .parameter "pBuildableBitmapTextureAtlas"
    .parameter "pResources"
    .parameter "pDrawableResourceID"

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->createFromResource(Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;Landroid/content/res/Resources;IZ)Lorg/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public static createFromResource(Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;Landroid/content/res/Resources;IZ)Lorg/andengine/opengl/texture/region/TextureRegion;
    .locals 2
    .parameter "pBuildableBitmapTextureAtlas"
    .parameter "pResources"
    .parameter "pDrawableResourceID"
    .parameter "pRotated"

    .prologue
    .line 166
    invoke-static {p1, p2}, Lorg/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;->create(Landroid/content/res/Resources;I)Lorg/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;

    move-result-object v0

    .line 167
    .local v0, bitmapTextureAtlasSource:Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;
    invoke-static {p0, v0, p3}, Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->createFromSource(Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Z)Lorg/andengine/opengl/texture/region/TextureRegion;

    move-result-object v1

    return-object v1
.end method

.method public static createFromSource(Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;II)Lorg/andengine/opengl/texture/region/TextureRegion;
    .locals 1
    .parameter "pBitmapTextureAtlas"
    .parameter "pBitmapTextureAtlasSource"
    .parameter "pTextureX"
    .parameter "pTextureY"

    .prologue
    .line 116
    invoke-static {p0, p1, p2, p3}, Lorg/andengine/opengl/texture/region/TextureRegionFactory;->createFromSource(Lorg/andengine/opengl/texture/atlas/ITextureAtlas;Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;II)Lorg/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public static createFromSource(Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;)Lorg/andengine/opengl/texture/region/TextureRegion;
    .locals 1
    .parameter "pBuildableBitmapTextureAtlas"
    .parameter "pBitmapTextureAtlasSource"

    .prologue
    .line 181
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->createFromSource(Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Z)Lorg/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public static createFromSource(Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Z)Lorg/andengine/opengl/texture/region/TextureRegion;
    .locals 1
    .parameter "pBuildableBitmapTextureAtlas"
    .parameter "pBitmapTextureAtlasSource"
    .parameter "pRotated"

    .prologue
    .line 185
    invoke-static {p0, p1, p2}, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlasTextureRegionFactory;->createFromSource(Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;Z)Lorg/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public static createTiledFromAsset(Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;Landroid/content/Context;Ljava/lang/String;IIII)Lorg/andengine/opengl/texture/region/TiledTextureRegion;
    .locals 7
    .parameter "pBitmapTextureAtlas"
    .parameter "pContext"
    .parameter "pAssetPath"
    .parameter "pTextureX"
    .parameter "pTextureY"
    .parameter "pTileColumns"
    .parameter "pTileRows"

    .prologue
    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->createTiledFromAsset(Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;Landroid/content/res/AssetManager;Ljava/lang/String;IIII)Lorg/andengine/opengl/texture/region/TiledTextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public static createTiledFromAsset(Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;Landroid/content/res/AssetManager;Ljava/lang/String;IIII)Lorg/andengine/opengl/texture/region/TiledTextureRegion;
    .locals 6
    .parameter "pBitmapTextureAtlas"
    .parameter "pAssetManager"
    .parameter "pAssetPath"
    .parameter "pTextureX"
    .parameter "pTextureY"
    .parameter "pTileColumns"
    .parameter "pTileRows"

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->sAssetBasePath:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;->create(Landroid/content/res/AssetManager;Ljava/lang/String;)Lorg/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;

    move-result-object v1

    .local v1, bitmapTextureAtlasSource:Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;
    move-object v0, p0

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 92
    invoke-static/range {v0 .. v5}, Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->createTiledFromSource(Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;IIII)Lorg/andengine/opengl/texture/region/TiledTextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public static createTiledFromAsset(Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;Landroid/content/Context;Ljava/lang/String;II)Lorg/andengine/opengl/texture/region/TiledTextureRegion;
    .locals 1
    .parameter "pBuildableBitmapTextureAtlas"
    .parameter "pContext"
    .parameter "pAssetPath"
    .parameter "pTileColumns"
    .parameter "pTileRows"

    .prologue
    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {p0, v0, p2, p3, p4}, Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->createTiledFromAsset(Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;Landroid/content/res/AssetManager;Ljava/lang/String;II)Lorg/andengine/opengl/texture/region/TiledTextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public static createTiledFromAsset(Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;Landroid/content/res/AssetManager;Ljava/lang/String;II)Lorg/andengine/opengl/texture/region/TiledTextureRegion;
    .locals 3
    .parameter "pBuildableBitmapTextureAtlas"
    .parameter "pAssetManager"
    .parameter "pAssetPath"
    .parameter "pTileColumns"
    .parameter "pTileRows"

    .prologue
    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->sAssetBasePath:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;->create(Landroid/content/res/AssetManager;Ljava/lang/String;)Lorg/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;

    move-result-object v0

    .line 150
    .local v0, bitmapTextureAtlasSource:Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;
    invoke-static {p0, v0, p3, p4}, Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->createTiledFromSource(Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;II)Lorg/andengine/opengl/texture/region/TiledTextureRegion;

    move-result-object v1

    return-object v1
.end method

.method public static createTiledFromAssetDirectory(Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;Landroid/content/res/AssetManager;Ljava/lang/String;)Lorg/andengine/opengl/texture/region/TiledTextureRegion;
    .locals 9
    .parameter "pBuildableBitmapTextureAtlas"
    .parameter "pAssetManager"
    .parameter "pAssetSubdirectory"

    .prologue
    .line 203
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->sAssetBasePath:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 207
    .local v3, files:[Ljava/lang/String;
    array-length v2, v3

    .line 208
    .local v2, fileCount:I
    new-array v5, v2, [Lorg/andengine/opengl/texture/region/TextureRegion;

    .line 210
    .local v5, textures:[Lorg/andengine/opengl/texture/region/TextureRegion;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-lt v4, v2, :cond_0

    .line 215
    new-instance v6, Lorg/andengine/opengl/texture/region/TiledTextureRegion;

    invoke-direct {v6, p0, v5}, Lorg/andengine/opengl/texture/region/TiledTextureRegion;-><init>(Lorg/andengine/opengl/texture/ITexture;[Lorg/andengine/opengl/texture/region/ITextureRegion;)V

    return-object v6

    .line 204
    .end local v2           #fileCount:I
    .end local v3           #files:[Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #textures:[Lorg/andengine/opengl/texture/region/TextureRegion;
    :catch_0
    move-exception v1

    .line 205
    .local v1, e:Ljava/io/IOException;
    new-instance v6, Lorg/andengine/util/exception/AndEngineRuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Listing assets subdirectory: \'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->sAssetBasePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' failed. Does it exist?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v1}, Lorg/andengine/util/exception/AndEngineRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 211
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #fileCount:I
    .restart local v3       #files:[Ljava/lang/String;
    .restart local v4       #i:I
    .restart local v5       #textures:[Lorg/andengine/opengl/texture/region/TextureRegion;
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, assetPath:Ljava/lang/String;
    invoke-static {p0, p1, v0}, Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->createFromAsset(Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;Landroid/content/res/AssetManager;Ljava/lang/String;)Lorg/andengine/opengl/texture/region/TextureRegion;

    move-result-object v6

    aput-object v6, v5, v4

    .line 210
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static createTiledFromResource(Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;Landroid/content/Context;IIIII)Lorg/andengine/opengl/texture/region/TiledTextureRegion;
    .locals 7
    .parameter "pBitmapTextureAtlas"
    .parameter "pContext"
    .parameter "pDrawableResourceID"
    .parameter "pTextureX"
    .parameter "pTextureY"
    .parameter "pTileColumns"
    .parameter "pTileRows"

    .prologue
    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->createTiledFromResource(Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;Landroid/content/res/Resources;IIIII)Lorg/andengine/opengl/texture/region/TiledTextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public static createTiledFromResource(Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;Landroid/content/res/Resources;IIIII)Lorg/andengine/opengl/texture/region/TiledTextureRegion;
    .locals 6
    .parameter "pBitmapTextureAtlas"
    .parameter "pResources"
    .parameter "pDrawableResourceID"
    .parameter "pTextureX"
    .parameter "pTextureY"
    .parameter "pTileColumns"
    .parameter "pTileRows"

    .prologue
    .line 110
    invoke-static {p1, p2}, Lorg/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;->create(Landroid/content/res/Resources;I)Lorg/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;

    move-result-object v1

    .local v1, bitmapTextureAtlasSource:Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;
    move-object v0, p0

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 111
    invoke-static/range {v0 .. v5}, Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->createTiledFromSource(Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;IIII)Lorg/andengine/opengl/texture/region/TiledTextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public static createTiledFromResource(Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;Landroid/content/Context;III)Lorg/andengine/opengl/texture/region/TiledTextureRegion;
    .locals 1
    .parameter "pBuildableBitmapTextureAtlas"
    .parameter "pContext"
    .parameter "pDrawableResourceID"
    .parameter "pTileColumns"
    .parameter "pTileRows"

    .prologue
    .line 171
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0, v0, p2, p3, p4}, Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->createTiledFromResource(Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;Landroid/content/res/Resources;III)Lorg/andengine/opengl/texture/region/TiledTextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public static createTiledFromResource(Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;Landroid/content/res/Resources;III)Lorg/andengine/opengl/texture/region/TiledTextureRegion;
    .locals 2
    .parameter "pBuildableBitmapTextureAtlas"
    .parameter "pResources"
    .parameter "pDrawableResourceID"
    .parameter "pTileColumns"
    .parameter "pTileRows"

    .prologue
    .line 175
    invoke-static {p1, p2}, Lorg/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;->create(Landroid/content/res/Resources;I)Lorg/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;

    move-result-object v0

    .line 176
    .local v0, bitmapTextureAtlasSource:Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;
    invoke-static {p0, v0, p3, p4}, Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->createTiledFromSource(Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;II)Lorg/andengine/opengl/texture/region/TiledTextureRegion;

    move-result-object v1

    return-object v1
.end method

.method public static createTiledFromSource(Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;IIII)Lorg/andengine/opengl/texture/region/TiledTextureRegion;
    .locals 1
    .parameter "pBitmapTextureAtlas"
    .parameter "pBitmapTextureAtlasSource"
    .parameter "pTextureX"
    .parameter "pTextureY"
    .parameter "pTileColumns"
    .parameter "pTileRows"

    .prologue
    .line 120
    invoke-static/range {p0 .. p5}, Lorg/andengine/opengl/texture/region/TextureRegionFactory;->createTiledFromSource(Lorg/andengine/opengl/texture/atlas/ITextureAtlas;Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;IIII)Lorg/andengine/opengl/texture/region/TiledTextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public static createTiledFromSource(Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;II)Lorg/andengine/opengl/texture/region/TiledTextureRegion;
    .locals 1
    .parameter "pBuildableBitmapTextureAtlas"
    .parameter "pBitmapTextureAtlasSource"
    .parameter "pTileColumns"
    .parameter "pTileRows"

    .prologue
    .line 189
    invoke-static {p0, p1, p2, p3}, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlasTextureRegionFactory;->createTiledFromSource(Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;II)Lorg/andengine/opengl/texture/region/TiledTextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public static getAssetBasePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->sAssetBasePath:Ljava/lang/String;

    return-object v0
.end method

.method public static reset()V
    .locals 1

    .prologue
    .line 62
    const-string v0, ""

    invoke-static {v0}, Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->setAssetBasePath(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public static setAssetBasePath(Ljava/lang/String;)V
    .locals 2
    .parameter "pAssetBasePath"

    .prologue
    .line 50
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 51
    :cond_0
    sput-object p0, Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->sAssetBasePath:Ljava/lang/String;

    .line 55
    return-void

    .line 53
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pAssetBasePath must end with \'/\' or be lenght zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
