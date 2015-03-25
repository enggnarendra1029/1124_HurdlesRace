.class public Lorg/andengine/util/color/ColorUtils;
.super Ljava/lang/Object;
.source "ColorUtils.java"


# static fields
.field private static final HSV_TO_COLOR:[F = null

.field private static final HSV_TO_COLOR_HUE_INDEX:I = 0x0

.field private static final HSV_TO_COLOR_SATURATION_INDEX:I = 0x1

.field private static final HSV_TO_COLOR_VALUE_INDEX:I = 0x2

.field private static final INT_BITS_TO_FLOAT_MASK:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x3

    new-array v0, v0, [F

    sput-object v0, Lorg/andengine/util/color/ColorUtils;->HSV_TO_COLOR:[F

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertABGRPackedIntToColor(I)Lorg/andengine/util/color/Color;
    .locals 5
    .parameter "pABGRPackedInt"

    .prologue
    .line 76
    invoke-static {p0}, Lorg/andengine/util/color/ColorUtils;->extractAlphaFromABGRPackedInt(I)F

    move-result v0

    .line 77
    .local v0, alpha:F
    invoke-static {p0}, Lorg/andengine/util/color/ColorUtils;->extractBlueFromABGRPackedInt(I)F

    move-result v1

    .line 78
    .local v1, blue:F
    invoke-static {p0}, Lorg/andengine/util/color/ColorUtils;->extractGreenFromABGRPackedInt(I)F

    move-result v2

    .line 79
    .local v2, green:F
    invoke-static {p0}, Lorg/andengine/util/color/ColorUtils;->extractRedFromABGRPackedInt(I)F

    move-result v3

    .line 81
    .local v3, red:F
    new-instance v4, Lorg/andengine/util/color/Color;

    invoke-direct {v4, v3, v2, v1, v0}, Lorg/andengine/util/color/Color;-><init>(FFFF)V

    return-object v4
.end method

.method public static convertARGBPackedIntToColor(I)Lorg/andengine/util/color/Color;
    .locals 5
    .parameter "pARGBPackedInt"

    .prologue
    .line 67
    invoke-static {p0}, Lorg/andengine/util/color/ColorUtils;->extractAlphaFromARGBPackedInt(I)F

    move-result v0

    .line 68
    .local v0, alpha:F
    invoke-static {p0}, Lorg/andengine/util/color/ColorUtils;->extractRedFromARGBPackedInt(I)F

    move-result v3

    .line 69
    .local v3, red:F
    invoke-static {p0}, Lorg/andengine/util/color/ColorUtils;->extractGreenFromARGBPackedInt(I)F

    move-result v2

    .line 70
    .local v2, green:F
    invoke-static {p0}, Lorg/andengine/util/color/ColorUtils;->extractBlueFromARGBPackedInt(I)F

    move-result v1

    .line 72
    .local v1, blue:F
    new-instance v4, Lorg/andengine/util/color/Color;

    invoke-direct {v4, v3, v2, v1, v0}, Lorg/andengine/util/color/Color;-><init>(FFFF)V

    return-object v4
.end method

.method public static final convertHSVToARGBPackedInt(FFF)I
    .locals 2
    .parameter "pHue"
    .parameter "pSaturation"
    .parameter "pValue"

    .prologue
    .line 49
    sget-object v0, Lorg/andengine/util/color/ColorUtils;->HSV_TO_COLOR:[F

    const/4 v1, 0x0

    aput p0, v0, v1

    .line 50
    sget-object v0, Lorg/andengine/util/color/ColorUtils;->HSV_TO_COLOR:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 51
    sget-object v0, Lorg/andengine/util/color/ColorUtils;->HSV_TO_COLOR:[F

    const/4 v1, 0x2

    aput p2, v0, v1

    .line 53
    sget-object v0, Lorg/andengine/util/color/ColorUtils;->HSV_TO_COLOR:[F

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    return v0
.end method

.method public static final convertHSVToColor(FFF)Lorg/andengine/util/color/Color;
    .locals 1
    .parameter "pHue"
    .parameter "pSaturation"
    .parameter "pValue"

    .prologue
    .line 62
    invoke-static {p0, p1, p2}, Lorg/andengine/util/color/ColorUtils;->convertHSVToARGBPackedInt(FFF)I

    move-result v0

    invoke-static {v0}, Lorg/andengine/util/color/ColorUtils;->convertARGBPackedIntToColor(I)Lorg/andengine/util/color/Color;

    move-result-object v0

    return-object v0
.end method

.method public static final convertPackedIntToPackedFloat(I)F
    .locals 1
    .parameter "pPackedInt"

    .prologue
    .line 103
    and-int/lit8 v0, p0, -0x1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public static final convertRGBAToABGRPackedFloat(FFFF)F
    .locals 1
    .parameter "pRed"
    .parameter "pGreen"
    .parameter "pBlue"
    .parameter "pAlpha"

    .prologue
    .line 98
    invoke-static {p0, p1, p2, p3}, Lorg/andengine/util/color/ColorUtils;->convertRGBAToABGRPackedInt(FFFF)I

    move-result v0

    invoke-static {v0}, Lorg/andengine/util/color/ColorUtils;->convertPackedIntToPackedFloat(I)F

    move-result v0

    return v0
.end method

.method public static final convertRGBAToABGRPackedInt(FFFF)I
    .locals 3
    .parameter "pRed"
    .parameter "pGreen"
    .parameter "pBlue"
    .parameter "pAlpha"

    .prologue
    const/high16 v2, 0x437f

    .line 94
    mul-float v0, v2, p3

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    mul-float v1, v2, p2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    mul-float v1, v2, p1

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    mul-float v1, v2, p0

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x0

    or-int/2addr v0, v1

    return v0
.end method

.method public static final convertRGBAToARGBPackedFloat(FFFF)F
    .locals 1
    .parameter "pRed"
    .parameter "pGreen"
    .parameter "pBlue"
    .parameter "pAlpha"

    .prologue
    .line 90
    invoke-static {p0, p1, p2, p3}, Lorg/andengine/util/color/ColorUtils;->convertRGBAToARGBPackedInt(FFFF)I

    move-result v0

    invoke-static {v0}, Lorg/andengine/util/color/ColorUtils;->convertPackedIntToPackedFloat(I)F

    move-result v0

    return v0
.end method

.method public static final convertRGBAToARGBPackedInt(FFFF)I
    .locals 3
    .parameter "pRed"
    .parameter "pGreen"
    .parameter "pBlue"
    .parameter "pAlpha"

    .prologue
    const/high16 v2, 0x437f

    .line 86
    mul-float v0, v2, p3

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    mul-float v1, v2, p0

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    mul-float v1, v2, p1

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    mul-float v1, v2, p2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x0

    or-int/2addr v0, v1

    return v0
.end method

.method public static extractAlphaFromABGRPackedInt(I)F
    .locals 2
    .parameter "pABGRPackedInt"

    .prologue
    .line 120
    shr-int/lit8 v0, p0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    const/high16 v1, 0x437f

    div-float/2addr v0, v1

    return v0
.end method

.method public static extractAlphaFromARGBPackedInt(I)F
    .locals 2
    .parameter "pARGBPackedInt"

    .prologue
    .line 137
    shr-int/lit8 v0, p0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    const/high16 v1, 0x437f

    div-float/2addr v0, v1

    return v0
.end method

.method public static extractBlueFromABGRPackedInt(I)F
    .locals 2
    .parameter "pABGRPackedInt"

    .prologue
    .line 116
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    const/high16 v1, 0x437f

    div-float/2addr v0, v1

    return v0
.end method

.method public static extractBlueFromARGBPackedInt(I)F
    .locals 2
    .parameter "pARGBPackedInt"

    .prologue
    .line 125
    shr-int/lit8 v0, p0, 0x0

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    const/high16 v1, 0x437f

    div-float/2addr v0, v1

    return v0
.end method

.method public static extractGreenFromABGRPackedInt(I)F
    .locals 2
    .parameter "pABGRPackedInt"

    .prologue
    .line 112
    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    const/high16 v1, 0x437f

    div-float/2addr v0, v1

    return v0
.end method

.method public static extractGreenFromARGBPackedInt(I)F
    .locals 2
    .parameter "pARGBPackedInt"

    .prologue
    .line 129
    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    const/high16 v1, 0x437f

    div-float/2addr v0, v1

    return v0
.end method

.method public static extractRedFromABGRPackedInt(I)F
    .locals 2
    .parameter "pABGRPackedInt"

    .prologue
    .line 108
    shr-int/lit8 v0, p0, 0x0

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    const/high16 v1, 0x437f

    div-float/2addr v0, v1

    return v0
.end method

.method public static extractRedFromARGBPackedInt(I)F
    .locals 2
    .parameter "pARGBPackedInt"

    .prologue
    .line 133
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    const/high16 v1, 0x437f

    div-float/2addr v0, v1

    return v0
.end method
