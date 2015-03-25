.class public Lorg/andengine/audio/sound/Sound;
.super Lorg/andengine/audio/BaseAudioEntity;
.source "Sound.java"


# instance fields
.field private mLoaded:Z

.field private mLoopCount:I

.field private mRate:F

.field private mSoundID:I

.field private mStreamID:I


# direct methods
.method constructor <init>(Lorg/andengine/audio/sound/SoundManager;I)V
    .locals 1
    .parameter "pSoundManager"
    .parameter "pSoundID"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lorg/andengine/audio/BaseAudioEntity;-><init>(Lorg/andengine/audio/IAudioManager;)V

    .line 30
    const/high16 v0, 0x3f80

    iput v0, p0, Lorg/andengine/audio/sound/Sound;->mRate:F

    .line 39
    iput p2, p0, Lorg/andengine/audio/sound/Sound;->mSoundID:I

    .line 40
    return-void
.end method

.method private getSoundPool()Landroid/media/SoundPool;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/audio/sound/exception/SoundReleasedException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-virtual {p0}, Lorg/andengine/audio/sound/Sound;->getAudioManager()Lorg/andengine/audio/sound/SoundManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/andengine/audio/sound/SoundManager;->getSoundPool()Landroid/media/SoundPool;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic getAudioManager()Lorg/andengine/audio/IAudioManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/audio/exception/AudioException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/audio/sound/Sound;->getAudioManager()Lorg/andengine/audio/sound/SoundManager;

    move-result-object v0

    return-object v0
.end method

.method protected getAudioManager()Lorg/andengine/audio/sound/SoundManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/audio/sound/exception/SoundReleasedException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-super {p0}, Lorg/andengine/audio/BaseAudioEntity;->getAudioManager()Lorg/andengine/audio/IAudioManager;

    move-result-object v0

    check-cast v0, Lorg/andengine/audio/sound/SoundManager;

    return-object v0
.end method

.method public getRate()F
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lorg/andengine/audio/sound/Sound;->mRate:F

    return v0
.end method

.method public getSoundID()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lorg/andengine/audio/sound/Sound;->mSoundID:I

    return v0
.end method

.method public getStreamID()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lorg/andengine/audio/sound/Sound;->mStreamID:I

    return v0
.end method

.method public isLoaded()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lorg/andengine/audio/sound/Sound;->mLoaded:Z

    return v0
.end method

.method public onMasterVolumeChanged(F)V
    .locals 2
    .parameter "pMasterVolume"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/audio/sound/exception/SoundReleasedException;
        }
    .end annotation

    .prologue
    .line 175
    iget v0, p0, Lorg/andengine/audio/sound/Sound;->mLeftVolume:F

    iget v1, p0, Lorg/andengine/audio/sound/Sound;->mRightVolume:F

    invoke-virtual {p0, v0, v1}, Lorg/andengine/audio/sound/Sound;->setVolume(FF)V

    .line 176
    return-void
.end method

.method public pause()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/audio/sound/exception/SoundReleasedException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-super {p0}, Lorg/andengine/audio/BaseAudioEntity;->pause()V

    .line 135
    iget v0, p0, Lorg/andengine/audio/sound/Sound;->mStreamID:I

    if-eqz v0, :cond_0

    .line 136
    invoke-direct {p0}, Lorg/andengine/audio/sound/Sound;->getSoundPool()Landroid/media/SoundPool;

    move-result-object v0

    iget v1, p0, Lorg/andengine/audio/sound/Sound;->mStreamID:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->pause(I)V

    .line 138
    :cond_0
    return-void
.end method

