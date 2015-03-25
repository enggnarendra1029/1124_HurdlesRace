.class public Lorg/andengine/opengl/shader/exception/ShaderProgramLinkException;
.super Lorg/andengine/opengl/shader/exception/ShaderProgramException;
.source "ShaderProgramLinkException.java"


# static fields
.field private static final serialVersionUID:J = 0x4b3274fcdadeca68L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "pMessage"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lorg/andengine/opengl/shader/exception/ShaderProgramException;-><init>(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/andengine/opengl/shader/exception/ShaderProgramException;)V
    .locals 0
    .parameter "pMessage"
    .parameter "pShaderProgramException"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lorg/andengine/opengl/shader/exception/ShaderProgramException;-><init>(Ljava/lang/String;Lorg/andengine/opengl/shader/exception/ShaderProgramException;)V

    .line 29
    return-void
.end method
