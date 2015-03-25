.class public final enum Lorg/andengine/opengl/texture/PixelFormat;
.super Ljava/lang/Enum;
.source "PixelFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/andengine/opengl/texture/PixelFormat;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AI_88:Lorg/andengine/opengl/texture/PixelFormat;

.field public static final enum A_8:Lorg/andengine/opengl/texture/PixelFormat;

.field private static final synthetic ENUM$VALUES:[Lorg/andengine/opengl/texture/PixelFormat;

.field public static final enum I_8:Lorg/andengine/opengl/texture/PixelFormat;

.field public static final enum RGBA_4444:Lorg/andengine/opengl/texture/PixelFormat;

.field public static final enum RGBA_5551:Lorg/andengine/opengl/texture/PixelFormat;

.field public static final enum RGBA_8888:Lorg/andengine/opengl/texture/PixelFormat;

.field public static final enum RGB_565:Lorg/andengine/opengl/texture/PixelFormat;

.field public static final enum UNDEFINED:Lorg/andengine/opengl/texture/PixelFormat;


# instance fields
.field private final mBitsPerPixel:I

.field private final mGLFormat:I

.field private final mGLInternalFormat:I

.field private final mGLType:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/16 v9, 0x1401

    const/16 v8, 0x10

    const/4 v3, -0x1

    const/16 v7, 0x1908

    .line 13
    new-instance v0, Lorg/andengine/opengl/texture/PixelFormat;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    move v4, v3

    move v5, v3

    move v6, v3

    .line 17
    invoke-direct/range {v0 .. v6}, Lorg/andengine/opengl/texture/PixelFormat;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lorg/andengine/opengl/texture/PixelFormat;->UNDEFINED:Lorg/andengine/opengl/texture/PixelFormat;

    .line 18
    new-instance v0, Lorg/andengine/opengl/texture/PixelFormat;

    const-string v1, "RGBA_4444"

    const/4 v2, 0x1

    const v5, 0x8033

    move v3, v7

    move v4, v7

    move v6, v8

    invoke-direct/range {v0 .. v6}, Lorg/andengine/opengl/texture/PixelFormat;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lorg/andengine/opengl/texture/PixelFormat;->RGBA_4444:Lorg/andengine/opengl/texture/PixelFormat;

    .line 19
    new-instance v0, Lorg/andengine/opengl/texture/PixelFormat;

    const-string v1, "RGBA_5551"

    const/4 v2, 0x2

    const/16 v3, 0x1907

    const v5, 0x8034

    move v4, v7

    move v6, v8

    invoke-direct/range {v0 .. v6}, Lorg/andengine/opengl/texture/PixelFormat;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lorg/andengine/opengl/texture/PixelFormat;->RGBA_5551:Lorg/andengine/opengl/texture/PixelFormat;

    .line 20
    new-instance v0, Lorg/andengine/opengl/texture/PixelFormat;

    const-string v1, "RGBA_8888"

    const/4 v2, 0x3

    const/16 v6, 0x20

    move v3, v7

    move v4, v7

    move v5, v9

    invoke-direct/range {v0 .. v6}, Lorg/andengine/opengl/texture/PixelFormat;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lorg/andengine/opengl/texture/PixelFormat;->RGBA_8888:Lorg/andengine/opengl/texture/PixelFormat;

    .line 21
    new-instance v0, Lorg/andengine/opengl/texture/PixelFormat;

    const-string v1, "RGB_565"

    const/4 v2, 0x4

    const/16 v3, 0x1907

    const/16 v4, 0x1907

    const v5, 0x8363

    move v6, v8

    invoke-direct/range {v0 .. v6}, Lorg/andengine/opengl/texture/PixelFormat;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lorg/andengine/opengl/texture/PixelFormat;->RGB_565:Lorg/andengine/opengl/texture/PixelFormat;

    .line 22
    new-instance v0, Lorg/andengine/opengl/texture/PixelFormat;

    const-string v1, "A_8"

    const/4 v2, 0x5

    const/16 v3, 0x1906

    const/16 v4, 0x1906

    move v5, v9

    move v6, v10

    invoke-direct/range {v0 .. v6}, Lorg/andengine/opengl/texture/PixelFormat;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lorg/andengine/opengl/texture/PixelFormat;->A_8:Lorg/andengine/opengl/texture/PixelFormat;

    .line 23
    new-instance v0, Lorg/andengine/opengl/texture/PixelFormat;

    const-string v1, "I_8"

    const/4 v2, 0x6

    const/16 v3, 0x1909

    const/16 v4, 0x1909

    move v5, v9

    move v6, v10

    invoke-direct/range {v0 .. v6}, Lorg/andengine/opengl/texture/PixelFormat;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lorg/andengine/opengl/texture/PixelFormat;->I_8:Lorg/andengine/opengl/texture/PixelFormat;

    .line 24
    new-instance v0, Lorg/andengine/opengl/texture/PixelFormat;

    const-string v1, "AI_88"

    const/4 v2, 0x7

    const/16 v3, 0x190a

    const/16 v4, 0x190a

    move v5, v9

    move v6, v8

    invoke-direct/range {v0 .. v6}, Lorg/andengine/opengl/texture/PixelFormat;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lorg/andengine/opengl/texture/PixelFormat;->AI_88:Lorg/andengine/opengl/texture/PixelFormat;

    .line 12
    new-array v0, v10, [Lorg/andengine/opengl/texture/PixelFormat;

    const/4 v1, 0x0

    sget-object v2, Lorg/andengine/opengl/texture/PixelFormat;->UNDEFINED:Lorg/andengine/opengl/texture/PixelFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/andengine/opengl/texture/PixelFormat;->RGBA_4444:Lorg/andengine/opengl/texture/PixelFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/andengine/opengl/texture/PixelFormat;->RGBA_5551:Lorg/andengine/opengl/texture/PixelFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/andengine/opengl/texture/PixelFormat;->RGBA_8888:Lorg/andengine/opengl/texture/PixelFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lorg/andengine/opengl/texture/PixelFormat;->RGB_565:Lorg/andengine/opengl/texture/PixelFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lorg/andengine/opengl/texture/PixelFormat;->A_8:Lorg/andengine/opengl/texture/PixelFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/andengine/opengl/texture/PixelFormat;->I_8:Lorg/andengine/opengl/texture/PixelFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/andengine/opengl/texture/PixelFormat;->AI_88:Lorg/andengine/opengl/texture/PixelFormat;

    aput-object v2, v0, v1

    sput-object v0, Lorg/andengine/opengl/texture/PixelFormat;->ENUM$VALUES:[Lorg/andengine/opengl/texture/PixelFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIII)V
    .locals 0
    .parameter
    .parameter
    .parameter "pGLInternalFormat"
    .parameter "pGLFormat"
    .parameter "pGLType"
    .parameter "pBitsPerPixel"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput p3, p0, Lorg/andengine/opengl/texture/PixelFormat;->mGLInternalFormat:I

    .line 45
    iput p4, p0, Lorg/andengine/opengl/texture/PixelFormat;->mGLFormat:I

    .line 46
    iput p5, p0, Lorg/andengine/opengl/texture/PixelFormat;->mGLType:I

    .line 47
    iput p6, p0, Lorg/andengine/opengl/texture/PixelFormat;->mBitsPerPixel:I

    .line 48
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/andengine/opengl/texture/PixelFormat;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lorg/andengine/opengl/texture/PixelFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/andengine/opengl/texture/PixelFormat;

    return-object v0
.end method

.method public static values()[Lorg/andengine/opengl/texture/PixelFormat;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/andengine/opengl/texture/PixelFormat;->ENUM$VALUES:[Lorg/andengine/opengl/texture/PixelFormat;

    array-length v1, v0

    new-array v2, v1, [Lorg/andengine/opengl/texture/PixelFormat;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getBitsPerPixel()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lorg/andengine/opengl/texture/PixelFormat;->mBitsPerPixel:I

    return v0
.end method

.method public getGLFormat()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lorg/andengine/opengl/texture/PixelFormat;->mGLFormat:I

    return v0
.end method

.method public getGLInternalFormat()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lorg/andengine/opengl/texture/PixelFormat;->mGLInternalFormat:I

    return v0
.end method

.method public getGLType()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lorg/andengine/opengl/texture/PixelFormat;->mGLType:I

    return v0
.end method
