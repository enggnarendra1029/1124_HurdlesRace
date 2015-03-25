.class public Lorg/andengine/util/texturepack/TexturePackParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "TexturePackParser.java"


# static fields
.field private static final TAG_TEXTURE:Ljava/lang/String; = "texture"

.field private static final TAG_TEXTUREREGION:Ljava/lang/String; = "textureregion"

.field private static final TAG_TEXTUREREGION_ATTRIBUTE_HEIGHT:Ljava/lang/String; = "height"

.field private static final TAG_TEXTUREREGION_ATTRIBUTE_ID:Ljava/lang/String; = "id"

.field private static final TAG_TEXTUREREGION_ATTRIBUTE_ROTATED:Ljava/lang/String; = "rotated"

.field private static final TAG_TEXTUREREGION_ATTRIBUTE_SOURCE:Ljava/lang/String; = "src"

.field private static final TAG_TEXTUREREGION_ATTRIBUTE_SOURCE_HEIGHT:Ljava/lang/String; = "srcheight"

.field private static final TAG_TEXTUREREGION_ATTRIBUTE_SOURCE_WIDTH:Ljava/lang/String; = "srcwidth"

.field private static final TAG_TEXTUREREGION_ATTRIBUTE_SOURCE_X:Ljava/lang/String; = "srcx"

.field private static final TAG_TEXTUREREGION_ATTRIBUTE_SOURCE_Y:Ljava/lang/String; = "srcy"

.field private static final TAG_TEXTUREREGION_ATTRIBUTE_TRIMMED:Ljava/lang/String; = "trimmed"

.field private static final TAG_TEXTUREREGION_ATTRIBUTE_WIDTH:Ljava/lang/String; = "width"

.field private static final TAG_TEXTUREREGION_ATTRIBUTE_X:Ljava/lang/String; = "x"

.field private static final TAG_TEXTUREREGION_ATTRIBUTE_Y:Ljava/lang/String; = "y"

.field private static final TAG_TEXTURE_ATTRIBUTE_FILE:Ljava/lang/String; = "file"

.field private static final TAG_TEXTURE_ATTRIBUTE_MAGFILTER:Ljava/lang/String; = "magfilter"

.field private static final TAG_TEXTURE_ATTRIBUTE_MAGFILTER_VALUE_LINEAR:Ljava/lang/String; = "linear"

.field private static final TAG_TEXTURE_ATTRIBUTE_MAGFILTER_VALUE_NEAREST:Ljava/lang/String; = "nearest"

.field private static final TAG_TEXTURE_ATTRIBUTE_MINFILTER:Ljava/lang/String; = "minfilter"

.field private static final TAG_TEXTURE_ATTRIBUTE_MINFILTER_VALUE_LINEAR:Ljava/lang/String; = "linear"

.field private static final TAG_TEXTURE_ATTRIBUTE_MINFILTER_VALUE_LINEAR_MIPMAP_LINEAR:Ljava/lang/String; = "linear_mipmap_linear"

.field private static final TAG_TEXTURE_ATTRIBUTE_MINFILTER_VALUE_LINEAR_MIPMAP_NEAREST:Ljava/lang/String; = "linear_mipmap_nearest"

.field private static final TAG_TEXTURE_ATTRIBUTE_MINFILTER_VALUE_NEAREST:Ljava/lang/String; = "nearest"

.field private static final TAG_TEXTURE_ATTRIBUTE_MINFILTER_VALUE_NEAREST_MIPMAP_LINEAR:Ljava/lang/String; = "nearest_mipmap_linear"

.field private static final TAG_TEXTURE_ATTRIBUTE_MINFILTER_VALUE_NEAREST_MIPMAP_NEAREST:Ljava/lang/String; = "nearest_mipmap_nearest"

.field private static final TAG_TEXTURE_ATTRIBUTE_PIXELFORMAT:Ljava/lang/String; = "pixelformat"