.method public play()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/audio/sound/exception/SoundReleasedException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-super {p0}, Lorg/andengine/audio/BaseAudioEntity;->play()V

    .line 106
    invoke-virtual {p0}, Lorg/andengine/audio/sound/Sound;->getMasterVolume()F

    move-result v7

    .line 107
    .local v7, masterVolume:F
    iget v0, p0, Lorg/andengine/audio/sound/Sound;->mLeftVolume:F

    mul-float v2, v0, v7

    .line 108
    .local v2, leftVolume:F
    iget v0, p0, Lorg/andengine/audio/sound/Sound;->mRightVolume:F

    mul-float v3, v0, v7

    .line 110
    .local v3, rightVolume:F
    invoke-direct {p0}, Lorg/andengine/audio/sound/Sound;->getSoundPool()Landroid/media/SoundPool;

    move-result-object v0

    iget v1, p0, Lorg/andengine/audio/sound/Sound;->mSoundID:I

    const/4 v4, 0x1

    iget v5, p0, Lorg/andengine/audio/sound/Sound;->mLoopCount:I

    iget v6, p0, Lorg/andengine/audio/sound/Sound;->mRate:F

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lorg/andengine/audio/sound/Sound;->mStreamID:I

    .line 111
    return-void
.end method

.method public release()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/audio/sound/exception/SoundReleasedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 142
    invoke-virtual {p0}, Lorg/andengine/audio/sound/Sound;->assertNotReleased()V

    .line 144
    invoke-direct {p0}, Lorg/andengine/audio/sound/Sound;->getSoundPool()Landroid/media/SoundPool;

    move-result-object v0

    iget v1, p0, Lorg/andengine/audio/sound/Sound;->mSoundID:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->unload(I)Z

    .line 145
    iput v2, p0, Lorg/andengine/audio/sound/Sound;->mSoundID:I

    .line 146
    iput-boolean v2, p0, Lorg/andengine/audio/sound/Sound;->mLoaded:Z

    .line 148
    invoke-virtual {p0}, Lorg/andengine/audio/sound/Sound;->getAudioManager()Lorg/andengine/audio/sound/SoundManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/andengine/audio/sound/SoundManager;->remove(Lorg/andengine/audio/sound/Sound;)Z

    .line 150
    invoke-super {p0}, Lorg/andengine/audio/BaseAudioEntity;->release()V

    .line 151
    return-void
.end method

.method public resume()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/audio/sound/exception/SoundReleasedException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-super {p0}, Lorg/andengine/audio/BaseAudioEntity;->resume()V

    .line 126
    iget v0, p0, Lorg/andengine/audio/sound/Sound;->mStreamID:I

    if-eqz v0, :cond_0

    .line 127
    invoke-direct {p0}, Lorg/andengine/audio/sound/Sound;->getSoundPool()Landroid/media/SoundPool;

    move-result-object v0

    iget v1, p0, Lorg/andengine/audio/sound/Sound;->mStreamID:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->resume(I)V

    .line 129
    :cond_0
    return-void
.end method

.method public setLoaded(Z)V
    .locals 0
    .parameter "pLoaded"

    .prologue
    .line 59
    iput-boolean p1, p0, Lorg/andengine/audio/sound/Sound;->mLoaded:Z

    .line 60
    return-void
.end method

.method public setLoopCount(I)V
    .locals 2
    .parameter "pLoopCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/audio/sound/exception/SoundReleasedException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p0}, Lorg/andengine/audio/sound/Sound;->assertNotReleased()V

    .line 65
    iput p1, p0, Lorg/andengine/audio/sound/Sound;->mLoopCount:I

    .line 66
    iget v0, p0, Lorg/andengine/audio/sound/Sound;->mStreamID:I

    if-eqz v0, :cond_0

    .line 67
    invoke-direct {p0}, Lorg/andengine/audio/sound/Sound;->getSoundPool()Landroid/media/SoundPool;

    move-result-object v0

    iget v1, p0, Lorg/andengine/audio/sound/Sound;->mStreamID:I

    invoke-virtual {v0, v1, p1}, Landroid/media/SoundPool;->setLoop(II)V

    .line 69
    :cond_0
    return-void
.end method

