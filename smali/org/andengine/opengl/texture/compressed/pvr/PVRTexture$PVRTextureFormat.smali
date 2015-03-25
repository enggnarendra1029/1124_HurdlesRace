.class public final enum Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;
.super Ljava/lang/Enum;
.source "PVRTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PVRTextureFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$org$andengine$opengl$texture$PixelFormat:[I

.field public static final enum AI_88:Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;

.field public static final enum A_8:Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;

.field private static final synthetic ENUM$VALUES:[Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;

.field public static final enum I_8:Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;

.field public static final enum RGBA_4444:Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;

.field public static final enum RGBA_5551:Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;

.field public static final enum RGBA_8888:Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;

.field public static final enum RGB_565:Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;


# instance fields
.field private final mCompressed:Z

.field private final mID:I

.field private final mPixelFormat:Lorg/andengine/opengl/texture/PixelFormat;


# direct methods
.method static synthetic $SWITCH_TABLE$org$andengine$opengl$texture$PixelFormat()[I
    .locals 3

    .prologue
    .line 331
    sget-object v0, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;->$SWITCH_TABLE$org$andengine$opengl$texture$PixelFormat:[I

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
    sput-object v0, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;->$SWITCH_TABLE$org$andengine$opengl$texture$PixelFormat:[I

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
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 332
    new-instance v0, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;

    const-string v1, "RGBA_4444"

    .line 336
    const/16 v3, 0x10

    sget-object v5, Lorg/andengine/opengl/texture/PixelFormat;->RGBA_4444:Lorg/andengine/opengl/texture/PixelFormat;

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;-><init>(Ljava/lang/String;IIZLorg/andengine/opengl/texture/PixelFormat;)V

    sput-object v0, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;->RGBA_4444:Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;

    .line 337
    new-instance v3, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;

    const-string v4, "RGBA_5551"

    const/16 v6, 0x11

    sget-object v8, Lorg/andengine/opengl/texture/PixelFormat;->RGBA_5551:Lorg/andengine/opengl/texture/PixelFormat;

    move v5, v9

    move v7, v2

    invoke-direct/range {v3 .. v8}, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;-><init>(Ljava/lang/String;IIZLorg/andengine/opengl/texture/PixelFormat;)V

    sput-object v3, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;->RGBA_5551:Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;

    .line 338
    new-instance v3, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;

    const-string v4, "RGBA_8888"

    const/16 v6, 0x12

    sget-object v8, Lorg/andengine/opengl/texture/PixelFormat;->RGBA_8888:Lorg/andengine/opengl/texture/PixelFormat;

    move v5, v10

    move v7, v2

    invoke-direct/range {v3 .. v8}, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;-><init>(Ljava/lang/String;IIZLorg/andengine/opengl/texture/PixelFormat;)V

    sput-object v3, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;->RGBA_8888:Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;

    .line 339
    new-instance v3, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;

    const-string v4, "RGB_565"

    const/16 v6, 0x13

    sget-object v8, Lorg/andengine/opengl/texture/PixelFormat;->RGB_565:Lorg/andengine/opengl/texture/PixelFormat;

    move v5, v11

    move v7, v2

    invoke-direct/range {v3 .. v8}, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;-><init>(Ljava/lang/String;IIZLorg/andengine/opengl/texture/PixelFormat;)V

    sput-object v3, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;->RGB_565:Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;

    .line 340
    new-instance v3, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;

    const-string v4, "I_8"

    .line 342
    const/16 v6, 0x16

    sget-object v8, Lorg/andengine/opengl/texture/PixelFormat;->I_8:Lorg/andengine/opengl/texture/PixelFormat;

    move v5, v12

    move v7, v2

    invoke-direct/range {v3 .. v8}, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;-><init>(Ljava/lang/String;IIZLorg/andengine/opengl/texture/PixelFormat;)V

    sput-object v3, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;->I_8:Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;

    .line 343
    new-instance v3, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;

    const-string v4, "AI_88"

    const/4 v5, 0x5

    const/16 v6, 0x17

    sget-object v8, Lorg/andengine/opengl/texture/PixelFormat;->AI_88:Lorg/andengine/opengl/texture/PixelFormat;

    move v7, v2

    invoke-direct/range {v3 .. v8}, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;-><init>(Ljava/lang/String;IIZLorg/andengine/opengl/texture/PixelFormat;)V

    sput-object v3, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;->AI_88:Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;

    .line 344
    new-instance v3, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;

    const-string v4, "A_8"

    const/4 v5, 0x6

    .line 347
    const/16 v6, 0x1b

    sget-object v8, Lorg/andengine/opengl/texture/PixelFormat;->A_8:Lorg/andengine/opengl/texture/PixelFormat;

    move v7, v2

    invoke-direct/range {v3 .. v8}, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;-><init>(Ljava/lang/String;IIZLorg/andengine/opengl/texture/PixelFormat;)V

    sput-object v3, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;->A_8:Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;

    .line 331
    const/4 v0, 0x7

    new-array v0, v0, [Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;

    sget-object v1, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;->RGBA_4444:Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;

    aput-object v1, v0, v2

    sget-object v1, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;->RGBA_5551:Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;

    aput-object v1, v0, v9

    sget-object v1, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;->RGBA_8888:Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;

    aput-object v1, v0, v10

    sget-object v1, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;->RGB_565:Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;

    aput-object v1, v0, v11

    sget-object v1, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;->I_8:Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    sget-object v2, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;->AI_88:Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;->A_8:Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;

    aput-object v2, v0, v1

    sput-object v0, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;->ENUM$VALUES:[Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZLorg/andengine/opengl/texture/PixelFormat;)V
    .locals 0
    .parameter
    .parameter
    .parameter "pID"
    .parameter "pCompressed"
    .parameter "pPixelFormat"

    .prologue
    .line 365
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 366
    iput p3, p0, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;->mID:I

    .line 367
    iput-boolean p4, p0, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;->mCompressed:Z

    .line 368
    iput-object p5, p0, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;->mPixelFormat:Lorg/andengine/opengl/texture/PixelFormat;

    .line 369
    return-void
.end method

.method public static fromID(I)Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;
    .locals 7
    .parameter "pID"

    .prologue
    .line 372
    invoke-static {}, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;->values()[Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;

    move-result-object v3

    .line 373
    .local v3, pvrTextureFormats:[Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;
    array-length v2, v3

    .line 374
    .local v2, pvrTextureFormatCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 380
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unexpected "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v6, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-ID: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 375
    :cond_0
    aget-object v1, v3, v0

    .line 376
    .local v1, pvrTextureFormat:Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;
    iget v4, v1, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;->mID:I

    if-ne v4, p0, :cond_1

    .line 377
    return-object v1

    .line 374
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static fromPixelFormat(Lorg/andengine/opengl/texture/PixelFormat;)Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;
    .locals 3
    .parameter "pPixelFormat"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 384
    invoke-static {}, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;->$SWITCH_TABLE$org$andengine$opengl$texture$PixelFormat()[I

    move-result-object v0

    invoke-virtual {p0}, Lorg/andengine/opengl/texture/PixelFormat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 392
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

    .line 386
    :pswitch_1
    sget-object v0, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;->RGBA_8888:Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;

    .line 390
    :goto_0
    return-object v0

    .line 388
    :pswitch_2
    sget-object v0, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;->RGBA_4444:Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;

    goto :goto_0

    .line 390
    :pswitch_3
    sget-object v0, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;->RGB_565:Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;

    goto :goto_0

    .line 384
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;

    return-object v0
.end method

.method public static values()[Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;->ENUM$VALUES:[Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;

    array-length v1, v0

    new-array v2, v1, [Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getID()I
    .locals 1

    .prologue
    .line 401
    iget v0, p0, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;->mID:I

    return v0
.end method

.method public getPixelFormat()Lorg/andengine/opengl/texture/PixelFormat;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;->mPixelFormat:Lorg/andengine/opengl/texture/PixelFormat;

    return-object v0
.end method

.method public isCompressed()Z
    .locals 1

    .prologue
    .line 405
    iget-boolean v0, p0, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;->mCompressed:Z

    return v0
.end method
