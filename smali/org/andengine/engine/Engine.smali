.class public Lorg/andengine/engine/Engine;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lorg/andengine/input/touch/controller/ITouchEventCallback;
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/andengine/engine/Engine$EngineDestroyedException;,
        Lorg/andengine/engine/Engine$EngineLock;,
        Lorg/andengine/engine/Engine$UpdateThread;
    }
.end annotation


# static fields
.field private static final DRAWHANDLERS_CAPACITY_DEFAULT:I = 0x4

.field private static final SENSORDELAY_DEFAULT:Lorg/andengine/input/sensor/SensorDelay; = null

.field private static final UPDATEHANDLERS_CAPACITY_DEFAULT:I = 0x8


# instance fields
.field private mAccelerationData:Lorg/andengine/input/sensor/acceleration/AccelerationData;

.field private mAccelerationListener:Lorg/andengine/input/sensor/acceleration/IAccelerationListener;

.field protected final mCamera:Lorg/andengine/engine/camera/Camera;

.field private mDestroyed:Z

.field private final mDrawHandlers:Lorg/andengine/engine/handler/DrawHandlerList;

.field private final mEngineLock:Lorg/andengine/engine/Engine$EngineLock;

.field private final mEngineOptions:Lorg/andengine/engine/options/EngineOptions;

.field private final mFontManager:Lorg/andengine/opengl/font/FontManager;

.field private mLastTick:J

.field private mLocation:Landroid/location/Location;

.field private mLocationListener:Lorg/andengine/input/sensor/location/ILocationListener;

.field private final mMusicManager:Lorg/andengine/audio/music/MusicManager;

.field private mOrientationData:Lorg/andengine/input/sensor/orientation/OrientationData;

.field private mOrientationListener:Lorg/andengine/input/sensor/orientation/IOrientationListener;

.field private mRunning:Z

.field protected mScene:Lorg/andengine/entity/scene/Scene;

.field private mSecondsElapsedTotal:F

.field private final mShaderProgramManager:Lorg/andengine/opengl/shader/ShaderProgramManager;

.field private final mSoundManager:Lorg/andengine/audio/sound/SoundManager;

.field protected mSurfaceHeight:I

.field protected mSurfaceWidth:I

.field private final mTextureManager:Lorg/andengine/opengl/texture/TextureManager;

.field private mTouchController:Lorg/andengine/input/touch/controller/ITouchController;

.field private final mUpdateHandlers:Lorg/andengine/engine/handler/UpdateHandlerList;

.field private final mUpdateThread:Lorg/andengine/engine/Engine$UpdateThread;

.field private final mUpdateThreadRunnableHandler:Lorg/andengine/engine/handler/runnable/RunnableHandler;

.field private final mVertexBufferObjectManager:Lorg/andengine/opengl/vbo/VertexBufferObjectManager;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lorg/andengine/input/sensor/SensorDelay;->GAME:Lorg/andengine/input/sensor/SensorDelay;

    sput-object v0, Lorg/andengine/engine/Engine;->SENSORDELAY_DEFAULT:Lorg/andengine/input/sensor/SensorDelay;

    .line 76
    return-void
.end method

.method public constructor <init>(Lorg/andengine/engine/options/EngineOptions;)V
    .locals 4
    .parameter "pEngineOptions"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Lorg/andengine/engine/handler/runnable/RunnableHandler;

    invoke-direct {v0}, Lorg/andengine/engine/handler/runnable/RunnableHandler;-><init>()V

    iput-object v0, p0, Lorg/andengine/engine/Engine;->mUpdateThreadRunnableHandler:Lorg/andengine/engine/handler/runnable/RunnableHandler;

    .line 98
    new-instance v0, Lorg/andengine/opengl/vbo/VertexBufferObjectManager;

    invoke-direct {v0}, Lorg/andengine/opengl/vbo/VertexBufferObjectManager;-><init>()V

    iput-object v0, p0, Lorg/andengine/engine/Engine;->mVertexBufferObjectManager:Lorg/andengine/opengl/vbo/VertexBufferObjectManager;

    .line 99
    new-instance v0, Lorg/andengine/opengl/texture/TextureManager;

    invoke-direct {v0}, Lorg/andengine/opengl/texture/TextureManager;-><init>()V

    iput-object v0, p0, Lorg/andengine/engine/Engine;->mTextureManager:Lorg/andengine/opengl/texture/TextureManager;

    .line 100
    new-instance v0, Lorg/andengine/opengl/font/FontManager;

    invoke-direct {v0}, Lorg/andengine/opengl/font/FontManager;-><init>()V

    iput-object v0, p0, Lorg/andengine/engine/Engine;->mFontManager:Lorg/andengine/opengl/font/FontManager;

    .line 101
    new-instance v0, Lorg/andengine/opengl/shader/ShaderProgramManager;

    invoke-direct {v0}, Lorg/andengine/opengl/shader/ShaderProgramManager;-><init>()V

    iput-object v0, p0, Lorg/andengine/engine/Engine;->mShaderProgramManager:Lorg/andengine/opengl/shader/ShaderProgramManager;

    .line 119
    new-instance v0, Lorg/andengine/engine/handler/UpdateHandlerList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/andengine/engine/handler/UpdateHandlerList;-><init>(I)V

    iput-object v0, p0, Lorg/andengine/engine/Engine;->mUpdateHandlers:Lorg/andengine/engine/handler/UpdateHandlerList;

    .line 120
    new-instance v0, Lorg/andengine/engine/handler/DrawHandlerList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/andengine/engine/handler/DrawHandlerList;-><init>(I)V

    iput-object v0, p0, Lorg/andengine/engine/Engine;->mDrawHandlers:Lorg/andengine/engine/handler/DrawHandlerList;

    .line 122
    iput v2, p0, Lorg/andengine/engine/Engine;->mSurfaceWidth:I

    .line 123
    iput v2, p0, Lorg/andengine/engine/Engine;->mSurfaceHeight:I

    .line 131
    invoke-static {}, Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->reset()V

    .line 132
    invoke-static {}, Lorg/andengine/audio/sound/SoundFactory;->onCreate()V

    .line 133
    invoke-static {}, Lorg/andengine/audio/music/MusicFactory;->onCreate()V

    .line 134
    invoke-static {}, Lorg/andengine/opengl/font/FontFactory;->onCreate()V

    .line 135
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mVertexBufferObjectManager:Lorg/andengine/opengl/vbo/VertexBufferObjectManager;

    invoke-virtual {v0}, Lorg/andengine/opengl/vbo/VertexBufferObjectManager;->onCreate()V

    .line 136
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mTextureManager:Lorg/andengine/opengl/texture/TextureManager;

    invoke-virtual {v0}, Lorg/andengine/opengl/texture/TextureManager;->onCreate()V

    .line 137
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mFontManager:Lorg/andengine/opengl/font/FontManager;

    invoke-virtual {v0}, Lorg/andengine/opengl/font/FontManager;->onCreate()V

    .line 138
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mShaderProgramManager:Lorg/andengine/opengl/shader/ShaderProgramManager;

    invoke-virtual {v0}, Lorg/andengine/opengl/shader/ShaderProgramManager;->onCreate()V

    .line 141
    iput-object p1, p0, Lorg/andengine/engine/Engine;->mEngineOptions:Lorg/andengine/engine/options/EngineOptions;

    .line 142
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mEngineOptions:Lorg/andengine/engine/options/EngineOptions;

    invoke-virtual {v0}, Lorg/andengine/engine/options/EngineOptions;->hasEngineLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p1}, Lorg/andengine/engine/options/EngineOptions;->getEngineLock()Lorg/andengine/engine/Engine$EngineLock;

    move-result-object v0

    iput-object v0, p0, Lorg/andengine/engine/Engine;->mEngineLock:Lorg/andengine/engine/Engine$EngineLock;

    .line 147
    :goto_0
    invoke-virtual {p1}, Lorg/andengine/engine/options/EngineOptions;->getCamera()Lorg/andengine/engine/camera/Camera;

    move-result-object v0

    iput-object v0, p0, Lorg/andengine/engine/Engine;->mCamera:Lorg/andengine/engine/camera/Camera;

    .line 150
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mEngineOptions:Lorg/andengine/engine/options/EngineOptions;

    invoke-virtual {v0}, Lorg/andengine/engine/options/EngineOptions;->getTouchOptions()Lorg/andengine/engine/options/TouchOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/andengine/engine/options/TouchOptions;->needsMultiTouch()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    new-instance v0, Lorg/andengine/input/touch/controller/MultiTouchController;

    invoke-direct {v0}, Lorg/andengine/input/touch/controller/MultiTouchController;-><init>()V

    invoke-virtual {p0, v0}, Lorg/andengine/engine/Engine;->setTouchController(Lorg/andengine/input/touch/controller/ITouchController;)V

    .line 157
    :goto_1
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mEngineOptions:Lorg/andengine/engine/options/EngineOptions;

    invoke-virtual {v0}, Lorg/andengine/engine/options/EngineOptions;->getAudioOptions()Lorg/andengine/engine/options/AudioOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/andengine/engine/options/AudioOptions;->needsSound()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    new-instance v0, Lorg/andengine/audio/sound/SoundManager;

    iget-object v1, p0, Lorg/andengine/engine/Engine;->mEngineOptions:Lorg/andengine/engine/options/EngineOptions;

    invoke-virtual {v1}, Lorg/andengine/engine/options/EngineOptions;->getAudioOptions()Lorg/andengine/engine/options/AudioOptions;

    move-result-object v1

    invoke-virtual {v1}, Lorg/andengine/engine/options/AudioOptions;->getSoundOptions()Lorg/andengine/engine/options/SoundOptions;

    move-result-object v1

    invoke-virtual {v1}, Lorg/andengine/engine/options/SoundOptions;->getMaxSimultaneousStreams()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/andengine/audio/sound/SoundManager;-><init>(I)V

    iput-object v0, p0, Lorg/andengine/engine/Engine;->mSoundManager:Lorg/andengine/audio/sound/SoundManager;

    .line 162
    :goto_2
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mEngineOptions:Lorg/andengine/engine/options/EngineOptions;

    invoke-virtual {v0}, Lorg/andengine/engine/options/EngineOptions;->getAudioOptions()Lorg/andengine/engine/options/AudioOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/andengine/engine/options/AudioOptions;->needsMusic()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 163
    new-instance v0, Lorg/andengine/audio/music/MusicManager;

    invoke-direct {v0}, Lorg/andengine/audio/music/MusicManager;-><init>()V

    iput-object v0, p0, Lorg/andengine/engine/Engine;->mMusicManager:Lorg/andengine/audio/music/MusicManager;

    .line 169
    :goto_3
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mEngineOptions:Lorg/andengine/engine/options/EngineOptions;

    invoke-virtual {v0}, Lorg/andengine/engine/options/EngineOptions;->hasUpdateThread()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 170
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mEngineOptions:Lorg/andengine/engine/options/EngineOptions;

    invoke-virtual {v0}, Lorg/andengine/engine/options/EngineOptions;->getUpdateThread()Lorg/andengine/engine/Engine$UpdateThread;

    move-result-object v0

    iput-object v0, p0, Lorg/andengine/engine/Engine;->mUpdateThread:Lorg/andengine/engine/Engine$UpdateThread;

    .line 174
    :goto_4
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mUpdateThread:Lorg/andengine/engine/Engine$UpdateThread;

    invoke-virtual {v0, p0}, Lorg/andengine/engine/Engine$UpdateThread;->setEngine(Lorg/andengine/engine/Engine;)V

    .line 175
    return-void

    .line 145
    :cond_0
    new-instance v0, Lorg/andengine/engine/Engine$EngineLock;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/andengine/engine/Engine$EngineLock;-><init>(Z)V

    iput-object v0, p0, Lorg/andengine/engine/Engine;->mEngineLock:Lorg/andengine/engine/Engine$EngineLock;

    goto :goto_0

    .line 153
    :cond_1
    new-instance v0, Lorg/andengine/input/touch/controller/SingleTouchController;

    invoke-direct {v0}, Lorg/andengine/input/touch/controller/SingleTouchController;-><init>()V

    invoke-virtual {p0, v0}, Lorg/andengine/engine/Engine;->setTouchController(Lorg/andengine/input/touch/controller/ITouchController;)V

    goto :goto_1

    .line 160
    :cond_2
    iput-object v3, p0, Lorg/andengine/engine/Engine;->mSoundManager:Lorg/andengine/audio/sound/SoundManager;

    goto :goto_2

    .line 165
    :cond_3
    iput-object v3, p0, Lorg/andengine/engine/Engine;->mMusicManager:Lorg/andengine/audio/music/MusicManager;

    goto :goto_3

    .line 172
    :cond_4
    new-instance v0, Lorg/andengine/engine/Engine$UpdateThread;

    invoke-direct {v0}, Lorg/andengine/engine/Engine$UpdateThread;-><init>()V

    iput-object v0, p0, Lorg/andengine/engine/Engine;->mUpdateThread:Lorg/andengine/engine/Engine$UpdateThread;

    goto :goto_4
