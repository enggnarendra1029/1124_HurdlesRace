.class public Lorg/andengine/util/color/Color;
.super Ljava/lang/Object;
.source "Color.java"


# static fields
.field public static final ABGR_PACKED_ALPHA_CLEAR:I = 0xffffff

.field public static final ABGR_PACKED_ALPHA_SHIFT:I = 0x18

.field public static final ABGR_PACKED_BLUE_CLEAR:I = -0xff0001

.field public static final ABGR_PACKED_BLUE_SHIFT:I = 0x10

.field public static final ABGR_PACKED_GREEN_CLEAR:I = -0xff01

.field public static final ABGR_PACKED_GREEN_SHIFT:I = 0x8

.field public static final ABGR_PACKED_RED_CLEAR:I = -0x100

.field public static final ABGR_PACKED_RED_SHIFT:I = 0x0

.field public static final ARGB_PACKED_ALPHA_CLEAR:I = 0xffffff

.field public static final ARGB_PACKED_ALPHA_SHIFT:I = 0x18

.field public static final ARGB_PACKED_BLUE_CLEAR:I = -0x100

.field public static final ARGB_PACKED_BLUE_SHIFT:I = 0x0

.field public static final ARGB_PACKED_GREEN_CLEAR:I = -0xff01

.field public static final ARGB_PACKED_GREEN_SHIFT:I = 0x8

.field public static final ARGB_PACKED_RED_CLEAR:I = -0xff0001

.field public static final ARGB_PACKED_RED_SHIFT:I = 0x10

.field public static final BLACK:Lorg/andengine/util/color/Color;

.field public static final BLACK_ABGR_PACKED_FLOAT:F

.field public static final BLACK_ABGR_PACKED_INT:I

.field public static final BLACK_ARGB_PACKED_INT:I

.field public static final BLUE:Lorg/andengine/util/color/Color;

.field public static final BLUE_ABGR_PACKED_FLOAT:F

.field public static final BLUE_ABGR_PACKED_INT:I

.field public static final BLUE_ARGB_PACKED_INT:I

.field public static final CYAN:Lorg/andengine/util/color/Color;

.field public static final CYAN_ABGR_PACKED_FLOAT:F

.field public static final CYAN_ABGR_PACKED_INT:I

.field public static final CYAN_ARGB_PACKED_INT:I

.field public static final GREEN:Lorg/andengine/util/color/Color;

.field public static final GREEN_ABGR_PACKED_FLOAT:F

.field public static final GREEN_ABGR_PACKED_INT:I

.field public static final GREEN_ARGB_PACKED_INT:I

.field public static final PINK:Lorg/andengine/util/color/Color;

.field public static final PINK_ABGR_PACKED_FLOAT:F

.field public static final PINK_ABGR_PACKED_INT:I

.field public static final PINK_ARGB_PACKED_INT:I

.field public static final RED:Lorg/andengine/util/color/Color;

.field public static final RED_ABGR_PACKED_FLOAT:F

.field public static final RED_ABGR_PACKED_INT:I

.field public static final RED_ARGB_PACKED_INT:I

.field public static final TRANSPARENT:Lorg/andengine/util/color/Color;

.field public static final TRANSPARENT_ABGR_PACKED_FLOAT:F

.field public static final TRANSPARENT_ABGR_PACKED_INT:I

.field public static final TRANSPARENT_ARGB_PACKED_INT:I

.field public static final WHITE:Lorg/andengine/util/color/Color;

.field public static final WHITE_ABGR_PACKED_FLOAT:F

.field public static final WHITE_ABGR_PACKED_INT:I

.field public static final WHITE_ARGB_PACKED_INT:I

.field public static final YELLOW:Lorg/andengine/util/color/Color;

.field public static final YELLOW_ABGR_PACKED_FLOAT:F

.field public static final YELLOW_ABGR_PACKED_INT:I

.field public static final YELLOW_ARGB_PACKED_INT:I


# instance fields
.field private mABGRPackedFloat:F

.field private mABGRPackedInt:I

.field private mAlpha:F

.field private mBlue:F

.field private mGreen:F

