.class public abstract Lorg/andengine/audio/BaseAudioEntity;
.super Ljava/lang/Object;
.source "BaseAudioEntity.java"

# interfaces
.implements Lorg/andengine/audio/IAudioEntity;


# instance fields
.field private final mAudioManager:Lorg/andengine/audio/IAudioManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/andengine/audio/IAudioManager",
            "<+",
            "Lorg/andengine/audio/IAudioEntity;",
            ">;"
        }
    .end annotation
.end field

.field protected mLeftVolume:F

.field private mReleased:Z

.field protected mRightVolume:F


# direct methods
.method public constructor <init>(Lorg/andengine/audio/IAudioManager;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/audio/IAudioManager",
            "<+",
            "Lorg/andengine/audio/IAudioEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, pAudioManager:Lorg/andengine/audio/IAudioManager;,"Lorg/andengine/audio/IAudioManager<+Lorg/andengine/audio/IAudioEntity;>;"
    const/high16 v0, 0x3f80

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput v0, p0, Lorg/andengine/audio/BaseAudioEntity;->mLeftVolume:F

    .line 24
    iput v0, p0, Lorg/andengine/audio/BaseAudioEntity;->mRightVolume:F

    .line 33
    iput-object p1, p0, Lorg/andengine/audio/BaseAudioEntity;->mAudioManager:Lorg/andengine/audio/IAudioManager;

    .line 34
    return-void
.end method


# virtual methods
.method protected assertNotReleased()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/audio/exception/AudioException;
        }
    .end annotation

    .prologue
    .line 152
    iget-boolean v0, p0, Lorg/andengine/audio/BaseAudioEntity;->mReleased:Z

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p0}, Lorg/andengine/audio/BaseAudioEntity;->throwOnReleased()V

    .line 155
    :cond_0
    return-void
.end method

.method public getActualLeftVolume()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/audio/exception/AudioException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-virtual {p0}, Lorg/andengine/audio/BaseAudioEntity;->assertNotReleased()V

    .line 53
    iget v0, p0, Lorg/andengine/audio/BaseAudioEntity;->mLeftVolume:F

    invoke-virtual {p0}, Lorg/andengine/audio/BaseAudioEntity;->getMasterVolume()F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public getActualRightVolume()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/audio/exception/AudioException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-virtual {p0}, Lorg/andengine/audio/BaseAudioEntity;->assertNotReleased()V

    .line 59
    iget v0, p0, Lorg/andengine/audio/BaseAudioEntity;->mRightVolume:F

    invoke-virtual {p0}, Lorg/andengine/audio/BaseAudioEntity;->getMasterVolume()F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method protected getAudioManager()Lorg/andengine/audio/IAudioManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/andengine/audio/IAudioManager",
            "<+",
            "Lorg/andengine/audio/IAudioEntity;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/audio/exception/AudioException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p0}, Lorg/andengine/audio/BaseAudioEntity;->assertNotReleased()V

    .line 47
    iget-object v0, p0, Lorg/andengine/audio/BaseAudioEntity;->mAudioManager:Lorg/andengine/audio/IAudioManager;

    return-object v0
.end method

.method public getLeftVolume()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/audio/exception/AudioException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-virtual {p0}, Lorg/andengine/audio/BaseAudioEntity;->assertNotReleased()V

    .line 85
    iget v0, p0, Lorg/andengine/audio/BaseAudioEntity;->mLeftVolume:F

    return v0
.end method

.method protected getMasterVolume()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/audio/exception/AudioException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p0}, Lorg/andengine/audio/BaseAudioEntity;->assertNotReleased()V

    .line 65
    iget-object v0, p0, Lorg/andengine/audio/BaseAudioEntity;->mAudioManager:Lorg/andengine/audio/IAudioManager;

    invoke-interface {v0}, Lorg/andengine/audio/IAudioManager;->getMasterVolume()F

    move-result v0

    return v0
.end method

.method public getRightVolume()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/audio/exception/AudioException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-virtual {p0}, Lorg/andengine/audio/BaseAudioEntity;->assertNotReleased()V

    .line 92
    iget v0, p0, Lorg/andengine/audio/BaseAudioEntity;->mRightVolume:F

    return v0
.end method

.method public getVolume()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/audio/exception/AudioException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p0}, Lorg/andengine/audio/BaseAudioEntity;->assertNotReleased()V

    .line 78
    iget v0, p0, Lorg/andengine/audio/BaseAudioEntity;->mLeftVolume:F

    iget v1, p0, Lorg/andengine/audio/BaseAudioEntity;->mRightVolume:F

    add-float/2addr v0, v1

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    return v0
.end method

.method public isReleased()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lorg/andengine/audio/BaseAudioEntity;->mReleased:Z

    return v0
.end method

.method public onMasterVolumeChanged(F)V
    .locals 0
    .parameter "pMasterVolume"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/audio/exception/AudioException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-virtual {p0}, Lorg/andengine/audio/BaseAudioEntity;->assertNotReleased()V

    .line 113
    return-void
.end method

.method public pause()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/audio/exception/AudioException;
        }
    .end annotation

    .prologue
    .line 122
    invoke-virtual {p0}, Lorg/andengine/audio/BaseAudioEntity;->assertNotReleased()V

    .line 123
    return-void
.end method

.method public play()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/audio/exception/AudioException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-virtual {p0}, Lorg/andengine/audio/BaseAudioEntity;->assertNotReleased()V

    .line 118
    return-void
.end method

.method public release()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/audio/exception/AudioException;
        }
    .end annotation

    .prologue
    .line 142
    invoke-virtual {p0}, Lorg/andengine/audio/BaseAudioEntity;->assertNotReleased()V

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/andengine/audio/BaseAudioEntity;->mReleased:Z

    .line 145
    return-void
.end method

.method public resume()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/audio/exception/AudioException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-virtual {p0}, Lorg/andengine/audio/BaseAudioEntity;->assertNotReleased()V

    .line 128
    return-void
.end method

.method public setLooping(Z)V
    .locals 0
    .parameter "pLooping"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/audio/exception/AudioException;
        }
    .end annotation

    .prologue
    .line 137
    invoke-virtual {p0}, Lorg/andengine/audio/BaseAudioEntity;->assertNotReleased()V

    .line 138
    return-void
.end method

.method public final setVolume(F)V
    .locals 0
    .parameter "pVolume"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/audio/exception/AudioException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-virtual {p0}, Lorg/andengine/audio/BaseAudioEntity;->assertNotReleased()V

    .line 99
    invoke-virtual {p0, p1, p1}, Lorg/andengine/audio/BaseAudioEntity;->setVolume(FF)V

    .line 100
    return-void
.end method

.method public setVolume(FF)V
    .locals 0
    .parameter "pLeftVolume"
    .parameter "pRightVolume"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/audio/exception/AudioException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-virtual {p0}, Lorg/andengine/audio/BaseAudioEntity;->assertNotReleased()V

    .line 106
    iput p1, p0, Lorg/andengine/audio/BaseAudioEntity;->mLeftVolume:F

    .line 107
    iput p2, p0, Lorg/andengine/audio/BaseAudioEntity;->mRightVolume:F

    .line 108
    return-void
.end method

.method public stop()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/audio/exception/AudioException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-virtual {p0}, Lorg/andengine/audio/BaseAudioEntity;->assertNotReleased()V

    .line 133
    return-void
.end method

.method protected abstract throwOnReleased()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/audio/exception/AudioException;
        }
    .end annotation
.end method
