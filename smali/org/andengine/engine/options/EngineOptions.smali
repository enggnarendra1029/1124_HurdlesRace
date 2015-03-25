.class public Lorg/andengine/engine/options/EngineOptions;
.super Ljava/lang/Object;
.source "EngineOptions.java"


# instance fields
.field private final mAudioOptions:Lorg/andengine/engine/options/AudioOptions;

.field private final mCamera:Lorg/andengine/engine/camera/Camera;

.field private mEngineLock:Lorg/andengine/engine/Engine$EngineLock;

.field private final mFullscreen:Z

.field private final mRenderOptions:Lorg/andengine/engine/options/RenderOptions;

.field private final mResolutionPolicy:Lorg/andengine/engine/options/resolutionpolicy/IResolutionPolicy;

.field private final mScreenOrientation:Lorg/andengine/engine/options/ScreenOrientation;

.field private final mTouchOptions:Lorg/andengine/engine/options/TouchOptions;

.field private mUpdateThread:Lorg/andengine/engine/Engine$UpdateThread;

.field private mUpdateThreadPriority:I

.field private mWakeLockOptions:Lorg/andengine/engine/options/WakeLockOptions;


# direct methods
.method public constructor <init>(ZLorg/andengine/engine/options/ScreenOrientation;Lorg/andengine/engine/options/resolutionpolicy/IResolutionPolicy;Lorg/andengine/engine/camera/Camera;)V
    .locals 1
    .parameter "pFullscreen"
    .parameter "pScreenOrientation"
    .parameter "pResolutionPolicy"
    .parameter "pCamera"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lorg/andengine/engine/options/TouchOptions;

    invoke-direct {v0}, Lorg/andengine/engine/options/TouchOptions;-><init>()V

    iput-object v0, p0, Lorg/andengine/engine/options/EngineOptions;->mTouchOptions:Lorg/andengine/engine/options/TouchOptions;

    .line 32
    new-instance v0, Lorg/andengine/engine/options/AudioOptions;

    invoke-direct {v0}, Lorg/andengine/engine/options/AudioOptions;-><init>()V

    iput-object v0, p0, Lorg/andengine/engine/options/EngineOptions;->mAudioOptions:Lorg/andengine/engine/options/AudioOptions;

    .line 33
    new-instance v0, Lorg/andengine/engine/options/RenderOptions;

    invoke-direct {v0}, Lorg/andengine/engine/options/RenderOptions;-><init>()V

    iput-object v0, p0, Lorg/andengine/engine/options/EngineOptions;->mRenderOptions:Lorg/andengine/engine/options/RenderOptions;

    .line 35
    sget-object v0, Lorg/andengine/engine/options/WakeLockOptions;->SCREEN_ON:Lorg/andengine/engine/options/WakeLockOptions;

    iput-object v0, p0, Lorg/andengine/engine/options/EngineOptions;->mWakeLockOptions:Lorg/andengine/engine/options/WakeLockOptions;

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lorg/andengine/engine/options/EngineOptions;->mUpdateThreadPriority:I

    .line 45
    iput-boolean p1, p0, Lorg/andengine/engine/options/EngineOptions;->mFullscreen:Z

    .line 46
    iput-object p2, p0, Lorg/andengine/engine/options/EngineOptions;->mScreenOrientation:Lorg/andengine/engine/options/ScreenOrientation;

    .line 47
    iput-object p3, p0, Lorg/andengine/engine/options/EngineOptions;->mResolutionPolicy:Lorg/andengine/engine/options/resolutionpolicy/IResolutionPolicy;

    .line 48
    iput-object p4, p0, Lorg/andengine/engine/options/EngineOptions;->mCamera:Lorg/andengine/engine/camera/Camera;

    .line 49
    return-void
.end method


# virtual methods
.method public getAudioOptions()Lorg/andengine/engine/options/AudioOptions;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/andengine/engine/options/EngineOptions;->mAudioOptions:Lorg/andengine/engine/options/AudioOptions;

    return-object v0
.end method

