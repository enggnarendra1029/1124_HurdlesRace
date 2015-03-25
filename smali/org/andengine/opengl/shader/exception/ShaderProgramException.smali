.class public Lorg/andengine/opengl/shader/exception/ShaderProgramException;
.super Lorg/andengine/util/exception/AndEngineRuntimeException;
.source "ShaderProgramException.java"


# static fields
.field private static final serialVersionUID:J = 0x20fd5d6d42767f94L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "pMessage"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lorg/andengine/util/exception/AndEngineRuntimeException;-><init>(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/andengine/opengl/shader/exception/ShaderProgramException;)V
    .locals 0
    .parameter "pMessage"
    .parameter "pShaderProgramException"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lorg/andengine/util/exception/AndEngineRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    return-void
.end method