.field private static final TAG_TEXTURE_ATTRIBUTE_PREMULTIPLYALPHA:Ljava/lang/String; = "premultiplyalpha"

.field private static final TAG_TEXTURE_ATTRIBUTE_TYPE:Ljava/lang/String; = "type"

.field private static final TAG_TEXTURE_ATTRIBUTE_TYPE_VALUE_BITMAP:Ljava/lang/String; = "bitmap"

.field private static final TAG_TEXTURE_ATTRIBUTE_TYPE_VALUE_PVR:Ljava/lang/String; = "pvr"

.field private static final TAG_TEXTURE_ATTRIBUTE_TYPE_VALUE_PVRCCZ:Ljava/lang/String; = "pvrccz"

.field private static final TAG_TEXTURE_ATTRIBUTE_TYPE_VALUE_PVRGZ:Ljava/lang/String; = "pvrgz"

.field private static final TAG_TEXTURE_ATTRIBUTE_VERSION:Ljava/lang/String; = "version"

.field private static final TAG_TEXTURE_ATTRIBUTE_WRAPS:Ljava/lang/String; = "wraps"

.field private static final TAG_TEXTURE_ATTRIBUTE_WRAPT:Ljava/lang/String; = "wrapt"

.field private static final TAG_TEXTURE_ATTRIBUTE_WRAP_VALUE_CLAMP:Ljava/lang/String; = "clamp"

.field private static final TAG_TEXTURE_ATTRIBUTE_WRAP_VALUE_CLAMP_TO_EDGE:Ljava/lang/String; = "clamp_to_edge"

.field private static final TAG_TEXTURE_ATTRIBUTE_WRAP_VALUE_REPEAT:Ljava/lang/String; = "repeat"


# instance fields
.field private final mAssetBasePath:Ljava/lang/String;

.field private final mAssetManager:Landroid/content/res/AssetManager;

.field private mTexture:Lorg/andengine/opengl/texture/ITexture;

.field private final mTextureManager:Lorg/andengine/opengl/texture/TextureManager;

.field private mTexturePack:Lorg/andengine/util/texturepack/TexturePack;

.field private mTextureRegionLibrary:Lorg/andengine/util/texturepack/TexturePackTextureRegionLibrary;

.field private mVersion:I


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;Lorg/andengine/opengl/texture/TextureManager;)V
    .locals 0
    .parameter "pAssetManager"
    .parameter "pAssetBasePath"
    .parameter "pTextureManager"

    .prologue
    .line 99
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 100
    iput-object p1, p0, Lorg/andengine/util/texturepack/TexturePackParser;->mAssetManager:Landroid/content/res/AssetManager;

    .line 101
    iput-object p2, p0, Lorg/andengine/util/texturepack/TexturePackParser;->mAssetBasePath:Ljava/lang/String;

    .line 102
    iput-object p3, p0, Lorg/andengine/util/texturepack/TexturePackParser;->mTextureManager:Lorg/andengine/opengl/texture/TextureManager;

    .line 103
    return-void
.end method

