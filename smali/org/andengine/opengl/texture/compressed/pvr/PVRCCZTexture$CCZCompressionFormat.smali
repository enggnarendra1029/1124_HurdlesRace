.class public final enum Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;
.super Ljava/lang/Enum;
.source "PVRCCZTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CCZCompressionFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$org$andengine$opengl$texture$compressed$pvr$PVRCCZTexture$CCZCompressionFormat:[I

.field public static final enum BZIP2:Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;

.field private static final synthetic ENUM$VALUES:[Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;

.field public static final enum GZIP:Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;

.field public static final enum NONE:Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;

.field public static final enum ZLIB:Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;


# instance fields
.field private final mID:S


# direct methods
.method static synthetic $SWITCH_TABLE$org$andengine$opengl$texture$compressed$pvr$PVRCCZTexture$CCZCompressionFormat()[I
    .locals 3

    .prologue
    .line 186
    sget-object v0, Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;->$SWITCH_TABLE$org$andengine$opengl$texture$compressed$pvr$PVRCCZTexture$CCZCompressionFormat:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;->values()[Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;->BZIP2:Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;

    invoke-virtual {v1}, Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;->GZIP:Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;

    invoke-virtual {v1}, Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;->NONE:Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;

    invoke-virtual {v1}, Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;->ZLIB:Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;

    invoke-virtual {v1}, Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;->$SWITCH_TABLE$org$andengine$opengl$texture$compressed$pvr$PVRCCZTexture$CCZCompressionFormat:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 187
    new-instance v0, Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;

    const-string v1, "ZLIB"

    .line 191
    invoke-direct {v0, v1, v2, v2}, Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;->ZLIB:Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;

    .line 192
    new-instance v0, Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;

    const-string v1, "BZIP2"

    invoke-direct {v0, v1, v3, v3}, Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;->BZIP2:Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;

    .line 193
    new-instance v0, Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;

    const-string v1, "GZIP"

    invoke-direct {v0, v1, v4, v4}, Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;->GZIP:Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;

    .line 194
    new-instance v0, Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v5, v5}, Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;->NONE:Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;

    .line 186
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;

    sget-object v1, Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;->ZLIB:Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;

    aput-object v1, v0, v2

    sget-object v1, Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;->BZIP2:Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;

    aput-object v1, v0, v3

    sget-object v1, Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;->GZIP:Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;

    aput-object v1, v0, v4

    sget-object v1, Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;->NONE:Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;

    aput-object v1, v0, v5

    sput-object v0, Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;->ENUM$VALUES:[Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IS)V
    .locals 0
    .parameter
    .parameter
    .parameter "pID"

    .prologue
    .line 210
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 211
    iput-short p3, p0, Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;->mID:S

    .line 212
    return-void
.end method

.method public static fromID(S)Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;
    .locals 7
    .parameter "pID"

    .prologue
    .line 228
    invoke-static {}, Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;->values()[Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;

    move-result-object v2

    .line 229
    .local v2, cczCompressionFormats:[Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;
    array-length v1, v2

    .line 230
    .local v1, cczCompressionFormatCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-lt v3, v1, :cond_0

    .line 236
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unexpected "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v6, Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;

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

    .line 231
    :cond_0
    aget-object v0, v2, v3

    .line 232
    .local v0, cczCompressionFormat:Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;
    iget-short v4, v0, Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;->mID:S

    if-ne v4, p0, :cond_1

    .line 233
    return-object v0

    .line 230
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;

    return-object v0
.end method

.method public static values()[Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;->ENUM$VALUES:[Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;

    array-length v1, v0

    new-array v2, v1, [Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public wrap(Ljava/io/InputStream;)Ljava/util/zip/InflaterInputStream;
    .locals 3
    .parameter "pInputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    invoke-static {}, Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;->$SWITCH_TABLE$org$andengine$opengl$texture$compressed$pvr$PVRCCZTexture$CCZCompressionFormat()[I

    move-result-object v0

    invoke-virtual {p0}, Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 223
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lorg/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

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

    .line 217
    :pswitch_1
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 219
    :goto_0
    return-object v0

    :pswitch_2
    new-instance v0, Ljava/util/zip/InflaterInputStream;

    new-instance v1, Ljava/util/zip/Inflater;

    invoke-direct {v1}, Ljava/util/zip/Inflater;-><init>()V

    invoke-direct {v0, p1, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    goto :goto_0

    .line 215
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
