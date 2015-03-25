.class public Lorg/andengine/util/ThreadUtils;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# static fields
.field private static final STACKTRACE_CALLER_DEPTH:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpCurrentThreadInfo()V
    .locals 3

    .prologue
    .line 40
    sget-object v0, Lorg/andengine/util/debug/Debug$DebugLevel;->DEBUG:Lorg/andengine/util/debug/Debug$DebugLevel;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lorg/andengine/util/ThreadUtils;->dumpCurrentThreadInfo(Lorg/andengine/util/debug/Debug$DebugLevel;Ljava/lang/StackTraceElement;)V

    .line 41
    return-void
.end method

.method public static dumpCurrentThreadInfo(Lorg/andengine/util/debug/Debug$DebugLevel;)V
    .locals 2
    .parameter "pDebugLevel"

    .prologue
    .line 44
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-static {p0, v0}, Lorg/andengine/util/ThreadUtils;->dumpCurrentThreadInfo(Lorg/andengine/util/debug/Debug$DebugLevel;Ljava/lang/StackTraceElement;)V

    .line 45
    return-void
.end method

.method private static dumpCurrentThreadInfo(Lorg/andengine/util/debug/Debug$DebugLevel;Ljava/lang/StackTraceElement;)V
    .locals 2
    .parameter "pDebugLevel"
    .parameter "pCaller"

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".java:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") @(Thread: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/andengine/util/debug/Debug;->log(Lorg/andengine/util/debug/Debug$DebugLevel;Ljava/lang/String;)V

    .line 49
    return-void
.end method
