.class public Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator;
.super Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseShapeBitmapTextureAtlasSourceDecorator;
.source "RadialGradientFillBitmapTextureAtlasSourceDecorator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$org$andengine$opengl$texture$atlas$bitmap$source$decorator$RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection:[I

.field private static final POSITIONS_DEFAULT:[F


# instance fields
.field protected final mColors:[I

.field protected final mPositions:[F

.field protected final mRadialGradientDirection:Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;


# direct methods
.method static synthetic $SWITCH_TABLE$org$andengine$opengl$texture$atlas$bitmap$source$decorator$RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection()[I
    .locals 3

    .prologue
    .line 18
    sget-object v0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator;->$SWITCH_TABLE$org$andengine$opengl$texture$atlas$bitmap$source$decorator$RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;->values()[Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;->INSIDE_OUT:Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;

    invoke-virtual {v1}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;->OUTSIDE_IN:Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;

    invoke-virtual {v1}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator;->$SWITCH_TABLE$org$andengine$opengl$texture$atlas$bitmap$source$decorator$RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator;->POSITIONS_DEFAULT:[F

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;IILorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;)V
    .locals 7
    .parameter "pBitmapTextureAtlasSource"
    .parameter "pBitmapTextureAtlasSourceDecoratorShape"
    .parameter "pFromColor"
    .parameter "pToColor"
    .parameter "pRadialGradientDirection"

    .prologue
    .line 38
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator;-><init>(Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;IILorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;IILorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V
    .locals 7
    .parameter "pBitmapTextureAtlasSource"
    .parameter "pBitmapTextureAtlasSourceDecoratorShape"
    .parameter "pFromColor"
    .parameter "pToColor"
    .parameter "pRadialGradientDirection"
    .parameter "pTextureAtlasSourceDecoratorOptions"

    .prologue
    .line 42
    const/4 v0, 0x2

    new-array v3, v0, [I

    const/4 v0, 0x0

    aput p3, v3, v0

    const/4 v0, 0x1

    aput p4, v3, v0

    sget-object v4, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator;->POSITIONS_DEFAULT:[F

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator;-><init>(Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;[I[FLorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;[I[FLorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;)V
    .locals 7
    .parameter "pBitmapTextureAtlasSource"
    .parameter "pBitmapTextureAtlasSourceDecoratorShape"
    .parameter "pColors"
    .parameter "pPositions"
    .parameter "pRadialGradientDirection"

    .prologue
    .line 46
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator;-><init>(Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;[I[FLorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;[I[FLorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V
    .locals 11
    .parameter "pBitmapTextureAtlasSource"
    .parameter "pBitmapTextureAtlasSourceDecoratorShape"
    .parameter "pColors"
    .parameter "pPositions"
    .parameter "pRadialGradientDirection"
    .parameter "pTextureAtlasSourceDecoratorOptions"

    .prologue
    .line 50
    move-object/from16 v0, p6

    invoke-direct {p0, p1, p2, v0}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseShapeBitmapTextureAtlasSourceDecorator;-><init>(Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V

    .line 51
    iput-object p3, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator;->mColors:[I

    .line 52
    iput-object p4, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator;->mPositions:[F

    .line 53
    move-object/from16 v0, p5

    iput-object v0, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator;->mRadialGradientDirection:Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;

    .line 55
    iget-object v1, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    invoke-interface {p1}, Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;->getTextureWidth()I

    move-result v9

    .line 58
    .local v9, width:I
    invoke-interface {p1}, Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;->getTextureHeight()I

    move-result v8

    .line 60
    .local v8, height:I
    int-to-float v1, v9

    const/high16 v5, 0x3f00

    mul-float v2, v1, v5

    .line 61
    .local v2, centerX:F
    int-to-float v1, v8

    const/high16 v5, 0x3f00

    mul-float v3, v1, v5

    .line 63
    .local v3, centerY:F
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 65
    .local v4, radius:F
    invoke-static {}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator;->$SWITCH_TABLE$org$andengine$opengl$texture$atlas$bitmap$source$decorator$RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection()[I

    move-result-object v1

    invoke-virtual/range {p5 .. p5}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;->ordinal()I

    move-result v5

    aget v1, v1, v5

    packed-switch v1, :pswitch_data_0

    .line 74
    :goto_0
    return-void

    .line 67
    :pswitch_0
    iget-object v10, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/RadialGradient;

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    .line 70
    :pswitch_1
    invoke-static {p3}, Lorg/andengine/util/adt/array/ArrayUtils;->reverse([I)V

    .line 71
    iget-object v10, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/RadialGradient;

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic deepCopy()Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator;->deepCopy()Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseShapeBitmapTextureAtlasSourceDecorator;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator;->deepCopy()Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator;
    .locals 7

    .prologue
    .line 78
    new-instance v0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator;

    iget-object v1, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator;->mBitmapTextureAtlasSource:Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;

    iget-object v2, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator;->mBitmapTextureAtlasSourceDecoratorShape:Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;

    iget-object v3, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator;->mColors:[I

    iget-object v4, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator;->mPositions:[F

    iget-object v5, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator;->mRadialGradientDirection:Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;

    iget-object v6, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator;->mTextureAtlasSourceDecoratorOptions:Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;

    invoke-direct/range {v0 .. v6}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator;-><init>(Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;[I[FLorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator;->deepCopy()Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator;

    move-result-object v0

    return-object v0
.end method
