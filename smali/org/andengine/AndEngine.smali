.class public Lorg/andengine/AndEngine;
.super Ljava/lang/Object;
.source "AndEngine.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkCodePathSupport()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/util/exception/DeviceNotSupportedException;
        }
    .end annotation

    .prologue
    .line 61
    const/16 v1, 0x8

    invoke-static {v1}, Lorg/andengine/util/system/SystemUtils;->isAndroidVersionOrLower(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    :try_start_0
    const-string v1, "andengine"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :cond_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, e:Ljava/lang/UnsatisfiedLinkError;
    new-instance v1, Lorg/andengine/util/exception/DeviceNotSupportedException;

    sget-object v2, Lorg/andengine/util/exception/DeviceNotSupportedException$DeviceNotSupportedCause;->CODEPATH_INCOMPLETE:Lorg/andengine/util/exception/DeviceNotSupportedException$DeviceNotSupportedCause;

    invoke-direct {v1, v2, v0}, Lorg/andengine/util/exception/DeviceNotSupportedException;-><init>(Lorg/andengine/util/exception/DeviceNotSupportedException$DeviceNotSupportedCause;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static checkDeviceSupported()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/util/exception/DeviceNotSupportedException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-static {}, Lorg/andengine/AndEngine;->checkCodePathSupport()V

    .line 57
    invoke-static {}, Lorg/andengine/AndEngine;->checkOpenGLSupport()V

    .line 58
    return-void
.end method

.method private static checkEGLConfigChooserSupport()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/util/exception/DeviceNotSupportedException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v2

    check-cast v2, Ljavax/microedition/khronos/egl/EGL10;

    .line 79
    .local v2, egl:Ljavax/microedition/khronos/egl/EGL10;
    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v2, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v3

    .line 82
    .local v3, eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    const/4 v5, 0x2

    new-array v4, v5, [I

    .line 83
    .local v4, version:[I
    invoke-interface {v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    .line 85
    new-instance v0, Lorg/andengine/opengl/view/ConfigChooser;

    const/4 v5, 0x0

    invoke-direct {v0, v5}, Lorg/andengine/opengl/view/ConfigChooser;-><init>(Z)V

    .line 88
    .local v0, configChooser:Lorg/andengine/opengl/view/ConfigChooser;
    :try_start_0
    invoke-virtual {v0, v2, v3}, Lorg/andengine/opengl/view/ConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    return-void

    .line 89
    :catch_0
    move-exception v1

    .line 90
    .local v1, e:Ljava/lang/IllegalArgumentException;
    new-instance v5, Lorg/andengine/util/exception/DeviceNotSupportedException;

    sget-object v6, Lorg/andengine/util/exception/DeviceNotSupportedException$DeviceNotSupportedCause;->EGLCONFIG_NOT_FOUND:Lorg/andengine/util/exception/DeviceNotSupportedException$DeviceNotSupportedCause;

    invoke-direct {v5, v6, v1}, Lorg/andengine/util/exception/DeviceNotSupportedException;-><init>(Lorg/andengine/util/exception/DeviceNotSupportedException$DeviceNotSupportedCause;Ljava/lang/Throwable;)V

    throw v5
.end method

.method private static checkOpenGLSupport()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/util/exception/DeviceNotSupportedException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-static {}, Lorg/andengine/AndEngine;->checkEGLConfigChooserSupport()V

    .line 72
    return-void
.end method

.method public static isDeviceSupported()Z
    .locals 2

    .prologue
    .line 47
    :try_start_0
    invoke-static {}, Lorg/andengine/AndEngine;->checkDeviceSupported()V
    :try_end_0
    .catch Lorg/andengine/util/exception/DeviceNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    const/4 v1, 0x1

    .line 50
    .local v0, e:Lorg/andengine/util/exception/DeviceNotSupportedException;
    :goto_0
    return v1

    .line 49
    .end local v0           #e:Lorg/andengine/util/exception/DeviceNotSupportedException;
    :catch_0
    move-exception v0

    .line 50
    .restart local v0       #e:Lorg/andengine/util/exception/DeviceNotSupportedException;
    const/4 v1, 0x0

    goto :goto_0
.end method