.end method

.method private getNanosecondsElapsed()J
    .locals 4

    .prologue
    .line 634
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 636
    .local v0, now:J
    iget-wide v2, p0, Lorg/andengine/engine/Engine;->mLastTick:J

    sub-long v2, v0, v2

    return-wide v2
.end method

.method private static isSensorSupported(Landroid/hardware/SensorManager;I)Z
    .locals 1
    .parameter "pSensorManager"
    .parameter "pType"

    .prologue
    .line 765
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerSelfAsSensorListener(Landroid/hardware/SensorManager;ILorg/andengine/input/sensor/SensorDelay;)V
    .locals 3
    .parameter "pSensorManager"
    .parameter "pType"
    .parameter "pSensorDelay"

    .prologue
    .line 769
    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    .line 770
    .local v0, sensor:Landroid/hardware/Sensor;
    invoke-virtual {p3}, Lorg/andengine/input/sensor/SensorDelay;->getDelay()I

    move-result v1

    invoke-virtual {p1, p0, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 771
    return-void
.end method

.method private throwOnDestroyed()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/engine/Engine$EngineDestroyedException;
        }
    .end annotation

    .prologue
    .line 573
    iget-boolean v0, p0, Lorg/andengine/engine/Engine;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 574
    new-instance v0, Lorg/andengine/engine/Engine$EngineDestroyedException;

    invoke-direct {v0, p0}, Lorg/andengine/engine/Engine$EngineDestroyedException;-><init>(Lorg/andengine/engine/Engine;)V

    throw v0

    .line 576
    :cond_0
    return-void
.end method

