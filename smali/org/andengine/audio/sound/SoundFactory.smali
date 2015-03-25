.class public Lorg/andengine/audio/sound/SoundFactory;
.super Ljava/lang/Object;
.source "SoundFactory.java"


# static fields
.field private static sAssetBasePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, ""

    sput-object v0, Lorg/andengine/audio/sound/SoundFactory;->sAssetBasePath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSoundFromAsset(Lorg/andengine/audio/sound/SoundManager;Landroid/content/Context;Ljava/lang/String;)Lorg/andengine/audio/sound/Sound;
    .locals 6
    .parameter "pSoundManager"
    .parameter "pContext"
    .parameter "pAssetPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    monitor-enter p0

    .line 74
    :try_start_0
    invoke-virtual {p0}, Lorg/andengine/audio/sound/SoundManager;->getSoundPool()Landroid/media/SoundPool;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lorg/andengine/audio/sound/SoundFactory;->sAssetBasePath:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v1

    .line 75
    .local v1, soundID:I
    new-instance v0, Lorg/andengine/audio/sound/Sound;

    invoke-direct {v0, p0, v1}, Lorg/andengine/audio/sound/Sound;-><init>(Lorg/andengine/audio/sound/SoundManager;I)V

    .line 76
    .local v0, sound:Lorg/andengine/audio/sound/Sound;
    invoke-virtual {p0, v0}, Lorg/andengine/audio/sound/SoundManager;->add(Lorg/andengine/audio/sound/Sound;)V

    .line 77
    monitor-exit p0

    return-object v0

    .line 73
    .end local v0           #sound:Lorg/andengine/audio/sound/Sound;
    .end local v1           #soundID:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static createSoundFromAssetFileDescriptor(Lorg/andengine/audio/sound/SoundManager;Landroid/content/res/AssetFileDescriptor;)Lorg/andengine/audio/sound/Sound;
    .locals 4
    .parameter "pSoundManager"
    .parameter "pAssetFileDescriptor"

    .prologue
    .line 95
    monitor-enter p0

    .line 96
    :try_start_0
    invoke-virtual {p0}, Lorg/andengine/audio/sound/SoundManager;->getSoundPool()Landroid/media/SoundPool;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v1

    .line 97
    .local v1, soundID:I
    new-instance v0, Lorg/andengine/audio/sound/Sound;

    invoke-direct {v0, p0, v1}, Lorg/andengine/audio/sound/Sound;-><init>(Lorg/andengine/audio/sound/SoundManager;I)V

    .line 98
    .local v0, sound:Lorg/andengine/audio/sound/Sound;
    invoke-virtual {p0, v0}, Lorg/andengine/audio/sound/SoundManager;->add(Lorg/andengine/audio/sound/Sound;)V

    .line 99
    monitor-exit p0

    return-object v0

    .line 95
    .end local v0           #sound:Lorg/andengine/audio/sound/Sound;
    .end local v1           #soundID:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static createSoundFromFile(Lorg/andengine/audio/sound/SoundManager;Ljava/io/File;)Lorg/andengine/audio/sound/Sound;
    .locals 1
    .parameter "pSoundManager"
    .parameter "pFile"

    .prologue
    .line 91
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/andengine/audio/sound/SoundFactory;->createSoundFromPath(Lorg/andengine/audio/sound/SoundManager;Ljava/lang/String;)Lorg/andengine/audio/sound/Sound;

    move-result-object v0

    return-object v0
.end method

