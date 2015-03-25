.class public Lorg/andengine/opengl/font/exception/LetterNotFoundException;
.super Lorg/andengine/opengl/font/exception/FontException;
.source "LetterNotFoundException.java"


# static fields
.field private static final serialVersionUID:J = 0x490168e498d31919L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/andengine/opengl/font/exception/FontException;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "pMessage"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lorg/andengine/opengl/font/exception/FontException;-><init>(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "pMessage"
    .parameter "pThrowable"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lorg/andengine/opengl/font/exception/FontException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "pThrowable"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lorg/andengine/opengl/font/exception/FontException;-><init>(Ljava/lang/Throwable;)V

    .line 34
    return-void
.end method