.method private unregisterSelfAsSensorListener(Landroid/hardware/SensorManager;I)V
    .locals 3
    .parameter "pSensorManager"
    .parameter "pType"

    .prologue
    .line 774
    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    .line 775
    .local v0, sensor:Landroid/hardware/Sensor;
    invoke-virtual {p1, p0, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 776
    return-void
.end method


# virtual methods
.method public clearDrawHandlers()V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mDrawHandlers:Lorg/andengine/engine/handler/DrawHandlerList;

    invoke-virtual {v0}, Lorg/andengine/engine/handler/DrawHandlerList;->clear()V

    .line 320
    return-void
.end method

.method public clearUpdateHandlers()V
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mUpdateHandlers:Lorg/andengine/engine/handler/UpdateHandlerList;

    invoke-virtual {v0}, Lorg/andengine/engine/handler/UpdateHandlerList;->clear()V

    .line 308
    return-void
.end method

.method protected convertSceneToSurfaceTouchEvent(Lorg/andengine/engine/camera/Camera;Lorg/andengine/input/touch/TouchEvent;)V
    .locals 2
    .parameter "pCamera"
    .parameter "pSurfaceTouchEvent"

    .prologue
    .line 537
    iget v0, p0, Lorg/andengine/engine/Engine;->mSurfaceWidth:I

    iget v1, p0, Lorg/andengine/engine/Engine;->mSurfaceHeight:I

    invoke-virtual {p1, p2, v0, v1}, Lorg/andengine/engine/camera/Camera;->convertSceneToSurfaceTouchEvent(Lorg/andengine/input/touch/TouchEvent;II)V

    .line 538
    return-void
.end method

.method protected convertSurfaceToSceneTouchEvent(Lorg/andengine/engine/camera/Camera;Lorg/andengine/input/touch/TouchEvent;)V
    .locals 2
    .parameter "pCamera"
    .parameter "pSurfaceTouchEvent"

    .prologue
    .line 533
    iget v0, p0, Lorg/andengine/engine/Engine;->mSurfaceWidth:I

    iget v1, p0, Lorg/andengine/engine/Engine;->mSurfaceHeight:I

    invoke-virtual {p1, p2, v0, v1}, Lorg/andengine/engine/camera/Camera;->convertSurfaceToSceneTouchEvent(Lorg/andengine/input/touch/TouchEvent;II)V

    .line 534
    return-void
.end method

.method public disableAccelerationSensor(Landroid/content/Context;)Z
    .locals 3
    .parameter "pContext"

    .prologue
    const/4 v1, 0x1

    .line 710
    const-string v2, "sensor"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 711
    .local v0, sensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0, v1}, Lorg/andengine/engine/Engine;->isSensorSupported(Landroid/hardware/SensorManager;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 712
    invoke-direct {p0, v0, v1}, Lorg/andengine/engine/Engine;->unregisterSelfAsSensorListener(Landroid/hardware/SensorManager;I)V

    .line 715
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disableLocationSensor(Landroid/content/Context;)V
    .locals 2
    .parameter "pContext"

    .prologue
    .line 672
    const-string v1, "location"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 673
    .local v0, locationManager:Landroid/location/LocationManager;
    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 674
    return-void
.end method

.method public disableOrientationSensor(Landroid/content/Context;)Z
    .locals 4
    .parameter "pContext"

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    .line 754
    const-string v2, "sensor"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 755
    .local v0, sensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0, v1}, Lorg/andengine/engine/Engine;->isSensorSupported(Landroid/hardware/SensorManager;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0, v3}, Lorg/andengine/engine/Engine;->isSensorSupported(Landroid/hardware/SensorManager;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 756
    invoke-direct {p0, v0, v1}, Lorg/andengine/engine/Engine;->unregisterSelfAsSensorListener(Landroid/hardware/SensorManager;I)V

    .line 757
    invoke-direct {p0, v0, v3}, Lorg/andengine/engine/Engine;->unregisterSelfAsSensorListener(Landroid/hardware/SensorManager;I)V

    .line 760
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableAccelerationSensor(Landroid/content/Context;Lorg/andengine/input/sensor/acceleration/IAccelerationListener;)Z
    .locals 2
    .parameter "pContext"
    .parameter "pAccelerationListener"

    .prologue
    .line 680
    new-instance v0, Lorg/andengine/input/sensor/acceleration/AccelerationSensorOptions;

    sget-object v1, Lorg/andengine/engine/Engine;->SENSORDELAY_DEFAULT:Lorg/andengine/input/sensor/SensorDelay;

    invoke-direct {v0, v1}, Lorg/andengine/input/sensor/acceleration/AccelerationSensorOptions;-><init>(Lorg/andengine/input/sensor/SensorDelay;)V

    invoke-virtual {p0, p1, p2, v0}, Lorg/andengine/engine/Engine;->enableAccelerationSensor(Landroid/content/Context;Lorg/andengine/input/sensor/acceleration/IAccelerationListener;Lorg/andengine/input/sensor/acceleration/AccelerationSensorOptions;)Z

    move-result v0

    return v0
.end method

.method public enableAccelerationSensor(Landroid/content/Context;Lorg/andengine/input/sensor/acceleration/IAccelerationListener;Lorg/andengine/input/sensor/acceleration/AccelerationSensorOptions;)Z
    .locals 5
    .parameter "pContext"
    .parameter "pAccelerationListener"
    .parameter "pAccelerationSensorOptions"

    .prologue
    const/4 v4, 0x1

    .line 687
    const-string v3, "sensor"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    .line 688
    .local v2, sensorManager:Landroid/hardware/SensorManager;
    invoke-static {v2, v4}, Lorg/andengine/engine/Engine;->isSensorSupported(Landroid/hardware/SensorManager;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 689
    iput-object p2, p0, Lorg/andengine/engine/Engine;->mAccelerationListener:Lorg/andengine/input/sensor/acceleration/IAccelerationListener;

    .line 691
    iget-object v3, p0, Lorg/andengine/engine/Engine;->mAccelerationData:Lorg/andengine/input/sensor/acceleration/AccelerationData;

    if-nez v3, :cond_0

    .line 692
    const-string v3, "window"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 693
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v1

    .line 694
    .local v1, displayRotation:I
    new-instance v3, Lorg/andengine/input/sensor/acceleration/AccelerationData;

    invoke-direct {v3, v1}, Lorg/andengine/input/sensor/acceleration/AccelerationData;-><init>(I)V

    iput-object v3, p0, Lorg/andengine/engine/Engine;->mAccelerationData:Lorg/andengine/input/sensor/acceleration/AccelerationData;

    .line 697
    .end local v0           #display:Landroid/view/Display;
    .end local v1           #displayRotation:I
    :cond_0
    invoke-virtual {p3}, Lorg/andengine/input/sensor/acceleration/AccelerationSensorOptions;->getSensorDelay()Lorg/andengine/input/sensor/SensorDelay;

    move-result-object v3

    invoke-direct {p0, v2, v4, v3}, Lorg/andengine/engine/Engine;->registerSelfAsSensorListener(Landroid/hardware/SensorManager;ILorg/andengine/input/sensor/SensorDelay;)V

    move v3, v4

    .line 701
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public enableLocationSensor(Landroid/content/Context;Lorg/andengine/input/sensor/location/ILocationListener;Lorg/andengine/input/sensor/location/LocationSensorOptions;)V
    .locals 6
    .parameter "pContext"
    .parameter "pLocationListener"
    .parameter "pLocationSensorOptions"

    .prologue
    .line 661
    iput-object p2, p0, Lorg/andengine/engine/Engine;->mLocationListener:Lorg/andengine/input/sensor/location/ILocationListener;

    .line 663
    const-string v2, "location"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 664
    .local v0, locationManager:Landroid/location/LocationManager;
    invoke-virtual {p3}, Lorg/andengine/input/sensor/location/LocationSensorOptions;->isEnabledOnly()Z

    move-result v2

    invoke-virtual {v0, p3, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    .line 666
    .local v1, locationProvider:Ljava/lang/String;
    invoke-virtual {p3}, Lorg/andengine/input/sensor/location/LocationSensorOptions;->getMinimumTriggerTime()J

    move-result-wide v2

    invoke-virtual {p3}, Lorg/andengine/input/sensor/location/LocationSensorOptions;->getMinimumTriggerDistance()J

    move-result-wide v4

    long-to-float v4, v4

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 668
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/andengine/engine/Engine;->onLocationChanged(Landroid/location/Location;)V

    .line 669
    return-void
.end method

.method public enableOrientationSensor(Landroid/content/Context;Lorg/andengine/input/sensor/orientation/IOrientationListener;)Z
    .locals 2
    .parameter "pContext"
    .parameter "pOrientationListener"

    .prologue
    .line 723
    new-instance v0, Lorg/andengine/input/sensor/orientation/OrientationSensorOptions;

    sget-object v1, Lorg/andengine/engine/Engine;->SENSORDELAY_DEFAULT:Lorg/andengine/input/sensor/SensorDelay;

    invoke-direct {v0, v1}, Lorg/andengine/input/sensor/orientation/OrientationSensorOptions;-><init>(Lorg/andengine/input/sensor/SensorDelay;)V

    invoke-virtual {p0, p1, p2, v0}, Lorg/andengine/engine/Engine;->enableOrientationSensor(Landroid/content/Context;Lorg/andengine/input/sensor/orientation/IOrientationListener;Lorg/andengine/input/sensor/orientation/OrientationSensorOptions;)Z

    move-result v0

    return v0
.end method

.method public enableOrientationSensor(Landroid/content/Context;Lorg/andengine/input/sensor/orientation/IOrientationListener;Lorg/andengine/input/sensor/orientation/OrientationSensorOptions;)Z
    .locals 6
    .parameter "pContext"
    .parameter "pOrientationListener"
    .parameter "pOrientationSensorOptions"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 730
    const-string v3, "sensor"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    .line 731
    .local v2, sensorManager:Landroid/hardware/SensorManager;
    invoke-static {v2, v4}, Lorg/andengine/engine/Engine;->isSensorSupported(Landroid/hardware/SensorManager;I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2, v5}, Lorg/andengine/engine/Engine;->isSensorSupported(Landroid/hardware/SensorManager;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 732
    iput-object p2, p0, Lorg/andengine/engine/Engine;->mOrientationListener:Lorg/andengine/input/sensor/orientation/IOrientationListener;

    .line 734
    iget-object v3, p0, Lorg/andengine/engine/Engine;->mOrientationData:Lorg/andengine/input/sensor/orientation/OrientationData;

    if-nez v3, :cond_0

    .line 735
    const-string v3, "window"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 736
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v1

    .line 737
    .local v1, displayRotation:I
    new-instance v3, Lorg/andengine/input/sensor/orientation/OrientationData;

    invoke-direct {v3, v1}, Lorg/andengine/input/sensor/orientation/OrientationData;-><init>(I)V

    iput-object v3, p0, Lorg/andengine/engine/Engine;->mOrientationData:Lorg/andengine/input/sensor/orientation/OrientationData;

    .line 740
    .end local v0           #display:Landroid/view/Display;
    .end local v1           #displayRotation:I
    :cond_0
    invoke-virtual {p3}, Lorg/andengine/input/sensor/orientation/OrientationSensorOptions;->getSensorDelay()Lorg/andengine/input/sensor/SensorDelay;

    move-result-object v3

    invoke-direct {p0, v2, v4, v3}, Lorg/andengine/engine/Engine;->registerSelfAsSensorListener(Landroid/hardware/SensorManager;ILorg/andengine/input/sensor/SensorDelay;)V

    .line 741
    invoke-virtual {p3}, Lorg/andengine/input/sensor/orientation/OrientationSensorOptions;->getSensorDelay()Lorg/andengine/input/sensor/SensorDelay;

    move-result-object v3

    invoke-direct {p0, v2, v5, v3}, Lorg/andengine/engine/Engine;->registerSelfAsSensorListener(Landroid/hardware/SensorManager;ILorg/andengine/input/sensor/SensorDelay;)V

    move v3, v4

    .line 745
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public enableVibrator(Landroid/content/Context;)Z
    .locals 1
    .parameter "pContext"

    .prologue
    .line 640
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lorg/andengine/engine/Engine;->mVibrator:Landroid/os/Vibrator;

    .line 641
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAccelerationData()Lorg/andengine/input/sensor/acceleration/AccelerationData;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mAccelerationData:Lorg/andengine/input/sensor/acceleration/AccelerationData;

    return-object v0
.end method

.method public getCamera()Lorg/andengine/engine/camera/Camera;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mCamera:Lorg/andengine/engine/camera/Camera;

    return-object v0
.end method

.method protected getCameraFromSurfaceTouchEvent(Lorg/andengine/input/touch/TouchEvent;)Lorg/andengine/engine/camera/Camera;
    .locals 1
    .parameter "pTouchEvent"

    .prologue
    .line 525
    invoke-virtual {p0}, Lorg/andengine/engine/Engine;->getCamera()Lorg/andengine/engine/camera/Camera;

    move-result-object v0

    return-object v0
.end method

.method public getEngineLock()Lorg/andengine/engine/Engine$EngineLock;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mEngineLock:Lorg/andengine/engine/Engine$EngineLock;

    return-object v0
.end method

.method public getEngineOptions()Lorg/andengine/engine/options/EngineOptions;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mEngineOptions:Lorg/andengine/engine/options/EngineOptions;

    return-object v0
.end method

.method public getFontManager()Lorg/andengine/opengl/font/FontManager;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mFontManager:Lorg/andengine/opengl/font/FontManager;

    return-object v0
.end method

.method public getMusicManager()Lorg/andengine/audio/music/MusicManager;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 291
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mMusicManager:Lorg/andengine/audio/music/MusicManager;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mMusicManager:Lorg/andengine/audio/music/MusicManager;

    return-object v0

    .line 294
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "To enable the MusicManager, check the EngineOptions!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOrientationData()Lorg/andengine/input/sensor/orientation/OrientationData;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mOrientationData:Lorg/andengine/input/sensor/orientation/OrientationData;

    return-object v0
.end method

.method public getScene()Lorg/andengine/entity/scene/Scene;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mScene:Lorg/andengine/entity/scene/Scene;

    return-object v0
.end method

.method protected getSceneFromSurfaceTouchEvent(Lorg/andengine/input/touch/TouchEvent;)Lorg/andengine/entity/scene/Scene;
    .locals 1
    .parameter "pTouchEvent"

    .prologue
    .line 529
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mScene:Lorg/andengine/entity/scene/Scene;

    return-object v0
.end method

.method public getSecondsElapsedTotal()F
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lorg/andengine/engine/Engine;->mSecondsElapsedTotal:F

    return v0
.end method

.method public getShaderProgramManager()Lorg/andengine/opengl/shader/ShaderProgramManager;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mShaderProgramManager:Lorg/andengine/opengl/shader/ShaderProgramManager;

    return-object v0
.end method

.method public getSoundManager()Lorg/andengine/audio/sound/SoundManager;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 283
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mSoundManager:Lorg/andengine/audio/sound/SoundManager;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mSoundManager:Lorg/andengine/audio/sound/SoundManager;

    return-object v0

    .line 286
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "To enable the SoundManager, check the EngineOptions!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSurfaceHeight()I
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lorg/andengine/engine/Engine;->mSurfaceHeight:I

    return v0
.end method

.method public getSurfaceWidth()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lorg/andengine/engine/Engine;->mSurfaceWidth:I

    return v0
.end method

.method public getTextureManager()Lorg/andengine/opengl/texture/TextureManager;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mTextureManager:Lorg/andengine/opengl/texture/TextureManager;

    return-object v0
.end method

.method public getTouchController()Lorg/andengine/input/touch/controller/ITouchController;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mTouchController:Lorg/andengine/input/touch/controller/ITouchController;

    return-object v0
.end method

.method public getVertexBufferObjectManager()Lorg/andengine/opengl/vbo/VertexBufferObjectManager;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mVertexBufferObjectManager:Lorg/andengine/opengl/vbo/VertexBufferObjectManager;

    return-object v0
.end method

.method public declared-synchronized isRunning()Z
    .locals 1

    .prologue
    .line 186
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/andengine/engine/Engine;->mRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 2
    .parameter "pSensor"
    .parameter "pAccuracy"

    .prologue
    .line 328
    iget-boolean v0, p0, Lorg/andengine/engine/Engine;->mRunning:Z

    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 331
    :pswitch_0
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mAccelerationData:Lorg/andengine/input/sensor/acceleration/AccelerationData;

    if-eqz v0, :cond_1

    .line 332
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mAccelerationData:Lorg/andengine/input/sensor/acceleration/AccelerationData;

    invoke-virtual {v0, p2}, Lorg/andengine/input/sensor/acceleration/AccelerationData;->setAccuracy(I)V

    .line 333
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mAccelerationListener:Lorg/andengine/input/sensor/acceleration/IAccelerationListener;

    iget-object v1, p0, Lorg/andengine/engine/Engine;->mAccelerationData:Lorg/andengine/input/sensor/acceleration/AccelerationData;

    invoke-interface {v0, v1}, Lorg/andengine/input/sensor/acceleration/IAccelerationListener;->onAccelerationAccuracyChanged(Lorg/andengine/input/sensor/acceleration/AccelerationData;)V

    goto :goto_0

    .line 334
    :cond_1
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mOrientationData:Lorg/andengine/input/sensor/orientation/OrientationData;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mOrientationData:Lorg/andengine/input/sensor/orientation/OrientationData;

    invoke-virtual {v0, p2}, Lorg/andengine/input/sensor/orientation/OrientationData;->setAccelerationAccuracy(I)V

    .line 336
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mOrientationListener:Lorg/andengine/input/sensor/orientation/IOrientationListener;

    iget-object v1, p0, Lorg/andengine/engine/Engine;->mOrientationData:Lorg/andengine/input/sensor/orientation/OrientationData;

    invoke-interface {v0, v1}, Lorg/andengine/input/sensor/orientation/IOrientationListener;->onOrientationAccuracyChanged(Lorg/andengine/input/sensor/orientation/OrientationData;)V

    goto :goto_0

    .line 340
    :pswitch_1
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mOrientationData:Lorg/andengine/input/sensor/orientation/OrientationData;

    invoke-virtual {v0, p2}, Lorg/andengine/input/sensor/orientation/OrientationData;->setMagneticFieldAccuracy(I)V

    .line 341
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mOrientationListener:Lorg/andengine/input/sensor/orientation/IOrientationListener;

    iget-object v1, p0, Lorg/andengine/engine/Engine;->mOrientationData:Lorg/andengine/input/sensor/orientation/OrientationData;

    invoke-interface {v0, v1}, Lorg/andengine/input/sensor/orientation/IOrientationListener;->onOrientationAccuracyChanged(Lorg/andengine/input/sensor/orientation/OrientationData;)V

    goto :goto_0

    .line 329
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 496
    iget-object v1, p0, Lorg/andengine/engine/Engine;->mEngineLock:Lorg/andengine/engine/Engine$EngineLock;

    invoke-virtual {v1}, Lorg/andengine/engine/Engine$EngineLock;->lock()V

    .line 498
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/andengine/engine/Engine;->mDestroyed:Z

    .line 499
    iget-object v1, p0, Lorg/andengine/engine/Engine;->mEngineLock:Lorg/andengine/engine/Engine$EngineLock;

    invoke-virtual {v1}, Lorg/andengine/engine/Engine$EngineLock;->notifyCanUpdate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    iget-object v1, p0, Lorg/andengine/engine/Engine;->mEngineLock:Lorg/andengine/engine/Engine$EngineLock;

    invoke-virtual {v1}, Lorg/andengine/engine/Engine$EngineLock;->unlock()V

    .line 504
    :try_start_1
    iget-object v1, p0, Lorg/andengine/engine/Engine;->mUpdateThread:Lorg/andengine/engine/Engine$UpdateThread;

    invoke-virtual {v1}, Lorg/andengine/engine/Engine$UpdateThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 511
    :goto_0
    iget-object v1, p0, Lorg/andengine/engine/Engine;->mVertexBufferObjectManager:Lorg/andengine/opengl/vbo/VertexBufferObjectManager;

    invoke-virtual {v1}, Lorg/andengine/opengl/vbo/VertexBufferObjectManager;->onDestroy()V

    .line 512
    iget-object v1, p0, Lorg/andengine/engine/Engine;->mTextureManager:Lorg/andengine/opengl/texture/TextureManager;

    invoke-virtual {v1}, Lorg/andengine/opengl/texture/TextureManager;->onDestroy()V

    .line 513
    iget-object v1, p0, Lorg/andengine/engine/Engine;->mFontManager:Lorg/andengine/opengl/font/FontManager;

    invoke-virtual {v1}, Lorg/andengine/opengl/font/FontManager;->onDestroy()V

    .line 514
    iget-object v1, p0, Lorg/andengine/engine/Engine;->mShaderProgramManager:Lorg/andengine/opengl/shader/ShaderProgramManager;

    invoke-virtual {v1}, Lorg/andengine/opengl/shader/ShaderProgramManager;->onDestroy()V

    .line 515
    return-void

    .line 500
    :catchall_0
    move-exception v1

    .line 501
    iget-object v2, p0, Lorg/andengine/engine/Engine;->mEngineLock:Lorg/andengine/engine/Engine$EngineLock;

    invoke-virtual {v2}, Lorg/andengine/engine/Engine$EngineLock;->unlock()V

    .line 502
    throw v1

    .line 505
    :catch_0
    move-exception v0

    .line 506
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "Could not join UpdateThread."

    invoke-static {v1, v0}, Lorg/andengine/util/debug/Debug;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 507
    const-string v1, "Trying to manually interrupt UpdateThread."

    invoke-static {v1}, Lorg/andengine/util/debug/Debug;->w(Ljava/lang/String;)V

    .line 508
    iget-object v1, p0, Lorg/andengine/engine/Engine;->mUpdateThread:Lorg/andengine/engine/Engine$UpdateThread;

    invoke-virtual {v1}, Lorg/andengine/engine/Engine$UpdateThread;->interrupt()V

    goto :goto_0
.end method

.method public onDrawFrame(Lorg/andengine/opengl/util/GLState;)V
    .locals 2
    .parameter "pGLState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 606
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mEngineLock:Lorg/andengine/engine/Engine$EngineLock;

    .line 608
    .local v0, engineLock:Lorg/andengine/engine/Engine$EngineLock;
    invoke-virtual {v0}, Lorg/andengine/engine/Engine$EngineLock;->lock()V

    .line 610
    :try_start_0
    invoke-virtual {v0}, Lorg/andengine/engine/Engine$EngineLock;->waitUntilCanDraw()V

    .line 612
    iget-object v1, p0, Lorg/andengine/engine/Engine;->mVertexBufferObjectManager:Lorg/andengine/opengl/vbo/VertexBufferObjectManager;

    invoke-virtual {v1, p1}, Lorg/andengine/opengl/vbo/VertexBufferObjectManager;->updateVertexBufferObjects(Lorg/andengine/opengl/util/GLState;)V

    .line 613
    iget-object v1, p0, Lorg/andengine/engine/Engine;->mTextureManager:Lorg/andengine/opengl/texture/TextureManager;

    invoke-virtual {v1, p1}, Lorg/andengine/opengl/texture/TextureManager;->updateTextures(Lorg/andengine/opengl/util/GLState;)V

    .line 614
    iget-object v1, p0, Lorg/andengine/engine/Engine;->mFontManager:Lorg/andengine/opengl/font/FontManager;

    invoke-virtual {v1, p1}, Lorg/andengine/opengl/font/FontManager;->updateFonts(Lorg/andengine/opengl/util/GLState;)V

    .line 616
    iget-object v1, p0, Lorg/andengine/engine/Engine;->mCamera:Lorg/andengine/engine/camera/Camera;

    invoke-virtual {p0, p1, v1}, Lorg/andengine/engine/Engine;->onUpdateDrawHandlers(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V

    .line 617
    iget-object v1, p0, Lorg/andengine/engine/Engine;->mCamera:Lorg/andengine/engine/camera/Camera;

    invoke-virtual {p0, p1, v1}, Lorg/andengine/engine/Engine;->onDrawScene(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V

    .line 619
    invoke-virtual {v0}, Lorg/andengine/engine/Engine$EngineLock;->notifyCanUpdate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 621
    invoke-virtual {v0}, Lorg/andengine/engine/Engine$EngineLock;->unlock()V

    .line 623
    return-void

    .line 620
    :catchall_0
    move-exception v1

    .line 621
    invoke-virtual {v0}, Lorg/andengine/engine/Engine$EngineLock;->unlock()V

    .line 622
    throw v1
.end method

.method protected onDrawScene(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V
    .locals 1
    .parameter "pGLState"
    .parameter "pCamera"

    .prologue
    .line 626
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mScene:Lorg/andengine/entity/scene/Scene;

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mScene:Lorg/andengine/entity/scene/Scene;

    invoke-virtual {v0, p1, p2}, Lorg/andengine/entity/scene/Scene;->onDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V

    .line 630
    :cond_0
    invoke-virtual {p2, p1}, Lorg/andengine/engine/camera/Camera;->onDrawHUD(Lorg/andengine/opengl/util/GLState;)V

    .line 631
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1
    .parameter "pLocation"

    .prologue
    .line 370
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mLocation:Landroid/location/Location;

    if-nez v0, :cond_0

    .line 371
    iput-object p1, p0, Lorg/andengine/engine/Engine;->mLocation:Landroid/location/Location;

    .line 380
    :goto_0
    return-void

    .line 373
    :cond_0
    if-nez p1, :cond_1

    .line 374
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mLocationListener:Lorg/andengine/input/sensor/location/ILocationListener;

    invoke-interface {v0}, Lorg/andengine/input/sensor/location/ILocationListener;->onLocationLost()V

    goto :goto_0

    .line 376
    :cond_1
    iput-object p1, p0, Lorg/andengine/engine/Engine;->mLocation:Landroid/location/Location;

    .line 377
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mLocationListener:Lorg/andengine/input/sensor/location/ILocationListener;

    invoke-interface {v0, p1}, Lorg/andengine/input/sensor/location/ILocationListener;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1
    .parameter "pProvider"

    .prologue
    .line 384
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mLocationListener:Lorg/andengine/input/sensor/location/ILocationListener;

    invoke-interface {v0}, Lorg/andengine/input/sensor/location/ILocationListener;->onLocationProviderDisabled()V

    .line 385
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 1
    .parameter "pProvider"

    .prologue
    .line 389
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mLocationListener:Lorg/andengine/input/sensor/location/ILocationListener;

    invoke-interface {v0}, Lorg/andengine/input/sensor/location/ILocationListener;->onLocationProviderEnabled()V

    .line 390
    return-void
.end method

.method public onReloadResources()V
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mVertexBufferObjectManager:Lorg/andengine/opengl/vbo/VertexBufferObjectManager;

    invoke-virtual {v0}, Lorg/andengine/opengl/vbo/VertexBufferObjectManager;->onReload()V

    .line 519
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mTextureManager:Lorg/andengine/opengl/texture/TextureManager;

    invoke-virtual {v0}, Lorg/andengine/opengl/texture/TextureManager;->onReload()V

    .line 520
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mFontManager:Lorg/andengine/opengl/font/FontManager;

    invoke-virtual {v0}, Lorg/andengine/opengl/font/FontManager;->onReload()V

    .line 521
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mShaderProgramManager:Lorg/andengine/opengl/shader/ShaderProgramManager;

    invoke-virtual {v0}, Lorg/andengine/opengl/shader/ShaderProgramManager;->onReload()V

    .line 522
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2
    .parameter "pEvent"

    .prologue
    .line 349
    iget-boolean v0, p0, Lorg/andengine/engine/Engine;->mRunning:Z

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 352
    :pswitch_0
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mAccelerationData:Lorg/andengine/input/sensor/acceleration/AccelerationData;

    if-eqz v0, :cond_1

    .line 353
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mAccelerationData:Lorg/andengine/input/sensor/acceleration/AccelerationData;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0, v1}, Lorg/andengine/input/sensor/acceleration/AccelerationData;->setValues([F)V

    .line 354
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mAccelerationListener:Lorg/andengine/input/sensor/acceleration/IAccelerationListener;

    iget-object v1, p0, Lorg/andengine/engine/Engine;->mAccelerationData:Lorg/andengine/input/sensor/acceleration/AccelerationData;

    invoke-interface {v0, v1}, Lorg/andengine/input/sensor/acceleration/IAccelerationListener;->onAccelerationChanged(Lorg/andengine/input/sensor/acceleration/AccelerationData;)V

    goto :goto_0

    .line 355
    :cond_1
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mOrientationData:Lorg/andengine/input/sensor/orientation/OrientationData;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mOrientationData:Lorg/andengine/input/sensor/orientation/OrientationData;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0, v1}, Lorg/andengine/input/sensor/orientation/OrientationData;->setAccelerationValues([F)V

    .line 357
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mOrientationListener:Lorg/andengine/input/sensor/orientation/IOrientationListener;

    iget-object v1, p0, Lorg/andengine/engine/Engine;->mOrientationData:Lorg/andengine/input/sensor/orientation/OrientationData;

    invoke-interface {v0, v1}, Lorg/andengine/input/sensor/orientation/IOrientationListener;->onOrientationChanged(Lorg/andengine/input/sensor/orientation/OrientationData;)V

    goto :goto_0

    .line 361
    :pswitch_1
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mOrientationData:Lorg/andengine/input/sensor/orientation/OrientationData;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0, v1}, Lorg/andengine/input/sensor/orientation/OrientationData;->setMagneticFieldValues([F)V

    .line 362
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mOrientationListener:Lorg/andengine/input/sensor/orientation/IOrientationListener;

    iget-object v1, p0, Lorg/andengine/engine/Engine;->mOrientationData:Lorg/andengine/input/sensor/orientation/OrientationData;

    invoke-interface {v0, v1}, Lorg/andengine/input/sensor/orientation/IOrientationListener;->onOrientationChanged(Lorg/andengine/input/sensor/orientation/OrientationData;)V

    goto :goto_0

    .line 350
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 2
    .parameter "pProvider"
    .parameter "pStatus"
    .parameter "pExtras"

    .prologue
    .line 394
    packed-switch p2, :pswitch_data_0

    .line 405
    :goto_0
    return-void

    .line 396
    :pswitch_0
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mLocationListener:Lorg/andengine/input/sensor/location/ILocationListener;

    sget-object v1, Lorg/andengine/input/sensor/location/LocationProviderStatus;->AVAILABLE:Lorg/andengine/input/sensor/location/LocationProviderStatus;

    invoke-interface {v0, v1, p3}, Lorg/andengine/input/sensor/location/ILocationListener;->onLocationProviderStatusChanged(Lorg/andengine/input/sensor/location/LocationProviderStatus;Landroid/os/Bundle;)V

    goto :goto_0

    .line 399
    :pswitch_1
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mLocationListener:Lorg/andengine/input/sensor/location/ILocationListener;

    sget-object v1, Lorg/andengine/input/sensor/location/LocationProviderStatus;->OUT_OF_SERVICE:Lorg/andengine/input/sensor/location/LocationProviderStatus;

    invoke-interface {v0, v1, p3}, Lorg/andengine/input/sensor/location/ILocationListener;->onLocationProviderStatusChanged(Lorg/andengine/input/sensor/location/LocationProviderStatus;Landroid/os/Bundle;)V

    goto :goto_0

    .line 402
    :pswitch_2
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mLocationListener:Lorg/andengine/input/sensor/location/ILocationListener;

    sget-object v1, Lorg/andengine/input/sensor/location/LocationProviderStatus;->TEMPORARILY_UNAVAILABLE:Lorg/andengine/input/sensor/location/LocationProviderStatus;

    invoke-interface {v0, v1, p3}, Lorg/andengine/input/sensor/location/ILocationListener;->onLocationProviderStatusChanged(Lorg/andengine/input/sensor/location/LocationProviderStatus;Landroid/os/Bundle;)V

    goto :goto_0

    .line 394
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method onTickUpdate()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 541
    iget-boolean v2, p0, Lorg/andengine/engine/Engine;->mRunning:Z

    if-eqz v2, :cond_0

    .line 542
    invoke-direct {p0}, Lorg/andengine/engine/Engine;->getNanosecondsElapsed()J

    move-result-wide v0

    .line 544
    .local v0, secondsElapsed:J
    iget-object v2, p0, Lorg/andengine/engine/Engine;->mEngineLock:Lorg/andengine/engine/Engine$EngineLock;

    invoke-virtual {v2}, Lorg/andengine/engine/Engine$EngineLock;->lock()V

    .line 546
    :try_start_0
    invoke-direct {p0}, Lorg/andengine/engine/Engine;->throwOnDestroyed()V

    .line 548
    invoke-virtual {p0, v0, v1}, Lorg/andengine/engine/Engine;->onUpdate(J)V

    .line 550
    invoke-direct {p0}, Lorg/andengine/engine/Engine;->throwOnDestroyed()V

    .line 552
    iget-object v2, p0, Lorg/andengine/engine/Engine;->mEngineLock:Lorg/andengine/engine/Engine$EngineLock;

    invoke-virtual {v2}, Lorg/andengine/engine/Engine$EngineLock;->notifyCanDraw()V

    .line 553
    iget-object v2, p0, Lorg/andengine/engine/Engine;->mEngineLock:Lorg/andengine/engine/Engine$EngineLock;

    invoke-virtual {v2}, Lorg/andengine/engine/Engine$EngineLock;->waitUntilCanUpdate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 555
    iget-object v2, p0, Lorg/andengine/engine/Engine;->mEngineLock:Lorg/andengine/engine/Engine$EngineLock;

    invoke-virtual {v2}, Lorg/andengine/engine/Engine$EngineLock;->unlock()V

    .line 570
    .end local v0           #secondsElapsed:J
    :goto_0
    return-void

    .line 554
    .restart local v0       #secondsElapsed:J
    :catchall_0
    move-exception v2

    .line 555
    iget-object v3, p0, Lorg/andengine/engine/Engine;->mEngineLock:Lorg/andengine/engine/Engine$EngineLock;

    invoke-virtual {v3}, Lorg/andengine/engine/Engine$EngineLock;->unlock()V

    .line 556
    throw v2

    .line 558
    .end local v0           #secondsElapsed:J
    :cond_0
    iget-object v2, p0, Lorg/andengine/engine/Engine;->mEngineLock:Lorg/andengine/engine/Engine$EngineLock;

    invoke-virtual {v2}, Lorg/andengine/engine/Engine$EngineLock;->lock()V

    .line 560
    :try_start_1
    invoke-direct {p0}, Lorg/andengine/engine/Engine;->throwOnDestroyed()V

    .line 562
    iget-object v2, p0, Lorg/andengine/engine/Engine;->mEngineLock:Lorg/andengine/engine/Engine$EngineLock;

    invoke-virtual {v2}, Lorg/andengine/engine/Engine$EngineLock;->notifyCanDraw()V

    .line 563
    iget-object v2, p0, Lorg/andengine/engine/Engine;->mEngineLock:Lorg/andengine/engine/Engine$EngineLock;

    invoke-virtual {v2}, Lorg/andengine/engine/Engine$EngineLock;->waitUntilCanUpdate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 565
    iget-object v2, p0, Lorg/andengine/engine/Engine;->mEngineLock:Lorg/andengine/engine/Engine$EngineLock;

    invoke-virtual {v2}, Lorg/andengine/engine/Engine$EngineLock;->unlock()V

    .line 568
    const-wide/16 v2, 0x10

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 564
    :catchall_1
    move-exception v2

    .line 565
    iget-object v3, p0, Lorg/andengine/engine/Engine;->mEngineLock:Lorg/andengine/engine/Engine$EngineLock;

    invoke-virtual {v3}, Lorg/andengine/engine/Engine$EngineLock;->unlock()V

    .line 566
    throw v2
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "pView"
    .parameter "pSurfaceMotionEvent"

    .prologue
    .line 409
    iget-boolean v1, p0, Lorg/andengine/engine/Engine;->mRunning:Z

    if-eqz v1, :cond_0

    .line 410
    iget-object v1, p0, Lorg/andengine/engine/Engine;->mTouchController:Lorg/andengine/input/touch/controller/ITouchController;

    invoke-interface {v1, p2}, Lorg/andengine/input/touch/controller/ITouchController;->onHandleMotionEvent(Landroid/view/MotionEvent;)V

    .line 413
    :try_start_0
    iget-object v1, p0, Lorg/andengine/engine/Engine;->mEngineOptions:Lorg/andengine/engine/options/EngineOptions;

    invoke-virtual {v1}, Lorg/andengine/engine/options/EngineOptions;->getTouchOptions()Lorg/andengine/engine/options/TouchOptions;

    move-result-object v1

    invoke-virtual {v1}, Lorg/andengine/engine/options/TouchOptions;->getTouchEventIntervalMilliseconds()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    :goto_0
    const/4 v1, 0x1

    .line 419
    :goto_1
    return v1

    .line 414
    :catch_0
    move-exception v0

    .line 415
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {v0}, Lorg/andengine/util/debug/Debug;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 419
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onTouchEvent(Lorg/andengine/input/touch/TouchEvent;)Z
    .locals 3
    .parameter "pSurfaceTouchEvent"

    .prologue
    .line 429
    invoke-virtual {p0, p1}, Lorg/andengine/engine/Engine;->getSceneFromSurfaceTouchEvent(Lorg/andengine/input/touch/TouchEvent;)Lorg/andengine/entity/scene/Scene;

    move-result-object v1

    .line 430
    .local v1, scene:Lorg/andengine/entity/scene/Scene;
    invoke-virtual {p0, p1}, Lorg/andengine/engine/Engine;->getCameraFromSurfaceTouchEvent(Lorg/andengine/input/touch/TouchEvent;)Lorg/andengine/engine/camera/Camera;

    move-result-object v0

    .line 432
    .local v0, camera:Lorg/andengine/engine/camera/Camera;
    invoke-virtual {p0, v0, p1}, Lorg/andengine/engine/Engine;->convertSurfaceToSceneTouchEvent(Lorg/andengine/engine/camera/Camera;Lorg/andengine/input/touch/TouchEvent;)V

    .line 434
    invoke-virtual {p0, v0, p1}, Lorg/andengine/engine/Engine;->onTouchHUD(Lorg/andengine/engine/camera/Camera;Lorg/andengine/input/touch/TouchEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 435
    const/4 v2, 0x1

    .line 438
    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0, v1, p1}, Lorg/andengine/engine/Engine;->onTouchScene(Lorg/andengine/entity/scene/Scene;Lorg/andengine/input/touch/TouchEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method protected onTouchHUD(Lorg/andengine/engine/camera/Camera;Lorg/andengine/input/touch/TouchEvent;)Z
    .locals 1
    .parameter "pCamera"
    .parameter "pSceneTouchEvent"

    .prologue
    .line 443
    invoke-virtual {p1}, Lorg/andengine/engine/camera/Camera;->hasHUD()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    invoke-virtual {p1}, Lorg/andengine/engine/camera/Camera;->getHUD()Lorg/andengine/engine/camera/hud/HUD;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/andengine/engine/camera/hud/HUD;->onSceneTouchEvent(Lorg/andengine/input/touch/TouchEvent;)Z

    move-result v0

    .line 446
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onTouchScene(Lorg/andengine/entity/scene/Scene;Lorg/andengine/input/touch/TouchEvent;)Z
    .locals 1
    .parameter "pScene"
    .parameter "pSceneTouchEvent"

    .prologue
    .line 451
    if-eqz p1, :cond_0

    .line 452
    invoke-virtual {p1, p2}, Lorg/andengine/entity/scene/Scene;->onSceneTouchEvent(Lorg/andengine/input/touch/TouchEvent;)Z

    move-result v0

    .line 454
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onUpdate(J)V
    .locals 3
    .parameter "pNanosecondsElapsed"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 579
    long-to-float v1, p1

    const v2, 0x3089705f

    mul-float v0, v1, v2

    .line 581
    .local v0, pSecondsElapsed:F
    iget v1, p0, Lorg/andengine/engine/Engine;->mSecondsElapsedTotal:F

    add-float/2addr v1, v0

    iput v1, p0, Lorg/andengine/engine/Engine;->mSecondsElapsedTotal:F

    .line 582
    iget-wide v1, p0, Lorg/andengine/engine/Engine;->mLastTick:J

    add-long/2addr v1, p1

    iput-wide v1, p0, Lorg/andengine/engine/Engine;->mLastTick:J

    .line 584
    iget-object v1, p0, Lorg/andengine/engine/Engine;->mTouchController:Lorg/andengine/input/touch/controller/ITouchController;

    invoke-interface {v1, v0}, Lorg/andengine/input/touch/controller/ITouchController;->onUpdate(F)V

    .line 585
    invoke-virtual {p0, v0}, Lorg/andengine/engine/Engine;->onUpdateUpdateHandlers(F)V

    .line 586
    invoke-virtual {p0, v0}, Lorg/andengine/engine/Engine;->onUpdateScene(F)V

    .line 587
    return-void
.end method

.method protected onUpdateCameraSurface()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 238
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mCamera:Lorg/andengine/engine/camera/Camera;

    iget v1, p0, Lorg/andengine/engine/Engine;->mSurfaceWidth:I

    iget v2, p0, Lorg/andengine/engine/Engine;->mSurfaceHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Lorg/andengine/engine/camera/Camera;->setSurfaceSize(IIII)V

    .line 239
    return-void
.end method

.method protected onUpdateDrawHandlers(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V
    .locals 1
    .parameter "pGLState"
    .parameter "pCamera"

    .prologue
    .line 602
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mDrawHandlers:Lorg/andengine/engine/handler/DrawHandlerList;

    invoke-virtual {v0, p1, p2}, Lorg/andengine/engine/handler/DrawHandlerList;->onDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V

    .line 603
    return-void
.end method

.method protected onUpdateScene(F)V
    .locals 1
    .parameter "pSecondsElapsed"

    .prologue
    .line 590
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mScene:Lorg/andengine/entity/scene/Scene;

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mScene:Lorg/andengine/entity/scene/Scene;

    invoke-virtual {v0, p1}, Lorg/andengine/entity/scene/Scene;->onUpdate(F)V

    .line 593
    :cond_0
    return-void
.end method

.method protected onUpdateUpdateHandlers(F)V
    .locals 1
    .parameter "pSecondsElapsed"

    .prologue
    .line 596
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mUpdateThreadRunnableHandler:Lorg/andengine/engine/handler/runnable/RunnableHandler;

    invoke-virtual {v0, p1}, Lorg/andengine/engine/handler/runnable/RunnableHandler;->onUpdate(F)V

    .line 597
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mUpdateHandlers:Lorg/andengine/engine/handler/UpdateHandlerList;

    invoke-virtual {v0, p1}, Lorg/andengine/engine/handler/UpdateHandlerList;->onUpdate(F)V

    .line 598
    invoke-virtual {p0}, Lorg/andengine/engine/Engine;->getCamera()Lorg/andengine/engine/camera/Camera;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/andengine/engine/camera/Camera;->onUpdate(F)V

    .line 599
    return-void
.end method

.method public registerDrawHandler(Lorg/andengine/engine/handler/IDrawHandler;)V
    .locals 1
    .parameter "pDrawHandler"

    .prologue
    .line 311
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mDrawHandlers:Lorg/andengine/engine/handler/DrawHandlerList;

    invoke-virtual {v0, p1}, Lorg/andengine/engine/handler/DrawHandlerList;->add(Ljava/lang/Object;)Z

    .line 312
    return-void
.end method

.method public registerUpdateHandler(Lorg/andengine/engine/handler/IUpdateHandler;)V
    .locals 1
    .parameter "pUpdateHandler"

    .prologue
    .line 299
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mUpdateHandlers:Lorg/andengine/engine/handler/UpdateHandlerList;

    invoke-virtual {v0, p1}, Lorg/andengine/engine/handler/UpdateHandlerList;->add(Ljava/lang/Object;)Z

    .line 300
    return-void
.end method

.method public runOnUpdateThread(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "pRunnable"

    .prologue
    .line 463
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/andengine/engine/Engine;->runOnUpdateThread(Ljava/lang/Runnable;Z)V

    .line 464
    return-void
.end method

.method public runOnUpdateThread(Ljava/lang/Runnable;Z)V
    .locals 1
    .parameter "pRunnable"
    .parameter "pOnlyWhenEngineRunning"

    .prologue
    .line 474
    if-eqz p2, :cond_0

    .line 475
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mUpdateThreadRunnableHandler:Lorg/andengine/engine/handler/runnable/RunnableHandler;

    invoke-virtual {v0, p1}, Lorg/andengine/engine/handler/runnable/RunnableHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 479
    :goto_0
    return-void

    .line 477
    :cond_0
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mUpdateThread:Lorg/andengine/engine/Engine$UpdateThread;

    invoke-virtual {v0, p1}, Lorg/andengine/engine/Engine$UpdateThread;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public runSafely(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "pRunnable"

    .prologue
    .line 487
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mEngineLock:Lorg/andengine/engine/Engine$EngineLock;

    invoke-virtual {v0}, Lorg/andengine/engine/Engine$EngineLock;->lock()V

    .line 489
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mEngineLock:Lorg/andengine/engine/Engine$EngineLock;

    invoke-virtual {v0}, Lorg/andengine/engine/Engine$EngineLock;->unlock()V

    .line 493
    return-void

    .line 490
    :catchall_0
    move-exception v0

    .line 491
    iget-object v1, p0, Lorg/andengine/engine/Engine;->mEngineLock:Lorg/andengine/engine/Engine$EngineLock;

    invoke-virtual {v1}, Lorg/andengine/engine/Engine$EngineLock;->unlock()V

    .line 492
    throw v0
.end method

.method public setScene(Lorg/andengine/entity/scene/Scene;)V
    .locals 0
    .parameter "pScene"

    .prologue
    .line 216
    iput-object p1, p0, Lorg/andengine/engine/Engine;->mScene:Lorg/andengine/entity/scene/Scene;

    .line 217
    return-void
.end method

.method public setSurfaceSize(II)V
    .locals 0
    .parameter "pSurfaceWidth"
    .parameter "pSurfaceHeight"

    .prologue
    .line 232
    iput p1, p0, Lorg/andengine/engine/Engine;->mSurfaceWidth:I

    .line 233
    iput p2, p0, Lorg/andengine/engine/Engine;->mSurfaceHeight:I

    .line 234
    invoke-virtual {p0}, Lorg/andengine/engine/Engine;->onUpdateCameraSurface()V

    .line 235
    return-void
.end method

.method public setTouchController(Lorg/andengine/input/touch/controller/ITouchController;)V
    .locals 1
    .parameter "pTouchController"

    .prologue
    .line 254
    iput-object p1, p0, Lorg/andengine/engine/Engine;->mTouchController:Lorg/andengine/input/touch/controller/ITouchController;

    .line 255
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mTouchController:Lorg/andengine/input/touch/controller/ITouchController;

    invoke-interface {v0, p0}, Lorg/andengine/input/touch/controller/ITouchController;->setTouchEventCallback(Lorg/andengine/input/touch/controller/ITouchEventCallback;)V

    .line 256
    return-void
.end method

.method public declared-synchronized start()V
    .locals 2

    .prologue
    .line 190
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/andengine/engine/Engine;->mRunning:Z

    if-nez v0, :cond_0

    .line 191
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/andengine/engine/Engine;->mLastTick:J

    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/andengine/engine/Engine;->mRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    :cond_0
    monitor-exit p0

    return-void

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startUpdateThread()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalThreadStateException;
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mUpdateThread:Lorg/andengine/engine/Engine$UpdateThread;

    invoke-virtual {v0}, Lorg/andengine/engine/Engine$UpdateThread;->start()V

    .line 179
    return-void
.end method

.method public declared-synchronized stop()V
    .locals 1

    .prologue
    .line 197
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/andengine/engine/Engine;->mRunning:Z

    if-eqz v0, :cond_0

    .line 198
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/andengine/engine/Engine;->mRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    :cond_0
    monitor-exit p0

    return-void

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregisterDrawHandler(Lorg/andengine/engine/handler/IDrawHandler;)V
    .locals 1
    .parameter "pDrawHandler"

    .prologue
    .line 315
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mDrawHandlers:Lorg/andengine/engine/handler/DrawHandlerList;

    invoke-virtual {v0, p1}, Lorg/andengine/engine/handler/DrawHandlerList;->remove(Ljava/lang/Object;)Z

    .line 316
    return-void
.end method

.method public unregisterUpdateHandler(Lorg/andengine/engine/handler/IUpdateHandler;)V
    .locals 1
    .parameter "pUpdateHandler"

    .prologue
    .line 303
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mUpdateHandlers:Lorg/andengine/engine/handler/UpdateHandlerList;

    invoke-virtual {v0, p1}, Lorg/andengine/engine/handler/UpdateHandlerList;->remove(Ljava/lang/Object;)Z

    .line 304
    return-void
.end method

.method public vibrate(J)V
    .locals 2
    .parameter "pMilliseconds"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 645
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 650
    return-void

    .line 648
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to enable the Vibrator before you can use it!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public vibrate([JI)V
    .locals 2
    .parameter "pPattern"
    .parameter "pRepeat"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 653
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 658
    return-void

    .line 656
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to enable the Vibrator before you can use it!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
