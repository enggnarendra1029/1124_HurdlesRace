.class public Lorg/andengine/opengl/exception/RenderTextureInitializationException;
.super Lorg/andengine/util/exception/AndEngineRuntimeException;
.source "RenderTextureInitializationException.java"


# static fields
.field private static final serialVersionUID:J = -0x64301e18d350f6acL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/andengine/util/exception/AndEngineRuntimeException;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "pMessage"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lorg/andengine/util/exception/AndEngineRuntimeException;-><init>(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "pMessage"
    .parameter "pThrowable"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lorg/andengine/util/exception/AndEngineRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "pThrowable"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lorg/andengine/util/exception/AndEngineRuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 36
    return-void
.end method
