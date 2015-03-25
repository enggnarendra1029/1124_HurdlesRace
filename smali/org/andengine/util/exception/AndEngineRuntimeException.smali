.class public Lorg/andengine/util/exception/AndEngineRuntimeException;
.super Ljava/lang/RuntimeException;
.source "AndEngineRuntimeException.java"


# static fields
.field public static final serialVersionUID:J = -0x3c06394a6650edbeL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "pMessage"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "pMessage"
    .parameter "pThrowable"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "pThrowable"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 35
    return-void
.end method
