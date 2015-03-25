.class public Lorg/andengine/opengl/GLES20Fix;
.super Ljava/lang/Object;
.source "GLES20Fix.java"


# static fields
.field private static NATIVE_LIB_LOADED:Z

.field private static final WORKAROUND_MISSING_GLES20_METHODS:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 28
    :try_start_0
    const-string v2, "andengine"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    const/4 v1, 0x1

    .line 33
    .local v1, loadLibrarySuccess:Z
    :goto_0
    sput-boolean v1, Lorg/andengine/opengl/GLES20Fix;->NATIVE_LIB_LOADED:Z

    .line 35
    const/16 v2, 0x8

    invoke-static {v2}, Lorg/andengine/util/system/SystemUtils;->isAndroidVersionOrLower(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    const/4 v2, 0x1

    sput-boolean v2, Lorg/andengine/opengl/GLES20Fix;->WORKAROUND_MISSING_GLES20_METHODS:Z

    .line 44
    :goto_1
    return-void

    .line 30
    .end local v1           #loadLibrarySuccess:Z
    :catch_0
    move-exception v0

    .line 31
    .local v0, e:Ljava/lang/UnsatisfiedLinkError;
    const/4 v1, 0x0

    .restart local v1       #loadLibrarySuccess:Z
    goto :goto_0

    .line 39
    .end local v0           #e:Ljava/lang/UnsatisfiedLinkError;
    :cond_0
    new-instance v2, Lorg/andengine/util/exception/AndEngineRuntimeException;

    const-string v3, "Inherently incompatible device detected."

    invoke-direct {v2, v3}, Lorg/andengine/util/exception/AndEngineRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 42
    :cond_1
    const/4 v2, 0x0

    sput-boolean v2, Lorg/andengine/opengl/GLES20Fix;->WORKAROUND_MISSING_GLES20_METHODS:Z

    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method public static native glDrawElements(IIII)V
.end method

.method public static glDrawElementsFix(IIII)V
    .locals 1
    .parameter "pMode"
    .parameter "pCount"
    .parameter "pType"
    .parameter "pOffset"

    .prologue
    .line 82
    sget-boolean v0, Lorg/andengine/opengl/GLES20Fix;->WORKAROUND_MISSING_GLES20_METHODS:Z

    if-eqz v0, :cond_0

    .line 83
    invoke-static {p0, p1, p2, p3}, Lorg/andengine/opengl/GLES20Fix;->glDrawElements(IIII)V

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    goto :goto_0
.end method

.method public static native glVertexAttribPointer(IIIZII)V
.end method

.method public static glVertexAttribPointerFix(IIIZII)V
    .locals 1
    .parameter "pIndex"
    .parameter "pSize"
    .parameter "pType"
    .parameter "pNormalized"
    .parameter "pStride"
    .parameter "pOffset"

    .prologue
    .line 74
    sget-boolean v0, Lorg/andengine/opengl/GLES20Fix;->WORKAROUND_MISSING_GLES20_METHODS:Z

    if-eqz v0, :cond_0

    .line 75
    invoke-static/range {p0 .. p5}, Lorg/andengine/opengl/GLES20Fix;->glVertexAttribPointerFix(IIIZII)V

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-static/range {p0 .. p5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    goto :goto_0
.end method
