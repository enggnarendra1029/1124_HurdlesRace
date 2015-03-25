.class public abstract Lorg/andengine/ui/activity/LayoutGameActivity;
.super Lorg/andengine/ui/activity/BaseGameActivity;
.source "LayoutGameActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lorg/andengine/ui/activity/BaseGameActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getLayoutID()I
.end method

.method protected abstract getRenderSurfaceViewID()I
.end method

.method protected onSetContentView()V
    .locals 2

    .prologue
    .line 38
    invoke-virtual {p0}, Lorg/andengine/ui/activity/LayoutGameActivity;->getLayoutID()I

    move-result v0

    invoke-super {p0, v0}, Lorg/andengine/ui/activity/BaseGameActivity;->setContentView(I)V

    .line 40
    invoke-virtual {p0}, Lorg/andengine/ui/activity/LayoutGameActivity;->getRenderSurfaceViewID()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/andengine/ui/activity/LayoutGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/andengine/opengl/view/RenderSurfaceView;

    iput-object v0, p0, Lorg/andengine/ui/activity/LayoutGameActivity;->mRenderSurfaceView:Lorg/andengine/opengl/view/RenderSurfaceView;

    .line 42
    iget-object v0, p0, Lorg/andengine/ui/activity/LayoutGameActivity;->mRenderSurfaceView:Lorg/andengine/opengl/view/RenderSurfaceView;

    iget-object v1, p0, Lorg/andengine/ui/activity/LayoutGameActivity;->mEngine:Lorg/andengine/engine/Engine;

    invoke-virtual {v0, v1, p0}, Lorg/andengine/opengl/view/RenderSurfaceView;->setRenderer(Lorg/andengine/engine/Engine;Lorg/andengine/opengl/view/IRendererListener;)V

    .line 43
    return-void
.end method