.field private mRed:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f80

    .line 34
    new-instance v0, Lorg/andengine/util/color/Color;

    invoke-direct {v0, v1, v1, v1, v1}, Lorg/andengine/util/color/Color;-><init>(FFFF)V

    sput-object v0, Lorg/andengine/util/color/Color;->WHITE:Lorg/andengine/util/color/Color;

    .line 35
    new-instance v0, Lorg/andengine/util/color/Color;

    invoke-direct {v0, v2, v2, v2, v1}, Lorg/andengine/util/color/Color;-><init>(FFFF)V

    sput-object v0, Lorg/andengine/util/color/Color;->BLACK:Lorg/andengine/util/color/Color;

    .line 36
    new-instance v0, Lorg/andengine/util/color/Color;

    invoke-direct {v0, v1, v2, v2, v1}, Lorg/andengine/util/color/Color;-><init>(FFFF)V

    sput-object v0, Lorg/andengine/util/color/Color;->RED:Lorg/andengine/util/color/Color;

    .line 37
    new-instance v0, Lorg/andengine/util/color/Color;

    invoke-direct {v0, v1, v1, v2, v1}, Lorg/andengine/util/color/Color;-><init>(FFFF)V

    sput-object v0, Lorg/andengine/util/color/Color;->YELLOW:Lorg/andengine/util/color/Color;

    .line 38
    new-instance v0, Lorg/andengine/util/color/Color;

    invoke-direct {v0, v2, v1, v2, v1}, Lorg/andengine/util/color/Color;-><init>(FFFF)V

    sput-object v0, Lorg/andengine/util/color/Color;->GREEN:Lorg/andengine/util/color/Color;

    .line 39
    new-instance v0, Lorg/andengine/util/color/Color;

    invoke-direct {v0, v2, v1, v1, v1}, Lorg/andengine/util/color/Color;-><init>(FFFF)V

    sput-object v0, Lorg/andengine/util/color/Color;->CYAN:Lorg/andengine/util/color/Color;

    .line 40
    new-instance v0, Lorg/andengine/util/color/Color;

    invoke-direct {v0, v2, v2, v1, v1}, Lorg/andengine/util/color/Color;-><init>(FFFF)V

    sput-object v0, Lorg/andengine/util/color/Color;->BLUE:Lorg/andengine/util/color/Color;

    .line 41
    new-instance v0, Lorg/andengine/util/color/Color;

    invoke-direct {v0, v1, v2, v1, v1}, Lorg/andengine/util/color/Color;-><init>(FFFF)V

    sput-object v0, Lorg/andengine/util/color/Color;->PINK:Lorg/andengine/util/color/Color;

    .line 42
    new-instance v0, Lorg/andengine/util/color/Color;

    invoke-direct {v0, v2, v2, v2, v2}, Lorg/andengine/util/color/Color;-><init>(FFFF)V

    sput-object v0, Lorg/andengine/util/color/Color;->TRANSPARENT:Lorg/andengine/util/color/Color;

    .line 44
    sget-object v0, Lorg/andengine/util/color/Color;->WHITE:Lorg/andengine/util/color/Color;

    invoke-virtual {v0}, Lorg/andengine/util/color/Color;->getABGRPackedInt()I

    move-result v0

    sput v0, Lorg/andengine/util/color/Color;->WHITE_ABGR_PACKED_INT:I

    .line 45
    sget-object v0, Lorg/andengine/util/color/Color;->BLACK:Lorg/andengine/util/color/Color;

    invoke-virtual {v0}, Lorg/andengine/util/color/Color;->getABGRPackedInt()I

    move-result v0

    sput v0, Lorg/andengine/util/color/Color;->BLACK_ABGR_PACKED_INT:I

    .line 46
    sget-object v0, Lorg/andengine/util/color/Color;->RED:Lorg/andengine/util/color/Color;

    invoke-virtual {v0}, Lorg/andengine/util/color/Color;->getABGRPackedInt()I

    move-result v0

    sput v0, Lorg/andengine/util/color/Color;->RED_ABGR_PACKED_INT:I

    .line 47
    sget-object v0, Lorg/andengine/util/color/Color;->YELLOW:Lorg/andengine/util/color/Color;

    invoke-virtual {v0}, Lorg/andengine/util/color/Color;->getABGRPackedInt()I

    move-result v0

    sput v0, Lorg/andengine/util/color/Color;->YELLOW_ABGR_PACKED_INT:I

    .line 48
    sget-object v0, Lorg/andengine/util/color/Color;->GREEN:Lorg/andengine/util/color/Color;

    invoke-virtual {v0}, Lorg/andengine/util/color/Color;->getABGRPackedInt()I

    move-result v0

    sput v0, Lorg/andengine/util/color/Color;->GREEN_ABGR_PACKED_INT:I

    .line 49
    sget-object v0, Lorg/andengine/util/color/Color;->CYAN:Lorg/andengine/util/color/Color;

    invoke-virtual {v0}, Lorg/andengine/util/color/Color;->getABGRPackedInt()I

    move-result v0

    sput v0, Lorg/andengine/util/color/Color;->CYAN_ABGR_PACKED_INT:I

    .line 50
    sget-object v0, Lorg/andengine/util/color/Color;->BLUE:Lorg/andengine/util/color/Color;

    invoke-virtual {v0}, Lorg/andengine/util/color/Color;->getABGRPackedInt()I

    move-result v0

    sput v0, Lorg/andengine/util/color/Color;->BLUE_ABGR_PACKED_INT:I

    .line 51
    sget-object v0, Lorg/andengine/util/color/Color;->PINK:Lorg/andengine/util/color/Color;

    invoke-virtual {v0}, Lorg/andengine/util/color/Color;->getABGRPackedInt()I

    move-result v0

    sput v0, Lorg/andengine/util/color/Color;->PINK_ABGR_PACKED_INT:I

    .line 52
    sget-object v0, Lorg/andengine/util/color/Color;->TRANSPARENT:Lorg/andengine/util/color/Color;

    invoke-virtual {v0}, Lorg/andengine/util/color/Color;->getABGRPackedInt()I

    move-result v0

    sput v0, Lorg/andengine/util/color/Color;->TRANSPARENT_ABGR_PACKED_INT:I

    .line 54
    sget-object v0, Lorg/andengine/util/color/Color;->WHITE:Lorg/andengine/util/color/Color;

    invoke-virtual {v0}, Lorg/andengine/util/color/Color;->getABGRPackedFloat()F

    move-result v0

    sput v0, Lorg/andengine/util/color/Color;->WHITE_ABGR_PACKED_FLOAT:F

    .line 55
    sget-object v0, Lorg/andengine/util/color/Color;->BLACK:Lorg/andengine/util/color/Color;

    invoke-virtual {v0}, Lorg/andengine/util/color/Color;->getABGRPackedFloat()F

    move-result v0

    sput v0, Lorg/andengine/util/color/Color;->BLACK_ABGR_PACKED_FLOAT:F

    .line 56
    sget-object v0, Lorg/andengine/util/color/Color;->RED:Lorg/andengine/util/color/Color;

    invoke-virtual {v0}, Lorg/andengine/util/color/Color;->getABGRPackedFloat()F

    move-result v0

    sput v0, Lorg/andengine/util/color/Color;->RED_ABGR_PACKED_FLOAT:F

    .line 57
    sget-object v0, Lorg/andengine/util/color/Color;->YELLOW:Lorg/andengine/util/color/Color;

    invoke-virtual {v0}, Lorg/andengine/util/color/Color;->getABGRPackedFloat()F

    move-result v0

    sput v0, Lorg/andengine/util/color/Color;->YELLOW_ABGR_PACKED_FLOAT:F

    .line 58
    sget-object v0, Lorg/andengine/util/color/Color;->GREEN:Lorg/andengine/util/color/Color;

    invoke-virtual {v0}, Lorg/andengine/util/color/Color;->getABGRPackedFloat()F

    move-result v0

    sput v0, Lorg/andengine/util/color/Color;->GREEN_ABGR_PACKED_FLOAT:F

    .line 59
    sget-object v0, Lorg/andengine/util/color/Color;->CYAN:Lorg/andengine/util/color/Color;

    invoke-virtual {v0}, Lorg/andengine/util/color/Color;->getABGRPackedFloat()F

    move-result v0

    sput v0, Lorg/andengine/util/color/Color;->CYAN_ABGR_PACKED_FLOAT:F

    .line 60
    sget-object v0, Lorg/andengine/util/color/Color;->BLUE:Lorg/andengine/util/color/Color;

    invoke-virtual {v0}, Lorg/andengine/util/color/Color;->getABGRPackedFloat()F

    move-result v0

    sput v0, Lorg/andengine/util/color/Color;->BLUE_ABGR_PACKED_FLOAT:F

    .line 61
    sget-object v0, Lorg/andengine/util/color/Color;->PINK:Lorg/andengine/util/color/Color;

    invoke-virtual {v0}, Lorg/andengine/util/color/Color;->getABGRPackedFloat()F

    move-result v0

    sput v0, Lorg/andengine/util/color/Color;->PINK_ABGR_PACKED_FLOAT:F

    .line 62
    sget-object v0, Lorg/andengine/util/color/Color;->TRANSPARENT:Lorg/andengine/util/color/Color;

    invoke-virtual {v0}, Lorg/andengine/util/color/Color;->getABGRPackedFloat()F

    move-result v0

    sput v0, Lorg/andengine/util/color/Color;->TRANSPARENT_ABGR_PACKED_FLOAT:F

    .line 64
    sget-object v0, Lorg/andengine/util/color/Color;->WHITE:Lorg/andengine/util/color/Color;

    invoke-virtual {v0}, Lorg/andengine/util/color/Color;->getARGBPackedInt()I

    move-result v0

    sput v0, Lorg/andengine/util/color/Color;->WHITE_ARGB_PACKED_INT:I

    .line 65
    sget-object v0, Lorg/andengine/util/color/Color;->BLACK:Lorg/andengine/util/color/Color;

    invoke-virtual {v0}, Lorg/andengine/util/color/Color;->getARGBPackedInt()I

    move-result v0

    sput v0, Lorg/andengine/util/color/Color;->BLACK_ARGB_PACKED_INT:I

    .line 66
    sget-object v0, Lorg/andengine/util/color/Color;->RED:Lorg/andengine/util/color/Color;

    invoke-virtual {v0}, Lorg/andengine/util/color/Color;->getARGBPackedInt()I

    move-result v0

    sput v0, Lorg/andengine/util/color/Color;->RED_ARGB_PACKED_INT:I

    .line 67
    sget-object v0, Lorg/andengine/util/color/Color;->YELLOW:Lorg/andengine/util/color/Color;

    invoke-virtual {v0}, Lorg/andengine/util/color/Color;->getARGBPackedInt()I

    move-result v0

    sput v0, Lorg/andengine/util/color/Color;->YELLOW_ARGB_PACKED_INT:I

    .line 68
    sget-object v0, Lorg/andengine/util/color/Color;->GREEN:Lorg/andengine/util/color/Color;

    invoke-virtual {v0}, Lorg/andengine/util/color/Color;->getARGBPackedInt()I

    move-result v0

    sput v0, Lorg/andengine/util/color/Color;->GREEN_ARGB_PACKED_INT:I

    .line 69
    sget-object v0, Lorg/andengine/util/color/Color;->CYAN:Lorg/andengine/util/color/Color;

    invoke-virtual {v0}, Lorg/andengine/util/color/Color;->getARGBPackedInt()I

    move-result v0

    sput v0, Lorg/andengine/util/color/Color;->CYAN_ARGB_PACKED_INT:I

    .line 70
    sget-object v0, Lorg/andengine/util/color/Color;->BLUE:Lorg/andengine/util/color/Color;

    invoke-virtual {v0}, Lorg/andengine/util/color/Color;->getARGBPackedInt()I

    move-result v0

    sput v0, Lorg/andengine/util/color/Color;->BLUE_ARGB_PACKED_INT:I

    .line 71
    sget-object v0, Lorg/andengine/util/color/Color;->PINK:Lorg/andengine/util/color/Color;

    invoke-virtual {v0}, Lorg/andengine/util/color/Color;->getARGBPackedInt()I

    move-result v0

    sput v0, Lorg/andengine/util/color/Color;->PINK_ARGB_PACKED_INT:I

    .line 72
    sget-object v0, Lorg/andengine/util/color/Color;->TRANSPARENT:Lorg/andengine/util/color/Color;

    invoke-virtual {v0}, Lorg/andengine/util/color/Color;->getARGBPackedInt()I

    move-result v0

    sput v0, Lorg/andengine/util/color/Color;->TRANSPARENT_ARGB_PACKED_INT:I

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 1
    .parameter "pRed"
    .parameter "pGreen"
    .parameter "pBlue"

    .prologue
    .line 95
    const/high16 v0, 0x3f80

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/andengine/util/color/Color;-><init>(FFFF)V

    .line 96
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .parameter "pRed"
    .parameter "pGreen"
    .parameter "pBlue"
    .parameter "pAlpha"

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/andengine/util/color/Color;->set(FFFF)V

    .line 100
    return-void
