.class public Lorg/andengine/util/exception/MethodNotSupportedException;
.super Lorg/andengine/util/exception/AndEngineRuntimeException;
.source "MethodNotSupportedException.java"


# static fields
.field private static final serialVersionUID:J = 0x1153fe529c6c5b8fL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/andengine/util/exception/AndEngineRuntimeException;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "pMessage"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lorg/andengine/util/exception/AndEngineRuntimeException;-><init>(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "pMessage"
    .parameter "pThrowable"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lorg/andengine/util/exception/AndEngineRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "pThrowable"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lorg/andengine/util/exception/AndEngineRuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 34
    return-void
.end method
