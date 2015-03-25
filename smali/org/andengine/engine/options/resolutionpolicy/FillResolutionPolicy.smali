.class public Lorg/andengine/engine/options/resolutionpolicy/FillResolutionPolicy;
.super Lorg/andengine/engine/options/resolutionpolicy/BaseResolutionPolicy;
.source "FillResolutionPolicy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lorg/andengine/engine/options/resolutionpolicy/BaseResolutionPolicy;-><init>()V

    return-void
.end method


# virtual methods
.method public onMeasure(Lorg/andengine/opengl/view/RenderSurfaceView;II)V
    .locals 2
    .parameter "pRenderSurfaceView"
    .parameter "pWidthMeasureSpec"
    .parameter "pHeightMeasureSpec"

    .prologue
    .line 37
    invoke-static {p2, p3}, Lorg/andengine/engine/options/resolutionpolicy/BaseResolutionPolicy;->throwOnNotMeasureSpecEXACTLY(II)V

    .line 39
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 40
    .local v1, measuredWidth:I
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 42
    .local v0, measuredHeight:I
    invoke-virtual {p1, v1, v0}, Lorg/andengine/opengl/view/RenderSurfaceView;->setMeasuredDimensionProxy(II)V

    .line 43
    return-void
.end method