.end method

.method public constructor <init>(Lorg/andengine/util/color/Color;)V
    .locals 0
    .parameter "pColor"

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-virtual {p0, p1}, Lorg/andengine/util/color/Color;->set(Lorg/andengine/util/color/Color;)V

    .line 92
    return-void
.end method

.method private final packABGR()V
    .locals 4

    .prologue
    .line 337
    iget v0, p0, Lorg/andengine/util/color/Color;->mRed:F

    iget v1, p0, Lorg/andengine/util/color/Color;->mGreen:F

    iget v2, p0, Lorg/andengine/util/color/Color;->mBlue:F

    iget v3, p0, Lorg/andengine/util/color/Color;->mAlpha:F

    invoke-static {v0, v1, v2, v3}, Lorg/andengine/util/color/ColorUtils;->convertRGBAToABGRPackedInt(FFFF)I

    move-result v0

    iput v0, p0, Lorg/andengine/util/color/Color;->mABGRPackedInt:I

    .line 338
    iget v0, p0, Lorg/andengine/util/color/Color;->mABGRPackedInt:I

    invoke-static {v0}, Lorg/andengine/util/color/ColorUtils;->convertPackedIntToPackedFloat(I)F

    move-result v0

    iput v0, p0, Lorg/andengine/util/color/Color;->mABGRPackedFloat:F

    .line 339
    return-void
