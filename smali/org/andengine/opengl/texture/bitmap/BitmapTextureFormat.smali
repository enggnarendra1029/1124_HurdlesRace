.class public final enum Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;
.super Ljava/lang/Enum;
.source "BitmapTextureFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$org$andengine$opengl$texture$PixelFormat:[I

.field public static final enum A_8:Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;

.field private static final synthetic ENUM$VALUES:[Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;

.field public static final enum RGBA_4444:Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;

.field public static final enum RGBA_8888:Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;

.field public static final enum RGB_565:Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;


# instance fields
.field private final mBitmapConfig:Landroid/graphics/Bitmap$Config;

.field private final mPixelFormat:Lorg/andengine/opengl/texture/PixelFormat;


# direct methods
.method static synthetic $SWITCH_TABLE$org$andengine$opengl$texture$PixelFormat()[I
    .locals 3

    .prologue
    .line 13
    sget-object v0, Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;->$SWITCH_TABLE$org$andengine$opengl$texture$PixelFormat:[I

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
    sput-object v0, Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;->$SWITCH_TABLE$org$andengine$opengl$texture$PixelFormat:[I

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

.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 14
    new-instance v0, Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;

    const-string v1, "RGBA_8888"

    .line 18
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sget-object v3, Lorg/andengine/opengl/texture/PixelFormat;->RGBA_8888:Lorg/andengine/opengl/texture/PixelFormat;

    invoke-direct {v0, v1, v4, v2, v3}, Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;-><init>(Ljava/lang/String;ILandroid/graphics/Bitmap$Config;Lorg/andengine/opengl/texture/PixelFormat;)V

    sput-object v0, Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;->RGBA_8888:Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;

    .line 19
    new-instance v0, Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;

    const-string v1, "RGB_565"

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    sget-object v3, Lorg/andengine/opengl/texture/PixelFormat;->RGB_565:Lorg/andengine/opengl/texture/PixelFormat;

    invoke-direct {v0, v1, v5, v2, v3}, Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;-><init>(Ljava/lang/String;ILandroid/graphics/Bitmap$Config;Lorg/andengine/opengl/texture/PixelFormat;)V

    sput-object v0, Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;->RGB_565:Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;

    .line 20
    new-instance v0, Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;

    const-string v1, "RGBA_4444"

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    sget-object v3, Lorg/andengine/opengl/texture/PixelFormat;->RGBA_4444:Lorg/andengine/opengl/texture/PixelFormat;

    invoke-direct {v0, v1, v6, v2, v3}, Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;-><init>(Ljava/lang/String;ILandroid/graphics/Bitmap$Config;Lorg/andengine/opengl/texture/PixelFormat;)V

    sput-object v0, Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;->RGBA_4444:Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;

    .line 21
    new-instance v0, Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;

    const-string v1, "A_8"

    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    sget-object v3, Lorg/andengine/opengl/texture/PixelFormat;->A_8:Lorg/andengine/opengl/texture/PixelFormat;

    invoke-direct {v0, v1, v7, v2, v3}, Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;-><init>(Ljava/lang/String;ILandroid/graphics/Bitmap$Config;Lorg/andengine/opengl/texture/PixelFormat;)V

    sput-object v0, Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;->A_8:Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;

    .line 13
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;

    sget-object v1, Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;->RGBA_8888:Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;

    aput-object v1, v0, v4

    sget-object v1, Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;->RGB_565:Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;

    aput-object v1, v0, v5

    sget-object v1, Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;->RGBA_4444:Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;

    aput-object v1, v0, v6

    sget-object v1, Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;->A_8:Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;

    aput-object v1, v0, v7

    sput-object v0, Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;->ENUM$VALUES:[Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILandroid/graphics/Bitmap$Config;Lorg/andengine/opengl/texture/PixelFormat;)V
    .locals 0
    .parameter
    .parameter
    .parameter "pBitmapConfig"
    .parameter "pPixelFormat"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput-object p3, p0, Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;->mBitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 40
    iput-object p4, p0, Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;->mPixelFormat:Lorg/andengine/opengl/texture/PixelFormat;

    .line 41
    return-void
.end method

.method public static fromPixelFormat(Lorg/andengine/opengl/texture/PixelFormat;)Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;
    .locals 3
    .parameter "pPixelFormat"

    .prologue
    .line 44
    invoke-static {}, Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;->$SWITCH_TABLE$org$andengine$opengl$texture$PixelFormat()[I

    move-result-object v0

    invoke-virtual {p0}, Lorg/andengine/opengl/texture/PixelFormat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 54
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lorg/andengine/opengl/texture/PixelFormat;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :pswitch_1
    sget-object v0, Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;->RGBA_8888:Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;

    .line 52
    :goto_0
    return-object v0

    .line 48
    :pswitch_2
    sget-object v0, Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;->RGBA_4444:Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;

    goto :goto_0

    .line 50
    :pswitch_3
    sget-object v0, Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;->RGB_565:Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;

    goto :goto_0

    .line 52
    :pswitch_4
    sget-object v0, Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;->A_8:Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;

    goto :goto_0

    .line 44
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;

    return-object v0
.end method

.method public static values()[Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;->ENUM$VALUES:[Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;

    array-length v1, v0

    new-array v2, v1, [Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getBitmapConfig()Landroid/graphics/Bitmap$Config;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;->mBitmapConfig:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public getPixelFormat()Lorg/andengine/opengl/texture/PixelFormat;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;->mPixelFormat:Lorg/andengine/opengl/texture/PixelFormat;

    return-object v0
.end method
