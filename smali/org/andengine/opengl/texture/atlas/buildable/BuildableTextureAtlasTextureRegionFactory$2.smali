.class Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlasTextureRegionFactory$2;
.super Ljava/lang/Object;
.source "BuildableTextureAtlasTextureRegionFactory.java"

# interfaces
.implements Lorg/andengine/util/call/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlasTextureRegionFactory;->createTiledFromSource(Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;II)Lorg/andengine/opengl/texture/region/TiledTextureRegion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/andengine/util/call/Callback",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final synthetic val$pTextureAtlasSource:Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;

.field private final synthetic val$pTileColumns:I

.field private final synthetic val$pTileRows:I

.field private final synthetic val$tiledTextureRegion:Lorg/andengine/opengl/texture/region/TiledTextureRegion;


# direct methods
.method constructor <init>(Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;IILorg/andengine/opengl/texture/region/TiledTextureRegion;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlasTextureRegionFactory$2;->val$pTextureAtlasSource:Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;

    iput p2, p0, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlasTextureRegionFactory$2;->val$pTileColumns:I

    iput p3, p0, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlasTextureRegionFactory$2;->val$pTileRows:I

    iput-object p4, p0, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlasTextureRegionFactory$2;->val$tiledTextureRegion:Lorg/andengine/opengl/texture/region/TiledTextureRegion;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCallback(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;

    invoke-virtual {p0, p1}, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlasTextureRegionFactory$2;->onCallback(Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;)V

    return-void
.end method

.method public onCallback(Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, pCallbackValue:Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;,"TT;"
    iget-object v7, p0, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlasTextureRegionFactory$2;->val$pTextureAtlasSource:Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;

    invoke-interface {v7}, Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;->getTextureWidth()I

    move-result v7

    iget v8, p0, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlasTextureRegionFactory$2;->val$pTileColumns:I

    div-int v4, v7, v8

    .line 68
    .local v4, tileWidth:I
    iget-object v7, p0, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlasTextureRegionFactory$2;->val$pTextureAtlasSource:Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;

    invoke-interface {v7}, Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;->getTextureHeight()I

    move-result v7

    iget v8, p0, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlasTextureRegionFactory$2;->val$pTileRows:I

    div-int v1, v7, v8

    .line 70
    .local v1, tileHeight:I
    const/4 v0, 0x0

    .local v0, tileColumn:I
    :goto_0
    iget v7, p0, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlasTextureRegionFactory$2;->val$pTileColumns:I

    if-lt v0, v7, :cond_0

    .line 80
    return-void

    .line 71
    :cond_0
    const/4 v3, 0x0

    .local v3, tileRow:I
    :goto_1
    iget v7, p0, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlasTextureRegionFactory$2;->val$pTileRows:I

    if-lt v3, v7, :cond_1

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_1
    iget v7, p0, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlasTextureRegionFactory$2;->val$pTileColumns:I

    mul-int/2addr v7, v3

    add-int v2, v7, v0

    .line 74
    .local v2, tileIndex:I
    invoke-interface {p1}, Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;->getTextureX()I

    move-result v7

    mul-int v8, v0, v4

    add-int v5, v7, v8

    .line 75
    .local v5, x:I
    invoke-interface {p1}, Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;->getTextureY()I

    move-result v7

    mul-int v8, v3, v1

    add-int v6, v7, v8

    .line 77
    .local v6, y:I
    iget-object v7, p0, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlasTextureRegionFactory$2;->val$tiledTextureRegion:Lorg/andengine/opengl/texture/region/TiledTextureRegion;

    int-to-float v8, v5

    int-to-float v9, v6

    invoke-virtual {v7, v2, v8, v9}, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->setTexturePosition(IFF)V

    .line 71
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method
