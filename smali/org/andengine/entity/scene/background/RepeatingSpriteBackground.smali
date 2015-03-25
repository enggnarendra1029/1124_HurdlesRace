.class public Lorg/andengine/entity/scene/background/RepeatingSpriteBackground;
.super Lorg/andengine/entity/scene/background/SpriteBackground;
.source "RepeatingSpriteBackground.java"


# instance fields
.field private mBitmapTextureAtlas:Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

.field private final mScale:F


# direct methods
.method public constructor <init>(FFLorg/andengine/opengl/texture/TextureManager;Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;FLorg/andengine/opengl/vbo/VertexBufferObjectManager;)V
    .locals 6
    .parameter "pCameraWidth"
    .parameter "pCameraHeight"
    .parameter "pTextureManager"
    .parameter "pBitmapTextureAtlasSource"
    .parameter "pScale"
    .parameter "pVertexBufferObjectManager"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/andengine/entity/scene/background/SpriteBackground;-><init>(Lorg/andengine/entity/sprite/Sprite;)V

    .line 49
    iput p5, p0, Lorg/andengine/entity/scene/background/RepeatingSpriteBackground;->mScale:F

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    .line 50
    invoke-direct/range {v0 .. v5}, Lorg/andengine/entity/scene/background/RepeatingSpriteBackground;->loadSprite(FFLorg/andengine/opengl/texture/TextureManager;Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;)Lorg/andengine/entity/sprite/Sprite;

    move-result-object v0

    iput-object v0, p0, Lorg/andengine/entity/scene/background/RepeatingSpriteBackground;->mEntity:Lorg/andengine/entity/IEntity;

    .line 51
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/texture/TextureManager;Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;)V
    .locals 7
    .parameter "pCameraWidth"
    .parameter "pCameraHeight"
    .parameter "pTextureManager"
    .parameter "pBitmapTextureAtlasSource"
    .parameter "pVertexBufferObjectManager"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 43
    const/high16 v5, 0x3f80

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/andengine/entity/scene/background/RepeatingSpriteBackground;-><init>(FFLorg/andengine/opengl/texture/TextureManager;Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;FLorg/andengine/opengl/vbo/VertexBufferObjectManager;)V

    .line 44
    return-void
.end method

.method private loadSprite(FFLorg/andengine/opengl/texture/TextureManager;Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;)Lorg/andengine/entity/sprite/Sprite;
    .locals 10
    .parameter "pCameraWidth"
    .parameter "pCameraHeight"
    .parameter "pTextureManager"
    .parameter "pBitmapTextureAtlasSource"
    .parameter "pVertexBufferObjectManager"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x0

    .line 70
    new-instance v0, Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    invoke-interface {p4}, Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;->getTextureWidth()I

    move-result v2

    invoke-interface {p4}, Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;->getTextureHeight()I

    move-result v3

    sget-object v4, Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;->RGBA_8888:Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;

    sget-object v5, Lorg/andengine/opengl/texture/TextureOptions;->REPEATING_NEAREST:Lorg/andengine/opengl/texture/TextureOptions;

    move-object v1, p3

    invoke-direct/range {v0 .. v5}, Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(Lorg/andengine/opengl/texture/TextureManager;IILorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;Lorg/andengine/opengl/texture/TextureOptions;)V

    iput-object v0, p0, Lorg/andengine/entity/scene/background/RepeatingSpriteBackground;->mBitmapTextureAtlas:Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    .line 71
    iget-object v1, p0, Lorg/andengine/entity/scene/background/RepeatingSpriteBackground;->mBitmapTextureAtlas:Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    invoke-static {v1, p4, v6, v6}, Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->createFromSource(Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;II)Lorg/andengine/opengl/texture/region/TextureRegion;

    move-result-object v5

    .line 73
    .local v5, textureRegion:Lorg/andengine/opengl/texture/region/ITextureRegion;
    iget v1, p0, Lorg/andengine/entity/scene/background/RepeatingSpriteBackground;->mScale:F

    div-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 74
    .local v8, width:I
    iget v1, p0, Lorg/andengine/entity/scene/background/RepeatingSpriteBackground;->mScale:F

    div-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 76
    .local v7, height:I
    int-to-float v1, v8

    invoke-interface {v5, v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->setTextureWidth(F)V

    .line 77
    int-to-float v1, v7

    invoke-interface {v5, v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->setTextureHeight(F)V

    .line 79
    iget-object v1, p0, Lorg/andengine/entity/scene/background/RepeatingSpriteBackground;->mBitmapTextureAtlas:Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    invoke-virtual {v1}, Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;->load()V

    .line 81
    new-instance v0, Lorg/andengine/entity/sprite/Sprite;

    int-to-float v3, v8

    int-to-float v4, v7

    move v1, v9

    move v2, v9

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/andengine/entity/sprite/Sprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;)V

    .line 82
    .local v0, sprite:Lorg/andengine/entity/sprite/Sprite;
    invoke-virtual {v0, v9, v9}, Lorg/andengine/entity/sprite/Sprite;->setScaleCenter(FF)V

    .line 83
    iget v1, p0, Lorg/andengine/entity/scene/background/RepeatingSpriteBackground;->mScale:F

    invoke-virtual {v0, v1}, Lorg/andengine/entity/sprite/Sprite;->setScale(F)V

    .line 84
    return-object v0
.end method


# virtual methods
.method public getBitmapTextureAtlas()Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/andengine/entity/scene/background/RepeatingSpriteBackground;->mBitmapTextureAtlas:Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    return-object v0
.end method
