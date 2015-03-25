.class public Lorg/andengine/engine/options/resolutionpolicy/FixedResolutionPolicy;
.super Lorg/andengine/engine/options/resolutionpolicy/BaseResolutionPolicy;
.source "FixedResolutionPolicy.java"


# instance fields
.field private final mHeight:I

.field private final mWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "pWidth"
    .parameter "pHeight"

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/andengine/engine/options/resolutionpolicy/BaseResolutionPolicy;-><init>()V

    .line 29
    iput p1, p0, Lorg/andengine/engine/options/resolutionpolicy/FixedResolutionPolicy;->mWidth:I

    .line 30
    iput p2, p0, Lorg/andengine/engine/options/resolutionpolicy/FixedResolutionPolicy;->mHeight:I

    .line 31
    return-void
.end method


# virtual methods
.method public onMeasure(Lorg/andengine/opengl/view/RenderSurfaceView;II)V
    .locals 2
    .parameter "pRenderSurfaceView"
    .parameter "pWidthMeasureSpec"
    .parameter "pHeightMeasureSpec"

    .prologue
    .line 43
    iget v0, p0, Lorg/andengine/engine/options/resolutionpolicy/FixedResolutionPolicy;->mWidth:I

    iget v1, p0, Lorg/andengine/engine/options/resolutionpolicy/FixedResolutionPolicy;->mHeight:I

    invoke-virtual {p1, v0, v1}, Lorg/andengine/opengl/view/RenderSurfaceView;->setMeasuredDimensionProxy(II)V

    .line 44
    return-void
.end method
