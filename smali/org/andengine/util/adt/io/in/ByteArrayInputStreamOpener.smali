.class public Lorg/andengine/util/adt/io/in/ByteArrayInputStreamOpener;
.super Ljava/lang/Object;
.source "ByteArrayInputStreamOpener.java"

# interfaces
.implements Lorg/andengine/util/adt/io/in/IInputStreamOpener;


# instance fields
.field private final mBytes:[B

.field private final mLength:I

.field private final mOffset:I


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .parameter "pBytes"

    .prologue
    .line 31
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lorg/andengine/util/adt/io/in/ByteArrayInputStreamOpener;-><init>([BII)V

    .line 32
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0
    .parameter "pBytes"
    .parameter "pOffset"
    .parameter "pLength"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/andengine/util/adt/io/in/ByteArrayInputStreamOpener;->mBytes:[B

    .line 36
    iput p2, p0, Lorg/andengine/util/adt/io/in/ByteArrayInputStreamOpener;->mOffset:I

    .line 37
    iput p3, p0, Lorg/andengine/util/adt/io/in/ByteArrayInputStreamOpener;->mLength:I

    .line 38
    return-void
.end method


# virtual methods
.method public open()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/andengine/util/adt/io/in/ByteArrayInputStreamOpener;->mBytes:[B

    iget v2, p0, Lorg/andengine/util/adt/io/in/ByteArrayInputStreamOpener;->mOffset:I

    iget v3, p0, Lorg/andengine/util/adt/io/in/ByteArrayInputStreamOpener;->mLength:I

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method
