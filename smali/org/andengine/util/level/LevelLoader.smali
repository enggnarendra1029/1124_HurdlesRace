.class public Lorg/andengine/util/level/LevelLoader;
.super Ljava/lang/Object;
.source "LevelLoader.java"


# instance fields
.field private mAssetBasePath:Ljava/lang/String;

.field private mDefaultEntityLoader:Lorg/andengine/util/level/IEntityLoader;

.field private final mEntityLoaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/andengine/util/level/IEntityLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, ""

    invoke-direct {p0, v0}, Lorg/andengine/util/level/LevelLoader;-><init>(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "pAssetBasePath"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/andengine/util/level/LevelLoader;->mEntityLoaders:Ljava/util/HashMap;

    .line 51
    invoke-virtual {p0, p1}, Lorg/andengine/util/level/LevelLoader;->setAssetBasePath(Ljava/lang/String;)V

    .line 52
    return-void
.end method


# virtual methods
.method public getAssetBasePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/andengine/util/level/LevelLoader;->mAssetBasePath:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultEntityLoader()Lorg/andengine/util/level/IEntityLoader;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/andengine/util/level/LevelLoader;->mDefaultEntityLoader:Lorg/andengine/util/level/IEntityLoader;

    return-object v0
.end method

.method public loadLevelFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 2
    .parameter "pAssetManager"
    .parameter "pAssetPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/andengine/util/level/LevelLoader;->mAssetBasePath:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/andengine/util/level/LevelLoader;->loadLevelFromStream(Ljava/io/InputStream;)V

    .line 111
    return-void
.end method

.method public loadLevelFromResource(Landroid/content/res/Resources;I)V
    .locals 1
    .parameter "pResources"
    .parameter "pRawResourceID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/andengine/util/level/LevelLoader;->loadLevelFromStream(Ljava/io/InputStream;)V

    .line 115
    return-void
.end method

.method public loadLevelFromStream(Ljava/io/InputStream;)V
    .locals 8
    .parameter "pInputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v4

    .line 120
    .local v4, spf:Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    .line 122
    .local v3, sp:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v5

    .line 124
    .local v5, xr:Lorg/xml/sax/XMLReader;
    invoke-virtual {p0}, Lorg/andengine/util/level/LevelLoader;->onBeforeLoadLevel()V

    .line 126
    new-instance v0, Lorg/andengine/util/level/LevelParser;

    iget-object v6, p0, Lorg/andengine/util/level/LevelLoader;->mDefaultEntityLoader:Lorg/andengine/util/level/IEntityLoader;

    iget-object v7, p0, Lorg/andengine/util/level/LevelLoader;->mEntityLoaders:Ljava/util/HashMap;

    invoke-direct {v0, v6, v7}, Lorg/andengine/util/level/LevelParser;-><init>(Lorg/andengine/util/level/IEntityLoader;Ljava/util/HashMap;)V

    .line 127
    .local v0, levelParser:Lorg/andengine/util/level/LevelParser;
    invoke-interface {v5, v0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 129
    new-instance v6, Lorg/xml/sax/InputSource;

    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-direct {v7, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v5, v6}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 131
    invoke-virtual {p0}, Lorg/andengine/util/level/LevelLoader;->onAfterLoadLevel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 139
    invoke-static {p1}, Lorg/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 141
    .end local v0           #levelParser:Lorg/andengine/util/level/LevelParser;
    .end local v3           #sp:Ljavax/xml/parsers/SAXParser;
    .end local v4           #spf:Ljavax/xml/parsers/SAXParserFactory;
    .end local v5           #xr:Lorg/xml/sax/XMLReader;
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v2

    .line 133
    .local v2, se:Lorg/xml/sax/SAXException;
    :try_start_1
    invoke-static {v2}, Lorg/andengine/util/debug/Debug;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    invoke-static {p1}, Lorg/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    .line 135
    .end local v2           #se:Lorg/xml/sax/SAXException;
    :catch_1
    move-exception v1

    .line 136
    .local v1, pe:Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_2
    invoke-static {v1}, Lorg/andengine/util/debug/Debug;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    invoke-static {p1}, Lorg/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    .line 138
    .end local v1           #pe:Ljavax/xml/parsers/ParserConfigurationException;
    :catchall_0
    move-exception v6

    .line 139
    invoke-static {p1}, Lorg/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 140
    throw v6
.end method

.method protected onAfterLoadLevel()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method protected onBeforeLoadLevel()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public registerEntityLoader(Ljava/lang/String;Lorg/andengine/util/level/IEntityLoader;)V
    .locals 1
    .parameter "pEntityName"
    .parameter "pEntityLoader"

    .prologue
    .line 98
    iget-object v0, p0, Lorg/andengine/util/level/LevelLoader;->mEntityLoaders:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    return-void
.end method

.method public registerEntityLoader([Ljava/lang/String;Lorg/andengine/util/level/IEntityLoader;)V
    .locals 3
    .parameter "pEntityNames"
    .parameter "pEntityLoader"

    .prologue
    .line 102
    iget-object v0, p0, Lorg/andengine/util/level/LevelLoader;->mEntityLoaders:Ljava/util/HashMap;

    .line 104
    .local v0, entityLoaders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lorg/andengine/util/level/IEntityLoader;>;"
    array-length v2, p1

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-gez v1, :cond_0

    .line 107
    return-void

    .line 105
    :cond_0
    aget-object v2, p1, v1

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public setAssetBasePath(Ljava/lang/String;)V
    .locals 2
    .parameter "pAssetBasePath"

    .prologue
    .line 70
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 71
    :cond_0
    iput-object p1, p0, Lorg/andengine/util/level/LevelLoader;->mAssetBasePath:Ljava/lang/String;

    .line 75
    return-void

    .line 73
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "pAssetBasePath must end with \'/\' or be lenght zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDefaultEntityLoader(Lorg/andengine/util/level/IEntityLoader;)V
    .locals 0
    .parameter "pDefaultEntityLoader"

    .prologue
    .line 63
    iput-object p1, p0, Lorg/andengine/util/level/LevelLoader;->mDefaultEntityLoader:Lorg/andengine/util/level/IEntityLoader;

    .line 64
    return-void
.end method
