.class public abstract Lorg/andengine/ui/activity/BaseGameActivity;
.super Lorg/andengine/ui/activity/BaseActivity;
.source "BaseGameActivity.java"

# interfaces
.implements Lorg/andengine/ui/IGameInterface;
.implements Lorg/andengine/opengl/view/IRendererListener;


# static fields
.field private static synthetic $SWITCH_TABLE$org$andengine$engine$options$ScreenOrientation:[I


# instance fields
.field private mCreateGameCalled:Z

.field protected mEngine:Lorg/andengine/engine/Engine;

.field private mGameCreated:Z

.field private mGamePaused:Z

.field private mOnReloadResourcesScheduled:Z

.field protected mRenderSurfaceView:Lorg/andengine/opengl/view/RenderSurfaceView;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic $SWITCH_TABLE$org$andengine$engine$options$ScreenOrientation()[I
    .locals 3

    .prologue
    .line 46
    sget-object v0, Lorg/andengine/ui/activity/BaseGameActivity;->$SWITCH_TABLE$org$andengine$engine$options$ScreenOrientation:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/andengine/engine/options/ScreenOrientation;->values()[Lorg/andengine/engine/options/ScreenOrientation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/andengine/engine/options/ScreenOrientation;->LANDSCAPE_FIXED:Lorg/andengine/engine/options/ScreenOrientation;

    invoke-virtual {v1}, Lorg/andengine/engine/options/ScreenOrientation;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lorg/andengine/engine/options/ScreenOrientation;->LANDSCAPE_SENSOR:Lorg/andengine/engine/options/ScreenOrientation;

    invoke-virtual {v1}, Lorg/andengine/engine/options/ScreenOrientation;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lorg/andengine/engine/options/ScreenOrientation;->PORTRAIT_FIXED:Lorg/andengine/engine/options/ScreenOrientation;

    invoke-virtual {v1}, Lorg/andengine/engine/options/ScreenOrientation;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lorg/andengine/engine/options/ScreenOrientation;->PORTRAIT_SENSOR:Lorg/andengine/engine/options/ScreenOrientation;

    invoke-virtual {v1}, Lorg/andengine/engine/options/ScreenOrientation;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lorg/andengine/ui/activity/BaseGameActivity;->$SWITCH_TABLE$org$andengine$engine$options$ScreenOrientation:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/andengine/ui/activity/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lorg/andengine/ui/activity/BaseGameActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 369
    invoke-direct {p0}, Lorg/andengine/ui/activity/BaseGameActivity;->callGameResumedOnUIThread()V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lorg/andengine/ui/activity/BaseGameActivity;->mEngine:Lorg/andengine/engine/Engine;

    invoke-virtual {v0}, Lorg/andengine/engine/Engine;->getEngineOptions()Lorg/andengine/engine/options/EngineOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/andengine/engine/options/EngineOptions;->getWakeLockOptions()Lorg/andengine/engine/options/WakeLockOptions;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/andengine/ui/activity/BaseGameActivity;->acquireWakeLock(Lorg/andengine/engine/options/WakeLockOptions;)V

    .line 401
    return-void
.end method

.method private acquireWakeLock(Lorg/andengine/engine/options/WakeLockOptions;)V
    .locals 4
    .parameter "pWakeLockOptions"

    .prologue
    .line 404
    sget-object v2, Lorg/andengine/engine/options/WakeLockOptions;->SCREEN_ON:Lorg/andengine/engine/options/WakeLockOptions;

    if-ne p1, v2, :cond_0

    .line 405
    invoke-static {p0}, Lorg/andengine/util/ActivityUtils;->keepScreenOn(Landroid/app/Activity;)V

    .line 415
    :goto_0
    return-void

    .line 407
    :cond_0
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lorg/andengine/ui/activity/BaseGameActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 408
    .local v1, pm:Landroid/os/PowerManager;
    invoke-virtual {p1}, Lorg/andengine/engine/options/WakeLockOptions;->getFlag()I

    move-result v2

    const/high16 v3, 0x2000

    or-int/2addr v2, v3

    const-string v3, "AndEngine"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lorg/andengine/ui/activity/BaseGameActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 410
    :try_start_0
    iget-object v2, p0, Lorg/andengine/ui/activity/BaseGameActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 411
    :catch_0
    move-exception v0

    .line 412
    .local v0, pSecurityException:Ljava/lang/SecurityException;
    const-string v2, "You have to add\n\t<uses-permission android:name=\"android.permission.WAKE_LOCK\"/>\nto your AndroidManifest.xml !"

    invoke-static {v2, v0}, Lorg/andengine/util/debug/Debug;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private applyEngineOptions()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 424
    iget-object v1, p0, Lorg/andengine/ui/activity/BaseGameActivity;->mEngine:Lorg/andengine/engine/Engine;

    invoke-virtual {v1}, Lorg/andengine/engine/Engine;->getEngineOptions()Lorg/andengine/engine/options/EngineOptions;

    move-result-object v0

    .line 426
    .local v0, engineOptions:Lorg/andengine/engine/options/EngineOptions;
    invoke-virtual {v0}, Lorg/andengine/engine/options/EngineOptions;->isFullscreen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 427
    invoke-static {p0}, Lorg/andengine/util/ActivityUtils;->requestFullscreen(Landroid/app/Activity;)V

    .line 430
    :cond_0
    invoke-virtual {v0}, Lorg/andengine/engine/options/EngineOptions;->getAudioOptions()Lorg/andengine/engine/options/AudioOptions;

    move-result-object v1

    invoke-virtual {v1}, Lorg/andengine/engine/options/AudioOptions;->needsMusic()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lorg/andengine/engine/options/EngineOptions;->getAudioOptions()Lorg/andengine/engine/options/AudioOptions;

    move-result-object v1

    invoke-virtual {v1}, Lorg/andengine/engine/options/AudioOptions;->needsSound()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 431
    :cond_1
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lorg/andengine/ui/activity/BaseGameActivity;->setVolumeControlStream(I)V

    .line 434
    :cond_2
    invoke-static {}, Lorg/andengine/ui/activity/BaseGameActivity;->$SWITCH_TABLE$org$andengine$engine$options$ScreenOrientation()[I

    move-result-object v1

    invoke-virtual {v0}, Lorg/andengine/engine/options/EngineOptions;->getScreenOrientation()Lorg/andengine/engine/options/ScreenOrientation;

    move-result-object v2

    invoke-virtual {v2}, Lorg/andengine/engine/options/ScreenOrientation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 458
    :goto_0
    return-void

    .line 436
    :pswitch_0
    invoke-virtual {p0, v3}, Lorg/andengine/ui/activity/BaseGameActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 439
    :pswitch_1
    sget-boolean v1, Lorg/andengine/util/system/SystemUtils;->SDK_VERSION_GINGERBREAD_OR_LATER:Z

    if-eqz v1, :cond_3

    .line 440
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lorg/andengine/ui/activity/BaseGameActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 442
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-class v2, Lorg/andengine/engine/options/ScreenOrientation;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/andengine/engine/options/ScreenOrientation;->LANDSCAPE_SENSOR:Lorg/andengine/engine/options/ScreenOrientation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported on this device. Falling back to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lorg/andengine/engine/options/ScreenOrientation;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/andengine/engine/options/ScreenOrientation;->LANDSCAPE_FIXED:Lorg/andengine/engine/options/ScreenOrientation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/andengine/util/debug/Debug;->w(Ljava/lang/String;)V

    .line 443
    invoke-virtual {p0, v3}, Lorg/andengine/ui/activity/BaseGameActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 447
    :pswitch_2
    invoke-virtual {p0, v4}, Lorg/andengine/ui/activity/BaseGameActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 450
    :pswitch_3
    sget-boolean v1, Lorg/andengine/util/system/SystemUtils;->SDK_VERSION_GINGERBREAD_OR_LATER:Z

    if-eqz v1, :cond_4

    .line 451
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lorg/andengine/ui/activity/BaseGameActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 453
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-class v2, Lorg/andengine/engine/options/ScreenOrientation;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/andengine/engine/options/ScreenOrientation;->PORTRAIT_SENSOR:Lorg/andengine/engine/options/ScreenOrientation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported on this device. Falling back to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lorg/andengine/engine/options/ScreenOrientation;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/andengine/engine/options/ScreenOrientation;->PORTRAIT_FIXED:Lorg/andengine/engine/options/ScreenOrientation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/andengine/util/debug/Debug;->w(Ljava/lang/String;)V

    .line 454
    invoke-virtual {p0, v4}, Lorg/andengine/ui/activity/BaseGameActivity;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 434
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private callGameResumedOnUIThread()V
    .locals 1

    .prologue
    .line 370
    new-instance v0, Lorg/andengine/ui/activity/BaseGameActivity$4;

    invoke-direct {v0, p0}, Lorg/andengine/ui/activity/BaseGameActivity$4;-><init>(Lorg/andengine/ui/activity/BaseGameActivity;)V

    invoke-virtual {p0, v0}, Lorg/andengine/ui/activity/BaseGameActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 376
    return-void
.end method

.method protected static createSurfaceViewLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 461
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 462
    .local v0, layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 463
    return-object v0
.end method

.method private releaseWakeLock()V
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lorg/andengine/ui/activity/BaseGameActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/andengine/ui/activity/BaseGameActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lorg/andengine/ui/activity/BaseGameActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 421
    :cond_0
    return-void
.end method


# virtual methods
.method protected disableAccelerationSensor()Z
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lorg/andengine/ui/activity/BaseGameActivity;->mEngine:Lorg/andengine/engine/Engine;

    invoke-virtual {v0, p0}, Lorg/andengine/engine/Engine;->disableAccelerationSensor(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected disableLocationSensor()V
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lorg/andengine/ui/activity/BaseGameActivity;->mEngine:Lorg/andengine/engine/Engine;

    invoke-virtual {v0, p0}, Lorg/andengine/engine/Engine;->disableLocationSensor(Landroid/content/Context;)V

    .line 482
    return-void
.end method

.method protected disableOrientationSensor()Z
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lorg/andengine/ui/activity/BaseGameActivity;->mEngine:Lorg/andengine/engine/Engine;

    invoke-virtual {v0, p0}, Lorg/andengine/engine/Engine;->disableOrientationSensor(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected enableAccelerationSensor(Lorg/andengine/input/sensor/acceleration/IAccelerationListener;)Z
    .locals 1
    .parameter "pAccelerationListener"

    .prologue
    .line 488
    iget-object v0, p0, Lorg/andengine/ui/activity/BaseGameActivity;->mEngine:Lorg/andengine/engine/Engine;

    invoke-virtual {v0, p0, p1}, Lorg/andengine/engine/Engine;->enableAccelerationSensor(Landroid/content/Context;Lorg/andengine/input/sensor/acceleration/IAccelerationListener;)Z

    move-result v0

    return v0
.end method

.method protected enableAccelerationSensor(Lorg/andengine/input/sensor/acceleration/IAccelerationListener;Lorg/andengine/input/sensor/acceleration/AccelerationSensorOptions;)Z
    .locals 1
    .parameter "pAccelerationListener"
    .parameter "pAccelerationSensorOptions"

    .prologue
    .line 495
    iget-object v0, p0, Lorg/andengine/ui/activity/BaseGameActivity;->mEngine:Lorg/andengine/engine/Engine;

    invoke-virtual {v0, p0, p1, p2}, Lorg/andengine/engine/Engine;->enableAccelerationSensor(Landroid/content/Context;Lorg/andengine/input/sensor/acceleration/IAccelerationListener;Lorg/andengine/input/sensor/acceleration/AccelerationSensorOptions;)Z

    move-result v0

    return v0
.end method

.method protected enableLocationSensor(Lorg/andengine/input/sensor/location/ILocationListener;Lorg/andengine/input/sensor/location/LocationSensorOptions;)V
    .locals 1
    .parameter "pLocationListener"
    .parameter "pLocationSensorOptions"

    .prologue
    .line 474
    iget-object v0, p0, Lorg/andengine/ui/activity/BaseGameActivity;->mEngine:Lorg/andengine/engine/Engine;

    invoke-virtual {v0, p0, p1, p2}, Lorg/andengine/engine/Engine;->enableLocationSensor(Landroid/content/Context;Lorg/andengine/input/sensor/location/ILocationListener;Lorg/andengine/input/sensor/location/LocationSensorOptions;)V

    .line 475
    return-void
.end method

.method protected enableOrientationSensor(Lorg/andengine/input/sensor/orientation/IOrientationListener;)Z
    .locals 1
    .parameter "pOrientationListener"

    .prologue
    .line 509
    iget-object v0, p0, Lorg/andengine/ui/activity/BaseGameActivity;->mEngine:Lorg/andengine/engine/Engine;

    invoke-virtual {v0, p0, p1}, Lorg/andengine/engine/Engine;->enableOrientationSensor(Landroid/content/Context;Lorg/andengine/input/sensor/orientation/IOrientationListener;)Z

    move-result v0

    return v0
.end method

.method protected enableOrientationSensor(Lorg/andengine/input/sensor/orientation/IOrientationListener;Lorg/andengine/input/sensor/orientation/OrientationSensorOptions;)Z
    .locals 1
    .parameter "pOrientationListener"
    .parameter "pLocationSensorOptions"

    .prologue
    .line 516
    iget-object v0, p0, Lorg/andengine/ui/activity/BaseGameActivity;->mEngine:Lorg/andengine/engine/Engine;

    invoke-virtual {v0, p0, p1, p2}, Lorg/andengine/engine/Engine;->enableOrientationSensor(Landroid/content/Context;Lorg/andengine/input/sensor/orientation/IOrientationListener;Lorg/andengine/input/sensor/orientation/OrientationSensorOptions;)Z

    move-result v0

    return v0
.end method

.method protected enableVibrator()V
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lorg/andengine/ui/activity/BaseGameActivity;->mEngine:Lorg/andengine/engine/Engine;

    invoke-virtual {v0, p0}, Lorg/andengine/engine/Engine;->enableVibrator(Landroid/content/Context;)Z

    .line 468
    return-void
.end method

.method public getEngine()Lorg/andengine/engine/Engine;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lorg/andengine/ui/activity/BaseGameActivity;->mEngine:Lorg/andengine/engine/Engine;

    return-object v0
.end method

.method public getFontManager()Lorg/andengine/opengl/font/FontManager;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lorg/andengine/ui/activity/BaseGameActivity;->mEngine:Lorg/andengine/engine/Engine;

    invoke-virtual {v0}, Lorg/andengine/engine/Engine;->getFontManager()Lorg/andengine/opengl/font/FontManager;

    move-result-object v0

    return-object v0
.end method

.method public getMusicManager()Lorg/andengine/audio/music/MusicManager;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lorg/andengine/ui/activity/BaseGameActivity;->mEngine:Lorg/andengine/engine/Engine;

    invoke-virtual {v0}, Lorg/andengine/engine/Engine;->getMusicManager()Lorg/andengine/audio/music/MusicManager;

    move-result-object v0

    return-object v0
.end method

.method public getShaderProgramManager()Lorg/andengine/opengl/shader/ShaderProgramManager;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lorg/andengine/ui/activity/BaseGameActivity;->mEngine:Lorg/andengine/engine/Engine;

    invoke-virtual {v0}, Lorg/andengine/engine/Engine;->getShaderProgramManager()Lorg/andengine/opengl/shader/ShaderProgramManager;

    move-result-object v0

    return-object v0
.end method

.method public getSoundManager()Lorg/andengine/audio/sound/SoundManager;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lorg/andengine/ui/activity/BaseGameActivity;->mEngine:Lorg/andengine/engine/Engine;

    invoke-virtual {v0}, Lorg/andengine/engine/Engine;->getSoundManager()Lorg/andengine/audio/sound/SoundManager;

    move-result-object v0

    return-object v0
.end method

.method public getTextureManager()Lorg/andengine/opengl/texture/TextureManager;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lorg/andengine/ui/activity/BaseGameActivity;->mEngine:Lorg/andengine/engine/Engine;

    invoke-virtual {v0}, Lorg/andengine/engine/Engine;->getTextureManager()Lorg/andengine/opengl/texture/TextureManager;

    move-result-object v0

    return-object v0
.end method

.method public getVertexBufferObjectManager()Lorg/andengine/opengl/vbo/VertexBufferObjectManager;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lorg/andengine/ui/activity/BaseGameActivity;->mEngine:Lorg/andengine/engine/Engine;

    invoke-virtual {v0}, Lorg/andengine/engine/Engine;->getVertexBufferObjectManager()Lorg/andengine/opengl/vbo/VertexBufferObjectManager;

    move-result-object v0

    return-object v0
.end method

.method public isGameLoaded()Z
    .locals 1

    .prologue
    .line 334
    iget-boolean v0, p0, Lorg/andengine/ui/activity/BaseGameActivity;->mGameCreated:Z

    return v0
.end method

.method public isGamePaused()Z
    .locals 1

    .prologue
    .line 326
    iget-boolean v0, p0, Lorg/andengine/ui/activity/BaseGameActivity;->mGamePaused:Z

    return v0
.end method

.method public isGameRunning()Z
    .locals 1

    .prologue
    .line 330
    iget-boolean v0, p0, Lorg/andengine/ui/activity/BaseGameActivity;->mGamePaused:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "pSavedInstanceState"

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".onCreate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " @(Thread: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/andengine/util/debug/Debug;->d(Ljava/lang/String;)V

    .line 76
    invoke-super {p0, p1}, Lorg/andengine/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/andengine/ui/activity/BaseGameActivity;->mGamePaused:Z

    .line 80
    invoke-virtual {p0}, Lorg/andengine/ui/activity/BaseGameActivity;->onCreateEngineOptions()Lorg/andengine/engine/options/EngineOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/andengine/ui/activity/BaseGameActivity;->onCreateEngine(Lorg/andengine/engine/options/EngineOptions;)Lorg/andengine/engine/Engine;

    move-result-object v0

    iput-object v0, p0, Lorg/andengine/ui/activity/BaseGameActivity;->mEngine:Lorg/andengine/engine/Engine;

    .line 81
    iget-object v0, p0, Lorg/andengine/ui/activity/BaseGameActivity;->mEngine:Lorg/andengine/engine/Engine;

    invoke-virtual {v0}, Lorg/andengine/engine/Engine;->startUpdateThread()V

    .line 83
    invoke-direct {p0}, Lorg/andengine/ui/activity/BaseGameActivity;->applyEngineOptions()V

    .line 85
    invoke-virtual {p0}, Lorg/andengine/ui/activity/BaseGameActivity;->onSetContentView()V

    .line 86
    return-void
.end method

.method public onCreateEngine(Lorg/andengine/engine/options/EngineOptions;)Lorg/andengine/engine/Engine;
    .locals 1
    .parameter "pEngineOptions"

    .prologue
    .line 90
    new-instance v0, Lorg/andengine/engine/Engine;

    invoke-direct {v0, p1}, Lorg/andengine/engine/Engine;-><init>(Lorg/andengine/engine/options/EngineOptions;)V

    return-object v0
.end method

.method protected declared-synchronized onCreateGame()V
    .locals 6

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".onCreateGame"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " @(Thread: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/andengine/util/debug/Debug;->d(Ljava/lang/String;)V

    .line 127
    new-instance v2, Lorg/andengine/ui/activity/BaseGameActivity$1;

    invoke-direct {v2, p0}, Lorg/andengine/ui/activity/BaseGameActivity$1;-><init>(Lorg/andengine/ui/activity/BaseGameActivity;)V

    .line 144
    .local v2, onPopulateSceneCallback:Lorg/andengine/ui/IGameInterface$OnPopulateSceneCallback;
    new-instance v1, Lorg/andengine/ui/activity/BaseGameActivity$2;

    invoke-direct {v1, p0, v2}, Lorg/andengine/ui/activity/BaseGameActivity$2;-><init>(Lorg/andengine/ui/activity/BaseGameActivity;Lorg/andengine/ui/IGameInterface$OnPopulateSceneCallback;)V

    .line 161
    .local v1, onCreateSceneCallback:Lorg/andengine/ui/IGameInterface$OnCreateSceneCallback;
    new-instance v0, Lorg/andengine/ui/activity/BaseGameActivity$3;

    invoke-direct {v0, p0, v1}, Lorg/andengine/ui/activity/BaseGameActivity$3;-><init>(Lorg/andengine/ui/activity/BaseGameActivity;Lorg/andengine/ui/IGameInterface$OnCreateSceneCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    .local v0, onCreateResourcesCallback:Lorg/andengine/ui/IGameInterface$OnCreateResourcesCallback;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".onCreateResources"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " @(Thread: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/andengine/util/debug/Debug;->d(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0, v0}, Lorg/andengine/ui/activity/BaseGameActivity;->onCreateResources(Lorg/andengine/ui/IGameInterface$OnCreateResourcesCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 185
    :goto_0
    monitor-exit p0

    return-void

    .line 182
    :catch_0
    move-exception v3

    .line 183
    .local v3, pThrowable:Ljava/lang/Throwable;
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".onCreateGame failed."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " @(Thread: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lorg/andengine/util/debug/Debug;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 124
    .end local v0           #onCreateResourcesCallback:Lorg/andengine/ui/IGameInterface$OnCreateResourcesCallback;
    .end local v1           #onCreateSceneCallback:Lorg/andengine/ui/IGameInterface$OnCreateSceneCallback;
    .end local v2           #onPopulateSceneCallback:Lorg/andengine/ui/IGameInterface$OnPopulateSceneCallback;
    .end local v3           #pThrowable:Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".onDestroy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " @(Thread: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/andengine/util/debug/Debug;->d(Ljava/lang/String;)V

    .line 278
    invoke-super {p0}, Lorg/andengine/ui/activity/BaseActivity;->onDestroy()V

    .line 280
    iget-object v1, p0, Lorg/andengine/ui/activity/BaseGameActivity;->mEngine:Lorg/andengine/engine/Engine;

    invoke-virtual {v1}, Lorg/andengine/engine/Engine;->onDestroy()V

    .line 283
    :try_start_0
    invoke-virtual {p0}, Lorg/andengine/ui/activity/BaseGameActivity;->onDestroyResources()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :goto_0
    invoke-virtual {p0}, Lorg/andengine/ui/activity/BaseGameActivity;->onGameDestroyed()V

    .line 290
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/andengine/ui/activity/BaseGameActivity;->mEngine:Lorg/andengine/engine/Engine;

    .line 291
    return-void

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, pThrowable:Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".onDestroyResources failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " @(Thread: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/andengine/util/debug/Debug;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onDestroyResources()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".onDestroyResources"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " @(Thread: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/andengine/util/debug/Debug;->d(Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lorg/andengine/ui/activity/BaseGameActivity;->mEngine:Lorg/andengine/engine/Engine;

    invoke-virtual {v0}, Lorg/andengine/engine/Engine;->getEngineOptions()Lorg/andengine/engine/options/EngineOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/andengine/engine/options/EngineOptions;->getAudioOptions()Lorg/andengine/engine/options/AudioOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/andengine/engine/options/AudioOptions;->needsMusic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {p0}, Lorg/andengine/ui/activity/BaseGameActivity;->getMusicManager()Lorg/andengine/audio/music/MusicManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/andengine/audio/music/MusicManager;->releaseAll()V

    .line 303
    :cond_0
    iget-object v0, p0, Lorg/andengine/ui/activity/BaseGameActivity;->mEngine:Lorg/andengine/engine/Engine;

    invoke-virtual {v0}, Lorg/andengine/engine/Engine;->getEngineOptions()Lorg/andengine/engine/options/EngineOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/andengine/engine/options/EngineOptions;->getAudioOptions()Lorg/andengine/engine/options/AudioOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/andengine/engine/options/AudioOptions;->needsSound()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    invoke-virtual {p0}, Lorg/andengine/ui/activity/BaseGameActivity;->getSoundManager()Lorg/andengine/audio/sound/SoundManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/andengine/audio/sound/SoundManager;->releaseAll()V

    .line 306
    :cond_1
    return-void
.end method

.method public declared-synchronized onGameCreated()V
    .locals 3

    .prologue
    .line 189
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/andengine/ui/activity/BaseGameActivity;->mGameCreated:Z

    .line 194
    iget-boolean v1, p0, Lorg/andengine/ui/activity/BaseGameActivity;->mOnReloadResourcesScheduled:Z

    if-eqz v1, :cond_0

    .line 195
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/andengine/ui/activity/BaseGameActivity;->mOnReloadResourcesScheduled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :try_start_1
    invoke-virtual {p0}, Lorg/andengine/ui/activity/BaseGameActivity;->onReloadResources()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 202
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, pThrowable:Ljava/lang/Throwable;
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".onReloadResources failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " @(Thread: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/andengine/util/debug/Debug;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 189
    .end local v0           #pThrowable:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onGameDestroyed()V
    .locals 2

    .prologue
    .line 311
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".onGameDestroyed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " @(Thread: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/andengine/util/debug/Debug;->d(Ljava/lang/String;)V

    .line 314
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/andengine/ui/activity/BaseGameActivity;->mGameCreated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    monitor-exit p0

    return-void

    .line 311
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".onPause"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " @(Thread: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/andengine/util/debug/Debug;->d(Ljava/lang/String;)V

    .line 251
    invoke-super {p0}, Lorg/andengine/ui/activity/BaseActivity;->onPause()V

    .line 253
    iget-object v0, p0, Lorg/andengine/ui/activity/BaseGameActivity;->mRenderSurfaceView:Lorg/andengine/opengl/view/RenderSurfaceView;

    invoke-virtual {v0}, Lorg/andengine/opengl/view/RenderSurfaceView;->onPause()V

    .line 254
    invoke-direct {p0}, Lorg/andengine/ui/activity/BaseGameActivity;->releaseWakeLock()V

    .line 256
    iget-boolean v0, p0, Lorg/andengine/ui/activity/BaseGameActivity;->mGamePaused:Z

    if-nez v0, :cond_0

    .line 257
    invoke-virtual {p0}, Lorg/andengine/ui/activity/BaseGameActivity;->onPauseGame()V

    .line 259
    :cond_0
    return-void
.end method

.method public declared-synchronized onPauseGame()V
    .locals 2

    .prologue
    .line 264
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".onPauseGame"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " @(Thread: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/andengine/util/debug/Debug;->d(Ljava/lang/String;)V

    .line 267
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/andengine/ui/activity/BaseGameActivity;->mGamePaused:Z

    .line 269
    iget-object v0, p0, Lorg/andengine/ui/activity/BaseGameActivity;->mEngine:Lorg/andengine/engine/Engine;

    invoke-virtual {v0}, Lorg/andengine/engine/Engine;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    monitor-exit p0

    return-void

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onReloadResources()V
    .locals 2

    .prologue
    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".onReloadResources"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " @(Thread: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/andengine/util/debug/Debug;->d(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lorg/andengine/ui/activity/BaseGameActivity;->mEngine:Lorg/andengine/engine/Engine;

    invoke-virtual {v0}, Lorg/andengine/engine/Engine;->onReloadResources()V

    .line 243
    return-void
.end method

.method protected declared-synchronized onResume()V
    .locals 2

    .prologue
    .line 207
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".onResume"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " @(Thread: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/andengine/util/debug/Debug;->d(Ljava/lang/String;)V

    .line 210
    invoke-super {p0}, Lorg/andengine/ui/activity/BaseActivity;->onResume()V

    .line 212
    invoke-direct {p0}, Lorg/andengine/ui/activity/BaseGameActivity;->acquireWakeLock()V

    .line 213
    iget-object v0, p0, Lorg/andengine/ui/activity/BaseGameActivity;->mRenderSurfaceView:Lorg/andengine/opengl/view/RenderSurfaceView;

    invoke-virtual {v0}, Lorg/andengine/opengl/view/RenderSurfaceView;->onResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    monitor-exit p0

    return-void

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onResumeGame()V
    .locals 2

    .prologue
    .line 219
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".onResumeGame"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " @(Thread: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/andengine/util/debug/Debug;->d(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lorg/andengine/ui/activity/BaseGameActivity;->mEngine:Lorg/andengine/engine/Engine;

    invoke-virtual {v0}, Lorg/andengine/engine/Engine;->start()V

    .line 224
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/andengine/ui/activity/BaseGameActivity;->mGamePaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    monitor-exit p0

    return-void

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onSetContentView()V
    .locals 2

    .prologue
    .line 379
    new-instance v0, Lorg/andengine/opengl/view/RenderSurfaceView;

    invoke-direct {v0, p0}, Lorg/andengine/opengl/view/RenderSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/andengine/ui/activity/BaseGameActivity;->mRenderSurfaceView:Lorg/andengine/opengl/view/RenderSurfaceView;

    .line 380
    iget-object v0, p0, Lorg/andengine/ui/activity/BaseGameActivity;->mRenderSurfaceView:Lorg/andengine/opengl/view/RenderSurfaceView;

    iget-object v1, p0, Lorg/andengine/ui/activity/BaseGameActivity;->mEngine:Lorg/andengine/engine/Engine;

    invoke-virtual {v0, v1, p0}, Lorg/andengine/opengl/view/RenderSurfaceView;->setRenderer(Lorg/andengine/engine/Engine;Lorg/andengine/opengl/view/IRendererListener;)V

    .line 382
    iget-object v0, p0, Lorg/andengine/ui/activity/BaseGameActivity;->mRenderSurfaceView:Lorg/andengine/opengl/view/RenderSurfaceView;

    invoke-static {}, Lorg/andengine/ui/activity/BaseGameActivity;->createSurfaceViewLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/andengine/ui/activity/BaseGameActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 383
    return-void
.end method

.method public declared-synchronized onSurfaceChanged(Lorg/andengine/opengl/util/GLState;II)V
    .locals 2
    .parameter "pGLState"
    .parameter "pWidth"
    .parameter "pHeight"

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".onSurfaceChanged(Width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",  Height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " @(Thread: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/andengine/util/debug/Debug;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    monitor-exit p0

    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onSurfaceCreated(Lorg/andengine/opengl/util/GLState;)V
    .locals 2
    .parameter "pGLState"

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".onSurfaceCreated"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " @(Thread: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/andengine/util/debug/Debug;->d(Ljava/lang/String;)V

    .line 99
    iget-boolean v0, p0, Lorg/andengine/ui/activity/BaseGameActivity;->mGameCreated:Z

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {p0}, Lorg/andengine/ui/activity/BaseGameActivity;->onReloadResources()V

    .line 102
    iget-boolean v0, p0, Lorg/andengine/ui/activity/BaseGameActivity;->mGamePaused:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/andengine/ui/activity/BaseGameActivity;->mGameCreated:Z

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lorg/andengine/ui/activity/BaseGameActivity;->onResumeGame()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 106
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lorg/andengine/ui/activity/BaseGameActivity;->mCreateGameCalled:Z

    if-eqz v0, :cond_2

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/andengine/ui/activity/BaseGameActivity;->mOnReloadResourcesScheduled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 109
    :cond_2
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lorg/andengine/ui/activity/BaseGameActivity;->mCreateGameCalled:Z

    .line 110
    invoke-virtual {p0}, Lorg/andengine/ui/activity/BaseGameActivity;->onCreateGame()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized onWindowFocusChanged(Z)V
    .locals 1
    .parameter "pHasWindowFocus"

    .prologue
    .line 229
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lorg/andengine/ui/activity/BaseActivity;->onWindowFocusChanged(Z)V

    .line 231
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lorg/andengine/ui/activity/BaseGameActivity;->mGamePaused:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/andengine/ui/activity/BaseGameActivity;->mGameCreated:Z

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {p0}, Lorg/andengine/ui/activity/BaseGameActivity;->onResumeGame()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    :cond_0
    monitor-exit p0

    return-void

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public runOnUpdateThread(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "pRunnable"

    .prologue
    .line 389
    iget-object v0, p0, Lorg/andengine/ui/activity/BaseGameActivity;->mEngine:Lorg/andengine/engine/Engine;

    invoke-virtual {v0, p1}, Lorg/andengine/engine/Engine;->runOnUpdateThread(Ljava/lang/Runnable;)V

    .line 390
    return-void
.end method

.method public runOnUpdateThread(Ljava/lang/Runnable;Z)V
    .locals 1
    .parameter "pRunnable"
    .parameter "pOnlyWhenEngineRunning"

    .prologue
    .line 396
    iget-object v0, p0, Lorg/andengine/ui/activity/BaseGameActivity;->mEngine:Lorg/andengine/engine/Engine;

    invoke-virtual {v0, p1, p2}, Lorg/andengine/engine/Engine;->runOnUpdateThread(Ljava/lang/Runnable;Z)V

    .line 397
    return-void
.end method
