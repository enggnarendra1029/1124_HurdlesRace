.class public Lorg/andengine/engine/options/AudioOptions;
.super Ljava/lang/Object;
.source "AudioOptions.java"


# instance fields
.field private mMusicOptions:Lorg/andengine/engine/options/MusicOptions;

.field private mSoundOptions:Lorg/andengine/engine/options/SoundOptions;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lorg/andengine/engine/options/SoundOptions;

    invoke-direct {v0}, Lorg/andengine/engine/options/SoundOptions;-><init>()V

    iput-object v0, p0, Lorg/andengine/engine/options/AudioOptions;->mSoundOptions:Lorg/andengine/engine/options/SoundOptions;

    .line 19
    new-instance v0, Lorg/andengine/engine/options/MusicOptions;

    invoke-direct {v0}, Lorg/andengine/engine/options/MusicOptions;-><init>()V

    iput-object v0, p0, Lorg/andengine/engine/options/AudioOptions;->mMusicOptions:Lorg/andengine/engine/options/MusicOptions;

    .line 9
    return-void
.end method


# virtual methods
.method public getMusicOptions()Lorg/andengine/engine/options/MusicOptions;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lorg/andengine/engine/options/AudioOptions;->mMusicOptions:Lorg/andengine/engine/options/MusicOptions;

    return-object v0
.end method

.method public getSoundOptions()Lorg/andengine/engine/options/SoundOptions;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lorg/andengine/engine/options/AudioOptions;->mSoundOptions:Lorg/andengine/engine/options/SoundOptions;

    return-object v0
.end method

.method public needsMusic()Z
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/andengine/engine/options/AudioOptions;->mMusicOptions:Lorg/andengine/engine/options/MusicOptions;

    invoke-virtual {v0}, Lorg/andengine/engine/options/MusicOptions;->needsMusic()Z

    move-result v0

    return v0
.end method

.method public needsSound()Z
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lorg/andengine/engine/options/AudioOptions;->mSoundOptions:Lorg/andengine/engine/options/SoundOptions;

    invoke-virtual {v0}, Lorg/andengine/engine/options/SoundOptions;->needsSound()Z

    move-result v0

    return v0
.end method

.method public setNeedsMusic(Z)Lorg/andengine/engine/options/AudioOptions;
    .locals 1
    .parameter "pNeedsMusic"

    .prologue
    .line 51
    iget-object v0, p0, Lorg/andengine/engine/options/AudioOptions;->mMusicOptions:Lorg/andengine/engine/options/MusicOptions;

    invoke-virtual {v0, p1}, Lorg/andengine/engine/options/MusicOptions;->setNeedsMusic(Z)Lorg/andengine/engine/options/MusicOptions;

    .line 52
    return-object p0
.end method

.method public setNeedsSound(Z)Lorg/andengine/engine/options/AudioOptions;
    .locals 1
    .parameter "pNeedsSound"

    .prologue
    .line 42
    iget-object v0, p0, Lorg/andengine/engine/options/AudioOptions;->mSoundOptions:Lorg/andengine/engine/options/SoundOptions;

    invoke-virtual {v0, p1}, Lorg/andengine/engine/options/SoundOptions;->setNeedsSound(Z)Lorg/andengine/engine/options/SoundOptions;

    .line 43
    return-object p0
.end method