.end method

.method private final packABGRAlpha()V
    .locals 3

    .prologue
    .line 332
    iget v0, p0, Lorg/andengine/util/color/Color;->mABGRPackedInt:I

    const v1, 0xffffff

    and-int/2addr v0, v1

    const/high16 v1, 0x437f

    iget v2, p0, Lorg/andengine/util/color/Color;->mAlpha:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    iput v0, p0, Lorg/andengine/util/color/Color;->mABGRPackedInt:I

    .line 333
    iget v0, p0, Lorg/andengine/util/color/Color;->mABGRPackedInt:I

    invoke-static {v0}, Lorg/andengine/util/color/ColorUtils;->convertPackedIntToPackedFloat(I)F

    move-result v0

    iput v0, p0, Lorg/andengine/util/color/Color;->mABGRPackedFloat:F

    .line 334
    return-void
.end method

.method private final packABGRBlue()V
    .locals 4

    .prologue
    const v3, -0xff0001

    .line 327
    iget v0, p0, Lorg/andengine/util/color/Color;->mABGRPackedInt:I

    and-int/2addr v0, v3

    const/high16 v1, 0x437f

    iget v2, p0, Lorg/andengine/util/color/Color;->mBlue:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    shl-int/2addr v1, v3

    or-int/2addr v0, v1

    iput v0, p0, Lorg/andengine/util/color/Color;->mABGRPackedInt:I

    .line 328
    iget v0, p0, Lorg/andengine/util/color/Color;->mABGRPackedInt:I

    invoke-static {v0}, Lorg/andengine/util/color/ColorUtils;->convertPackedIntToPackedFloat(I)F

    move-result v0

    iput v0, p0, Lorg/andengine/util/color/Color;->mABGRPackedFloat:F

    .line 329
    return-void