.method private static parseMagFilter(Lorg/xml/sax/Attributes;)I
    .locals 4
    .parameter "pAttributes"

    .prologue
    .line 256
    const-string v1, "magfilter"

    invoke-static {p0, v1}, Lorg/andengine/util/SAXUtils;->getAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, magFilter:Ljava/lang/String;
    const-string v1, "nearest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    const/16 v1, 0x2600

    .line 260
    :goto_0
    return v1

    .line 259
    :cond_0
    const-string v1, "linear"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 260
    const/16 v1, 0x2601

    goto :goto_0

    .line 262
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected magfilter attribute: \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static parseMinFilter(Lorg/xml/sax/Attributes;)I
    .locals 4
    .parameter "pAttributes"

    .prologue
    .line 237
    const-string v1, "minfilter"

    invoke-static {p0, v1}, Lorg/andengine/util/SAXUtils;->getAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, minFilter:Ljava/lang/String;
    const-string v1, "nearest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    const/16 v1, 0x2600

    .line 249
    :goto_0
    return v1

    .line 240
    :cond_0
    const-string v1, "linear"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 241
    const/16 v1, 0x2601

    goto :goto_0

    .line 242
    :cond_1
    const-string v1, "linear_mipmap_linear"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 243
    const/16 v1, 0x2703

    goto :goto_0

    .line 244
    :cond_2
    const-string v1, "linear_mipmap_nearest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 245
    const/16 v1, 0x2701

    goto :goto_0

    .line 246
    :cond_3
    const-string v1, "nearest_mipmap_linear"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 247
    const/16 v1, 0x2702

    goto :goto_0

    .line 248
    :cond_4
    const-string v1, "nearest_mipmap_nearest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 249
    const/16 v1, 0x2700

    goto :goto_0

    .line 251
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected minfilter attribute: \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static parsePixelFormat(Lorg/xml/sax/Attributes;)Lorg/andengine/opengl/texture/PixelFormat;
    .locals 1
    .parameter "pAttributes"

    .prologue
    .line 223
    const-string v0, "pixelformat"

    invoke-static {p0, v0}, Lorg/andengine/util/SAXUtils;->getAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/andengine/opengl/texture/PixelFormat;->valueOf(Ljava/lang/String;)Lorg/andengine/opengl/texture/PixelFormat;

    move-result-object v0

    return-object v0
.end method

