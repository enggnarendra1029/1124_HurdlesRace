.class public Lorg/andengine/util/IDisposable$AlreadyDisposedException;
.super Lorg/andengine/util/exception/AndEngineRuntimeException;
.source "IDisposable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andengine/util/IDisposable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlreadyDisposedException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5072c4d7050980b1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/andengine/util/exception/AndEngineRuntimeException;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "pMessage"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lorg/andengine/util/exception/AndEngineRuntimeException;-><init>(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "pMessage"
    .parameter "pThrowable"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lorg/andengine/util/exception/AndEngineRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "pThrowable"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lorg/andengine/util/exception/AndEngineRuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 52
    return-void
.end method
