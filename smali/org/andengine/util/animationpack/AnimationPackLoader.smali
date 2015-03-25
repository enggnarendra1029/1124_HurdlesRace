.class public Lorg/andengine/util/animationpack/AnimationPackLoader;
.super Ljava/lang/Object;
.source "AnimationPackLoader.java"


# instance fields
.field private final mAssetManager:Landroid/content/res/AssetManager;

.field private final mTextureManager:Lorg/andengine/opengl/texture/TextureManager;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;Lorg/andengine/opengl/texture/TextureManager;)V
    .locals 0
    .parameter "pAssetManager"
    .parameter "pTextureManager"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/andengine/util/animationpack/AnimationPackLoader;->mAssetManager:Landroid/content/res/AssetManager;

    .line 44
    iput-object p2, p0, Lorg/andengine/util/animationpack/AnimationPackLoader;->mTextureManager:Lorg/andengine/opengl/texture/TextureManager;

    .line 45
    return-void
.end method


# virtual methods
.method public load(Ljava/io/InputStream;Ljava/lang/String;)Lorg/andengine/util/animationpack/AnimationPack;
    .locals 8
    .parameter "pInputStream"
    .parameter "pAssetBasePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/util/animationpack/exception/AnimationPackParseException;
        }
    .end annotation

    .prologue
    .line 69
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v4

    .line 70
    .local v4, spf:Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    .line 72
    .local v3, sp:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v5

    .line 73
    .local v5, xr:Lorg/xml/sax/XMLReader;
    new-instance v0, Lorg/andengine/util/animationpack/AnimationPackParser;

    iget-object v6, p0, Lorg/andengine/util/animationpack/AnimationPackLoader;->mAssetManager:Landroid/content/res/AssetManager;

    iget-object v7, p0, Lorg/andengine/util/animationpack/AnimationPackLoader;->mTextureManager:Lorg/andengine/opengl/texture/TextureManager;

    invoke-direct {v0, v6, p2, v7}, Lorg/andengine/util/animationpack/AnimationPackParser;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;Lorg/andengine/opengl/texture/TextureManager;)V

    .line 74
    .local v0, animationPackParser:Lorg/andengine/util/animationpack/AnimationPackParser;
    invoke-interface {v5, v0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 76
    new-instance v6, Lorg/xml/sax/InputSource;

    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-direct {v7, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v5, v6}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 78
    invoke-virtual {v0}, Lorg/andengine/util/animationpack/AnimationPackParser;->getAnimationPack()Lorg/andengine/util/animationpack/AnimationPack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v6

    .line 87
    invoke-static {p1}, Lorg/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 83
    .end local v0           #animationPackParser:Lorg/andengine/util/animationpack/AnimationPackParser;
    .end local v3           #sp:Ljavax/xml/parsers/SAXParser;
    .end local v4           #spf:Ljavax/xml/parsers/SAXParserFactory;
    .end local v5           #xr:Lorg/xml/sax/XMLReader;
    :goto_0
    return-object v6

    .line 79
    :catch_0
    move-exception v1

    .line 80
    .local v1, e:Lorg/xml/sax/SAXException;
    :try_start_1
    new-instance v6, Lorg/andengine/util/animationpack/exception/AnimationPackParseException;

    invoke-direct {v6, v1}, Lorg/andengine/util/animationpack/exception/AnimationPackParseException;-><init>(Ljava/lang/Exception;)V

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    .end local v1           #e:Lorg/xml/sax/SAXException;
    :catchall_0
    move-exception v6

    .line 87
    invoke-static {p1}, Lorg/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 88
    throw v6

    .line 81
    :catch_1
    move-exception v2

    .line 87
    .local v2, pe:Ljavax/xml/parsers/ParserConfigurationException;
    invoke-static {p1}, Lorg/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 83
    const/4 v6, 0x0

    goto :goto_0

    .line 84
    .end local v2           #pe:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_2
    move-exception v1

    .line 85
    .local v1, e:Ljava/io/IOException;
    :try_start_2
    new-instance v6, Lorg/andengine/util/animationpack/exception/AnimationPackParseException;

    invoke-direct {v6, v1}, Lorg/andengine/util/animationpack/exception/AnimationPackParseException;-><init>(Ljava/lang/Exception;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public loadFromAsset(Ljava/lang/String;Ljava/lang/String;)Lorg/andengine/util/animationpack/AnimationPack;
    .locals 4
    .parameter "pAssetPath"
    .parameter "pAssetBasePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/util/animationpack/exception/AnimationPackParseException;
        }
    .end annotation

    .prologue
    .line 61
    :try_start_0
    iget-object v1, p0, Lorg/andengine/util/animationpack/AnimationPackLoader;->mAssetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/andengine/util/animationpack/AnimationPackLoader;->load(Ljava/io/InputStream;Ljava/lang/String;)Lorg/andengine/util/animationpack/AnimationPack;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Lorg/andengine/util/animationpack/exception/AnimationPackParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not load "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " data from asset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/andengine/util/animationpack/exception/AnimationPackParseException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method
