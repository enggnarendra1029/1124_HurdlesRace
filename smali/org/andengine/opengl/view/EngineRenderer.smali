.class public Lorg/andengine/opengl/view/EngineRenderer;
.super Ljava/lang/Object;
.source "EngineRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field final mConfigChooser:Lorg/andengine/opengl/view/ConfigChooser;

.field final mEngine:Lorg/andengine/engine/Engine;

.field final mGLState:Lorg/andengine/opengl/util/GLState;

.field final mMultiSampling:Z

.field final mRendererListener:Lorg/andengine/opengl/view/IRendererListener;


# direct methods
.method public constructor <init>(Lorg/andengine/engine/Engine;Lorg/andengine/opengl/view/ConfigChooser;Lorg/andengine/opengl/view/IRendererListener;)V
    .locals 1
    .parameter "pEngine"
    .parameter "pConfigChooser"
    .parameter "pRendererListener"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/andengine/opengl/view/EngineRenderer;->mEngine:Lorg/andengine/engine/Engine;

    .line 42
    iput-object p2, p0, Lorg/andengine/opengl/view/EngineRenderer;->mConfigChooser:Lorg/andengine/opengl/view/ConfigChooser;

    .line 43
    iput-object p3, p0, Lorg/andengine/opengl/view/EngineRenderer;->mRendererListener:Lorg/andengine/opengl/view/IRendererListener;

    .line 44
    new-instance v0, Lorg/andengine/opengl/util/GLState;

    invoke-direct {v0}, Lorg/andengine/opengl/util/GLState;-><init>()V

    iput-object v0, p0, Lorg/andengine/opengl/view/EngineRenderer;->mGLState:Lorg/andengine/opengl/util/GLState;

    .line 45
    iget-object v0, p0, Lorg/andengine/opengl/view/EngineRenderer;->mEngine:Lorg/andengine/engine/Engine;

    invoke-virtual {v0}, Lorg/andengine/engine/Engine;->getEngineOptions()Lorg/andengine/engine/options/EngineOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/andengine/engine/options/EngineOptions;->getRenderOptions()Lorg/andengine/engine/options/RenderOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/andengine/engine/options/RenderOptions;->isMultiSampling()Z

    move-result v0

    iput-boolean v0, p0, Lorg/andengine/opengl/view/EngineRenderer;->mMultiSampling:Z

    .line 46
    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5
    .parameter "pGL"

    .prologue
    .line 98
    const-class v3, Lorg/andengine/opengl/util/GLState;

    monitor-enter v3

    .line 99
    :try_start_0
    iget-boolean v2, p0, Lorg/andengine/opengl/view/EngineRenderer;->mMultiSampling:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/andengine/opengl/view/EngineRenderer;->mConfigChooser:Lorg/andengine/opengl/view/ConfigChooser;

    invoke-virtual {v2}, Lorg/andengine/opengl/view/ConfigChooser;->isCoverageMultiSampling()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    const v0, 0x8000

    .line 101
    .local v0, GL_COVERAGE_BUFFER_BIT_NV:I
    const v2, 0x8000

    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    .end local v0           #GL_COVERAGE_BUFFER_BIT_NV:I
    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/andengine/opengl/view/EngineRenderer;->mEngine:Lorg/andengine/engine/Engine;

    iget-object v4, p0, Lorg/andengine/opengl/view/EngineRenderer;->mGLState:Lorg/andengine/opengl/util/GLState;

    invoke-virtual {v2, v4}, Lorg/andengine/engine/Engine;->onDrawFrame(Lorg/andengine/opengl/util/GLState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 98
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 110
    return-void

    .line 106
    :catch_0
    move-exception v1

    .line 107
    .local v1, e:Ljava/lang/InterruptedException;
    const-string v2, "GLThread interrupted!"

    invoke-static {v2, v1}, Lorg/andengine/util/debug/Debug;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 98
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 2
    .parameter "pGL"
    .parameter "pWidth"
    .parameter "pHeight"

    .prologue
    const/4 v1, 0x0

    .line 87
    iget-object v0, p0, Lorg/andengine/opengl/view/EngineRenderer;->mEngine:Lorg/andengine/engine/Engine;

    invoke-virtual {v0, p2, p3}, Lorg/andengine/engine/Engine;->setSurfaceSize(II)V

    .line 88
    invoke-static {v1, v1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 89
    iget-object v0, p0, Lorg/andengine/opengl/view/EngineRenderer;->mGLState:Lorg/andengine/opengl/util/GLState;

    invoke-virtual {v0}, Lorg/andengine/opengl/util/GLState;->loadProjectionGLMatrixIdentity()V

    .line 91
    iget-object v0, p0, Lorg/andengine/opengl/view/EngineRenderer;->mRendererListener:Lorg/andengine/opengl/view/IRendererListener;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lorg/andengine/opengl/view/EngineRenderer;->mRendererListener:Lorg/andengine/opengl/view/IRendererListener;

    iget-object v1, p0, Lorg/andengine/opengl/view/EngineRenderer;->mGLState:Lorg/andengine/opengl/util/GLState;

    invoke-interface {v0, v1, p2, p3}, Lorg/andengine/opengl/view/IRendererListener;->onSurfaceChanged(Lorg/andengine/opengl/util/GLState;II)V

    .line 94
    :cond_0
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 4
    .parameter "pGL"
    .parameter "pEGLConfig"

    .prologue
    .line 58
    const-class v2, Lorg/andengine/opengl/util/GLState;

    monitor-enter v2

    .line 59
    :try_start_0
    iget-object v1, p0, Lorg/andengine/opengl/view/EngineRenderer;->mEngine:Lorg/andengine/engine/Engine;

    invoke-virtual {v1}, Lorg/andengine/engine/Engine;->getEngineOptions()Lorg/andengine/engine/options/EngineOptions;

    move-result-object v1

    invoke-virtual {v1}, Lorg/andengine/engine/options/EngineOptions;->getRenderOptions()Lorg/andengine/engine/options/RenderOptions;

    move-result-object v0

    .line 60
    .local v0, renderOptions:Lorg/andengine/engine/options/RenderOptions;
    iget-object v1, p0, Lorg/andengine/opengl/view/EngineRenderer;->mGLState:Lorg/andengine/opengl/util/GLState;

    iget-object v3, p0, Lorg/andengine/opengl/view/EngineRenderer;->mConfigChooser:Lorg/andengine/opengl/view/ConfigChooser;

    invoke-virtual {v1, v0, v3, p2}, Lorg/andengine/opengl/util/GLState;->reset(Lorg/andengine/engine/options/RenderOptions;Lorg/andengine/opengl/view/ConfigChooser;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 70
    iget-object v1, p0, Lorg/andengine/opengl/view/EngineRenderer;->mGLState:Lorg/andengine/opengl/util/GLState;

    invoke-virtual {v1}, Lorg/andengine/opengl/util/GLState;->disableDepthTest()Z

    .line 71
    iget-object v1, p0, Lorg/andengine/opengl/view/EngineRenderer;->mGLState:Lorg/andengine/opengl/util/GLState;

    invoke-virtual {v1}, Lorg/andengine/opengl/util/GLState;->enableBlend()Z

    .line 72
    iget-object v1, p0, Lorg/andengine/opengl/view/EngineRenderer;->mGLState:Lorg/andengine/opengl/util/GLState;

    invoke-virtual {v0}, Lorg/andengine/engine/options/RenderOptions;->isDithering()Z

    move-result v3

    invoke-virtual {v1, v3}, Lorg/andengine/opengl/util/GLState;->setDitherEnabled(Z)Z

    .line 79
    iget-object v1, p0, Lorg/andengine/opengl/view/EngineRenderer;->mRendererListener:Lorg/andengine/opengl/view/IRendererListener;

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lorg/andengine/opengl/view/EngineRenderer;->mRendererListener:Lorg/andengine/opengl/view/IRendererListener;

    iget-object v3, p0, Lorg/andengine/opengl/view/EngineRenderer;->mGLState:Lorg/andengine/opengl/util/GLState;

    invoke-interface {v1, v3}, Lorg/andengine/opengl/view/IRendererListener;->onSurfaceCreated(Lorg/andengine/opengl/util/GLState;)V

    .line 58
    :cond_0
    monitor-exit v2

    .line 83
    return-void

    .line 58
    .end local v0           #renderOptions:Lorg/andengine/engine/options/RenderOptions;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
