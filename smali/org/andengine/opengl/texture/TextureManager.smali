.class public Lorg/andengine/opengl/texture/TextureManager;
.super Ljava/lang/Object;
.source "TextureManager.java"


# instance fields
.field private mTextureWarmUpVertexBufferObject:Lorg/andengine/opengl/texture/TextureWarmUpVertexBufferObject;

.field private final mTexturesLoaded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/andengine/opengl/texture/ITexture;",
            ">;"
        }
    .end annotation
.end field

.field private final mTexturesManaged:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lorg/andengine/opengl/texture/ITexture;",
            ">;"
        }
    .end annotation
.end field

.field private final mTexturesMapped:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/andengine/opengl/texture/ITexture;",
            ">;"
        }
    .end annotation
.end field

.field private final mTexturesToBeLoaded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/andengine/opengl/texture/ITexture;",
            ">;"
        }
    .end annotation
.end field

.field private final mTexturesToBeUnloaded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/andengine/opengl/texture/ITexture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/andengine/opengl/texture/TextureManager;->mTexturesManaged:Ljava/util/HashSet;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/andengine/opengl/texture/TextureManager;->mTexturesMapped:Ljava/util/HashMap;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/andengine/opengl/texture/TextureManager;->mTexturesLoaded:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/andengine/opengl/texture/TextureManager;->mTexturesToBeLoaded:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/andengine/opengl/texture/TextureManager;->mTexturesToBeUnloaded:Ljava/util/ArrayList;

    .line 24
    return-void
.end method