.method public setLooping(Z)V
    .locals 1
    .parameter "pLooping"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/audio/sound/exception/SoundReleasedException;
        }
    .end annotation

    .prologue
    .line 155
    invoke-super {p0, p1}, Lorg/andengine/audio/BaseAudioEntity;->setLooping(Z)V

    .line 157
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Lorg/andengine/audio/sound/Sound;->setLoopCount(I)V

    .line 158
    return-void

    .line 157
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRate(F)V
    .locals 2
    .parameter "pRate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/audio/sound/exception/SoundReleasedException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p0}, Lorg/andengine/audio/sound/Sound;->assertNotReleased()V

    .line 78
    iput p1, p0, Lorg/andengine/audio/sound/Sound;->mRate:F

    .line 79
    iget v0, p0, Lorg/andengine/audio/sound/Sound;->mStreamID:I

    if-eqz v0, :cond_0

    .line 80
    invoke-direct {p0}, Lorg/andengine/audio/sound/Sound;->getSoundPool()Landroid/media/SoundPool;

    move-result-object v0

    iget v1, p0, Lorg/andengine/audio/sound/Sound;->mStreamID:I

    invoke-virtual {v0, v1, p1}, Landroid/media/SoundPool;->setRate(IF)V

    .line 82
    :cond_0
    return-void
.end method

.method public setVolume(FF)V
    .locals 5
    .parameter "pLeftVolume"
    .parameter "pRightVolume"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/audio/sound/exception/SoundReleasedException;
        }
    .end annotation

    .prologue
    .line 162
    invoke-super {p0, p1, p2}, Lorg/andengine/audio/BaseAudioEntity;->setVolume(FF)V

    .line 164
    iget v3, p0, Lorg/andengine/audio/sound/Sound;->mStreamID:I

    if-eqz v3, :cond_0

    .line 165
    invoke-virtual {p0}, Lorg/andengine/audio/sound/Sound;->getMasterVolume()F

    move-result v1

    .line 166
    .local v1, masterVolume:F
    iget v3, p0, Lorg/andengine/audio/sound/Sound;->mLeftVolume:F

    mul-float v0, v3, v1

    .line 167
    .local v0, leftVolume:F
    iget v3, p0, Lorg/andengine/audio/sound/Sound;->mRightVolume:F

    mul-float v2, v3, v1

    .line 169
    .local v2, rightVolume:F
    invoke-direct {p0}, Lorg/andengine/audio/sound/Sound;->getSoundPool()Landroid/media/SoundPool;

    move-result-object v3

    iget v4, p0, Lorg/andengine/audio/sound/Sound;->mStreamID:I

    invoke-virtual {v3, v4, v0, v2}, Landroid/media/SoundPool;->setVolume(IFF)V

    .line 171
    .end local v0           #leftVolume:F
    .end local v1           #masterVolume:F
    .end local v2           #rightVolume:F
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/audio/sound/exception/SoundReleasedException;
        }
    .end annotation

    .prologue
    .line 115
    invoke-super {p0}, Lorg/andengine/audio/BaseAudioEntity;->stop()V

    .line 117
    iget v0, p0, Lorg/andengine/audio/sound/Sound;->mStreamID:I

    if-eqz v0, :cond_0

    .line 118
    invoke-direct {p0}, Lorg/andengine/audio/sound/Sound;->getSoundPool()Landroid/media/SoundPool;

    move-result-object v0

    iget v1, p0, Lorg/andengine/audio/sound/Sound;->mStreamID:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 120
    :cond_0
    return-void
.end method

.method protected throwOnReleased()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/audio/sound/exception/SoundReleasedException;
        }
    .end annotation

    .prologue
    .line 99
    new-instance v0, Lorg/andengine/audio/sound/exception/SoundReleasedException;

    invoke-direct {v0}, Lorg/andengine/audio/sound/exception/SoundReleasedException;-><init>()V

    throw v0
.end method