.end method

.method private final packABGRGreen()V
    .locals 4

    .prologue
    const v3, -0xff01

    .line 322
    iget v0, p0, Lorg/andengine/util/color/Color;->mABGRPackedInt:I

    and-int/2addr v0, v3

    const/high16 v1, 0x437f

    iget v2, p0, Lorg/andengine/util/color/Color;->mGreen:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    shl-int/2addr v1, v3

    or-int/2addr v0, v1

    iput v0, p0, Lorg/andengine/util/color/Color;->mABGRPackedInt:I

    .line 323
    iget v0, p0, Lorg/andengine/util/color/Color;->mABGRPackedInt:I

    invoke-static {v0}, Lorg/andengine/util/color/ColorUtils;->convertPackedIntToPackedFloat(I)F

    move-result v0

    iput v0, p0, Lorg/andengine/util/color/Color;->mABGRPackedFloat:F

    .line 324
    return-void
.end method

.method private final packABGRRed()V
    .locals 3

    .prologue
    .line 317
    iget v0, p0, Lorg/andengine/util/color/Color;->mABGRPackedInt:I

    and-int/lit16 v0, v0, -0x100

    const/high16 v1, 0x437f

    iget v2, p0, Lorg/andengine/util/color/Color;->mRed:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/16 v2, -0x100

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    iput v0, p0, Lorg/andengine/util/color/Color;->mABGRPackedInt:I

    .line 318
    iget v0, p0, Lorg/andengine/util/color/Color;->mABGRPackedInt:I

    invoke-static {v0}, Lorg/andengine/util/color/ColorUtils;->convertPackedIntToPackedFloat(I)F

    move-result v0

    iput v0, p0, Lorg/andengine/util/color/Color;->mABGRPackedFloat:F

    .line 319
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "pObject"

    .prologue
    const/4 v0, 0x0

    .line 282
    if-ne p0, p1, :cond_1

    .line 283
    const/4 v0, 0x1

    .line 290
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 284
    .restart local p1
    :cond_1
    if-eqz p1, :cond_0

    .line 286
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 290
    check-cast p1, Lorg/andengine/util/color/Color;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/andengine/util/color/Color;->equals(Lorg/andengine/util/color/Color;)Z

    move-result v0

    goto :goto_0
.end method

