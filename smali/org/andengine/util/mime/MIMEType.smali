.class public final enum Lorg/andengine/util/mime/MIMEType;
.super Ljava/lang/Enum;
.source "MIMEType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/andengine/util/mime/MIMEType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/andengine/util/mime/MIMEType;

.field public static final enum GIF:Lorg/andengine/util/mime/MIMEType;

.field public static final enum JPEG:Lorg/andengine/util/mime/MIMEType;

.field public static final enum PNG:Lorg/andengine/util/mime/MIMEType;


# instance fields
.field private final mTypeString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lorg/andengine/util/mime/MIMEType;

    const-string v1, "JPEG"

    .line 15
    const-string v2, "image/jpeg"

    invoke-direct {v0, v1, v3, v2}, Lorg/andengine/util/mime/MIMEType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/andengine/util/mime/MIMEType;->JPEG:Lorg/andengine/util/mime/MIMEType;

    .line 16
    new-instance v0, Lorg/andengine/util/mime/MIMEType;

    const-string v1, "GIF"

    const-string v2, "image/gif"

    invoke-direct {v0, v1, v4, v2}, Lorg/andengine/util/mime/MIMEType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/andengine/util/mime/MIMEType;->GIF:Lorg/andengine/util/mime/MIMEType;

    .line 17
    new-instance v0, Lorg/andengine/util/mime/MIMEType;

    const-string v1, "PNG"

    const-string v2, "image/png"

    invoke-direct {v0, v1, v5, v2}, Lorg/andengine/util/mime/MIMEType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/andengine/util/mime/MIMEType;->PNG:Lorg/andengine/util/mime/MIMEType;

    .line 10
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/andengine/util/mime/MIMEType;

    sget-object v1, Lorg/andengine/util/mime/MIMEType;->JPEG:Lorg/andengine/util/mime/MIMEType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/andengine/util/mime/MIMEType;->GIF:Lorg/andengine/util/mime/MIMEType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/andengine/util/mime/MIMEType;->PNG:Lorg/andengine/util/mime/MIMEType;

    aput-object v1, v0, v5

    sput-object v0, Lorg/andengine/util/mime/MIMEType;->ENUM$VALUES:[Lorg/andengine/util/mime/MIMEType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "pTypeString"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput-object p3, p0, Lorg/andengine/util/mime/MIMEType;->mTypeString:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/andengine/util/mime/MIMEType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lorg/andengine/util/mime/MIMEType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/andengine/util/mime/MIMEType;

    return-object v0
.end method

.method public static values()[Lorg/andengine/util/mime/MIMEType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/andengine/util/mime/MIMEType;->ENUM$VALUES:[Lorg/andengine/util/mime/MIMEType;

    array-length v1, v0

    new-array v2, v1, [Lorg/andengine/util/mime/MIMEType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getTypeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/andengine/util/mime/MIMEType;->mTypeString:Ljava/lang/String;

    return-object v0
.end method
