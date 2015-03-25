.class public Lorg/andengine/opengl/util/GLHelper;
.super Ljava/lang/Object;
.source "GLHelper.java"


# static fields
.field private static synthetic $SWITCH_TABLE$org$andengine$opengl$texture$PixelFormat:[I


# direct methods
.method static synthetic $SWITCH_TABLE$org$andengine$opengl$texture$PixelFormat()[I
    .locals 3

    .prologue
    .line 20
    sget-object v0, Lorg/andengine/opengl/util/GLHelper;->$SWITCH_TABLE$org$andengine$opengl$texture$PixelFormat:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/andengine/opengl/texture/PixelFormat;->values()[Lorg/andengine/opengl/texture/PixelFormat;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/andengine/opengl/texture/PixelFormat;->AI_88:Lorg/andengine/opengl/texture/PixelFormat;

    invoke-virtual {v1}, Lorg/andengine/opengl/texture/PixelFormat;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_1
    :try_start_1
    sget-object v1, Lorg/andengine/opengl/texture/PixelFormat;->A_8:Lorg/andengine/opengl/texture/PixelFormat;

    invoke-virtual {v1}, Lorg/andengine/opengl/texture/PixelFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_2
    :try_start_2
    sget-object v1, Lorg/andengine/opengl/texture/PixelFormat;->I_8:Lorg/andengine/opengl/texture/PixelFormat;

    invoke-virtual {v1}, Lorg/andengine/opengl/texture/PixelFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_3
    :try_start_3
    sget-object v1, Lorg/andengine/opengl/texture/PixelFormat;->RGBA_4444:Lorg/andengine/opengl/texture/PixelFormat;

    invoke-virtual {v1}, Lorg/andengine/opengl/texture/PixelFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_4
    :try_start_4
    sget-object v1, Lorg/andengine/opengl/texture/PixelFormat;->RGBA_5551:Lorg/andengine/opengl/texture/PixelFormat;

    invoke-virtual {v1}, Lorg/andengine/opengl/texture/PixelFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_5
    :try_start_5
    sget-object v1, Lorg/andengine/opengl/texture/PixelFormat;->RGBA_8888:Lorg/andengine/opengl/texture/PixelFormat;

    invoke-virtual {v1}, Lorg/andengine/opengl/texture/PixelFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_6
    :try_start_6
    sget-object v1, Lorg/andengine/opengl/texture/PixelFormat;->RGB_565:Lorg/andengine/opengl/texture/PixelFormat;

    invoke-virtual {v1}, Lorg/andengine/opengl/texture/PixelFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_7
    :try_start_7
    sget-object v1, Lorg/andengine/opengl/texture/PixelFormat;->UNDEFINED:Lorg/andengine/opengl/texture/PixelFormat;

    invoke-virtual {v1}, Lorg/andengine/opengl/texture/PixelFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_8
    sput-object v0, Lorg/andengine/opengl/util/GLHelper;->$SWITCH_TABLE$org$andengine$opengl$texture$PixelFormat:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertARGB_8888toA_8([I)[B
    .locals 3
    .parameter "pPixelsARGB_8888"

    .prologue
    .line 151
    array-length v2, p0

    new-array v1, v2, [B

    .line 152
    .local v1, pixelsA_8:[B
    array-length v2, p0

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 158
    return-object v1

    .line 156
    :cond_0
    aget v2, p0, v0

    shr-int/lit8 v2, v2, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 152
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static convertARGB_8888toRGBA_4444([I)[S
    .locals 1
    .parameter "pPixelsARGB_8888"

    .prologue
    .line 119
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/andengine/opengl/util/GLHelper;->convertARGB_8888toRGBA_4444([ILjava/nio/ByteOrder;)[S

    move-result-object v0

    return-object v0
.end method

.method public static convertARGB_8888toRGBA_4444([ILjava/nio/ByteOrder;)[S
    .locals 6
    .parameter "pPixelsARGB_8888"
    .parameter "pByteOrder"

    .prologue
    const v5, 0xf000

    .line 123
    array-length v3, p0

    new-array v2, v3, [S

    .line 124
    .local v2, pixelsRGBA_4444:[S
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p1, v3, :cond_2

    .line 125
    array-length v3, p0

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_1

    .line 147
    :cond_0
    return-object v2

    .line 126
    :cond_1
    aget v1, p0, v0

    .line 133
    .local v1, pixel:I
    shr-int/lit8 v3, v1, 0x10

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v4, v1, 0xc

    and-int/lit8 v4, v4, 0xf

    or-int/2addr v3, v4

    shl-int/lit8 v4, v1, 0x8

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    shr-int/lit8 v4, v1, 0x14

    and-int/lit16 v4, v4, 0xf00

    or-int/2addr v3, v4

    int-to-short v3, v3

    aput-short v3, v2, v0

    .line 125
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 136
    .end local v0           #i:I
    .end local v1           #pixel:I
    :cond_2
    array-length v3, p0

    add-int/lit8 v0, v3, -0x1

    .restart local v0       #i:I
    :goto_1
    if-ltz v0, :cond_0

    .line 137
    aget v1, p0, v0

    .line 144
    .restart local v1       #pixel:I
    shr-int/lit8 v3, v1, 0x8

    and-int/2addr v3, v5

    shr-int/lit8 v4, v1, 0x4

    and-int/lit16 v4, v4, 0xf00

    or-int/2addr v3, v4

    and-int/lit16 v4, v1, 0xf0

    or-int/2addr v3, v4

    shr-int/lit8 v4, v1, 0x1c

    and-int/lit8 v4, v4, 0xf

    or-int/2addr v3, v4

    int-to-short v3, v3

    aput-short v3, v2, v0

    .line 136
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public static convertARGB_8888toRGBA_8888([I)[I
    .locals 1
    .parameter "pPixelsARGB_8888"

    .prologue
    .line 60
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/andengine/opengl/util/GLHelper;->convertARGB_8888toRGBA_8888([ILjava/nio/ByteOrder;)[I

    move-result-object v0

    return-object v0
.end method

.method public static convertARGB_8888toRGBA_8888([ILjava/nio/ByteOrder;)[I
    .locals 5
    .parameter "pPixelsARGB_8888"
    .parameter "pByteOrder"

    .prologue
    .line 64
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p1, v2, :cond_2

    .line 65
    array-length v2, p0

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_1

    .line 83
    :cond_0
    return-object p0

    .line 66
    :cond_1
    aget v1, p0, v0

    .line 71
    .local v1, pixel:I
    const v2, -0xff0100

    and-int/2addr v2, v1

    shl-int/lit8 v3, v1, 0x10

    const/high16 v4, 0xff

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    shr-int/lit8 v3, v1, 0x10

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    aput v2, p0, v0

    .line 65
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 74
    .end local v0           #i:I
    .end local v1           #pixel:I
    :cond_2
    array-length v2, p0

    add-int/lit8 v0, v2, -0x1

    .restart local v0       #i:I
    :goto_1
    if-ltz v0, :cond_0

    .line 75
    aget v1, p0, v0

    .line 80
    .restart local v1       #pixel:I
    shl-int/lit8 v2, v1, 0x8

    and-int/lit16 v2, v2, -0x100

    shr-int/lit8 v3, v1, 0x18

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    aput v2, p0, v0

    .line 74
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public static convertARGB_8888toRGB_565([I)[S
    .locals 1
    .parameter "pPixelsARGB_8888"

    .prologue
    .line 87
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/andengine/opengl/util/GLHelper;->convertARGB_8888toRGB_565([ILjava/nio/ByteOrder;)[S

    move-result-object v0

    return-object v0
.end method

.method public static convertARGB_8888toRGB_565([ILjava/nio/ByteOrder;)[S
    .locals 6
    .parameter "pPixelsARGB_8888"
    .parameter "pByteOrder"

    .prologue
    .line 91
    array-length v3, p0

    new-array v2, v3, [S

    .line 92
    .local v2, pixelsRGB_565:[S
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p1, v3, :cond_2

    .line 93
    array-length v3, p0

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_1

    .line 115
    :cond_0
    return-object v2

    .line 94
    :cond_1
    aget v1, p0, v0

    .line 101
    .local v1, pixel:I
    shr-int/lit8 v3, v1, 0x10

    and-int/lit16 v3, v3, 0xf8

    shr-int/lit8 v4, v1, 0xd

    and-int/lit8 v4, v4, 0x7

    or-int/2addr v3, v4

    shl-int/lit8 v4, v1, 0x3

    const v5, 0xe000

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    shl-int/lit8 v4, v1, 0x5

    and-int/lit16 v4, v4, 0x1f00

    or-int/2addr v3, v4

    int-to-short v3, v3

    aput-short v3, v2, v0

    .line 93
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 104
    .end local v0           #i:I
    .end local v1           #pixel:I
    :cond_2
    array-length v3, p0

    add-int/lit8 v0, v3, -0x1

    .restart local v0       #i:I
    :goto_1
    if-ltz v0, :cond_0

    .line 105
    aget v1, p0, v0

    .line 112
    .restart local v1       #pixel:I
    shr-int/lit8 v3, v1, 0x8

    const v4, 0xf800

    and-int/2addr v3, v4

    shr-int/lit8 v4, v1, 0x5

    and-int/lit16 v4, v4, 0x7e0

    or-int/2addr v3, v4

    shr-int/lit8 v4, v1, 0x3

    and-int/lit8 v4, v4, 0x1f

    or-int/2addr v3, v4

    int-to-short v3, v3

    aput-short v3, v2, v0

    .line 104
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public static convertRGBA_8888toARGB_8888([I)[I
    .locals 1
    .parameter "pPixelsRGBA_8888"

    .prologue
    .line 172
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/andengine/opengl/util/GLHelper;->convertRGBA_8888toARGB_8888([ILjava/nio/ByteOrder;)[I

    move-result-object v0

    return-object v0
.end method

.method public static convertRGBA_8888toARGB_8888([ILjava/nio/ByteOrder;)[I
    .locals 5
    .parameter "pPixelsRGBA_8888"
    .parameter "pByteOrder"

    .prologue
    .line 176
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p1, v2, :cond_2

    .line 177
    array-length v2, p0

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_1

    .line 193
    :cond_0
    return-object p0

    .line 178
    :cond_1
    aget v1, p0, v0

    .line 182
    .local v1, pixel:I
    const v2, -0xff0100

    and-int/2addr v2, v1

    shl-int/lit8 v3, v1, 0x10

    const/high16 v4, 0xff

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    shr-int/lit8 v3, v1, 0x10

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    aput v2, p0, v0

    .line 177
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 185
    .end local v0           #i:I
    .end local v1           #pixel:I
    :cond_2
    array-length v2, p0

    add-int/lit8 v0, v2, -0x1

    .restart local v0       #i:I
    :goto_1
    if-ltz v0, :cond_0

    .line 186
    aget v1, p0, v0

    .line 190
    .restart local v1       #pixel:I
    shr-int/lit8 v2, v1, 0x8

    const v3, 0xffffff

    and-int/2addr v2, v3

    shl-int/lit8 v3, v1, 0x18

    const/high16 v4, -0x100

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, p0, v0

    .line 185
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public static convertRGBA_8888toARGB_8888_FlippedVertical([III)[I
    .locals 1
    .parameter "pPixelsRGBA_8888"
    .parameter "pWidth"
    .parameter "pHeight"

    .prologue
    .line 197
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lorg/andengine/opengl/util/GLHelper;->convertRGBA_8888toARGB_8888_FlippedVertical([IIILjava/nio/ByteOrder;)[I

    move-result-object v0

    return-object v0
.end method

.method public static convertRGBA_8888toARGB_8888_FlippedVertical([IIILjava/nio/ByteOrder;)[I
    .locals 8
    .parameter "pPixelsRGBA_8888"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pByteOrder"

    .prologue
    .line 201
    mul-int v4, p1, p2

    new-array v1, v4, [I

    .line 203
    .local v1, pixelsARGB_8888:[I
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p3, v4, :cond_3

    .line 204
    const/4 v3, 0x0

    .local v3, y:I
    :goto_0
    if-lt v3, p2, :cond_1

    .line 224
    :cond_0
    return-object v1

    .line 205
    :cond_1
    const/4 v2, 0x0

    .local v2, x:I
    :goto_1
    if-lt v2, p1, :cond_2

    .line 204
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 206
    :cond_2
    mul-int v4, v3, p1

    add-int/2addr v4, v2

    aget v0, p0, v4

    .line 210
    .local v0, pixel:I
    sub-int v4, p2, v3

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v4, p1

    add-int/2addr v4, v2

    const v5, -0xff0100

    and-int/2addr v5, v0

    shl-int/lit8 v6, v0, 0x10

    const/high16 v7, 0xff

    and-int/2addr v6, v7

    or-int/2addr v5, v6

    shr-int/lit8 v6, v0, 0x10

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    aput v5, v1, v4

    .line 205
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 214
    .end local v0           #pixel:I
    .end local v2           #x:I
    .end local v3           #y:I
    :cond_3
    const/4 v3, 0x0

    .restart local v3       #y:I
    :goto_2
    if-ge v3, p2, :cond_0

    .line 215
    const/4 v2, 0x0

    .restart local v2       #x:I
    :goto_3
    if-lt v2, p1, :cond_4

    .line 214
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 216
    :cond_4
    mul-int v4, v3, p1

    add-int/2addr v4, v2

    aget v0, p0, v4

    .line 220
    .restart local v0       #pixel:I
    sub-int v4, p2, v3

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v4, p1

    add-int/2addr v4, v2

    shr-int/lit8 v5, v0, 0x8

    const v6, 0xffffff

    and-int/2addr v5, v6

    shl-int/lit8 v6, v0, 0x18

    const/high16 v7, -0x100

    and-int/2addr v6, v7

    or-int/2addr v5, v6

    aput v5, v1, v4

    .line 215
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method public static getPixels(Landroid/graphics/Bitmap;Lorg/andengine/opengl/texture/PixelFormat;)Ljava/nio/Buffer;
    .locals 1
    .parameter "pBitmap"
    .parameter "pPixelFormat"

    .prologue
    .line 37
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/andengine/opengl/util/GLHelper;->getPixels(Landroid/graphics/Bitmap;Lorg/andengine/opengl/texture/PixelFormat;Ljava/nio/ByteOrder;)Ljava/nio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public static getPixels(Landroid/graphics/Bitmap;Lorg/andengine/opengl/texture/PixelFormat;Ljava/nio/ByteOrder;)Ljava/nio/Buffer;
    .locals 5
    .parameter "pBitmap"
    .parameter "pPixelFormat"
    .parameter "pByteOrder"

    .prologue
    .line 41
    invoke-static {p0}, Lorg/andengine/opengl/util/GLHelper;->getPixelsARGB_8888(Landroid/graphics/Bitmap;)[I

    move-result-object v0

    .line 43
    .local v0, pixelsARGB_8888:[I
    invoke-static {}, Lorg/andengine/opengl/util/GLHelper;->$SWITCH_TABLE$org$andengine$opengl$texture$PixelFormat()[I

    move-result-object v2

    invoke-virtual {p1}, Lorg/andengine/opengl/texture/PixelFormat;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 55
    :pswitch_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v4, Lorg/andengine/opengl/texture/PixelFormat;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 45
    :pswitch_1
    invoke-static {v0, p2}, Lorg/andengine/opengl/util/GLHelper;->convertARGB_8888toRGB_565([ILjava/nio/ByteOrder;)[S

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ShortBuffer;->wrap([S)Ljava/nio/ShortBuffer;

    move-result-object v2

    .line 53
    :goto_0
    return-object v2

    .line 48
    :pswitch_2
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p2, v2, :cond_0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 49
    .local v1, reverseByteOrder:Ljava/nio/ByteOrder;
    :goto_1
    invoke-static {v0, v1}, Lorg/andengine/opengl/util/GLHelper;->convertARGB_8888toRGBA_8888([ILjava/nio/ByteOrder;)[I

    move-result-object v2

    invoke-static {v2}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v2

    goto :goto_0

    .line 48
    .end local v1           #reverseByteOrder:Ljava/nio/ByteOrder;
    :cond_0
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_1

    .line 51
    :pswitch_3
    invoke-static {v0, p2}, Lorg/andengine/opengl/util/GLHelper;->convertARGB_8888toRGBA_4444([ILjava/nio/ByteOrder;)[S

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ShortBuffer;->wrap([S)Ljava/nio/ShortBuffer;

    move-result-object v2

    goto :goto_0

    .line 53
    :pswitch_4
    invoke-static {v0}, Lorg/andengine/opengl/util/GLHelper;->convertARGB_8888toA_8([I)[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    goto :goto_0

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public static getPixelsARGB_8888(Landroid/graphics/Bitmap;)[I
    .locals 8
    .parameter "pBitmap"

    .prologue
    const/4 v2, 0x0

    .line 162
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 163
    .local v3, w:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 165
    .local v7, h:I
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .local v1, pixelsARGB_8888:[I
    move-object v0, p0

    move v4, v2

    move v5, v2

    move v6, v3

    .line 166
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 168
    return-object v1
.end method