.method public getCamera()Lorg/andengine/engine/camera/Camera;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/andengine/engine/options/EngineOptions;->mCamera:Lorg/andengine/engine/camera/Camera;

    return-object v0
.end method

.method public getEngineLock()Lorg/andengine/engine/Engine$EngineLock;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/andengine/engine/options/EngineOptions;->mEngineLock:Lorg/andengine/engine/Engine$EngineLock;

    return-object v0
.end method

.method public getRenderOptions()Lorg/andengine/engine/options/RenderOptions;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/andengine/engine/options/EngineOptions;->mRenderOptions:Lorg/andengine/engine/options/RenderOptions;

    return-object v0
.end method

.method public getResolutionPolicy()Lorg/andengine/engine/options/resolutionpolicy/IResolutionPolicy;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/andengine/engine/options/EngineOptions;->mResolutionPolicy:Lorg/andengine/engine/options/resolutionpolicy/IResolutionPolicy;

    return-object v0
.end method

.method public getScreenOrientation()Lorg/andengine/engine/options/ScreenOrientation;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/andengine/engine/options/EngineOptions;->mScreenOrientation:Lorg/andengine/engine/options/ScreenOrientation;

    return-object v0
.end method

.method public getTouchOptions()Lorg/andengine/engine/options/TouchOptions;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/andengine/engine/options/EngineOptions;->mTouchOptions:Lorg/andengine/engine/options/TouchOptions;

    return-object v0
.end method

.method public getUpdateThread()Lorg/andengine/engine/Engine$UpdateThread;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/andengine/engine/options/EngineOptions;->mUpdateThread:Lorg/andengine/engine/Engine$UpdateThread;

    return-object v0
.end method

.method public getUpdateThreadPriority()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lorg/andengine/engine/options/EngineOptions;->mUpdateThreadPriority:I

    return v0
.end method

.method public getWakeLockOptions()Lorg/andengine/engine/options/WakeLockOptions;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/andengine/engine/options/EngineOptions;->mWakeLockOptions:Lorg/andengine/engine/options/WakeLockOptions;

    return-object v0
.end method

.method public hasEngineLock()Z
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/andengine/engine/options/EngineOptions;->mEngineLock:Lorg/andengine/engine/Engine$EngineLock;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUpdateThread()Z
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/andengine/engine/options/EngineOptions;->mUpdateThread:Lorg/andengine/engine/Engine$UpdateThread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFullscreen()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lorg/andengine/engine/options/EngineOptions;->mFullscreen:Z

    return v0
.end method

.method public setEngineLock(Lorg/andengine/engine/Engine$EngineLock;)V
    .locals 0
    .parameter "pEngineLock"

    .prologue
    .line 64
    iput-object p1, p0, Lorg/andengine/engine/options/EngineOptions;->mEngineLock:Lorg/andengine/engine/Engine$EngineLock;

    .line 65
    return-void
.end method

.method public setUpdateThread(Lorg/andengine/engine/Engine$UpdateThread;)V
    .locals 0
    .parameter "pUpdateThread"

    .prologue
    .line 104
    iput-object p1, p0, Lorg/andengine/engine/options/EngineOptions;->mUpdateThread:Lorg/andengine/engine/Engine$UpdateThread;

    .line 105
    return-void
.end method

.method public setUpdateThreadPriority(I)V
    .locals 0
    .parameter "pUpdateThreadPriority"

    .prologue
    .line 115
    iput p1, p0, Lorg/andengine/engine/options/EngineOptions;->mUpdateThreadPriority:I

    .line 116
    return-void
.end method

.method public setWakeLockOptions(Lorg/andengine/engine/options/WakeLockOptions;)Lorg/andengine/engine/options/EngineOptions;
    .locals 0
    .parameter "pWakeLockOptions"

    .prologue
    .line 123
    iput-object p1, p0, Lorg/andengine/engine/options/EngineOptions;->mWakeLockOptions:Lorg/andengine/engine/options/WakeLockOptions;

    .line 124
    return-object p0
.end method