.method public equals(Lorg/andengine/util/color/Color;)Z
    .locals 2
    .parameter "pColor"

    .prologue
    .line 313
    iget v0, p0, Lorg/andengine/util/color/Color;->mABGRPackedInt:I

    iget v1, p1, Lorg/andengine/util/color/Color;->mABGRPackedInt:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getABGRPackedFloat()F
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Lorg/andengine/util/color/Color;->mABGRPackedFloat:F

    return v0
.end method

.method public final getABGRPackedInt()I
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Lorg/andengine/util/color/Color;->mABGRPackedInt:I

    return v0
.end method

.method public final getARGBPackedInt()I
    .locals 4

    .prologue
    .line 264
    iget v0, p0, Lorg/andengine/util/color/Color;->mRed:F

    iget v1, p0, Lorg/andengine/util/color/Color;->mGreen:F

    iget v2, p0, Lorg/andengine/util/color/Color;->mBlue:F

    iget v3, p0, Lorg/andengine/util/color/Color;->mAlpha:F

    invoke-static {v0, v1, v2, v3}, Lorg/andengine/util/color/ColorUtils;->convertRGBAToARGBPackedInt(FFFF)I

    move-result v0

    return v0
.end method

.method public final getAlpha()F
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lorg/andengine/util/color/Color;->mAlpha:F

    return v0
.end method

.method public final getBlue()F
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lorg/andengine/util/color/Color;->mBlue:F

    return v0
.end method

.method public final getGreen()F
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lorg/andengine/util/color/Color;->mGreen:F

    return v0
.end method

.method public final getRed()F
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lorg/andengine/util/color/Color;->mRed:F

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Lorg/andengine/util/color/Color;->mABGRPackedInt:I

    return v0
.end method

.method public final mix(Lorg/andengine/util/color/Color;FLorg/andengine/util/color/Color;F)V
    .locals 6
    .parameter "pColorA"
    .parameter "pPercentageA"
    .parameter "pColorB"
    .parameter "pPercentageB"

    .prologue
    .line 342
    iget v4, p1, Lorg/andengine/util/color/Color;->mRed:F

    mul-float/2addr v4, p2

    iget v5, p3, Lorg/andengine/util/color/Color;->mRed:F

    mul-float/2addr v5, p4

    add-float v3, v4, v5

    .line 343
    .local v3, red:F
    iget v4, p1, Lorg/andengine/util/color/Color;->mGreen:F

    mul-float/2addr v4, p2

    iget v5, p3, Lorg/andengine/util/color/Color;->mGreen:F

    mul-float/2addr v5, p4

    add-float v2, v4, v5

    .line 344
    .local v2, green:F
    iget v4, p1, Lorg/andengine/util/color/Color;->mBlue:F

    mul-float/2addr v4, p2

    iget v5, p3, Lorg/andengine/util/color/Color;->mBlue:F

    mul-float/2addr v5, p4

    add-float v1, v4, v5

    .line 345
    .local v1, blue:F
    iget v4, p1, Lorg/andengine/util/color/Color;->mAlpha:F

    mul-float/2addr v4, p2

    iget v5, p3, Lorg/andengine/util/color/Color;->mAlpha:F

    mul-float/2addr v5, p4

    add-float v0, v4, v5

    .line 347
    .local v0, alpha:F
    invoke-virtual {p0, v3, v2, v1, v0}, Lorg/andengine/util/color/Color;->set(FFFF)V

    .line 348
    return-void
.end method

.method public final reset()V
    .locals 1

    .prologue
    .line 268
    sget-object v0, Lorg/andengine/util/color/Color;->WHITE:Lorg/andengine/util/color/Color;

    invoke-virtual {p0, v0}, Lorg/andengine/util/color/Color;->set(Lorg/andengine/util/color/Color;)V

    .line 269
    return-void
.end method

.method public final set(FFF)V
    .locals 0
    .parameter "pRed"
    .parameter "pGreen"
    .parameter "pBlue"

    .prologue
    .line 187
    iput p1, p0, Lorg/andengine/util/color/Color;->mRed:F

    .line 188
    iput p2, p0, Lorg/andengine/util/color/Color;->mGreen:F

    .line 189
    iput p3, p0, Lorg/andengine/util/color/Color;->mBlue:F

    .line 191
    invoke-direct {p0}, Lorg/andengine/util/color/Color;->packABGR()V

    .line 192
    return-void
.end method

