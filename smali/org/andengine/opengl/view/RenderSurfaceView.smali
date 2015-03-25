.class public Lorg/andengine/opengl/view/RenderSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "RenderSurfaceView.java"


# instance fields
.field private mConfigChooser:Lorg/andengine/opengl/view/ConfigChooser;

.field private mEngineRenderer:Lorg/andengine/opengl/view/EngineRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "pContext"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 35
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/andengine/opengl/view/RenderSurfaceView;->setEGLContextClientVersion(I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "pContext"
    .parameter "pAttrs"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/andengine/opengl/view/RenderSurfaceView;->setEGLContextClientVersion(I)V

    .line 42
    return-void
.end method


# virtual methods
.method public getConfigChooser()Lorg/andengine/opengl/view/ConfigChooser;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lorg/andengine/opengl/view/RenderSurfaceView;->mConfigChooser:Lorg/andengine/opengl/view/ConfigChooser;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-class v2, Lorg/andengine/opengl/view/ConfigChooser;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " not yet set."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    iget-object v0, p0, Lorg/andengine/opengl/view/RenderSurfaceView;->mConfigChooser:Lorg/andengine/opengl/view/ConfigChooser;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 1
    .parameter "pWidthMeasureSpec"
    .parameter "pHeightMeasureSpec"

    .prologue
    .line 64
    invoke-virtual {p0}, Lorg/andengine/opengl/view/RenderSurfaceView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-super {p0, p1, p2}, Landroid/opengl/GLSurfaceView;->onMeasure(II)V

    .line 69
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lorg/andengine/opengl/view/RenderSurfaceView;->mEngineRenderer:Lorg/andengine/opengl/view/EngineRenderer;

    iget-object v0, v0, Lorg/andengine/opengl/view/EngineRenderer;->mEngine:Lorg/andengine/engine/Engine;

    invoke-virtual {v0}, Lorg/andengine/engine/Engine;->getEngineOptions()Lorg/andengine/engine/options/EngineOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/andengine/engine/options/EngineOptions;->getResolutionPolicy()Lorg/andengine/engine/options/resolutionpolicy/IResolutionPolicy;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lorg/andengine/engine/options/resolutionpolicy/IResolutionPolicy;->onMeasure(Lorg/andengine/opengl/view/RenderSurfaceView;II)V

    goto :goto_0
.end method

.method public setMeasuredDimensionProxy(II)V
    .locals 0
    .parameter "pMeasuredWidth"
    .parameter "pMeasuredHeight"

    .prologue
    .line 76
    invoke-virtual {p0, p1, p2}, Lorg/andengine/opengl/view/RenderSurfaceView;->setMeasuredDimension(II)V

    .line 77
    return-void
.end method

.method public setRenderer(Lorg/andengine/engine/Engine;Lorg/andengine/opengl/view/IRendererListener;)V
    .locals 3
    .parameter "pEngine"
    .parameter "pRendererListener"

    .prologue
    .line 80
    iget-object v1, p0, Lorg/andengine/opengl/view/RenderSurfaceView;->mConfigChooser:Lorg/andengine/opengl/view/ConfigChooser;

    if-nez v1, :cond_0

    .line 81
    invoke-virtual {p1}, Lorg/andengine/engine/Engine;->getEngineOptions()Lorg/andengine/engine/options/EngineOptions;

    move-result-object v1

    invoke-virtual {v1}, Lorg/andengine/engine/options/EngineOptions;->getRenderOptions()Lorg/andengine/engine/options/RenderOptions;

    move-result-object v1

    invoke-virtual {v1}, Lorg/andengine/engine/options/RenderOptions;->isMultiSampling()Z

    move-result v0

    .line 82
    .local v0, multiSampling:Z
    new-instance v1, Lorg/andengine/opengl/view/ConfigChooser;

    invoke-direct {v1, v0}, Lorg/andengine/opengl/view/ConfigChooser;-><init>(Z)V

    iput-object v1, p0, Lorg/andengine/opengl/view/RenderSurfaceView;->mConfigChooser:Lorg/andengine/opengl/view/ConfigChooser;

    .line 84
    .end local v0           #multiSampling:Z
    :cond_0
    iget-object v1, p0, Lorg/andengine/opengl/view/RenderSurfaceView;->mConfigChooser:Lorg/andengine/opengl/view/ConfigChooser;

    invoke-virtual {p0, v1}, Lorg/andengine/opengl/view/RenderSurfaceView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 86
    invoke-virtual {p0, p1}, Lorg/andengine/opengl/view/RenderSurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 87
    new-instance v1, Lorg/andengine/opengl/view/EngineRenderer;

    iget-object v2, p0, Lorg/andengine/opengl/view/RenderSurfaceView;->mConfigChooser:Lorg/andengine/opengl/view/ConfigChooser;

    invoke-direct {v1, p1, v2, p2}, Lorg/andengine/opengl/view/EngineRenderer;-><init>(Lorg/andengine/engine/Engine;Lorg/andengine/opengl/view/ConfigChooser;Lorg/andengine/opengl/view/IRendererListener;)V

    iput-object v1, p0, Lorg/andengine/opengl/view/RenderSurfaceView;->mEngineRenderer:Lorg/andengine/opengl/view/EngineRenderer;

    .line 88
    iget-object v1, p0, Lorg/andengine/opengl/view/RenderSurfaceView;->mEngineRenderer:Lorg/andengine/opengl/view/EngineRenderer;

    invoke-virtual {p0, v1}, Lorg/andengine/opengl/view/RenderSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 89
    return-void
.end method
