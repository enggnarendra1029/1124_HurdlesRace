.class public final Lorg/andengine/util/StreamUtils;
.super Ljava/lang/Object;
.source "StreamUtils.java"


# static fields
.field private static final END_OF_STREAM:I = -0x1

.field public static final IO_BUFFER_SIZE:I = 0x2000


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final close(Ljava/io/Closeable;)V
    .locals 1
    .parameter "pCloseable"

    .prologue
    .line 188
    if-eqz p0, :cond_0

    .line 190
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static final copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1
    .parameter "pInputStream"
    .parameter "pOutputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lorg/andengine/util/StreamUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 114
    return-void
.end method

.method public static final copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .locals 9
    .parameter "pInputStream"
    .parameter "pOutputStream"
    .parameter "pByteLimit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x2000

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 145
    if-ne p2, v8, :cond_2

    .line 146
    new-array v0, v5, [B

    .line 148
    .local v0, buf:[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, read:I
    if-ne v4, v8, :cond_1

    .line 167
    :cond_0
    :goto_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 168
    return-void

    .line 149
    :cond_1
    invoke-virtual {p1, v0, v7, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 152
    .end local v0           #buf:[B
    .end local v4           #read:I
    :cond_2
    new-array v0, v5, [B

    .line 153
    .restart local v0       #buf:[B
    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 154
    .local v1, bufferReadLimit:I
    int-to-long v2, p2

    .line 157
    .local v2, pBytesLeftToRead:J
    :goto_2
    invoke-virtual {p0, v0, v7, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .restart local v4       #read:I
    if-eq v4, v8, :cond_0

    .line 158
    int-to-long v5, v4

    cmp-long v5, v2, v5

    if-lez v5, :cond_3

    .line 159
    invoke-virtual {p1, v0, v7, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 160
    int-to-long v5, v4

    sub-long/2addr v2, v5

    .line 161
    goto :goto_2

    .line 162
    :cond_3
    long-to-int v5, v2

    invoke-virtual {p1, v0, v7, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1
.end method

.method public static final copy(Ljava/io/InputStream;Ljava/nio/ByteBuffer;)V
    .locals 3
    .parameter "pInputStream"
    .parameter "pByteBuffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    const/16 v2, 0x2000

    new-array v0, v2, [B

    .line 129
    .local v0, buf:[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, read:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 132
    return-void

    .line 130
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public static final copy(Ljava/io/InputStream;[B)V
    .locals 4
    .parameter "pInputStream"
    .parameter "pData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    const/4 v1, 0x0

    .line 118
    .local v1, dataOffset:I
    const/16 v3, 0x2000

    new-array v0, v3, [B

    .line 120
    .local v0, buf:[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, read:I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 124
    return-void

    .line 121
    :cond_0
    const/4 v3, 0x0

    invoke-static {v0, v3, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public static final copyAndClose(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    .locals 2
    .parameter "pInputStream"
    .parameter "pOutputStream"

    .prologue
    .line 172
    const/4 v1, -0x1

    :try_start_0
    invoke-static {p0, p1, v1}, Lorg/andengine/util/StreamUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    invoke-static {p0}, Lorg/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 178
    invoke-static {p1}, Lorg/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 173
    const/4 v1, 0x1

    .line 175
    :goto_0
    return v1

    .line 174
    :catch_0
    move-exception v0

    .line 177
    .local v0, e:Ljava/io/IOException;
    invoke-static {p0}, Lorg/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 178
    invoke-static {p1}, Lorg/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 175
    const/4 v1, 0x0

    goto :goto_0

    .line 176
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 177
    invoke-static {p0}, Lorg/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 178
    invoke-static {p1}, Lorg/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 179
    throw v1
.end method

.method public static final flushCloseStream(Ljava/io/OutputStream;)V
    .locals 2
    .parameter "pOutputStream"

    .prologue
    .line 203
    if-eqz p0, :cond_0

    .line 205
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    invoke-static {p0}, Lorg/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    invoke-static {p0}, Lorg/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    .line 208
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 209
    invoke-static {p0}, Lorg/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 210
    throw v1
.end method

.method public static final flushCloseWriter(Ljava/io/Writer;)V
    .locals 2
    .parameter "pWriter"

    .prologue
    .line 220
    if-eqz p0, :cond_0

    .line 222
    :try_start_0
    invoke-virtual {p0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    invoke-static {p0}, Lorg/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    invoke-static {p0}, Lorg/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    .line 225
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 226
    invoke-static {p0}, Lorg/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 227
    throw v1
.end method

.method public static final readFully(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .parameter "pInputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 53
    .local v3, writer:Ljava/io/StringWriter;
    const/16 v4, 0x2000

    new-array v0, v4, [C

    .line 55
    .local v0, buf:[C
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    const-string v5, "UTF-8"

    invoke-direct {v4, p0, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 57
    .local v2, reader:Ljava/io/Reader;
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/Reader;->read([C)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .local v1, read:I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 61
    invoke-static {p0}, Lorg/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 63
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 58
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v3, v0, v4, v1}, Ljava/io/StringWriter;->write([CII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 60
    .end local v1           #read:I
    .end local v2           #reader:Ljava/io/Reader;
    :catchall_0
    move-exception v4

    .line 61
    invoke-static {p0}, Lorg/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 62
    throw v4
.end method

.method public static final streamToBytes(Ljava/io/InputStream;I[B)V
    .locals 1
    .parameter "pInputStream"
    .parameter "pByteLimit"
    .parameter "pData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/andengine/util/StreamUtils;->streamToBytes(Ljava/io/InputStream;I[BI)V

    .line 81
    return-void
.end method

.method public static final streamToBytes(Ljava/io/InputStream;I[BI)V
    .locals 6
    .parameter "pInputStream"
    .parameter "pByteLimit"
    .parameter "pData"
    .parameter "pOffset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    array-length v3, p2

    sub-int/2addr v3, p3

    if-le p1, v3, :cond_0

    .line 92
    new-instance v3, Ljava/io/IOException;

    const-string v4, "pData is not big enough."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 95
    :cond_0
    move v0, p1

    .line 96
    .local v0, pBytesLeftToRead:I
    const/4 v2, 0x0

    .line 98
    .local v2, readTotal:I
    :goto_0
    add-int v3, p3, v2

    invoke-virtual {p0, p2, v3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .local v1, read:I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    .line 107
    :cond_1
    if-eq v2, p1, :cond_3

    .line 108
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ReadLimit: \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\', Read: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 99
    :cond_2
    add-int/2addr v2, v1

    .line 100
    if-le v0, v1, :cond_1

    .line 101
    sub-int/2addr v0, v1

    goto :goto_0

    .line 110
    :cond_3
    return-void
.end method

.method public static final streamToBytes(Ljava/io/InputStream;)[B
    .locals 1
    .parameter "pInputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lorg/andengine/util/StreamUtils;->streamToBytes(Ljava/io/InputStream;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static final streamToBytes(Ljava/io/InputStream;I)[B
    .locals 2
    .parameter "pInputStream"
    .parameter "pReadLimit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const/16 v1, 0x2000

    :goto_0
    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 72
    .local v0, os:Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0, p1}, Lorg/andengine/util/StreamUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 73
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1

    .end local v0           #os:Ljava/io/ByteArrayOutputStream;
    :cond_0
    move v1, p1

    .line 71
    goto :goto_0
.end method