.method public final set(FFFF)V
    .locals 0
    .parameter "pRed"
    .parameter "pGreen"
    .parameter "pBlue"
    .parameter "pAlpha"

    .prologue
    .line 207
    iput p1, p0, Lorg/andengine/util/color/Color;->mRed:F

    .line 208
    iput p2, p0, Lorg/andengine/util/color/Color;->mGreen:F

    .line 209
    iput p3, p0, Lorg/andengine/util/color/Color;->mBlue:F

    .line 210
    iput p4, p0, Lorg/andengine/util/color/Color;->mAlpha:F

    .line 212
    invoke-direct {p0}, Lorg/andengine/util/color/Color;->packABGR()V

    .line 213
    return-void
.end method

.method public final set(Lorg/andengine/util/color/Color;)V
    .locals 1
    .parameter "pColor"

    .prologue
    .line 229
    iget v0, p1, Lorg/andengine/util/color/Color;->mRed:F

    iput v0, p0, Lorg/andengine/util/color/Color;->mRed:F

    .line 230
    iget v0, p1, Lorg/andengine/util/color/Color;->mGreen:F

    iput v0, p0, Lorg/andengine/util/color/Color;->mGreen:F

    .line 231
    iget v0, p1, Lorg/andengine/util/color/Color;->mBlue:F

    iput v0, p0, Lorg/andengine/util/color/Color;->mBlue:F

    .line 232
    iget v0, p1, Lorg/andengine/util/color/Color;->mAlpha:F

    iput v0, p0, Lorg/andengine/util/color/Color;->mAlpha:F

    .line 234
    iget v0, p1, Lorg/andengine/util/color/Color;->mABGRPackedInt:I

    iput v0, p0, Lorg/andengine/util/color/Color;->mABGRPackedInt:I

    .line 235
    iget v0, p1, Lorg/andengine/util/color/Color;->mABGRPackedFloat:F

    iput v0, p0, Lorg/andengine/util/color/Color;->mABGRPackedFloat:F

    .line 236
    return-void
.end method

.method public final setAlpha(F)V
    .locals 0
    .parameter "pAlpha"

    .prologue
    .line 171
    iput p1, p0, Lorg/andengine/util/color/Color;->mAlpha:F

    .line 173
    invoke-direct {p0}, Lorg/andengine/util/color/Color;->packABGRAlpha()V

    .line 174
    return-void
.end method

.method public final setAlphaChecking(F)Z
    .locals 1
    .parameter "pAlpha"

    .prologue
    .line 177
    iget v0, p0, Lorg/andengine/util/color/Color;->mAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 178
    iput p1, p0, Lorg/andengine/util/color/Color;->mAlpha:F

    .line 180
    invoke-direct {p0}, Lorg/andengine/util/color/Color;->packABGRAlpha()V

    .line 181
    const/4 v0, 0x1

    .line 183
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setBlue(F)V
    .locals 0
    .parameter "pBlue"

    .prologue
    .line 155
    iput p1, p0, Lorg/andengine/util/color/Color;->mBlue:F

    .line 157
    invoke-direct {p0}, Lorg/andengine/util/color/Color;->packABGRBlue()V

    .line 158
    return-void
.end method

