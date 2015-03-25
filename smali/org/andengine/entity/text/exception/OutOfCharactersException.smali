.class public Lorg/andengine/entity/text/exception/OutOfCharactersException;
.super Lorg/andengine/entity/text/exception/TextException;
.source "OutOfCharactersException.java"


# static fields
.field private static final serialVersionUID:J = 0x2ab3114a37c24b09L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/andengine/entity/text/exception/TextException;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "pMessage"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lorg/andengine/entity/text/exception/TextException;-><init>(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "pMessage"
    .parameter "pThrowable"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lorg/andengine/entity/text/exception/TextException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "pThrowable"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lorg/andengine/entity/text/exception/TextException;-><init>(Ljava/lang/Throwable;)V

    .line 35
    return-void
.end method
