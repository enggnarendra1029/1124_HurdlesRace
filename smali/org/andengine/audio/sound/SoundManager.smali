.class public Lorg/andengine/audio/sound/SoundManager;
.super Lorg/andengine/audio/BaseAudioManager;
.source "SoundManager.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/andengine/audio/BaseAudioManager",
        "<",
        "Lorg/andengine/audio/sound/Sound;",
        ">;",
        "Landroid/media/SoundPool$OnLoadCompleteListener;"
    }
.end annotation


# static fields
.field public static final MAX_SIMULTANEOUS_STREAMS_DEFAULT:I = 0x5

.field private static final SOUND_STATUS_OK:I


# instance fields
.field private final mSoundMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/andengine/audio/sound/Sound;",
            ">;"
        }
    .end annotation
.end field

.field private final mSoundPool:Landroid/media/SoundPool;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lorg/andengine/audio/sound/SoundManager;-><init>(I)V

    .line 40
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .parameter "pMaxSimultaneousStreams"

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/andengine/audio/BaseAudioManager;-><init>()V

    .line 32
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/andengine/audio/sound/SoundManager;->mSoundMap:Landroid/util/SparseArray;

    .line 43
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lorg/andengine/audio/sound/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    .line 44
    iget-object v0, p0, Lorg/andengine/audio/sound/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, p0}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 45
    return-void
.end method


# virtual methods
.method public bridge synthetic add(Lorg/andengine/audio/IAudioEntity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lorg/andengine/audio/sound/Sound;

    invoke-virtual {p0, p1}, Lorg/andengine/audio/sound/SoundManager;->add(Lorg/andengine/audio/sound/Sound;)V

    return-void
.end method

.method public add(Lorg/andengine/audio/sound/Sound;)V
    .locals 2
    .parameter "pSound"

    .prologue
    .line 61
    invoke-super {p0, p1}, Lorg/andengine/audio/BaseAudioManager;->add(Lorg/andengine/audio/IAudioEntity;)V

    .line 63
    iget-object v0, p0, Lorg/andengine/audio/sound/SoundManager;->mSoundMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lorg/andengine/audio/sound/Sound;->getSoundID()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 64
    return-void
.end method

.method getSoundPool()Landroid/media/SoundPool;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/andengine/audio/sound/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method public declared-synchronized onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 4
    .parameter "pSoundPool"
    .parameter "pSoundID"
    .parameter "pStatus"

    .prologue
    .line 85
    monitor-enter p0

    if-nez p3, :cond_1

    .line 86
    :try_start_0
    iget-object v1, p0, Lorg/andengine/audio/sound/SoundManager;->mSoundMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/andengine/audio/sound/Sound;

    .line 87
    .local v0, sound:Lorg/andengine/audio/sound/Sound;
    if-nez v0, :cond_0

    .line 88
    new-instance v1, Lorg/andengine/audio/sound/exception/SoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected soundID: \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/andengine/audio/sound/exception/SoundException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .end local v0           #sound:Lorg/andengine/audio/sound/Sound;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 90
    .restart local v0       #sound:Lorg/andengine/audio/sound/Sound;
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {v0, v1}, Lorg/andengine/audio/sound/Sound;->setLoaded(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    .end local v0           #sound:Lorg/andengine/audio/sound/Sound;
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public releaseAll()V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Lorg/andengine/audio/BaseAudioManager;->releaseAll()V

    .line 80
    iget-object v0, p0, Lorg/andengine/audio/sound/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 81
    return-void
.end method

.method public bridge synthetic remove(Lorg/andengine/audio/IAudioEntity;)Z
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, Lorg/andengine/audio/sound/Sound;

    invoke-virtual {p0, p1}, Lorg/andengine/audio/sound/SoundManager;->remove(Lorg/andengine/audio/sound/Sound;)Z

    move-result v0

    return v0
.end method

.method public remove(Lorg/andengine/audio/sound/Sound;)Z
    .locals 3
    .parameter "pSound"

    .prologue
    .line 68
    invoke-super {p0, p1}, Lorg/andengine/audio/BaseAudioManager;->remove(Lorg/andengine/audio/IAudioEntity;)Z

    move-result v0

    .line 69
    .local v0, removed:Z
    if-eqz v0, :cond_0

    .line 70
    iget-object v1, p0, Lorg/andengine/audio/sound/SoundManager;->mSoundMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lorg/andengine/audio/sound/Sound;->getSoundID()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 72
    :cond_0
    return v0
.end method
