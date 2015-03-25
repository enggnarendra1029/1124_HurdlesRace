.class public Lorg/andengine/engine/options/resolutionpolicy/RatioResolutionPolicy;
.super Lorg/andengine/engine/options/resolutionpolicy/BaseResolutionPolicy;
.source "RatioResolutionPolicy.java"


# instance fields
.field private final mRatio:F


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .parameter "pRatio"

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/andengine/engine/options/resolutionpolicy/BaseResolutionPolicy;-><init>()V

    .line 30
    iput p1, p0, Lorg/andengine/engine/options/resolutionpolicy/RatioResolutionPolicy;->mRatio:F

    .line 31
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1
    .parameter "pWidthRatio"
    .parameter "pHeightRatio"

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/andengine/engine/options/resolutionpolicy/BaseResolutionPolicy;-><init>()V

    .line 34
    div-float v0, p1, p2

    iput v0, p0, Lorg/andengine/engine/options/resolutionpolicy/RatioResolutionPolicy;->mRatio:F

    .line 35
    return-void
.end method


# virtual methods
.method public onMeasure(Lorg/andengine/opengl/view/RenderSurfaceView;II)V
    .locals 8
    .parameter "pRenderSurfaceView"
    .parameter "pWidthMeasureSpec"
    .parameter "pHeightMeasureSpec"

    .prologue
    .line 47
    invoke-static {p2, p3}, Lorg/andengine/engine/options/resolutionpolicy/BaseResolutionPolicy;->throwOnNotMeasureSpecEXACTLY(II)V

    .line 49
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 50
    .local v5, specWidth:I
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 52
    .local v4, specHeight:I
    iget v0, p0, Lorg/andengine/engine/options/resolutionpolicy/RatioResolutionPolicy;->mRatio:F

    .line 53
    .local v0, desiredRatio:F
    int-to-float v6, v5

    int-to-float v7, v4

    div-float v3, v6, v7

    .line 57
    .local v3, realRatio:F
    cmpg-float v6, v3, v0

    if-gez v6, :cond_0

    .line 58
    move v2, v5

    .line 59
    .local v2, measuredWidth:I
    int-to-float v6, v2

    div-float/2addr v6, v0

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 65
    .local v1, measuredHeight:I
    :goto_0
    invoke-virtual {p1, v2, v1}, Lorg/andengine/opengl/view/RenderSurfaceView;->setMeasuredDimensionProxy(II)V

    .line 66
    return-void

    .line 61
    .end local v1           #measuredHeight:I
    .end local v2           #measuredWidth:I
    :cond_0
    move v1, v4

    .line 62
    .restart local v1       #measuredHeight:I
    int-to-float v6, v1

    mul-float/2addr v6, v0

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v2

    .restart local v2       #measuredWidth:I
    goto :goto_0
.end method
