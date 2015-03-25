.class public Lorg/andengine/entity/util/ScreenCapture;
.super Lorg/andengine/entity/Entity;
.source "ScreenCapture.java"

# interfaces
.implements Lorg/andengine/entity/util/ScreenGrabber$IScreenGrabberCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/andengine/entity/util/ScreenCapture$IScreenCaptureCallback;
    }
.end annotation


# instance fields
.field private mFilePath:Ljava/lang/String;

.field private mScreenCaptureCallback:Lorg/andengine/entity/util/ScreenCapture$IScreenCaptureCallback;

.field private final mScreenGrabber:Lorg/andengine/entity/util/ScreenGrabber;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/andengine/entity/Entity;-><init>()V

    .line 34
    new-instance v0, Lorg/andengine/entity/util/ScreenGrabber;

    invoke-direct {v0}, Lorg/andengine/entity/util/ScreenGrabber;-><init>()V

    iput-object v0, p0, Lorg/andengine/entity/util/ScreenCapture;->mScreenGrabber:Lorg/andengine/entity/util/ScreenGrabber;

    .line 23
    return-void
.end method

.method private static saveCapture(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 5
    .parameter "pBitmap"
    .parameter "pFilePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 95
    const/4 v1, 0x0

    .line 97
    .local v1, out:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v1           #out:Ljava/io/FileOutputStream;
    .local v2, out:Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 104
    return-void

    .line 99
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v1       #out:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 100
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_0
    invoke-static {v1}, Lorg/andengine/util/StreamUtils;->flushCloseStream(Ljava/io/OutputStream;)V

    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error saving file to: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lorg/andengine/util/debug/Debug;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    throw v0

    .line 99
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .end local v1           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v1       #out:Ljava/io/FileOutputStream;
    goto :goto_0
.end method


# virtual methods
.method public capture(IIIILjava/lang/String;Lorg/andengine/entity/util/ScreenCapture$IScreenCaptureCallback;)V
    .locals 6
    .parameter "pCaptureX"
    .parameter "pCaptureY"
    .parameter "pCaptureWidth"
    .parameter "pCaptureHeight"
    .parameter "pFilePath"
    .parameter "pScreencaptureCallback"

    .prologue
    .line 89
    iput-object p5, p0, Lorg/andengine/entity/util/ScreenCapture;->mFilePath:Ljava/lang/String;

    .line 90
    iput-object p6, p0, Lorg/andengine/entity/util/ScreenCapture;->mScreenCaptureCallback:Lorg/andengine/entity/util/ScreenCapture$IScreenCaptureCallback;

    .line 91
    iget-object v0, p0, Lorg/andengine/entity/util/ScreenCapture;->mScreenGrabber:Lorg/andengine/entity/util/ScreenGrabber;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lorg/andengine/entity/util/ScreenGrabber;->grab(IIIILorg/andengine/entity/util/ScreenGrabber$IScreenGrabberCallback;)V

    .line 92
    return-void
.end method

.method public capture(IILjava/lang/String;Lorg/andengine/entity/util/ScreenCapture$IScreenCaptureCallback;)V
    .locals 7
    .parameter "pCaptureWidth"
    .parameter "pCaptureHeight"
    .parameter "pFilePath"
    .parameter "pScreenCaptureCallback"

    .prologue
    const/4 v1, 0x0

    .line 85
    move-object v0, p0

    move v2, v1

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lorg/andengine/entity/util/ScreenCapture;->capture(IIIILjava/lang/String;Lorg/andengine/entity/util/ScreenCapture$IScreenCaptureCallback;)V

    .line 86
    return-void
.end method

.method protected onManagedDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V
    .locals 1
    .parameter "pGLState"
    .parameter "pCamera"

    .prologue
    .line 52
    iget-object v0, p0, Lorg/andengine/entity/util/ScreenCapture;->mScreenGrabber:Lorg/andengine/entity/util/ScreenGrabber;

    invoke-virtual {v0, p1, p2}, Lorg/andengine/entity/util/ScreenGrabber;->onManagedDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V

    .line 53
    return-void
.end method

.method protected onManagedUpdate(F)V
    .locals 0
    .parameter "pSecondsElapsed"

    .prologue
    .line 58
    return-void
.end method

.method public onScreenGrabFailed(Ljava/lang/Exception;)V
    .locals 2
    .parameter "pException"

    .prologue
    .line 77
    iget-object v0, p0, Lorg/andengine/entity/util/ScreenCapture;->mScreenCaptureCallback:Lorg/andengine/entity/util/ScreenCapture$IScreenCaptureCallback;

    iget-object v1, p0, Lorg/andengine/entity/util/ScreenCapture;->mFilePath:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lorg/andengine/entity/util/ScreenCapture$IScreenCaptureCallback;->onScreenCaptureFailed(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 78
    return-void
.end method

.method public onScreenGrabbed(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "pBitmap"

    .prologue
    .line 68
    :try_start_0
    iget-object v1, p0, Lorg/andengine/entity/util/ScreenCapture;->mFilePath:Ljava/lang/String;

    invoke-static {p1, v1}, Lorg/andengine/entity/util/ScreenCapture;->saveCapture(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lorg/andengine/entity/util/ScreenCapture;->mScreenCaptureCallback:Lorg/andengine/entity/util/ScreenCapture$IScreenCaptureCallback;

    iget-object v2, p0, Lorg/andengine/entity/util/ScreenCapture;->mFilePath:Ljava/lang/String;

    invoke-interface {v1, v2}, Lorg/andengine/entity/util/ScreenCapture$IScreenCaptureCallback;->onScreenCaptured(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, e:Ljava/io/FileNotFoundException;
    iget-object v1, p0, Lorg/andengine/entity/util/ScreenCapture;->mScreenCaptureCallback:Lorg/andengine/entity/util/ScreenCapture$IScreenCaptureCallback;

    iget-object v2, p0, Lorg/andengine/entity/util/ScreenCapture;->mFilePath:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lorg/andengine/entity/util/ScreenCapture$IScreenCaptureCallback;->onScreenCaptureFailed(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method
