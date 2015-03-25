.class public final Lorg/andengine/util/SocketUtils;
.super Ljava/lang/Object;
.source "SocketUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final closeSocket(Ljava/net/DatagramSocket;)V
    .locals 1
    .parameter "pDatagramSocket"

    .prologue
    .line 43
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->close()V

    .line 46
    :cond_0
    return-void
.end method

.method public static final closeSocket(Ljava/net/ServerSocket;)V
    .locals 2
    .parameter "pServerSocket"

    .prologue
    .line 59
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    :try_start_0
    invoke-virtual {p0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, e:Ljava/io/IOException;
    invoke-static {v0}, Lorg/andengine/util/debug/Debug;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static final closeSocket(Ljava/net/Socket;)V
    .locals 2
    .parameter "pSocket"

    .prologue
    .line 49
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 51
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, e:Ljava/io/IOException;
    invoke-static {v0}, Lorg/andengine/util/debug/Debug;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