# virtual methods
.method public declared-synchronized addMappedTexture(Ljava/lang/String;Lorg/andengine/opengl/texture/ITexture;)V
    .locals 3
    .parameter "pID"
    .parameter "pTexture"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 114
    monitor-enter p0

    if-nez p1, :cond_0

    .line 115
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pID must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 116
    :cond_0
    if-nez p2, :cond_1

    .line 117
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pTexture must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_1
    iget-object v0, p0, Lorg/andengine/opengl/texture/TextureManager;->mTexturesMapped:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Collision for pID: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_2
    iget-object v0, p0, Lorg/andengine/opengl/texture/TextureManager;->mTexturesMapped:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized getMappedTexture(Ljava/lang/String;)Lorg/andengine/opengl/texture/ITexture;
    .locals 2
    .parameter "pID"

    .prologue
    .line 107
    monitor-enter p0

    if-nez p1, :cond_0

    .line 108
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pID must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 110
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/andengine/opengl/texture/TextureManager;->mTexturesMapped:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/andengine/opengl/texture/ITexture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized getTexture(Ljava/lang/String;Landroid/content/res/AssetManager;Ljava/lang/String;)Lorg/andengine/opengl/texture/ITexture;
    .locals 1
    .parameter "pID"
    .parameter "pAssetManager"
    .parameter "pAssetPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 287
    monitor-enter p0

    :try_start_0
    sget-object v0, Lorg/andengine/opengl/texture/TextureOptions;->DEFAULT:Lorg/andengine/opengl/texture/TextureOptions;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/andengine/opengl/texture/TextureManager;->getTexture(Ljava/lang/String;Landroid/content/res/AssetManager;Ljava/lang/String;Lorg/andengine/opengl/texture/TextureOptions;)Lorg/andengine/opengl/texture/ITexture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTexture(Ljava/lang/String;Landroid/content/res/AssetManager;Ljava/lang/String;Lorg/andengine/opengl/texture/TextureOptions;)Lorg/andengine/opengl/texture/ITexture;
    .locals 2
    .parameter "pID"
    .parameter "pAssetManager"
    .parameter "pAssetPath"
    .parameter "pTextureOptions"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/andengine/opengl/texture/TextureManager;->hasMappedTexture(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    invoke-virtual {p0, p1}, Lorg/andengine/opengl/texture/TextureManager;->getMappedTexture(Ljava/lang/String;)Lorg/andengine/opengl/texture/ITexture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 298
    :goto_0
    monitor-exit p0

    return-object v0

    .line 294
    :cond_0
    :try_start_1
    new-instance v0, Lorg/andengine/opengl/texture/bitmap/BitmapTexture;

    new-instance v1, Lorg/andengine/util/adt/io/in/AssetInputStreamOpener;

    invoke-direct {v1, p2, p3}, Lorg/andengine/util/adt/io/in/AssetInputStreamOpener;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    invoke-direct {v0, p0, v1, p4}, Lorg/andengine/opengl/texture/bitmap/BitmapTexture;-><init>(Lorg/andengine/opengl/texture/TextureManager;Lorg/andengine/util/adt/io/in/IInputStreamOpener;Lorg/andengine/opengl/texture/TextureOptions;)V

    .line 295
    .local v0, texture:Lorg/andengine/opengl/texture/ITexture;
    invoke-virtual {p0, v0}, Lorg/andengine/opengl/texture/TextureManager;->loadTexture(Lorg/andengine/opengl/texture/ITexture;)Z

    .line 296
    invoke-virtual {p0, p1, v0}, Lorg/andengine/opengl/texture/TextureManager;->addMappedTexture(Ljava/lang/String;Lorg/andengine/opengl/texture/ITexture;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 291
    .end local v0           #texture:Lorg/andengine/opengl/texture/ITexture;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getTexture(Ljava/lang/String;Lorg/andengine/util/adt/io/in/IInputStreamOpener;)Lorg/andengine/opengl/texture/ITexture;
    .locals 1
    .parameter "pID"
    .parameter "pInputStreamOpener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 303
    monitor-enter p0

    :try_start_0
    sget-object v0, Lorg/andengine/opengl/texture/TextureOptions;->DEFAULT:Lorg/andengine/opengl/texture/TextureOptions;

    invoke-virtual {p0, p1, p2, v0}, Lorg/andengine/opengl/texture/TextureManager;->getTexture(Ljava/lang/String;Lorg/andengine/util/adt/io/in/IInputStreamOpener;Lorg/andengine/opengl/texture/TextureOptions;)Lorg/andengine/opengl/texture/ITexture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTexture(Ljava/lang/String;Lorg/andengine/util/adt/io/in/IInputStreamOpener;Lorg/andengine/opengl/texture/TextureOptions;)Lorg/andengine/opengl/texture/ITexture;
    .locals 1
    .parameter "pID"
    .parameter "pInputStreamOpener"
    .parameter "pTextureOptions"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 307
    monitor-enter p0

    :try_start_0
    sget-object v0, Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;->RGBA_8888:Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/andengine/opengl/texture/TextureManager;->getTexture(Ljava/lang/String;Lorg/andengine/util/adt/io/in/IInputStreamOpener;Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;Lorg/andengine/opengl/texture/TextureOptions;)Lorg/andengine/opengl/texture/ITexture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTexture(Ljava/lang/String;Lorg/andengine/util/adt/io/in/IInputStreamOpener;Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;Lorg/andengine/opengl/texture/TextureOptions;)Lorg/andengine/opengl/texture/ITexture;
    .locals 6
    .parameter "pID"
    .parameter "pInputStreamOpener"
    .parameter "pBitmapTextureFormat"
    .parameter "pTextureOptions"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 311
    monitor-enter p0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lorg/andengine/opengl/texture/TextureManager;->getTexture(Ljava/lang/String;Lorg/andengine/util/adt/io/in/IInputStreamOpener;Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;Lorg/andengine/opengl/texture/TextureOptions;Z)Lorg/andengine/opengl/texture/ITexture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTexture(Ljava/lang/String;Lorg/andengine/util/adt/io/in/IInputStreamOpener;Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;Lorg/andengine/opengl/texture/TextureOptions;Z)Lorg/andengine/opengl/texture/ITexture;
    .locals 2
    .parameter "pID"
    .parameter "pInputStreamOpener"
    .parameter "pBitmapTextureFormat"
    .parameter "pTextureOptions"
    .parameter "pLoadToHardware"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 315
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/andengine/opengl/texture/TextureManager;->hasMappedTexture(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    invoke-virtual {p0, p1}, Lorg/andengine/opengl/texture/TextureManager;->getMappedTexture(Ljava/lang/String;)Lorg/andengine/opengl/texture/ITexture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 324
    :goto_0
    monitor-exit p0

    return-object v0

    .line 318
    :cond_0
    :try_start_1
    new-instance v0, Lorg/andengine/opengl/texture/bitmap/BitmapTexture;

    invoke-direct {v0, p0, p2, p3, p4}, Lorg/andengine/opengl/texture/bitmap/BitmapTexture;-><init>(Lorg/andengine/opengl/texture/TextureManager;Lorg/andengine/util/adt/io/in/IInputStreamOpener;Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;Lorg/andengine/opengl/texture/TextureOptions;)V

    .line 319
    .local v0, texture:Lorg/andengine/opengl/texture/ITexture;
    if-eqz p5, :cond_1

    .line 320
    invoke-virtual {p0, v0}, Lorg/andengine/opengl/texture/TextureManager;->loadTexture(Lorg/andengine/opengl/texture/ITexture;)Z

    .line 322
    :cond_1
    invoke-virtual {p0, p1, v0}, Lorg/andengine/opengl/texture/TextureManager;->addMappedTexture(Ljava/lang/String;Lorg/andengine/opengl/texture/ITexture;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 315
    .end local v0           #texture:Lorg/andengine/opengl/texture/ITexture;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized hasMappedTexture(Ljava/lang/String;)Z
    .locals 2
    .parameter "pID"

    .prologue
    .line 100
    monitor-enter p0

    if-nez p1, :cond_0

    .line 101
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pID must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 103
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/andengine/opengl/texture/TextureManager;->mTexturesMapped:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized loadTexture(Lorg/andengine/opengl/texture/ITexture;)Z
    .locals 2
    .parameter "pTexture"

    .prologue
    .line 136
    monitor-enter p0

    if-nez p1, :cond_0

    .line 137
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pTexture must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 140
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/andengine/opengl/texture/TextureManager;->mTexturesManaged:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lorg/andengine/opengl/texture/TextureManager;->mTexturesToBeUnloaded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    const/4 v0, 0x0

    .line 147
    :goto_0
    monitor-exit p0

    return v0

    .line 145
    :cond_1
    :try_start_2
    iget-object v0, p0, Lorg/andengine/opengl/texture/TextureManager;->mTexturesManaged:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v0, p0, Lorg/andengine/opengl/texture/TextureManager;->mTexturesToBeLoaded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 147
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized loadTexture(Lorg/andengine/opengl/util/GLState;Lorg/andengine/opengl/texture/ITexture;)Z
    .locals 2
    .parameter "pGLState"
    .parameter "pTexture"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    monitor-enter p0

    if-nez p2, :cond_0

    .line 160
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pTexture must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 163
    :cond_0
    :try_start_1
    invoke-interface {p2}, Lorg/andengine/opengl/texture/ITexture;->isLoadedToHardware()Z

    move-result v0

    if-nez v0, :cond_2

    .line 164
    invoke-interface {p2, p1}, Lorg/andengine/opengl/texture/ITexture;->loadToHardware(Lorg/andengine/opengl/util/GLState;)V

    .line 169
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/andengine/opengl/texture/TextureManager;->mTexturesManaged:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 171
    iget-object v0, p0, Lorg/andengine/opengl/texture/TextureManager;->mTexturesToBeUnloaded:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    const/4 v0, 0x0

    .line 176
    :goto_1
    monitor-exit p0

    return v0

    .line 165
    :cond_2
    :try_start_2
    invoke-interface {p2}, Lorg/andengine/opengl/texture/ITexture;->isUpdateOnHardwareNeeded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    invoke-interface {p2, p1}, Lorg/andengine/opengl/texture/ITexture;->reloadToHardware(Lorg/andengine/opengl/util/GLState;)V

    goto :goto_0

    .line 174
    :cond_3
    iget-object v0, p0, Lorg/andengine/opengl/texture/TextureManager;->mTexturesManaged:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object v0, p0, Lorg/andengine/opengl/texture/TextureManager;->mTexturesLoaded:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 176
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public declared-synchronized onCreate()V
    .locals 1

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/andengine/opengl/texture/TextureWarmUpVertexBufferObject;

    invoke-direct {v0}, Lorg/andengine/opengl/texture/TextureWarmUpVertexBufferObject;-><init>()V

    iput-object v0, p0, Lorg/andengine/opengl/texture/TextureManager;->mTextureWarmUpVertexBufferObject:Lorg/andengine/opengl/texture/TextureWarmUpVertexBufferObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit p0

    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onDestroy()V
    .locals 4

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/andengine/opengl/texture/TextureManager;->mTexturesManaged:Ljava/util/HashSet;

    .line 86
    .local v0, managedTextures:Ljava/util/HashSet;,"Ljava/util/HashSet<Lorg/andengine/opengl/texture/ITexture;>;"
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 90
    iget-object v2, p0, Lorg/andengine/opengl/texture/TextureManager;->mTexturesToBeLoaded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 91
    iget-object v2, p0, Lorg/andengine/opengl/texture/TextureManager;->mTexturesLoaded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 92
    iget-object v2, p0, Lorg/andengine/opengl/texture/TextureManager;->mTexturesManaged:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 93
    iget-object v2, p0, Lorg/andengine/opengl/texture/TextureManager;->mTexturesMapped:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 95
    iget-object v2, p0, Lorg/andengine/opengl/texture/TextureManager;->mTextureWarmUpVertexBufferObject:Lorg/andengine/opengl/texture/TextureWarmUpVertexBufferObject;

    invoke-virtual {v2}, Lorg/andengine/opengl/texture/TextureWarmUpVertexBufferObject;->dispose()V

    .line 96
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/andengine/opengl/texture/TextureManager;->mTextureWarmUpVertexBufferObject:Lorg/andengine/opengl/texture/TextureWarmUpVertexBufferObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    monitor-exit p0

    return-void

    .line 86
    :cond_0
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/andengine/opengl/texture/ITexture;

    .line 87
    .local v1, texture:Lorg/andengine/opengl/texture/ITexture;
    invoke-interface {v1}, Lorg/andengine/opengl/texture/ITexture;->setNotLoadedToHardware()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 85
    .end local v0           #managedTextures:Ljava/util/HashSet;,"Ljava/util/HashSet<Lorg/andengine/opengl/texture/ITexture;>;"
    .end local v1           #texture:Lorg/andengine/opengl/texture/ITexture;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized onReload()V
    .locals 4

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/andengine/opengl/texture/TextureManager;->mTexturesManaged:Ljava/util/HashSet;

    .line 65
    .local v0, managedTextures:Ljava/util/HashSet;,"Ljava/util/HashSet<Lorg/andengine/opengl/texture/ITexture;>;"
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 66
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 71
    :cond_0
    iget-object v2, p0, Lorg/andengine/opengl/texture/TextureManager;->mTexturesLoaded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 72
    iget-object v2, p0, Lorg/andengine/opengl/texture/TextureManager;->mTexturesToBeLoaded:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/andengine/opengl/texture/TextureManager;->mTexturesLoaded:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 73
    iget-object v2, p0, Lorg/andengine/opengl/texture/TextureManager;->mTexturesLoaded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 76
    :cond_1
    iget-object v2, p0, Lorg/andengine/opengl/texture/TextureManager;->mTexturesToBeUnloaded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 77
    iget-object v2, p0, Lorg/andengine/opengl/texture/TextureManager;->mTexturesManaged:Ljava/util/HashSet;

    iget-object v3, p0, Lorg/andengine/opengl/texture/TextureManager;->mTexturesToBeUnloaded:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 78
    iget-object v2, p0, Lorg/andengine/opengl/texture/TextureManager;->mTexturesToBeUnloaded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 81
    :cond_2
    iget-object v2, p0, Lorg/andengine/opengl/texture/TextureManager;->mTextureWarmUpVertexBufferObject:Lorg/andengine/opengl/texture/TextureWarmUpVertexBufferObject;

    invoke-virtual {v2}, Lorg/andengine/opengl/texture/TextureWarmUpVertexBufferObject;->setNotLoadedToHardware()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    monitor-exit p0

    return-void

    .line 66
    :cond_3
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/andengine/opengl/texture/ITexture;

    .line 67
    .local v1, texture:Lorg/andengine/opengl/texture/ITexture;
    invoke-interface {v1}, Lorg/andengine/opengl/texture/ITexture;->setNotLoadedToHardware()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 64
    .end local v0           #managedTextures:Ljava/util/HashSet;,"Ljava/util/HashSet<Lorg/andengine/opengl/texture/ITexture;>;"
    .end local v1           #texture:Lorg/andengine/opengl/texture/ITexture;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized removedMappedTexture(Ljava/lang/String;)Lorg/andengine/opengl/texture/ITexture;
    .locals 2
    .parameter "pID"

    .prologue
    .line 125
    monitor-enter p0

    if-nez p1, :cond_0

    .line 126
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pID must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 128
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/andengine/opengl/texture/TextureManager;->mTexturesMapped:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/andengine/opengl/texture/ITexture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized unloadTexture(Lorg/andengine/opengl/texture/ITexture;)Z
    .locals 2
    .parameter "pTexture"

    .prologue
    .line 185
    monitor-enter p0

    if-nez p1, :cond_0

    .line 186
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pTexture must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 189
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/andengine/opengl/texture/TextureManager;->mTexturesManaged:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 192
    iget-object v0, p0, Lorg/andengine/opengl/texture/TextureManager;->mTexturesLoaded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 193
    iget-object v0, p0, Lorg/andengine/opengl/texture/TextureManager;->mTexturesToBeUnloaded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 199
    :goto_1
    monitor-exit p0

    return v0

    .line 194
    :cond_2
    :try_start_2
    iget-object v0, p0, Lorg/andengine/opengl/texture/TextureManager;->mTexturesToBeLoaded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lorg/andengine/opengl/texture/TextureManager;->mTexturesManaged:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 199
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public declared-synchronized unloadTexture(Lorg/andengine/opengl/util/GLState;Lorg/andengine/opengl/texture/ITexture;)Z
    .locals 2
    .parameter "pGLState"
    .parameter "pTexture"

    .prologue
    .line 211
    monitor-enter p0

    if-nez p2, :cond_0

    .line 212
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pTexture must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 213
    :cond_0
    :try_start_1
    invoke-interface {p2}, Lorg/andengine/opengl/texture/ITexture;->isLoadedToHardware()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    invoke-interface {p2, p1}, Lorg/andengine/opengl/texture/ITexture;->unloadFromHardware(Lorg/andengine/opengl/util/GLState;)V

    .line 217
    :cond_1
    iget-object v0, p0, Lorg/andengine/opengl/texture/TextureManager;->mTexturesManaged:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 219
    iget-object v0, p0, Lorg/andengine/opengl/texture/TextureManager;->mTexturesLoaded:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 220
    iget-object v0, p0, Lorg/andengine/opengl/texture/TextureManager;->mTexturesToBeLoaded:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    const/4 v0, 0x1

    .line 224
    :goto_0
    monitor-exit p0

    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized updateTextures(Lorg/andengine/opengl/util/GLState;)V
    .locals 12
    .parameter "pGLState"

    .prologue
    .line 229
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lorg/andengine/opengl/texture/TextureManager;->mTexturesManaged:Ljava/util/HashSet;

    .line 230
    .local v6, texturesManaged:Ljava/util/HashSet;,"Ljava/util/HashSet<Lorg/andengine/opengl/texture/ITexture;>;"
    iget-object v5, p0, Lorg/andengine/opengl/texture/TextureManager;->mTexturesLoaded:Ljava/util/ArrayList;

    .line 231
    .local v5, texturesLoaded:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/andengine/opengl/texture/ITexture;>;"
    iget-object v7, p0, Lorg/andengine/opengl/texture/TextureManager;->mTexturesToBeLoaded:Ljava/util/ArrayList;

    .line 232
    .local v7, texturesToBeLoaded:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/andengine/opengl/texture/ITexture;>;"
    iget-object v9, p0, Lorg/andengine/opengl/texture/TextureManager;->mTexturesToBeUnloaded:Ljava/util/ArrayList;

    .line 235
    .local v9, texturesToBeUnloaded:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/andengine/opengl/texture/ITexture;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v1, v11, -0x1

    .local v1, i:I
    :goto_0
    if-gez v1, :cond_4

    .line 247
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 249
    .local v8, texturesToBeLoadedCount:I
    if-lez v8, :cond_0

    .line 250
    add-int/lit8 v1, v8, -0x1

    :goto_1
    if-gez v1, :cond_6

    .line 267
    :cond_0
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 269
    .local v10, texturesToBeUnloadedCount:I
    if-lez v10, :cond_1

    .line 270
    add-int/lit8 v1, v10, -0x1

    :goto_2
    if-gez v1, :cond_8

    .line 281
    :cond_1
    if-gtz v8, :cond_2

    if-lez v10, :cond_3

    .line 282
    :cond_2
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    :cond_3
    monitor-exit p0

    return-void

    .line 236
    .end local v8           #texturesToBeLoadedCount:I
    .end local v10           #texturesToBeUnloadedCount:I
    :cond_4
    :try_start_1
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/andengine/opengl/texture/ITexture;

    .line 237
    .local v3, textureToBeReloaded:Lorg/andengine/opengl/texture/ITexture;
    invoke-interface {v3}, Lorg/andengine/opengl/texture/ITexture;->isUpdateOnHardwareNeeded()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v11

    if-eqz v11, :cond_5

    .line 239
    :try_start_2
    invoke-interface {v3, p1}, Lorg/andengine/opengl/texture/ITexture;->reloadToHardware(Lorg/andengine/opengl/util/GLState;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 235
    :cond_5
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    invoke-static {v0}, Lorg/andengine/util/debug/Debug;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 229
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #i:I
    .end local v3           #textureToBeReloaded:Lorg/andengine/opengl/texture/ITexture;
    .end local v5           #texturesLoaded:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/andengine/opengl/texture/ITexture;>;"
    .end local v6           #texturesManaged:Ljava/util/HashSet;,"Ljava/util/HashSet<Lorg/andengine/opengl/texture/ITexture;>;"
    .end local v7           #texturesToBeLoaded:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/andengine/opengl/texture/ITexture;>;"
    .end local v9           #texturesToBeUnloaded:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/andengine/opengl/texture/ITexture;>;"
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 251
    .restart local v1       #i:I
    .restart local v5       #texturesLoaded:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/andengine/opengl/texture/ITexture;>;"
    .restart local v6       #texturesManaged:Ljava/util/HashSet;,"Ljava/util/HashSet<Lorg/andengine/opengl/texture/ITexture;>;"
    .restart local v7       #texturesToBeLoaded:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/andengine/opengl/texture/ITexture;>;"
    .restart local v8       #texturesToBeLoadedCount:I
    .restart local v9       #texturesToBeUnloaded:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/andengine/opengl/texture/ITexture;>;"
    :cond_6
    :try_start_4
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/andengine/opengl/texture/ITexture;

    .line 252
    .local v2, textureToBeLoaded:Lorg/andengine/opengl/texture/ITexture;
    invoke-interface {v2}, Lorg/andengine/opengl/texture/ITexture;->isLoadedToHardware()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v11

    if-nez v11, :cond_7

    .line 254
    :try_start_5
    invoke-interface {v2, p1}, Lorg/andengine/opengl/texture/ITexture;->loadToHardware(Lorg/andengine/opengl/util/GLState;)V

    .line 257
    iget-object v11, p0, Lorg/andengine/opengl/texture/TextureManager;->mTextureWarmUpVertexBufferObject:Lorg/andengine/opengl/texture/TextureWarmUpVertexBufferObject;

    invoke-virtual {v11, p1, v2}, Lorg/andengine/opengl/texture/TextureWarmUpVertexBufferObject;->warmup(Lorg/andengine/opengl/util/GLState;Lorg/andengine/opengl/texture/ITexture;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 262
    :cond_7
    :goto_4
    :try_start_6
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 258
    :catch_1
    move-exception v0

    .line 259
    .restart local v0       #e:Ljava/io/IOException;
    invoke-static {v0}, Lorg/andengine/util/debug/Debug;->e(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 271
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #textureToBeLoaded:Lorg/andengine/opengl/texture/ITexture;
    .restart local v10       #texturesToBeUnloadedCount:I
    :cond_8
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/andengine/opengl/texture/ITexture;

    .line 272
    .local v4, textureToBeUnloaded:Lorg/andengine/opengl/texture/ITexture;
    invoke-interface {v4}, Lorg/andengine/opengl/texture/ITexture;->isLoadedToHardware()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 273
    invoke-interface {v4, p1}, Lorg/andengine/opengl/texture/ITexture;->unloadFromHardware(Lorg/andengine/opengl/util/GLState;)V

    .line 275
    :cond_9
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 276
    invoke-virtual {v6, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 270
    add-int/lit8 v1, v1, -0x1

    goto :goto_2
.end method
