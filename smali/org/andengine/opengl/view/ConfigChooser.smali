.class public Lorg/andengine/opengl/view/ConfigChooser;
.super Ljava/lang/Object;
.source "ConfigChooser.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/andengine/opengl/view/ConfigChooser$ConfigChooserMatcher;
    }
.end annotation


# static fields
.field private static final ALPHA_SIZE:I = 0x0

.field private static final BLUE_SIZE:I = 0x5

.field private static final BUFFER:[I = null

.field private static final DEPTH_SIZE:I = 0x0

.field private static final EGLCONFIG_ATTRIBUTES_COVERAGEMULTISAMPLE_NVIDIA:[I = null

.field private static final EGLCONFIG_ATTRIBUTES_FALLBACK:[I = null

.field private static final EGLCONFIG_ATTRIBUTES_MULTISAMPLE:[I = null

.field private static final EGL_COVERAGE_BUFFERS_NV:I = 0x30e0

.field private static final EGL_COVERAGE_SAMPLES_NV:I = 0x30e1

.field private static final EGL_GLES2_BIT:I = 0x4

.field private static final GREEN_SIZE:I = 0x6

.field private static final MULTISAMPLE_COUNT:I = 0x2

.field private static final RED_SIZE:I = 0x5

.field private static final STENCIL_SIZE:I


# instance fields
.field private mAlphaSize:I

.field private mBlueSize:I

.field private mCoverageMultiSampling:Z

.field private mDepthSize:I

.field private mGreenSize:I

.field private mMultiSampling:Z

.field private final mMultiSamplingRequested:Z

.field private mRedSize:I

.field private mStencilSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x6

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x5

    .line 20
    new-array v0, v4, [I

    sput-object v0, Lorg/andengine/opengl/view/ConfigChooser;->BUFFER:[I

    .line 33
    const/16 v0, 0x13

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 34
    const/16 v2, 0x3024

    aput v2, v0, v1

    aput v3, v0, v4

    .line 35
    const/16 v1, 0x3023

    aput v1, v0, v7

    const/4 v1, 0x3

    aput v6, v0, v1

    .line 36
    const/16 v1, 0x3022

    aput v1, v0, v5

    aput v3, v0, v3

    .line 37
    const/16 v1, 0x3021

    aput v1, v0, v6

    const/16 v1, 0x8

    .line 38
    const/16 v2, 0x3025

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 39
    const/16 v2, 0x3026

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 40
    const/16 v2, 0x3040

    aput v2, v0, v1

    const/16 v1, 0xd

    aput v5, v0, v1

    const/16 v1, 0xe

    .line 41
    const/16 v2, 0x3032

    aput v2, v0, v1

    const/16 v1, 0xf

    aput v4, v0, v1

    const/16 v1, 0x10

    .line 42
    const/16 v2, 0x3031

    aput v2, v0, v1

    const/16 v1, 0x11

    aput v7, v0, v1

    const/16 v1, 0x12

    .line 43
    const/16 v2, 0x3038

    aput v2, v0, v1

    .line 33
    sput-object v0, Lorg/andengine/opengl/view/ConfigChooser;->EGLCONFIG_ATTRIBUTES_MULTISAMPLE:[I

    .line 49
    const/16 v0, 0x13

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 50
    const/16 v2, 0x3024

    aput v2, v0, v1

    aput v3, v0, v4

    .line 51
    const/16 v1, 0x3023

    aput v1, v0, v7

    const/4 v1, 0x3

    aput v6, v0, v1

    .line 52
    const/16 v1, 0x3022

    aput v1, v0, v5

    aput v3, v0, v3

    .line 53
    const/16 v1, 0x3021

    aput v1, v0, v6

    const/16 v1, 0x8

    .line 54
    const/16 v2, 0x3025

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 55
    const/16 v2, 0x3026

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 56
    const/16 v2, 0x3040

    aput v2, v0, v1

    const/16 v1, 0xd

    aput v5, v0, v1

    const/16 v1, 0xe

    .line 57
    const/16 v2, 0x30e0

    aput v2, v0, v1

    const/16 v1, 0xf

    aput v4, v0, v1

    const/16 v1, 0x10

    .line 58
    const/16 v2, 0x30e1

    aput v2, v0, v1

    const/16 v1, 0x11

    aput v7, v0, v1

    const/16 v1, 0x12

    .line 59
    const/16 v2, 0x3038

    aput v2, v0, v1

    .line 49
    sput-object v0, Lorg/andengine/opengl/view/ConfigChooser;->EGLCONFIG_ATTRIBUTES_COVERAGEMULTISAMPLE_NVIDIA:[I

    .line 62
    const/16 v0, 0xf

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 63
    const/16 v2, 0x3024

    aput v2, v0, v1

    aput v3, v0, v4

    .line 64
    const/16 v1, 0x3023

    aput v1, v0, v7

    const/4 v1, 0x3

    aput v6, v0, v1

    .line 65
    const/16 v1, 0x3022

    aput v1, v0, v5

    aput v3, v0, v3

    .line 66
    const/16 v1, 0x3021

    aput v1, v0, v6

    const/16 v1, 0x8

    .line 67
    const/16 v2, 0x3025

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 68
    const/16 v2, 0x3026

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 69
    const/16 v2, 0x3040

    aput v2, v0, v1

    const/16 v1, 0xd

    aput v5, v0, v1

    const/16 v1, 0xe

    .line 70
    const/16 v2, 0x3038

    aput v2, v0, v1

    .line 62
    sput-object v0, Lorg/andengine/opengl/view/ConfigChooser;->EGLCONFIG_ATTRIBUTES_FALLBACK:[I

    .line 71
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .parameter "pMultiSamplingRequested"

    .prologue
    const/4 v0, -0x1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput v0, p0, Lorg/andengine/opengl/view/ConfigChooser;->mRedSize:I

    .line 83
    iput v0, p0, Lorg/andengine/opengl/view/ConfigChooser;->mGreenSize:I

    .line 84
    iput v0, p0, Lorg/andengine/opengl/view/ConfigChooser;->mBlueSize:I

    .line 85
    iput v0, p0, Lorg/andengine/opengl/view/ConfigChooser;->mAlphaSize:I

    .line 86
    iput v0, p0, Lorg/andengine/opengl/view/ConfigChooser;->mDepthSize:I

    .line 87
    iput v0, p0, Lorg/andengine/opengl/view/ConfigChooser;->mStencilSize:I

    .line 94
    iput-boolean p1, p0, Lorg/andengine/opengl/view/ConfigChooser;->mMultiSamplingRequested:Z

    .line 95
    return-void
.end method

.method private chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Lorg/andengine/opengl/view/ConfigChooser$ConfigChooserMatcher;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 6
    .parameter "pEGL"
    .parameter "pEGLDisplay"
    .parameter "pConfigChooserMatcher"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 161
    sget-object v0, Lorg/andengine/opengl/view/ConfigChooser;->BUFFER:[I

    aput v1, v0, v1

    .line 165
    iget-boolean v0, p0, Lorg/andengine/opengl/view/ConfigChooser;->mMultiSamplingRequested:Z

    if-eqz v0, :cond_1

    .line 166
    sget-object v0, Lorg/andengine/opengl/view/ConfigChooser;->EGLCONFIG_ATTRIBUTES_MULTISAMPLE:[I

    invoke-static {p1, p2, v0}, Lorg/andengine/opengl/view/ConfigChooser;->getEGLConfigCount(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[I)I

    move-result v4

    .line 167
    .local v4, eglConfigCount:I
    if-lez v4, :cond_0

    .line 168
    iput-boolean v2, p0, Lorg/andengine/opengl/view/ConfigChooser;->mMultiSampling:Z

    .line 169
    sget-object v3, Lorg/andengine/opengl/view/ConfigChooser;->EGLCONFIG_ATTRIBUTES_MULTISAMPLE:[I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/andengine/opengl/view/ConfigChooser;->findEGLConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[IILorg/andengine/opengl/view/ConfigChooser$ConfigChooserMatcher;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    .line 181
    :goto_0
    return-object v0

    .line 172
    :cond_0
    sget-object v0, Lorg/andengine/opengl/view/ConfigChooser;->EGLCONFIG_ATTRIBUTES_COVERAGEMULTISAMPLE_NVIDIA:[I

    invoke-static {p1, p2, v0}, Lorg/andengine/opengl/view/ConfigChooser;->getEGLConfigCount(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[I)I

    move-result v4

    .line 173
    if-lez v4, :cond_1

    .line 174
    iput-boolean v2, p0, Lorg/andengine/opengl/view/ConfigChooser;->mCoverageMultiSampling:Z

    .line 175
    sget-object v3, Lorg/andengine/opengl/view/ConfigChooser;->EGLCONFIG_ATTRIBUTES_COVERAGEMULTISAMPLE_NVIDIA:[I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/andengine/opengl/view/ConfigChooser;->findEGLConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[IILorg/andengine/opengl/view/ConfigChooser$ConfigChooserMatcher;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    goto :goto_0

    .line 179
    .end local v4           #eglConfigCount:I
    :cond_1
    sget-object v0, Lorg/andengine/opengl/view/ConfigChooser;->EGLCONFIG_ATTRIBUTES_FALLBACK:[I

    invoke-static {p1, p2, v0}, Lorg/andengine/opengl/view/ConfigChooser;->getEGLConfigCount(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[I)I

    move-result v4

    .line 180
    .restart local v4       #eglConfigCount:I
    if-lez v4, :cond_2

    .line 181
    sget-object v3, Lorg/andengine/opengl/view/ConfigChooser;->EGLCONFIG_ATTRIBUTES_FALLBACK:[I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/andengine/opengl/view/ConfigChooser;->findEGLConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[IILorg/andengine/opengl/view/ConfigChooser$ConfigChooserMatcher;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    goto :goto_0

    .line 183
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " found!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private findEGLConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[IILorg/andengine/opengl/view/ConfigChooser$ConfigChooserMatcher;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 6
    .parameter "pEGL"
    .parameter "pEGLDisplay"
    .parameter "pEGLConfigAttributes"
    .parameter "pEGLConfigCount"
    .parameter "pConfigChooserMatcher"

    .prologue
    .line 199
    new-array v3, p4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 200
    .local v3, eglConfigs:[Ljavax/microedition/khronos/egl/EGLConfig;
    sget-object v5, Lorg/andengine/opengl/view/ConfigChooser;->BUFFER:[I

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "findEGLConfig failed!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_0
    invoke-direct {p0, p1, p2, v3, p5}, Lorg/andengine/opengl/view/ConfigChooser;->findEGLConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;Lorg/andengine/opengl/view/ConfigChooser$ConfigChooserMatcher;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    return-object v0
.end method

.method private findEGLConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;Lorg/andengine/opengl/view/ConfigChooser$ConfigChooserMatcher;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 10
    .parameter "pEGL"
    .parameter "pEGLDisplay"
    .parameter "pEGLConfigs"
    .parameter "pConfigChooserMatcher"

    .prologue
    const/4 v9, 0x0

    .line 208
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    array-length v0, p3

    if-lt v8, v0, :cond_0

    .line 229
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v9, "No EGLConfig found!"

    invoke-direct {v0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_0
    aget-object v7, p3, v8

    .line 210
    .local v7, config:Ljavax/microedition/khronos/egl/EGLConfig;
    if-eqz v7, :cond_1

    .line 211
    const/16 v0, 0x3024

    invoke-static {p1, p2, v7, v0, v9}, Lorg/andengine/opengl/view/ConfigChooser;->getConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v1

    .line 212
    .local v1, redSize:I
    const/16 v0, 0x3023

    invoke-static {p1, p2, v7, v0, v9}, Lorg/andengine/opengl/view/ConfigChooser;->getConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v2

    .line 213
    .local v2, greenSize:I
    const/16 v0, 0x3022

    invoke-static {p1, p2, v7, v0, v9}, Lorg/andengine/opengl/view/ConfigChooser;->getConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v3

    .line 214
    .local v3, blueSize:I
    const/16 v0, 0x3021

    invoke-static {p1, p2, v7, v0, v9}, Lorg/andengine/opengl/view/ConfigChooser;->getConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v4

    .line 215
    .local v4, alphaSize:I
    const/16 v0, 0x3025

    invoke-static {p1, p2, v7, v0, v9}, Lorg/andengine/opengl/view/ConfigChooser;->getConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v5

    .line 216
    .local v5, depthSize:I
    const/16 v0, 0x3026

    invoke-static {p1, p2, v7, v0, v9}, Lorg/andengine/opengl/view/ConfigChooser;->getConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v6

    .local v6, stencilSize:I
    move-object v0, p4

    .line 218
    invoke-virtual/range {v0 .. v6}, Lorg/andengine/opengl/view/ConfigChooser$ConfigChooserMatcher;->matches(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    iput v1, p0, Lorg/andengine/opengl/view/ConfigChooser;->mRedSize:I

    .line 220
    iput v2, p0, Lorg/andengine/opengl/view/ConfigChooser;->mGreenSize:I

    .line 221
    iput v3, p0, Lorg/andengine/opengl/view/ConfigChooser;->mBlueSize:I

    .line 222
    iput v4, p0, Lorg/andengine/opengl/view/ConfigChooser;->mAlphaSize:I

    .line 223
    iput v5, p0, Lorg/andengine/opengl/view/ConfigChooser;->mDepthSize:I

    .line 224
    iput v6, p0, Lorg/andengine/opengl/view/ConfigChooser;->mStencilSize:I

    .line 225
    return-object v7

    .line 208
    .end local v1           #redSize:I
    .end local v2           #greenSize:I
    .end local v3           #blueSize:I
    .end local v4           #alphaSize:I
    .end local v5           #depthSize:I
    .end local v6           #stencilSize:I
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method private static getConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 2
    .parameter "pEGL"
    .parameter "pEGLDisplay"
    .parameter "pEGLConfig"
    .parameter "pAttribute"
    .parameter "pDefaultValue"

    .prologue
    .line 233
    sget-object v0, Lorg/andengine/opengl/view/ConfigChooser;->BUFFER:[I

    invoke-interface {p0, p1, p2, p3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    sget-object v0, Lorg/andengine/opengl/view/ConfigChooser;->BUFFER:[I

    const/4 v1, 0x0

    aget p4, v0, v1

    .line 236
    .end local p4
    :cond_0
    return p4
.end method

.method private static getEGLConfigCount(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[I)I
    .locals 6
    .parameter "pEGL"
    .parameter "pEGLDisplay"
    .parameter "pEGLConfigAttributes"

    .prologue
    const/4 v4, 0x0

    .line 192
    const/4 v3, 0x0

    sget-object v5, Lorg/andengine/opengl/view/ConfigChooser;->BUFFER:[I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EGLCONFIG_FALLBACK failed!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_0
    sget-object v0, Lorg/andengine/opengl/view/ConfigChooser;->BUFFER:[I

    aget v0, v0, v4

    return v0
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 1
    .parameter "pEGL"
    .parameter "pEGLDisplay"

    .prologue
    .line 140
    :try_start_0
    sget-object v0, Lorg/andengine/opengl/view/ConfigChooser$ConfigChooserMatcher;->STRICT:Lorg/andengine/opengl/view/ConfigChooser$ConfigChooserMatcher;

    invoke-direct {p0, p1, p2, v0}, Lorg/andengine/opengl/view/ConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Lorg/andengine/opengl/view/ConfigChooser$ConfigChooserMatcher;)Ljavax/microedition/khronos/egl/EGLConfig;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 157
    :goto_0
    return-object v0

    .line 141
    :catch_0
    move-exception v0

    .line 146
    :try_start_1
    sget-object v0, Lorg/andengine/opengl/view/ConfigChooser$ConfigChooserMatcher;->LOOSE_STENCIL:Lorg/andengine/opengl/view/ConfigChooser$ConfigChooserMatcher;

    invoke-direct {p0, p1, p2, v0}, Lorg/andengine/opengl/view/ConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Lorg/andengine/opengl/view/ConfigChooser$ConfigChooserMatcher;)Ljavax/microedition/khronos/egl/EGLConfig;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 147
    :catch_1
    move-exception v0

    .line 152
    :try_start_2
    sget-object v0, Lorg/andengine/opengl/view/ConfigChooser$ConfigChooserMatcher;->LOOSE_DEPTH_AND_STENCIL:Lorg/andengine/opengl/view/ConfigChooser$ConfigChooserMatcher;

    invoke-direct {p0, p1, p2, v0}, Lorg/andengine/opengl/view/ConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Lorg/andengine/opengl/view/ConfigChooser$ConfigChooserMatcher;)Ljavax/microedition/khronos/egl/EGLConfig;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    goto :goto_0

    .line 153
    :catch_2
    move-exception v0

    .line 157
    sget-object v0, Lorg/andengine/opengl/view/ConfigChooser$ConfigChooserMatcher;->ANY:Lorg/andengine/opengl/view/ConfigChooser$ConfigChooserMatcher;

    invoke-direct {p0, p1, p2, v0}, Lorg/andengine/opengl/view/ConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Lorg/andengine/opengl/view/ConfigChooser$ConfigChooserMatcher;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    goto :goto_0
.end method

.method public getAlphaSize()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lorg/andengine/opengl/view/ConfigChooser;->mAlphaSize:I

    return v0
.end method

.method public getBlueSize()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lorg/andengine/opengl/view/ConfigChooser;->mBlueSize:I

    return v0
.end method

.method public getDepthSize()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lorg/andengine/opengl/view/ConfigChooser;->mDepthSize:I

    return v0
.end method

.method public getGreenSize()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lorg/andengine/opengl/view/ConfigChooser;->mGreenSize:I

    return v0
.end method

.method public getRedSize()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lorg/andengine/opengl/view/ConfigChooser;->mRedSize:I

    return v0
.end method

.method public getStencilSize()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lorg/andengine/opengl/view/ConfigChooser;->mStencilSize:I

    return v0
.end method

.method public isCoverageMultiSampling()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lorg/andengine/opengl/view/ConfigChooser;->mCoverageMultiSampling:Z

    return v0
.end method

.method public isMultiSampling()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lorg/andengine/opengl/view/ConfigChooser;->mMultiSampling:Z

    return v0
.end method
