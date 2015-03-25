.class public final enum Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;
.super Ljava/lang/Enum;
.source "RadialGradientFillBitmapTextureAtlasSourceDecorator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RadialGradientDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;

.field public static final enum INSIDE_OUT:Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;

.field public static final enum OUTSIDE_IN:Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 98
    new-instance v0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;

    const-string v1, "INSIDE_OUT"

    invoke-direct {v0, v1, v2}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;-><init>(Ljava/lang/String;I)V

    .line 102
    sput-object v0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;->INSIDE_OUT:Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;

    .line 103
    new-instance v0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;

    const-string v1, "OUTSIDE_IN"

    invoke-direct {v0, v1, v3}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;->OUTSIDE_IN:Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;

    .line 97
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;

    sget-object v1, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;->INSIDE_OUT:Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;

    aput-object v1, v0, v2

    sget-object v1, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;->OUTSIDE_IN:Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;

    aput-object v1, v0, v3

    sput-object v0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;->ENUM$VALUES:[Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;

    return-object v0
.end method

.method public static values()[Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;->ENUM$VALUES:[Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;

    array-length v1, v0

    new-array v2, v1, [Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