.method public final setBlueChecking(F)Z
    .locals 1
    .parameter "pBlue"

    .prologue
    .line 161
    iget v0, p0, Lorg/andengine/util/color/Color;->mBlue:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 162
    iput p1, p0, Lorg/andengine/util/color/Color;->mBlue:F

    .line 164
    invoke-direct {p0}, Lorg/andengine/util/color/Color;->packABGRBlue()V

    .line 165
    const/4 v0, 0x1

    .line 167
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setChecking(FFF)Z
    .locals 1
    .parameter "pRed"
    .parameter "pGreen"
    .parameter "pBlue"

    .prologue
    .line 195
    iget v0, p0, Lorg/andengine/util/color/Color;->mRed:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/andengine/util/color/Color;->mGreen:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    iget v0, p0, Lorg/andengine/util/color/Color;->mBlue:F

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_1

    .line 196
    :cond_0
    iput p1, p0, Lorg/andengine/util/color/Color;->mRed:F

    .line 197
    iput p2, p0, Lorg/andengine/util/color/Color;->mGreen:F

    .line 198
    iput p3, p0, Lorg/andengine/util/color/Color;->mBlue:F

    .line 200
    invoke-direct {p0}, Lorg/andengine/util/color/Color;->packABGR()V

    .line 201
    const/4 v0, 0x1

    .line 203
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setChecking(FFFF)Z
    .locals 1
    .parameter "pRed"
    .parameter "pGreen"
    .parameter "pBlue"
    .parameter "pAlpha"

    .prologue
    .line 216
    iget v0, p0, Lorg/andengine/util/color/Color;->mAlpha:F

    cmpl-float v0, v0, p4

    if-nez v0, :cond_0

    iget v0, p0, Lorg/andengine/util/color/Color;->mRed:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/andengine/util/color/Color;->mGreen:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    iget v0, p0, Lorg/andengine/util/color/Color;->mBlue:F

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_1

    .line 217
    :cond_0
    iput p1, p0, Lorg/andengine/util/color/Color;->mRed:F

    .line 218
    iput p2, p0, Lorg/andengine/util/color/Color;->mGreen:F

    .line 219
    iput p3, p0, Lorg/andengine/util/color/Color;->mBlue:F

    .line 220
    iput p4, p0, Lorg/andengine/util/color/Color;->mAlpha:F

    .line 222
    invoke-direct {p0}, Lorg/andengine/util/color/Color;->packABGR()V

    .line 223
    const/4 v0, 0x1

    .line 225
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setChecking(Lorg/andengine/util/color/Color;)Z
    .locals 2
    .parameter "pColor"

    .prologue
    .line 239
    iget v0, p0, Lorg/andengine/util/color/Color;->mABGRPackedInt:I

    iget v1, p1, Lorg/andengine/util/color/Color;->mABGRPackedInt:I

    if-eq v0, v1, :cond_0

    .line 240
    iget v0, p1, Lorg/andengine/util/color/Color;->mRed:F

    iput v0, p0, Lorg/andengine/util/color/Color;->mRed:F

    .line 241
    iget v0, p1, Lorg/andengine/util/color/Color;->mGreen:F

    iput v0, p0, Lorg/andengine/util/color/Color;->mGreen:F

    .line 242
    iget v0, p1, Lorg/andengine/util/color/Color;->mBlue:F

    iput v0, p0, Lorg/andengine/util/color/Color;->mBlue:F

    .line 243
    iget v0, p1, Lorg/andengine/util/color/Color;->mAlpha:F

    iput v0, p0, Lorg/andengine/util/color/Color;->mAlpha:F

    .line 245
    iget v0, p1, Lorg/andengine/util/color/Color;->mABGRPackedInt:I

    iput v0, p0, Lorg/andengine/util/color/Color;->mABGRPackedInt:I

    .line 246
    iget v0, p1, Lorg/andengine/util/color/Color;->mABGRPackedFloat:F

    iput v0, p0, Lorg/andengine/util/color/Color;->mABGRPackedFloat:F

    .line 247
    const/4 v0, 0x1

    .line 249
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setGreen(F)V
    .locals 0
    .parameter "pGreen"

    .prologue
    .line 139
    iput p1, p0, Lorg/andengine/util/color/Color;->mGreen:F

    .line 141
    invoke-direct {p0}, Lorg/andengine/util/color/Color;->packABGRGreen()V

    .line 142
    return-void
.end method

.method public final setGreenChecking(F)Z
    .locals 1
    .parameter "pGreen"

    .prologue
    .line 145
    iget v0, p0, Lorg/andengine/util/color/Color;->mGreen:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 146
    iput p1, p0, Lorg/andengine/util/color/Color;->mGreen:F

    .line 148
    invoke-direct {p0}, Lorg/andengine/util/color/Color;->packABGRGreen()V

    .line 149
    const/4 v0, 0x1

    .line 151
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setRed(F)V
    .locals 0
    .parameter "pRed"

    .prologue
    .line 123
    iput p1, p0, Lorg/andengine/util/color/Color;->mRed:F

    .line 125
    invoke-direct {p0}, Lorg/andengine/util/color/Color;->packABGRRed()V

    .line 126
    return-void
.end method

.method public final setRedChecking(F)Z
    .locals 1
    .parameter "pRed"

    .prologue
    .line 129
    iget v0, p0, Lorg/andengine/util/color/Color;->mRed:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 130
    iput p1, p0, Lorg/andengine/util/color/Color;->mRed:F

    .line 132
    invoke-direct {p0}, Lorg/andengine/util/color/Color;->packABGRRed()V

    .line 133
    const/4 v0, 0x1

    .line 135
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 296
    const-string v1, "[Red: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 297
    iget v1, p0, Lorg/andengine/util/color/Color;->mRed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 298
    const-string v1, ", Green: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 299
    iget v1, p0, Lorg/andengine/util/color/Color;->mGreen:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 300
    const-string v1, ", Blue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 301
    iget v1, p0, Lorg/andengine/util/color/Color;->mBlue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 302
    const-string v1, ", Alpha: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 303
    iget v1, p0, Lorg/andengine/util/color/Color;->mAlpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 304
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 305
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 295
    return-object v0
.end method
