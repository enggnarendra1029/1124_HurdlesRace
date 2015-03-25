.class public Lorg/andengine/util/animationpack/AnimationPackParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "AnimationPackParser.java"


# static fields
.field private static final TAG_ANIMATION:Ljava/lang/String; = "animation"

.field private static final TAG_ANIMATIONFRAME:Ljava/lang/String; = "animationframe"

.field private static final TAG_ANIMATIONFRAME_ATTRIBUTE_DURATION:Ljava/lang/String; = "duration"

.field private static final TAG_ANIMATIONFRAME_ATTRIBUTE_TEXTUREREGION:Ljava/lang/String; = "textureregion"

.field private static final TAG_ANIMATIONPACK:Ljava/lang/String; = "animationpack"

.field private static final TAG_ANIMATIONPACK_ATTRIBUTE_VERSION:Ljava/lang/String; = "version"

.field private static final TAG_ANIMATIONS:Ljava/lang/String; = "animations"

.field private static final TAG_ANIMATION_ATTRIBUTE_LOOPCOUNT:Ljava/lang/String; = "loopcount"

.field private static final TAG_ANIMATION_ATTRIBUTE_NAME:Ljava/lang/String; = "name"

.field private static final TAG_TEXTUREPACK:Ljava/lang/String; = "texturepack"

.field private static final TAG_TEXTUREPACKS:Ljava/lang/String; = "texturepacks"

.field private static final TAG_TEXTUREPACK_ATTRIBUTE_FILENAME:Ljava/lang/String; = "filename"


# instance fields
.field private mAnimationPack:Lorg/andengine/util/animationpack/AnimationPack;

.field private mAnimationPackTiledTextureRegionLibrary:Lorg/andengine/util/animationpack/AnimationPackTiledTextureRegionLibrary;

.field private final mAssetBasePath:Ljava/lang/String;

.field private final mAssetManager:Landroid/content/res/AssetManager;

.field private final mCurrentAnimationFrameDurations:Lorg/andengine/util/adt/list/LongArrayList;

.field private final mCurrentAnimationFrameTexturePackTextureRegions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/andengine/util/texturepack/TexturePackTextureRegion;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentAnimationLoopCount:I

.field private mCurrentAnimationName:Ljava/lang/String;

.field private final mTextureManager:Lorg/andengine/opengl/texture/TextureManager;

.field private mTexturePackLibrary:Lorg/andengine/util/texturepack/TexturePackLibrary;