.method private static parsePremultiplyalpha(Lorg/xml/sax/Attributes;)Z
    .locals 1
    .parameter "pAttributes"

    .prologue
    .line 288
    const-string v0, "premultiplyalpha"

    invoke-static {p0, v0}, Lorg/andengine/util/SAXUtils;->getBooleanAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private parseTexture(Lorg/xml/sax/Attributes;)Lorg/andengine/opengl/texture/ITexture;
    .locals 10
    .parameter "pAttributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/util/texturepack/exception/TexturePackParseException;
        }
    .end annotation

    .prologue
    .line 157
    const-string v1, "file"

    invoke-static {p1, v1}, Lorg/andengine/util/SAXUtils;->getAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 159
    .local v6, file:Ljava/lang/String;
    iget-object v1, p0, Lorg/andengine/util/texturepack/TexturePackParser;->mTextureManager:Lorg/andengine/opengl/texture/TextureManager;

    invoke-virtual {v1, v6}, Lorg/andengine/opengl/texture/TextureManager;->hasMappedTexture(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    iget-object v1, p0, Lorg/andengine/util/texturepack/TexturePackParser;->mTextureManager:Lorg/andengine/opengl/texture/TextureManager;

    invoke-virtual {v1, v6}, Lorg/andengine/opengl/texture/TextureManager;->getMappedTexture(Ljava/lang/String;)Lorg/andengine/opengl/texture/ITexture;

    move-result-object v0

    .line 219
    :goto_0
    return-object v0

    .line 163
    :cond_0
    const-string v1, "type"

    invoke-static {p1, v1}, Lorg/andengine/util/SAXUtils;->getAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 164
    .local v9, type:Ljava/lang/String;
    invoke-static {p1}, Lorg/andengine/util/texturepack/TexturePackParser;->parsePixelFormat(Lorg/xml/sax/Attributes;)Lorg/andengine/opengl/texture/PixelFormat;

    move-result-object v8

    .line 166
    .local v8, pixelFormat:Lorg/andengine/opengl/texture/PixelFormat;
    invoke-direct {p0, p1}, Lorg/andengine/util/texturepack/TexturePackParser;->parseTextureOptions(Lorg/xml/sax/Attributes;)Lorg/andengine/opengl/texture/TextureOptions;

    move-result-object v5

    .line 169
    .local v5, textureOptions:Lorg/andengine/opengl/texture/TextureOptions;
    const-string v1, "bitmap"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 171
    :try_start_0
    new-instance v0, Lorg/andengine/opengl/texture/bitmap/BitmapTexture;

    iget-object v1, p0, Lorg/andengine/util/texturepack/TexturePackParser;->mTextureManager:Lorg/andengine/opengl/texture/TextureManager;

    new-instance v2, Lorg/andengine/util/texturepack/TexturePackParser$1;

    invoke-direct {v2, p0, v6}, Lorg/andengine/util/texturepack/TexturePackParser$1;-><init>(Lorg/andengine/util/texturepack/TexturePackParser;Ljava/lang/String;)V

    .line 176
    invoke-static {v8}, Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;->fromPixelFormat(Lorg/andengine/opengl/texture/PixelFormat;)Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;

    move-result-object v3

    .line 171
    invoke-direct {v0, v1, v2, v3, v5}, Lorg/andengine/opengl/texture/bitmap/BitmapTexture;-><init>(Lorg/andengine/opengl/texture/TextureManager;Lorg/andengine/util/adt/io/in/IInputStreamOpener;Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;Lorg/andengine/opengl/texture/TextureOptions;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    .local v0, texture:Lorg/andengine/opengl/texture/ITexture;
    :goto_1
    iget-object v1, p0, Lorg/andengine/util/texturepack/TexturePackParser;->mTextureManager:Lorg/andengine/opengl/texture/TextureManager;

    invoke-virtual {v1, v6, v0}, Lorg/andengine/opengl/texture/TextureManager;->addMappedTexture(Ljava/lang/String;Lorg/andengine/opengl/texture/ITexture;)V

    goto :goto_0

    .line 177
    .end local v0           #texture:Lorg/andengine/opengl/texture/ITexture;
    :catch_0
    move-exception v7

    .line 178
    .local v7, e:Ljava/io/IOException;
    new-instance v1, Lorg/andengine/util/texturepack/exception/TexturePackParseException;

    invoke-direct {v1, v7}, Lorg/andengine/util/texturepack/exception/TexturePackParseException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 180
    .end local v7           #e:Ljava/io/IOException;
    :cond_1
    const-string v1, "pvr"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 182
    :try_start_1
    new-instance v0, Lorg/andengine/util/texturepack/TexturePackParser$2;

    iget-object v2, p0, Lorg/andengine/util/texturepack/TexturePackParser;->mTextureManager:Lorg/andengine/opengl/texture/TextureManager;

    invoke-static {v8}, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;->fromPixelFormat(Lorg/andengine/opengl/texture/PixelFormat;)Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;

    move-result-object v3

    new-instance v4, Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/SmartPVRTexturePixelBufferStrategy;

    const/high16 v1, 0x2

    invoke-direct {v4, v1}, Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/SmartPVRTexturePixelBufferStrategy;-><init>(I)V

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/andengine/util/texturepack/TexturePackParser$2;-><init>(Lorg/andengine/util/texturepack/TexturePackParser;Lorg/andengine/opengl/texture/TextureManager;Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/IPVRTexturePixelBufferStrategy;Lorg/andengine/opengl/texture/TextureOptions;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v0       #texture:Lorg/andengine/opengl/texture/ITexture;
    goto :goto_1

    .line 188
    .end local v0           #texture:Lorg/andengine/opengl/texture/ITexture;
    :catch_1
    move-exception v7

    .line 189
    .restart local v7       #e:Ljava/io/IOException;
    new-instance v1, Lorg/andengine/util/texturepack/exception/TexturePackParseException;

    invoke-direct {v1, v7}, Lorg/andengine/util/texturepack/exception/TexturePackParseException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 191
    .end local v7           #e:Ljava/io/IOException;
    :cond_2
    const-string v1, "pvrgz"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 193
    :try_start_2
    new-instance v0, Lorg/andengine/util/texturepack/TexturePackParser$3;

    iget-object v2, p0, Lorg/andengine/util/texturepack/TexturePackParser;->mTextureManager:Lorg/andengine/opengl/texture/TextureManager;

    invoke-static {v8}, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;->fromPixelFormat(Lorg/andengine/opengl/texture/PixelFormat;)Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;

    move-result-object v3

    new-instance v4, Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/SmartPVRTexturePixelBufferStrategy;

    const/high16 v1, 0x2

    invoke-direct {v4, v1}, Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/SmartPVRTexturePixelBufferStrategy;-><init>(I)V

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/andengine/util/texturepack/TexturePackParser$3;-><init>(Lorg/andengine/util/texturepack/TexturePackParser;Lorg/andengine/opengl/texture/TextureManager;Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/IPVRTexturePixelBufferStrategy;Lorg/andengine/opengl/texture/TextureOptions;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .restart local v0       #texture:Lorg/andengine/opengl/texture/ITexture;
    goto :goto_1

    .line 199
    .end local v0           #texture:Lorg/andengine/opengl/texture/ITexture;
    :catch_2
    move-exception v7

    .line 200
    .restart local v7       #e:Ljava/io/IOException;
    new-instance v1, Lorg/andengine/util/texturepack/exception/TexturePackParseException;

    invoke-direct {v1, v7}, Lorg/andengine/util/texturepack/exception/TexturePackParseException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 202
    .end local v7           #e:Ljava/io/IOException;
    :cond_3
    const-string v1, "pvrccz"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 204
    :try_start_3
    new-instance v0, Lorg/andengine/util/texturepack/TexturePackParser$4;

    iget-object v2, p0, Lorg/andengine/util/texturepack/TexturePackParser;->mTextureManager:Lorg/andengine/opengl/texture/TextureManager;

    invoke-static {v8}, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;->fromPixelFormat(Lorg/andengine/opengl/texture/PixelFormat;)Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;

    move-result-object v3

    new-instance v4, Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/SmartPVRTexturePixelBufferStrategy;

    const/high16 v1, 0x2

    invoke-direct {v4, v1}, Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/SmartPVRTexturePixelBufferStrategy;-><init>(I)V

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/andengine/util/texturepack/TexturePackParser$4;-><init>(Lorg/andengine/util/texturepack/TexturePackParser;Lorg/andengine/opengl/texture/TextureManager;Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/IPVRTexturePixelBufferStrategy;Lorg/andengine/opengl/texture/TextureOptions;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .restart local v0       #texture:Lorg/andengine/opengl/texture/ITexture;
    goto :goto_1

    .line 210
    .end local v0           #texture:Lorg/andengine/opengl/texture/ITexture;
    :catch_3
    move-exception v7

    .line 211
    .restart local v7       #e:Ljava/io/IOException;
    new-instance v1, Lorg/andengine/util/texturepack/exception/TexturePackParseException;

    invoke-direct {v1, v7}, Lorg/andengine/util/texturepack/exception/TexturePackParseException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 214
    .end local v7           #e:Ljava/io/IOException;
    :cond_4
    new-instance v1, Lorg/andengine/util/texturepack/exception/TexturePackParseException;

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unsupported pTextureFormat: \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/andengine/util/texturepack/exception/TexturePackParseException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method private parseTextureOptions(Lorg/xml/sax/Attributes;)Lorg/andengine/opengl/texture/TextureOptions;
    .locals 6
    .parameter "pAttributes"

    .prologue
    .line 227
    invoke-static {p1}, Lorg/andengine/util/texturepack/TexturePackParser;->parseMinFilter(Lorg/xml/sax/Attributes;)I

    move-result v1

    .line 228
    .local v1, minFilter:I
    invoke-static {p1}, Lorg/andengine/util/texturepack/TexturePackParser;->parseMagFilter(Lorg/xml/sax/Attributes;)I

    move-result v2

    .line 229
    .local v2, magFilter:I
    invoke-direct {p0, p1}, Lorg/andengine/util/texturepack/TexturePackParser;->parseWrapT(Lorg/xml/sax/Attributes;)I

    move-result v3

    .line 230
    .local v3, wrapT:I
    invoke-direct {p0, p1}, Lorg/andengine/util/texturepack/TexturePackParser;->parseWrapS(Lorg/xml/sax/Attributes;)I

    move-result v4

    .line 231
    .local v4, wrapS:I
    invoke-static {p1}, Lorg/andengine/util/texturepack/TexturePackParser;->parsePremultiplyalpha(Lorg/xml/sax/Attributes;)Z

    move-result v5

    .line 233
    .local v5, preMultiplyAlpha:Z
    new-instance v0, Lorg/andengine/opengl/texture/TextureOptions;

    invoke-direct/range {v0 .. v5}, Lorg/andengine/opengl/texture/TextureOptions;-><init>(IIIIZ)V

    return-object v0
.end method

.method private parseWrap(Lorg/xml/sax/Attributes;Ljava/lang/String;)I
    .locals 4
    .parameter "pAttributes"
    .parameter "pWrapAttributeName"

    .prologue
    const v1, 0x812f

    .line 275
    invoke-static {p1, p2}, Lorg/andengine/util/SAXUtils;->getAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, wrapAttribute:Ljava/lang/String;
    iget v2, p0, Lorg/andengine/util/texturepack/TexturePackParser;->mVersion:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const-string v2, "clamp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 281
    :cond_0
    :goto_0
    return v1

    .line 278
    :cond_1
    const-string v2, "clamp_to_edge"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 280
    const-string v1, "repeat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 281
    const/16 v1, 0x2901

    goto :goto_0

    .line 283
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " attribute: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private parseWrapS(Lorg/xml/sax/Attributes;)I
    .locals 1
    .parameter "pAttributes"

    .prologue
    .line 271
    const-string v0, "wraps"

    invoke-direct {p0, p1, v0}, Lorg/andengine/util/texturepack/TexturePackParser;->parseWrap(Lorg/xml/sax/Attributes;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private parseWrapT(Lorg/xml/sax/Attributes;)I
    .locals 1
    .parameter "pAttributes"

    .prologue
    .line 267
    const-string v0, "wrapt"

    invoke-direct {p0, p1, v0}, Lorg/andengine/util/texturepack/TexturePackParser;->parseWrap(Lorg/xml/sax/Attributes;Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getTexturePack()Lorg/andengine/util/texturepack/TexturePack;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/andengine/util/texturepack/TexturePackParser;->mTexturePack:Lorg/andengine/util/texturepack/TexturePack;

    return-object v0
.end method

.method protected onGetInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .parameter "pFilename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lorg/andengine/util/texturepack/TexturePackParser;->mAssetManager:Landroid/content/res/AssetManager;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/andengine/util/texturepack/TexturePackParser;->mAssetBasePath:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 17
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
    .line 119
    const-string v2, "texture"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    const-string v2, "version"

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lorg/andengine/util/SAXUtils;->getIntAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/andengine/util/texturepack/TexturePackParser;->mVersion:I

    .line 121
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lorg/andengine/util/texturepack/TexturePackParser;->parseTexture(Lorg/xml/sax/Attributes;)Lorg/andengine/opengl/texture/ITexture;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/andengine/util/texturepack/TexturePackParser;->mTexture:Lorg/andengine/opengl/texture/ITexture;

    .line 122
    new-instance v2, Lorg/andengine/util/texturepack/TexturePackTextureRegionLibrary;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Lorg/andengine/util/texturepack/TexturePackTextureRegionLibrary;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/andengine/util/texturepack/TexturePackParser;->mTextureRegionLibrary:Lorg/andengine/util/texturepack/TexturePackTextureRegionLibrary;

    .line 124
    new-instance v2, Lorg/andengine/util/texturepack/TexturePack;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/andengine/util/texturepack/TexturePackParser;->mTexture:Lorg/andengine/opengl/texture/ITexture;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/andengine/util/texturepack/TexturePackParser;->mTextureRegionLibrary:Lorg/andengine/util/texturepack/TexturePackTextureRegionLibrary;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v2, v3, v0}, Lorg/andengine/util/texturepack/TexturePack;-><init>(Lorg/andengine/opengl/texture/ITexture;Lorg/andengine/util/texturepack/TexturePackTextureRegionLibrary;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/andengine/util/texturepack/TexturePackParser;->mTexturePack:Lorg/andengine/util/texturepack/TexturePack;

    .line 146
    :goto_0
    return-void

    .line 125
    :cond_0
    const-string v2, "textureregion"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 126
    const-string v2, "id"

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lorg/andengine/util/SAXUtils;->getIntAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)I

    move-result v8

    .line 127
    .local v8, id:I
    const-string v2, "x"

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lorg/andengine/util/SAXUtils;->getIntAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)I

    move-result v4

    .line 128
    .local v4, x:I
    const-string v2, "y"

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lorg/andengine/util/SAXUtils;->getIntAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)I

    move-result v5

    .line 129
    .local v5, y:I
    const-string v2, "width"

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lorg/andengine/util/SAXUtils;->getIntAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)I

    move-result v6

    .line 130
    .local v6, width:I
    const-string v2, "height"

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lorg/andengine/util/SAXUtils;->getIntAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)I

    move-result v7

    .line 132
    .local v7, height:I
    const-string v2, "src"

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lorg/andengine/util/SAXUtils;->getAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 135
    .local v9, source:Ljava/lang/String;
    const-string v2, "trimmed"

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lorg/andengine/util/SAXUtils;->getBooleanAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)Z

    move-result v11

    .line 136
    .local v11, trimmed:Z
    const-string v2, "rotated"

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lorg/andengine/util/SAXUtils;->getBooleanAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)Z

    move-result v10

    .line 137
    .local v10, rotated:Z
    const-string v2, "srcx"

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lorg/andengine/util/SAXUtils;->getIntAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)I

    move-result v12

    .line 138
    .local v12, sourceX:I
    const-string v2, "srcy"

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lorg/andengine/util/SAXUtils;->getIntAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)I

    move-result v13

    .line 139
    .local v13, sourceY:I
    const-string v2, "srcwidth"

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lorg/andengine/util/SAXUtils;->getIntAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)I

    move-result v14

    .line 140
    .local v14, sourceWidth:I
    const-string v2, "srcheight"

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lorg/andengine/util/SAXUtils;->getIntAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)I

    move-result v15

    .line 142
    .local v15, sourceHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/andengine/util/texturepack/TexturePackParser;->mTextureRegionLibrary:Lorg/andengine/util/texturepack/TexturePackTextureRegionLibrary;

    move-object/from16 v16, v0

    new-instance v2, Lorg/andengine/util/texturepack/TexturePackTextureRegion;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/andengine/util/texturepack/TexturePackParser;->mTexture:Lorg/andengine/opengl/texture/ITexture;

    invoke-direct/range {v2 .. v15}, Lorg/andengine/util/texturepack/TexturePackTextureRegion;-><init>(Lorg/andengine/opengl/texture/ITexture;IIIIILjava/lang/String;ZZIIII)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/andengine/util/texturepack/TexturePackTextureRegionLibrary;->put(Lorg/andengine/util/texturepack/TexturePackTextureRegion;)V

    goto :goto_0

    .line 144
    .end local v4           #x:I
    .end local v5           #y:I
    .end local v6           #width:I
    .end local v7           #height:I
    .end local v8           #id:I
    .end local v9           #source:Ljava/lang/String;
    .end local v10           #rotated:Z
    .end local v11           #trimmed:Z
    .end local v12           #sourceX:I
    .end local v13           #sourceY:I
    .end local v14           #sourceWidth:I
    .end local v15           #sourceHeight:I
    :cond_1
    new-instance v2, Lorg/andengine/util/texturepack/exception/TexturePackParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v16, "Unexpected tag: \'"

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v16, "\'."

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/andengine/util/texturepack/exception/TexturePackParseException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