.method public static createSoundFromFileDescriptor(Lorg/andengine/audio/sound/SoundManager;Ljava/io/FileDescriptor;JJ)Lorg/andengine/audio/sound/Sound;
    .locals 9
    .parameter "pSoundManager"
    .parameter "pFileDescriptor"
    .parameter "pOffset"
    .parameter "pLength"

    .prologue
    .line 104
    monitor-enter p0

    .line 105
    :try_start_0
    invoke-virtual {p0}, Lorg/andengine/audio/sound/SoundManager;->getSoundPool()Landroid/media/SoundPool;

    move-result-object v0

    const/4 v6, 0x1

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->load(Ljava/io/FileDescriptor;JJI)I

    move-result v8

    .line 106
    .local v8, soundID:I
    new-instance v7, Lorg/andengine/audio/sound/Sound;

    invoke-direct {v7, p0, v8}, Lorg/andengine/audio/sound/Sound;-><init>(Lorg/andengine/audio/sound/SoundManager;I)V

    .line 107
    .local v7, sound:Lorg/andengine/audio/sound/Sound;
    invoke-virtual {p0, v7}, Lorg/andengine/audio/sound/SoundManager;->add(Lorg/andengine/audio/sound/Sound;)V

    .line 108
    monitor-exit p0

    return-object v7

    .line 104
    .end local v7           #sound:Lorg/andengine/audio/sound/Sound;
    .end local v8           #soundID:I
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static createSoundFromPath(Lorg/andengine/audio/sound/SoundManager;Ljava/lang/String;)Lorg/andengine/audio/sound/Sound;
    .locals 4
    .parameter "pSoundManager"
    .parameter "pPath"

    .prologue
    .line 64
    monitor-enter p0

    .line 65
    :try_start_0
    invoke-virtual {p0}, Lorg/andengine/audio/sound/SoundManager;->getSoundPool()Landroid/media/SoundPool;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    .line 66
    .local v1, soundID:I
    new-instance v0, Lorg/andengine/audio/sound/Sound;

    invoke-direct {v0, p0, v1}, Lorg/andengine/audio/sound/Sound;-><init>(Lorg/andengine/audio/sound/SoundManager;I)V

    .line 67
    .local v0, sound:Lorg/andengine/audio/sound/Sound;
    invoke-virtual {p0, v0}, Lorg/andengine/audio/sound/SoundManager;->add(Lorg/andengine/audio/sound/Sound;)V

    .line 68
    monitor-exit p0

    return-object v0

    .line 64
    .end local v0           #sound:Lorg/andengine/audio/sound/Sound;
    .end local v1           #soundID:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static createSoundFromResource(Lorg/andengine/audio/sound/SoundManager;Landroid/content/Context;I)Lorg/andengine/audio/sound/Sound;
    .locals 4
    .parameter "pSoundManager"
    .parameter "pContext"
    .parameter "pSoundResID"

    .prologue
    .line 82
    monitor-enter p0

    .line 83
    :try_start_0
    invoke-virtual {p0}, Lorg/andengine/audio/sound/SoundManager;->getSoundPool()Landroid/media/SoundPool;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, p2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    .line 84
    .local v1, soundID:I
    new-instance v0, Lorg/andengine/audio/sound/Sound;

    invoke-direct {v0, p0, v1}, Lorg/andengine/audio/sound/Sound;-><init>(Lorg/andengine/audio/sound/SoundManager;I)V

    .line 85
    .local v0, sound:Lorg/andengine/audio/sound/Sound;
    invoke-virtual {p0, v0}, Lorg/andengine/audio/sound/SoundManager;->add(Lorg/andengine/audio/sound/Sound;)V

    .line 86
    monitor-exit p0

    return-object v0

    .line 82
    .end local v0           #sound:Lorg/andengine/audio/sound/Sound;
    .end local v1           #soundID:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getAssetBasePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lorg/andengine/audio/sound/SoundFactory;->sAssetBasePath:Ljava/lang/String;

    return-object v0
.end method

.method public static onCreate()V
    .locals 1

    .prologue
    .line 52
    const-string v0, ""

    invoke-static {v0}, Lorg/andengine/audio/sound/SoundFactory;->setAssetBasePath(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static setAssetBasePath(Ljava/lang/String;)V
    .locals 2
    .parameter "pAssetBasePath"

    .prologue
    .line 40
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 41
    :cond_0
    sput-object p0, Lorg/andengine/audio/sound/SoundFactory;->sAssetBasePath:Ljava/lang/String;

    .line 45
    return-void

    .line 43
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "pAssetBasePath must end with \'/\' or be lenght zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