.field private mTexturePackLoader:Lorg/andengine/util/texturepack/TexturePackLoader;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;Lorg/andengine/opengl/texture/TextureManager;)V
    .locals 1
    .parameter "pAssetManager"
    .parameter "pAssetBasePath"
    .parameter "pTextureManager"

    .prologue
    .line 71
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lorg/andengine/util/animationpack/AnimationPackParser;->mCurrentAnimationLoopCount:I

    .line 64
    new-instance v0, Lorg/andengine/util/adt/list/LongArrayList;

    invoke-direct {v0}, Lorg/andengine/util/adt/list/LongArrayList;-><init>()V

    iput-object v0, p0, Lorg/andengine/util/animationpack/AnimationPackParser;->mCurrentAnimationFrameDurations:Lorg/andengine/util/adt/list/LongArrayList;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/andengine/util/animationpack/AnimationPackParser;->mCurrentAnimationFrameTexturePackTextureRegions:Ljava/util/ArrayList;

    .line 72
    iput-object p1, p0, Lorg/andengine/util/animationpack/AnimationPackParser;->mAssetManager:Landroid/content/res/AssetManager;

    .line 73
    iput-object p2, p0, Lorg/andengine/util/animationpack/AnimationPackParser;->mAssetBasePath:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lorg/andengine/util/animationpack/AnimationPackParser;->mTextureManager:Lorg/andengine/opengl/texture/TextureManager;

    .line 75
    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "pUri"
    .parameter "pLocalName"
    .parameter "pQualifiedName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 129
    const-string v1, "animationpack"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    const-string v1, "texturepacks"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 133
    const-string v1, "texturepack"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 135
    const-string v1, "animations"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 137
    const-string v1, "animation"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    iget-object v1, p0, Lorg/andengine/util/animationpack/AnimationPackParser;->mCurrentAnimationFrameDurations:Lorg/andengine/util/adt/list/LongArrayList;

    invoke-virtual {v1}, Lorg/andengine/util/adt/list/LongArrayList;->size()I

    move-result v6

    .line 139
    .local v6, currentAnimationFrameFrameCount:I
    iget-object v1, p0, Lorg/andengine/util/animationpack/AnimationPackParser;->mCurrentAnimationFrameDurations:Lorg/andengine/util/adt/list/LongArrayList;

    invoke-virtual {v1}, Lorg/andengine/util/adt/list/LongArrayList;->toArray()[J

    move-result-object v2

    .line 140
    .local v2, frameDurations:[J
    new-array v5, v6, [Lorg/andengine/util/texturepack/TexturePackTextureRegion;

    .line 141
    .local v5, textureRegions:[Lorg/andengine/util/texturepack/TexturePackTextureRegion;
    iget-object v1, p0, Lorg/andengine/util/animationpack/AnimationPackParser;->mCurrentAnimationFrameTexturePackTextureRegions:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 143
    new-instance v0, Lorg/andengine/util/animationpack/AnimationPackTiledTextureRegion;

    iget-object v1, p0, Lorg/andengine/util/animationpack/AnimationPackParser;->mCurrentAnimationName:Ljava/lang/String;

    iget v3, p0, Lorg/andengine/util/animationpack/AnimationPackParser;->mCurrentAnimationLoopCount:I

    const/4 v4, 0x0

    aget-object v4, v5, v4

    invoke-virtual {v4}, Lorg/andengine/util/texturepack/TexturePackTextureRegion;->getTexture()Lorg/andengine/opengl/texture/ITexture;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lorg/andengine/util/animationpack/AnimationPackTiledTextureRegion;-><init>(Ljava/lang/String;[JILorg/andengine/opengl/texture/ITexture;[Lorg/andengine/opengl/texture/region/ITextureRegion;)V

    .line 144
    .local v0, animationPackTiledTextureRegion:Lorg/andengine/util/animationpack/AnimationPackTiledTextureRegion;
    iget-object v1, p0, Lorg/andengine/util/animationpack/AnimationPackParser;->mAnimationPackTiledTextureRegionLibrary:Lorg/andengine/util/animationpack/AnimationPackTiledTextureRegionLibrary;

    invoke-virtual {v1, v0}, Lorg/andengine/util/animationpack/AnimationPackTiledTextureRegionLibrary;->put(Lorg/andengine/util/animationpack/AnimationPackTiledTextureRegion;)V

    .line 146
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/andengine/util/animationpack/AnimationPackParser;->mCurrentAnimationName:Ljava/lang/String;

    .line 147
    const/4 v1, -0x1

    iput v1, p0, Lorg/andengine/util/animationpack/AnimationPackParser;->mCurrentAnimationLoopCount:I

    .line 148
    iget-object v1, p0, Lorg/andengine/util/animationpack/AnimationPackParser;->mCurrentAnimationFrameDurations:Lorg/andengine/util/adt/list/LongArrayList;

    invoke-virtual {v1}, Lorg/andengine/util/adt/list/LongArrayList;->clear()V

    .line 149
    iget-object v1, p0, Lorg/andengine/util/animationpack/AnimationPackParser;->mCurrentAnimationFrameTexturePackTextureRegions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 155
    .end local v0           #animationPackTiledTextureRegion:Lorg/andengine/util/animationpack/AnimationPackTiledTextureRegion;
    .end local v2           #frameDurations:[J
    .end local v5           #textureRegions:[Lorg/andengine/util/texturepack/TexturePackTextureRegion;
    .end local v6           #currentAnimationFrameFrameCount:I
    :cond_0
    return-void

    .line 150
    :cond_1
    const-string v1, "animationframe"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    new-instance v1, Lorg/andengine/util/animationpack/exception/AnimationPackParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected end tag: \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/andengine/util/animationpack/exception/AnimationPackParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAnimationPack()Lorg/andengine/util/animationpack/AnimationPack;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/andengine/util/animationpack/AnimationPackParser;->mAnimationPack:Lorg/andengine/util/animationpack/AnimationPack;

    return-object v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 10
    .parameter "pUri"
    .parameter "pLocalName"
    .parameter "pQualifiedName"
    .parameter "pAttributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 91
    const-string v7, "animationpack"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 92
    const-string v7, "version"

    invoke-static {p4, v7}, Lorg/andengine/util/SAXUtils;->getIntAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)I

    move-result v6

    .line 93
    .local v6, version:I
    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    .line 94
    new-instance v7, Lorg/andengine/util/animationpack/exception/AnimationPackParseException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Unexpected version: \'"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/andengine/util/animationpack/exception/AnimationPackParseException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 97
    :cond_0
    new-instance v7, Lorg/andengine/util/texturepack/TexturePackLoader;

    iget-object v8, p0, Lorg/andengine/util/animationpack/AnimationPackParser;->mAssetManager:Landroid/content/res/AssetManager;

    iget-object v9, p0, Lorg/andengine/util/animationpack/AnimationPackParser;->mTextureManager:Lorg/andengine/opengl/texture/TextureManager;

    invoke-direct {v7, v8, v9}, Lorg/andengine/util/texturepack/TexturePackLoader;-><init>(Landroid/content/res/AssetManager;Lorg/andengine/opengl/texture/TextureManager;)V

    iput-object v7, p0, Lorg/andengine/util/animationpack/AnimationPackParser;->mTexturePackLoader:Lorg/andengine/util/texturepack/TexturePackLoader;

    .line 98
    new-instance v7, Lorg/andengine/util/texturepack/TexturePackLibrary;

    invoke-direct {v7}, Lorg/andengine/util/texturepack/TexturePackLibrary;-><init>()V

    iput-object v7, p0, Lorg/andengine/util/animationpack/AnimationPackParser;->mTexturePackLibrary:Lorg/andengine/util/texturepack/TexturePackLibrary;

    .line 99
    new-instance v7, Lorg/andengine/util/animationpack/AnimationPackTiledTextureRegionLibrary;

    invoke-direct {v7}, Lorg/andengine/util/animationpack/AnimationPackTiledTextureRegionLibrary;-><init>()V

    iput-object v7, p0, Lorg/andengine/util/animationpack/AnimationPackParser;->mAnimationPackTiledTextureRegionLibrary:Lorg/andengine/util/animationpack/AnimationPackTiledTextureRegionLibrary;

    .line 100
    new-instance v7, Lorg/andengine/util/animationpack/AnimationPack;

    iget-object v8, p0, Lorg/andengine/util/animationpack/AnimationPackParser;->mTexturePackLibrary:Lorg/andengine/util/texturepack/TexturePackLibrary;

    iget-object v9, p0, Lorg/andengine/util/animationpack/AnimationPackParser;->mAnimationPackTiledTextureRegionLibrary:Lorg/andengine/util/animationpack/AnimationPackTiledTextureRegionLibrary;

    invoke-direct {v7, v8, v9}, Lorg/andengine/util/animationpack/AnimationPack;-><init>(Lorg/andengine/util/texturepack/TexturePackLibrary;Lorg/andengine/util/animationpack/AnimationPackTiledTextureRegionLibrary;)V

    iput-object v7, p0, Lorg/andengine/util/animationpack/AnimationPackParser;->mAnimationPack:Lorg/andengine/util/animationpack/AnimationPack;

    .line 125
    .end local v6           #version:I
    :cond_1
    :goto_0
    return-void

    .line 101
    :cond_2
    const-string v7, "texturepacks"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 103
    const-string v7, "texturepack"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 104
    const-string v7, "filename"

    invoke-static {p4, v7}, Lorg/andengine/util/SAXUtils;->getAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, texturePackName:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lorg/andengine/util/animationpack/AnimationPackParser;->mAssetBasePath:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 107
    .local v3, texturePackPath:Ljava/lang/String;
    iget-object v7, p0, Lorg/andengine/util/animationpack/AnimationPackParser;->mTexturePackLoader:Lorg/andengine/util/texturepack/TexturePackLoader;

    iget-object v8, p0, Lorg/andengine/util/animationpack/AnimationPackParser;->mAssetBasePath:Ljava/lang/String;

    invoke-virtual {v7, v3, v8}, Lorg/andengine/util/texturepack/TexturePackLoader;->loadFromAsset(Ljava/lang/String;Ljava/lang/String;)Lorg/andengine/util/texturepack/TexturePack;

    move-result-object v1

    .line 108
    .local v1, texturePack:Lorg/andengine/util/texturepack/TexturePack;
    iget-object v7, p0, Lorg/andengine/util/animationpack/AnimationPackParser;->mTexturePackLibrary:Lorg/andengine/util/texturepack/TexturePackLibrary;

    invoke-virtual {v7, v2, v1}, Lorg/andengine/util/texturepack/TexturePackLibrary;->put(Ljava/lang/String;Lorg/andengine/util/texturepack/TexturePack;)V

    .line 109
    invoke-virtual {v1}, Lorg/andengine/util/texturepack/TexturePack;->loadTexture()V

    goto :goto_0

    .line 110
    .end local v1           #texturePack:Lorg/andengine/util/texturepack/TexturePack;
    .end local v2           #texturePackName:Ljava/lang/String;
    .end local v3           #texturePackPath:Ljava/lang/String;
    :cond_3
    const-string v7, "animations"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 112
    const-string v7, "animation"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 113
    const-string v7, "name"

    invoke-static {p4, v7}, Lorg/andengine/util/SAXUtils;->getAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lorg/andengine/util/animationpack/AnimationPackParser;->mCurrentAnimationName:Ljava/lang/String;

    .line 114
    const-string v7, "loopcount"

    const/4 v8, -0x1

    invoke-static {p4, v7, v8}, Lorg/andengine/util/SAXUtils;->getIntAttribute(Lorg/xml/sax/Attributes;Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lorg/andengine/util/animationpack/AnimationPackParser;->mCurrentAnimationLoopCount:I

    goto :goto_0

    .line 115
    :cond_4
    const-string v7, "animationframe"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 116
    const-string v7, "duration"

    invoke-static {p4, v7}, Lorg/andengine/util/SAXUtils;->getIntAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)I

    move-result v0

    .line 117
    .local v0, duration:I
    iget-object v7, p0, Lorg/andengine/util/animationpack/AnimationPackParser;->mCurrentAnimationFrameDurations:Lorg/andengine/util/adt/list/LongArrayList;

    int-to-long v8, v0

    invoke-virtual {v7, v8, v9}, Lorg/andengine/util/adt/list/LongArrayList;->add(J)V

    .line 119
    const-string v7, "textureregion"

    invoke-static {p4, v7}, Lorg/andengine/util/SAXUtils;->getAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 120
    .local v5, textureRegionName:Ljava/lang/String;
    iget-object v7, p0, Lorg/andengine/util/animationpack/AnimationPackParser;->mTexturePackLibrary:Lorg/andengine/util/texturepack/TexturePackLibrary;

    invoke-virtual {v7, v5}, Lorg/andengine/util/texturepack/TexturePackLibrary;->getTexturePackTextureRegion(Ljava/lang/String;)Lorg/andengine/util/texturepack/TexturePackTextureRegion;

    move-result-object v4

    .line 121
    .local v4, texturePackTextureRegion:Lorg/andengine/util/texturepack/TexturePackTextureRegion;
    iget-object v7, p0, Lorg/andengine/util/animationpack/AnimationPackParser;->mCurrentAnimationFrameTexturePackTextureRegions:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 123
    .end local v0           #duration:I
    .end local v4           #texturePackTextureRegion:Lorg/andengine/util/texturepack/TexturePackTextureRegion;
    .end local v5           #textureRegionName:Ljava/lang/String;
    :cond_5
    new-instance v7, Lorg/andengine/util/animationpack/exception/AnimationPackParseException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Unexpected tag: \'"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/andengine/util/animationpack/exception/AnimationPackParseException;-><init>(Ljava/lang/String;)V

    throw v7
.end method
