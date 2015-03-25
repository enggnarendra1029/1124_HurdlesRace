.class public Lorg/andengine/opengl/exception/GLFrameBufferException;
.super Lorg/andengine/opengl/exception/GLException;
.source "GLFrameBufferException.java"


# static fields
.field private static final serialVersionUID:J = -0x7ba7a5d30bfd4084L


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "pError"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lorg/andengine/opengl/exception/GLException;-><init>(I)V

    .line 27
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "pError"
    .parameter "pString"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lorg/andengine/opengl/exception/GLException;-><init>(ILjava/lang/String;)V

    .line 31
    return-void
.end method
