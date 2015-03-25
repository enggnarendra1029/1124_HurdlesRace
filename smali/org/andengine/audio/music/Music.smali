.class public Lorg/andengine/audio/music/Music;
.super Lorg/andengine/audio/BaseAudioEntity;
.source "Music.java"


# instance fields
.field private mMediaPlayer:Landroid/media/MediaPlayer;


# direct methods
.method constructor <init>(Lorg/andengine/audio/music/MusicManager;Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter "pMusicManager"
    .parameter "pMediaPlayer"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lorg/andengine/audio/BaseAudioEntity;-><init>(Lorg/andengine/audio/IAudioManager;)V

    .line 34
    iput-object p2, p0, Lorg/andengine/audio/music/Music;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 35
    return-void
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
    invoke-virtual {p0}, Lorg/andengine/audio/music/Music;->getAudioManager()Lorg/andengine/audio/music/MusicManager;

    move-result-object v0

    return-object v0
.end method

.method protected getAudioManager()Lorg/andengine/audio/music/MusicManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/audio/music/exception/MusicReleasedException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-super {p0}, Lorg/andengine/audio/BaseAudioEntity;->getAudioManager()Lorg/andengine/audio/IAudioManager;

    move-result-object v0

    check-cast v0, Lorg/andengine/audio/music/MusicManager;

    return-object v0
.end method

.method public getMediaPlayer()Landroid/media/MediaPlayer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/audio/music/exception/MusicReleasedException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-virtual {p0}, Lorg/andengine/audio/music/Music;->assertNotReleased()V

    .line 50
    iget-object v0, p0, Lorg/andengine/audio/music/Music;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method public isPlaying()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/audio/music/exception/MusicReleasedException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p0}, Lorg/andengine/audio/music/Music;->assertNotReleased()V

    .line 44
    iget-object v0, p0, Lorg/andengine/audio/music/Music;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public onMasterVolumeChanged(F)V
    .locals 2
    .parameter "pMasterVolume"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/audio/music/exception/MusicReleasedException;
        }
    .end annotation

    .prologue
    .line 115
    iget v0, p0, Lorg/andengine/audio/music/Music;->mLeftVolume:F

    iget v1, p0, Lorg/andengine/audio/music/Music;->mRightVolume:F

    invoke-virtual {p0, v0, v1}, Lorg/andengine/audio/music/Music;->setVolume(FF)V

    .line 116
    return-void
.end method

.method public pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/audio/music/exception/MusicReleasedException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-super {p0}, Lorg/andengine/audio/BaseAudioEntity;->pause()V

    .line 92
    iget-object v0, p0, Lorg/andengine/audio/music/Music;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 93
    return-void
.end method

.method public play()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/audio/music/exception/MusicReleasedException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-super {p0}, Lorg/andengine/audio/BaseAudioEntity;->play()V

    .line 71
    iget-object v0, p0, Lorg/andengine/audio/music/Music;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 72
    return-void
.end method

.method public release()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/audio/music/exception/MusicReleasedException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-virtual {p0}, Lorg/andengine/audio/music/Music;->assertNotReleased()V

    .line 122
    iget-object v0, p0, Lorg/andengine/audio/music/Music;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/andengine/audio/music/Music;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 125
    invoke-virtual {p0}, Lorg/andengine/audio/music/Music;->getAudioManager()Lorg/andengine/audio/music/MusicManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/andengine/audio/music/MusicManager;->remove(Lorg/andengine/audio/IAudioEntity;)Z

    .line 127
    invoke-super {p0}, Lorg/andengine/audio/BaseAudioEntity;->release()V

    .line 128
    return-void
.end method

.method public resume()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/audio/music/exception/MusicReleasedException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-super {p0}, Lorg/andengine/audio/BaseAudioEntity;->resume()V

    .line 85
    iget-object v0, p0, Lorg/andengine/audio/music/Music;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 86
    return-void
.end method

.method public seekTo(I)V
    .locals 1
    .parameter "pMilliseconds"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/audio/music/exception/MusicReleasedException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-virtual {p0}, Lorg/andengine/audio/music/Music;->assertNotReleased()V

    .line 137
    iget-object v0, p0, Lorg/andengine/audio/music/Music;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 138
    return-void
.end method

.method public setLooping(Z)V
    .locals 1
    .parameter "pLooping"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/audio/music/exception/MusicReleasedException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-super {p0, p1}, Lorg/andengine/audio/BaseAudioEntity;->setLooping(Z)V

    .line 99
    iget-object v0, p0, Lorg/andengine/audio/music/Music;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 100
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 1
    .parameter "pOnCompletionListener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/audio/music/exception/MusicReleasedException;
        }
    .end annotation

    .prologue
    .line 141
    invoke-virtual {p0}, Lorg/andengine/audio/music/Music;->assertNotReleased()V

    .line 143
    iget-object v0, p0, Lorg/andengine/audio/music/Music;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 144
    return-void
.end method

.method public setVolume(FF)V
    .locals 4
    .parameter "pLeftVolume"
    .parameter "pRightVolume"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/audio/music/exception/MusicReleasedException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-super {p0, p1, p2}, Lorg/andengine/audio/BaseAudioEntity;->setVolume(FF)V

    .line 106
    invoke-virtual {p0}, Lorg/andengine/audio/music/Music;->getAudioManager()Lorg/andengine/audio/music/MusicManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/andengine/audio/music/MusicManager;->getMasterVolume()F

    move-result v2

    .line 107
    .local v2, masterVolume:F
    mul-float v0, p1, v2

    .line 108
    .local v0, actualLeftVolume:F
    mul-float v1, p2, v2

    .line 110
    .local v1, actualRightVolume:F
    iget-object v3, p0, Lorg/andengine/audio/music/Music;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v0, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 111
    return-void
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/audio/music/exception/MusicReleasedException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-super {p0}, Lorg/andengine/audio/BaseAudioEntity;->stop()V

    .line 78
    iget-object v0, p0, Lorg/andengine/audio/music/Music;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 79
    return-void
.end method

.method protected throwOnReleased()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/audio/music/exception/MusicReleasedException;
        }
    .end annotation

    .prologue
    .line 64
    new-instance v0, Lorg/andengine/audio/music/exception/MusicReleasedException;

    invoke-direct {v0}, Lorg/andengine/audio/music/exception/MusicReleasedException;-><init>()V

    throw v0
.end method
