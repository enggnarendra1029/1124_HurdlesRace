.class public Lorg/andengine/util/animationpack/exception/AnimationPackParseException;
.super Lorg/xml/sax/SAXException;
.source "AnimationPackParseException.java"


# static fields
.field private static final serialVersionUID:J = 0xfc3ebde00b89860L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/xml/sax/SAXException;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0
    .parameter "pException"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "pDetailMessage"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .parameter "pMessage"
    .parameter "pException"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 40
    return-void
.end method
