.class public Lorg/andengine/opengl/util/GLState;
.super Ljava/lang/Object;
.source "GLState.java"


# static fields
.field public static final GL_UNPACK_ALIGNMENT_DEFAULT:I = 0x4


# instance fields
.field private mBlendEnabled:Z

.field private mCullingEnabled:Z

.field private mCurrentActiveTextureIndex:I

.field private mCurrentArrayBufferID:I

.field private final mCurrentBoundTextureIDs:[I

.field private mCurrentDestinationBlendMode:I

.field private mCurrentFramebufferID:I

.field private mCurrentIndexBufferID:I

.field private mCurrentShaderProgramID:I

.field private mCurrentSourceBlendMode:I

.field private mDepthTestEnabled:Z

.field private mDitherEnabled:Z

.field private mExtensions:Ljava/lang/String;

.field private final mHardwareIDContainer:[I

.field private mLineWidth:F

.field private mMaximumFragmentShaderUniformVectorCount:I

.field private mMaximumTextureSize:I

.field private mMaximumTextureUnits:I

.field private mMaximumVertexAttributeCount:I

.field private mMaximumVertexShaderUniformVectorCount:I

.field private final mModelViewGLMatrix:[F

.field private final mModelViewGLMatrixStack:Lorg/andengine/opengl/util/GLMatrixStack;

.field private final mModelViewProjectionGLMatrix:[F

.field private final mProjectionGLMatrix:[F

.field private final mProjectionGLMatrixStack:Lorg/andengine/opengl/util/GLMatrixStack;

.field private mRenderer:Ljava/lang/String;

.field private mScissorTestEnabled:Z

.field private mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0x10

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-array v0, v3, [I

    iput-object v0, p0, Lorg/andengine/opengl/util/GLState;->mHardwareIDContainer:[I

    .line 54
    iput v1, p0, Lorg/andengine/opengl/util/GLState;->mCurrentArrayBufferID:I

    .line 55
    iput v1, p0, Lorg/andengine/opengl/util/GLState;->mCurrentIndexBufferID:I

    .line 56
    iput v1, p0, Lorg/andengine/opengl/util/GLState;->mCurrentShaderProgramID:I

    .line 57
    const/16 v0, 0x1f

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/andengine/opengl/util/GLState;->mCurrentBoundTextureIDs:[I

    .line 58
    iput v1, p0, Lorg/andengine/opengl/util/GLState;->mCurrentFramebufferID:I

    .line 59
    iput v2, p0, Lorg/andengine/opengl/util/GLState;->mCurrentActiveTextureIndex:I

    .line 61
    iput v1, p0, Lorg/andengine/opengl/util/GLState;->mCurrentSourceBlendMode:I

    .line 62
    iput v1, p0, Lorg/andengine/opengl/util/GLState;->mCurrentDestinationBlendMode:I

    .line 64
    iput-boolean v3, p0, Lorg/andengine/opengl/util/GLState;->mDitherEnabled:Z

    .line 65
    iput-boolean v3, p0, Lorg/andengine/opengl/util/GLState;->mDepthTestEnabled:Z

    .line 67
    iput-boolean v2, p0, Lorg/andengine/opengl/util/GLState;->mScissorTestEnabled:Z

    .line 68
    iput-boolean v2, p0, Lorg/andengine/opengl/util/GLState;->mBlendEnabled:Z

    .line 69
    iput-boolean v2, p0, Lorg/andengine/opengl/util/GLState;->mCullingEnabled:Z

    .line 71
    const/high16 v0, 0x3f80

    iput v0, p0, Lorg/andengine/opengl/util/GLState;->mLineWidth:F

    .line 73
    new-instance v0, Lorg/andengine/opengl/util/GLMatrixStack;

    invoke-direct {v0}, Lorg/andengine/opengl/util/GLMatrixStack;-><init>()V

    iput-object v0, p0, Lorg/andengine/opengl/util/GLState;->mModelViewGLMatrixStack:Lorg/andengine/opengl/util/GLMatrixStack;

    .line 74
    new-instance v0, Lorg/andengine/opengl/util/GLMatrixStack;

    invoke-direct {v0}, Lorg/andengine/opengl/util/GLMatrixStack;-><init>()V

    iput-object v0, p0, Lorg/andengine/opengl/util/GLState;->mProjectionGLMatrixStack:Lorg/andengine/opengl/util/GLMatrixStack;

    .line 76
    new-array v0, v4, [F

    iput-object v0, p0, Lorg/andengine/opengl/util/GLState;->mModelViewGLMatrix:[F

    .line 77
    new-array v0, v4, [F

    iput-object v0, p0, Lorg/andengine/opengl/util/GLState;->mProjectionGLMatrix:[F

    .line 78
    new-array v0, v4, [F

    iput-object v0, p0, Lorg/andengine/opengl/util/GLState;->mModelViewProjectionGLMatrix:[F

    .line 31
    return-void
.end method


# virtual methods
.method public activeTexture(I)V
    .locals 2
    .parameter "pGLActiveTexture"

    .prologue
    .line 495
    const v1, 0x84c0

    sub-int v0, p1, v1

    .line 496
    .local v0, activeTextureIndex:I
    iget v1, p0, Lorg/andengine/opengl/util/GLState;->mCurrentActiveTextureIndex:I

    if-eq p1, v1, :cond_0

    .line 497
    iput v0, p0, Lorg/andengine/opengl/util/GLState;->mCurrentActiveTextureIndex:I

    .line 498
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 500
    :cond_0
    return-void
.end method

.method public bindArrayBuffer(I)V
    .locals 1
    .parameter "pHardwareBufferID"

    .prologue
    .line 376
    iget v0, p0, Lorg/andengine/opengl/util/GLState;->mCurrentArrayBufferID:I

    if-eq v0, p1, :cond_0

    .line 377
    iput p1, p0, Lorg/andengine/opengl/util/GLState;->mCurrentArrayBufferID:I

    .line 378
    const v0, 0x8892

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 380
    :cond_0
    return-void
.end method

.method public bindFramebuffer(I)V
    .locals 1
    .parameter "pFramebufferID"

    .prologue
    .line 422
    const v0, 0x8d40

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 423
    return-void
.end method

.method public bindIndexBuffer(I)V
    .locals 1
    .parameter "pHardwareBufferID"

    .prologue
    .line 402
    iget v0, p0, Lorg/andengine/opengl/util/GLState;->mCurrentIndexBufferID:I

    if-eq v0, p1, :cond_0

    .line 403
    iput p1, p0, Lorg/andengine/opengl/util/GLState;->mCurrentIndexBufferID:I

    .line 404
    const v0, 0x8893

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 406
    :cond_0
    return-void
.end method

.method public bindTexture(I)V
    .locals 2
    .parameter "pHardwareTextureID"

    .prologue
    .line 508
    iget-object v0, p0, Lorg/andengine/opengl/util/GLState;->mCurrentBoundTextureIDs:[I

    iget v1, p0, Lorg/andengine/opengl/util/GLState;->mCurrentActiveTextureIndex:I

    aget v0, v0, v1

    if-eq v0, p1, :cond_0

    .line 509
    iget-object v0, p0, Lorg/andengine/opengl/util/GLState;->mCurrentBoundTextureIDs:[I

    iget v1, p0, Lorg/andengine/opengl/util/GLState;->mCurrentActiveTextureIndex:I

    aput p1, v0, v1

    .line 510
    const/16 v0, 0xde1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 512
    :cond_0
    return-void
.end method

.method public blendFunction(II)V
    .locals 1
    .parameter "pSourceBlendMode"
    .parameter "pDestinationBlendMode"

    .prologue
    .line 523
    iget v0, p0, Lorg/andengine/opengl/util/GLState;->mCurrentSourceBlendMode:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lorg/andengine/opengl/util/GLState;->mCurrentDestinationBlendMode:I

    if-eq v0, p2, :cond_1

    .line 524
    :cond_0
    iput p1, p0, Lorg/andengine/opengl/util/GLState;->mCurrentSourceBlendMode:I

    .line 525
    iput p2, p0, Lorg/andengine/opengl/util/GLState;->mCurrentDestinationBlendMode:I

    .line 526
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 528
    :cond_1
    return-void
.end method

.method public checkError()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/opengl/exception/GLException;
        }
    .end annotation

    .prologue
    .line 686
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .line 687
    .local v0, error:I
    if-eqz v0, :cond_0

    .line 688
    new-instance v1, Lorg/andengine/opengl/exception/GLException;

    invoke-direct {v1, v0}, Lorg/andengine/opengl/exception/GLException;-><init>(I)V

    throw v1

    .line 690
    :cond_0
    return-void
.end method

.method public checkFramebufferStatus()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/opengl/exception/GLFrameBufferException;,
            Lorg/andengine/opengl/exception/GLException;
        }
    .end annotation

    .prologue
    .line 430
    invoke-virtual {p0}, Lorg/andengine/opengl/util/GLState;->getFramebufferStatus()I

    move-result v0

    .line 431
    .local v0, framebufferStatus:I
    sparse-switch v0, :sswitch_data_0

    .line 445
    :goto_0
    new-instance v1, Lorg/andengine/opengl/exception/GLFrameBufferException;

    invoke-direct {v1, v0}, Lorg/andengine/opengl/exception/GLFrameBufferException;-><init>(I)V

    throw v1

    .line 435
    :sswitch_0
    new-instance v1, Lorg/andengine/opengl/exception/GLFrameBufferException;

    const-string v2, "GL_FRAMEBUFFER_UNSUPPORTED"

    invoke-direct {v1, v0, v2}, Lorg/andengine/opengl/exception/GLFrameBufferException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 437
    :sswitch_1
    new-instance v1, Lorg/andengine/opengl/exception/GLFrameBufferException;

    const-string v2, "GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT"

    invoke-direct {v1, v0, v2}, Lorg/andengine/opengl/exception/GLFrameBufferException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 439
    :sswitch_2
    new-instance v1, Lorg/andengine/opengl/exception/GLFrameBufferException;

    const-string v2, "GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS"

    invoke-direct {v1, v0, v2}, Lorg/andengine/opengl/exception/GLFrameBufferException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 441
    :sswitch_3
    new-instance v1, Lorg/andengine/opengl/exception/GLFrameBufferException;

    const-string v2, "GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT"

    invoke-direct {v1, v0, v2}, Lorg/andengine/opengl/exception/GLFrameBufferException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 443
    :sswitch_4
    invoke-virtual {p0}, Lorg/andengine/opengl/util/GLState;->checkError()V

    goto :goto_0

    .line 433
    :sswitch_5
    return-void

    .line 431
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_4
        0x8cd5 -> :sswitch_5
        0x8cd6 -> :sswitch_1
        0x8cd7 -> :sswitch_3
        0x8cd9 -> :sswitch_2
        0x8cdd -> :sswitch_0
    .end sparse-switch
.end method

.method public clearError()V
    .locals 0

    .prologue
    .line 693
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    .line 694
    return-void
.end method

.method public deleteArrayBuffer(I)V
    .locals 3
    .parameter "pHardwareBufferID"

    .prologue
    const/4 v2, 0x0

    .line 383
    iget v0, p0, Lorg/andengine/opengl/util/GLState;->mCurrentArrayBufferID:I

    if-ne v0, p1, :cond_0

    .line 384
    const/4 v0, -0x1

    iput v0, p0, Lorg/andengine/opengl/util/GLState;->mCurrentArrayBufferID:I

    .line 386
    :cond_0
    iget-object v0, p0, Lorg/andengine/opengl/util/GLState;->mHardwareIDContainer:[I

    aput p1, v0, v2

    .line 387
    const/4 v0, 0x1

    iget-object v1, p0, Lorg/andengine/opengl/util/GLState;->mHardwareIDContainer:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 388
    return-void
.end method

.method public deleteFramebuffer(I)V
    .locals 3
    .parameter "pHardwareFramebufferID"

    .prologue
    const/4 v2, 0x0

    .line 454
    iget v0, p0, Lorg/andengine/opengl/util/GLState;->mCurrentFramebufferID:I

    if-ne v0, p1, :cond_0

    .line 455
    const/4 v0, -0x1

    iput v0, p0, Lorg/andengine/opengl/util/GLState;->mCurrentFramebufferID:I

    .line 457
    :cond_0
    iget-object v0, p0, Lorg/andengine/opengl/util/GLState;->mHardwareIDContainer:[I

    aput p1, v0, v2

    .line 458
    const/4 v0, 0x1

    iget-object v1, p0, Lorg/andengine/opengl/util/GLState;->mHardwareIDContainer:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 459
    return-void
.end method

.method public deleteIndexBuffer(I)V
    .locals 3
    .parameter "pHardwareBufferID"

    .prologue
    const/4 v2, 0x0

    .line 409
    iget v0, p0, Lorg/andengine/opengl/util/GLState;->mCurrentIndexBufferID:I

    if-ne v0, p1, :cond_0

    .line 410
    const/4 v0, -0x1

    iput v0, p0, Lorg/andengine/opengl/util/GLState;->mCurrentIndexBufferID:I

    .line 412
    :cond_0
    iget-object v0, p0, Lorg/andengine/opengl/util/GLState;->mHardwareIDContainer:[I

    aput p1, v0, v2

    .line 413
    const/4 v0, 0x1

    iget-object v1, p0, Lorg/andengine/opengl/util/GLState;->mHardwareIDContainer:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 414
    return-void
.end method

.method public deleteProgram(I)V
    .locals 1
    .parameter "pShaderProgramID"

    .prologue
    .line 469
    iget v0, p0, Lorg/andengine/opengl/util/GLState;->mCurrentShaderProgramID:I

    if-ne v0, p1, :cond_0

    .line 470
    const/4 v0, -0x1

    iput v0, p0, Lorg/andengine/opengl/util/GLState;->mCurrentShaderProgramID:I

    .line 472
    :cond_0
    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 473
    return-void
.end method

.method public deleteTexture(I)V
    .locals 4
    .parameter "pHardwareTextureID"

    .prologue
    const/4 v3, 0x0

    .line 515
    iget-object v0, p0, Lorg/andengine/opengl/util/GLState;->mCurrentBoundTextureIDs:[I

    iget v1, p0, Lorg/andengine/opengl/util/GLState;->mCurrentActiveTextureIndex:I

    aget v0, v0, v1

    if-ne v0, p1, :cond_0

    .line 516
    iget-object v0, p0, Lorg/andengine/opengl/util/GLState;->mCurrentBoundTextureIDs:[I

    iget v1, p0, Lorg/andengine/opengl/util/GLState;->mCurrentActiveTextureIndex:I

    const/4 v2, -0x1

    aput v2, v0, v1

    .line 518
    :cond_0
    iget-object v0, p0, Lorg/andengine/opengl/util/GLState;->mHardwareIDContainer:[I

    aput p1, v0, v3

    .line 519
    const/4 v0, 0x1

    iget-object v1, p0, Lorg/andengine/opengl/util/GLState;->mHardwareIDContainer:[I

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 520
    return-void
.end method

.method public disableBlend()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 226
    iget-boolean v1, p0, Lorg/andengine/opengl/util/GLState;->mBlendEnabled:Z

    if-nez v1, :cond_0

    .line 232
    :goto_0
    return v0

    .line 230
    :cond_0
    iput-boolean v0, p0, Lorg/andengine/opengl/util/GLState;->mBlendEnabled:Z

    .line 231
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 232
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public disableCulling()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 264
    iget-boolean v1, p0, Lorg/andengine/opengl/util/GLState;->mCullingEnabled:Z

    if-nez v1, :cond_0

    .line 270
    :goto_0
    return v0

    .line 268
    :cond_0
    iput-boolean v0, p0, Lorg/andengine/opengl/util/GLState;->mCullingEnabled:Z

    .line 269
    const/16 v0, 0xb44

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 270
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public disableDepthTest()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 340
    iget-boolean v1, p0, Lorg/andengine/opengl/util/GLState;->mDepthTestEnabled:Z

    if-nez v1, :cond_0

    .line 346
    :goto_0
    return v0

    .line 344
    :cond_0
    iput-boolean v0, p0, Lorg/andengine/opengl/util/GLState;->mDepthTestEnabled:Z

    .line 345
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 346
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public disableDither()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 302
    iget-boolean v1, p0, Lorg/andengine/opengl/util/GLState;->mDitherEnabled:Z

    if-nez v1, :cond_0

    .line 308
    :goto_0
    return v0

    .line 306
    :cond_0
    iput-boolean v0, p0, Lorg/andengine/opengl/util/GLState;->mDitherEnabled:Z

    .line 307
    const/16 v0, 0xbd0

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 308
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public disableScissorTest()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 188
    iget-boolean v1, p0, Lorg/andengine/opengl/util/GLState;->mScissorTestEnabled:Z

    if-nez v1, :cond_0

    .line 194
    :goto_0
    return v0

    .line 192
    :cond_0
    iput-boolean v0, p0, Lorg/andengine/opengl/util/GLState;->mScissorTestEnabled:Z

    .line 193
    const/16 v0, 0xc11

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 194
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public enableBlend()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 214
    iget-boolean v1, p0, Lorg/andengine/opengl/util/GLState;->mBlendEnabled:Z

    if-eqz v1, :cond_0

    .line 220
    :goto_0
    return v0

    .line 218
    :cond_0
    iput-boolean v0, p0, Lorg/andengine/opengl/util/GLState;->mBlendEnabled:Z

    .line 219
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 220
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enableCulling()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 252
    iget-boolean v1, p0, Lorg/andengine/opengl/util/GLState;->mCullingEnabled:Z

    if-eqz v1, :cond_0

    .line 258
    :goto_0
    return v0

    .line 256
    :cond_0
    iput-boolean v0, p0, Lorg/andengine/opengl/util/GLState;->mCullingEnabled:Z

    .line 257
    const/16 v0, 0xb44

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 258
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enableDepthTest()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 328
    iget-boolean v1, p0, Lorg/andengine/opengl/util/GLState;->mDepthTestEnabled:Z

    if-eqz v1, :cond_0

    .line 334
    :goto_0
    return v0

    .line 332
    :cond_0
    iput-boolean v0, p0, Lorg/andengine/opengl/util/GLState;->mDepthTestEnabled:Z

    .line 333
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 334
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enableDither()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 290
    iget-boolean v1, p0, Lorg/andengine/opengl/util/GLState;->mDitherEnabled:Z

    if-eqz v1, :cond_0

    .line 296
    :goto_0
    return v0

    .line 294
    :cond_0
    iput-boolean v0, p0, Lorg/andengine/opengl/util/GLState;->mDitherEnabled:Z

    .line 295
    const/16 v0, 0xbd0

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 296
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enableScissorTest()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 176
    iget-boolean v1, p0, Lorg/andengine/opengl/util/GLState;->mScissorTestEnabled:Z

    if-eqz v1, :cond_0

    .line 182
    :goto_0
    return v0

    .line 180
    :cond_0
    iput-boolean v0, p0, Lorg/andengine/opengl/util/GLState;->mScissorTestEnabled:Z

    .line 181
    const/16 v0, 0xc11

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 182
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 673
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 674
    return-void
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 661
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    .line 662
    return-void
.end method

.method public generateArrayBuffer(II)I
    .locals 4
    .parameter "pSize"
    .parameter "pUsage"

    .prologue
    const/4 v3, 0x0

    .line 365
    const/4 v1, 0x1

    iget-object v2, p0, Lorg/andengine/opengl/util/GLState;->mHardwareIDContainer:[I

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 366
    iget-object v1, p0, Lorg/andengine/opengl/util/GLState;->mHardwareIDContainer:[I

    aget v0, v1, v3

    .line 368
    .local v0, hardwareBufferID:I
    invoke-virtual {p0, v0}, Lorg/andengine/opengl/util/GLState;->bindArrayBuffer(I)V

    .line 369
    const v1, 0x8892

    const/4 v2, 0x0

    invoke-static {v1, p1, v2, p2}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 370
    invoke-virtual {p0, v3}, Lorg/andengine/opengl/util/GLState;->bindArrayBuffer(I)V

    .line 372
    return v0
.end method

.method public generateBuffer()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 360
    const/4 v0, 0x1

    iget-object v1, p0, Lorg/andengine/opengl/util/GLState;->mHardwareIDContainer:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 361
    iget-object v0, p0, Lorg/andengine/opengl/util/GLState;->mHardwareIDContainer:[I

    aget v0, v0, v2

    return v0
.end method

.method public generateFramebuffer()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 417
    const/4 v0, 0x1

    iget-object v1, p0, Lorg/andengine/opengl/util/GLState;->mHardwareIDContainer:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 418
    iget-object v0, p0, Lorg/andengine/opengl/util/GLState;->mHardwareIDContainer:[I

    aget v0, v0, v2

    return v0
.end method

.method public generateIndexBuffer(II)I
    .locals 4
    .parameter "pSize"
    .parameter "pUsage"

    .prologue
    const/4 v3, 0x0

    .line 391
    const/4 v1, 0x1

    iget-object v2, p0, Lorg/andengine/opengl/util/GLState;->mHardwareIDContainer:[I

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 392
    iget-object v1, p0, Lorg/andengine/opengl/util/GLState;->mHardwareIDContainer:[I

    aget v0, v1, v3

    .line 394
    .local v0, hardwareBufferID:I
    invoke-virtual {p0, v0}, Lorg/andengine/opengl/util/GLState;->bindIndexBuffer(I)V

    .line 395
    const v1, 0x8893

    const/4 v2, 0x0

    invoke-static {v1, p1, v2, p2}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 396
    invoke-virtual {p0, v3}, Lorg/andengine/opengl/util/GLState;->bindIndexBuffer(I)V

    .line 398
    return v0
.end method

.method public generateTexture()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 476
    const/4 v0, 0x1

    iget-object v1, p0, Lorg/andengine/opengl/util/GLState;->mHardwareIDContainer:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 477
    iget-object v0, p0, Lorg/andengine/opengl/util/GLState;->mHardwareIDContainer:[I

    aget v0, v0, v2

    return v0
.end method

.method public getActiveFramebuffer()I
    .locals 1

    .prologue
    .line 450
    const v0, 0x8ca6

    invoke-virtual {p0, v0}, Lorg/andengine/opengl/util/GLState;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getActiveTexture()I
    .locals 2

    .prologue
    .line 488
    iget v0, p0, Lorg/andengine/opengl/util/GLState;->mCurrentActiveTextureIndex:I

    const v1, 0x84c0

    add-int/2addr v0, v1

    return v0
.end method

.method public getError()I
    .locals 1

    .prologue
    .line 682
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    return v0
.end method

.method public getExtensions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/andengine/opengl/util/GLState;->mExtensions:Ljava/lang/String;

    return-object v0
.end method

.method public getFramebufferStatus()I
    .locals 1

    .prologue
    .line 426
    const v0, 0x8d40

    invoke-static {v0}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v0

    return v0
.end method

.method public getInteger(I)I
    .locals 2
    .parameter "pAttribute"

    .prologue
    const/4 v1, 0x0

    .line 677
    iget-object v0, p0, Lorg/andengine/opengl/util/GLState;->mHardwareIDContainer:[I

    invoke-static {p1, v0, v1}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 678
    iget-object v0, p0, Lorg/andengine/opengl/util/GLState;->mHardwareIDContainer:[I

    aget v0, v0, v1

    return v0
.end method

.method public getMaximumFragmentShaderUniformVectorCount()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lorg/andengine/opengl/util/GLState;->mMaximumFragmentShaderUniformVectorCount:I

    return v0
.end method

.method public getMaximumTextureSize()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lorg/andengine/opengl/util/GLState;->mMaximumTextureSize:I

    return v0
.end method

.method public getMaximumTextureUnits()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lorg/andengine/opengl/util/GLState;->mMaximumTextureUnits:I

    return v0
.end method

.method public getMaximumVertexAttributeCount()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lorg/andengine/opengl/util/GLState;->mMaximumVertexAttributeCount:I

    return v0
.end method

.method public getMaximumVertexShaderUniformVectorCount()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lorg/andengine/opengl/util/GLState;->mMaximumVertexShaderUniformVectorCount:I

    return v0
.end method

.method public getModelViewGLMatrix()[F
    .locals 2

    .prologue
    .line 602
    iget-object v0, p0, Lorg/andengine/opengl/util/GLState;->mModelViewGLMatrixStack:Lorg/andengine/opengl/util/GLMatrixStack;

    iget-object v1, p0, Lorg/andengine/opengl/util/GLState;->mModelViewGLMatrix:[F

    invoke-virtual {v0, v1}, Lorg/andengine/opengl/util/GLMatrixStack;->getMatrix([F)V

    .line 603
    iget-object v0, p0, Lorg/andengine/opengl/util/GLState;->mModelViewGLMatrix:[F

    return-object v0
.end method

.method public getModelViewProjectionGLMatrix()[F
    .locals 6

    .prologue
    .line 612
    iget-object v0, p0, Lorg/andengine/opengl/util/GLState;->mModelViewProjectionGLMatrix:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/andengine/opengl/util/GLState;->mProjectionGLMatrixStack:Lorg/andengine/opengl/util/GLMatrixStack;

    iget-object v2, v2, Lorg/andengine/opengl/util/GLMatrixStack;->mMatrixStack:[F

    iget-object v3, p0, Lorg/andengine/opengl/util/GLState;->mProjectionGLMatrixStack:Lorg/andengine/opengl/util/GLMatrixStack;

    iget v3, v3, Lorg/andengine/opengl/util/GLMatrixStack;->mMatrixStackOffset:I

    iget-object v4, p0, Lorg/andengine/opengl/util/GLState;->mModelViewGLMatrixStack:Lorg/andengine/opengl/util/GLMatrixStack;

    iget-object v4, v4, Lorg/andengine/opengl/util/GLMatrixStack;->mMatrixStack:[F

    iget-object v5, p0, Lorg/andengine/opengl/util/GLState;->mModelViewGLMatrixStack:Lorg/andengine/opengl/util/GLMatrixStack;

    iget v5, v5, Lorg/andengine/opengl/util/GLMatrixStack;->mMatrixStackOffset:I

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 613
    iget-object v0, p0, Lorg/andengine/opengl/util/GLState;->mModelViewProjectionGLMatrix:[F

    return-object v0
.end method

.method public getProjectionGLMatrix()[F
    .locals 2

    .prologue
    .line 607
    iget-object v0, p0, Lorg/andengine/opengl/util/GLState;->mProjectionGLMatrixStack:Lorg/andengine/opengl/util/GLMatrixStack;

    iget-object v1, p0, Lorg/andengine/opengl/util/GLState;->mProjectionGLMatrix:[F

    invoke-virtual {v0, v1}, Lorg/andengine/opengl/util/GLMatrixStack;->getMatrix([F)V

    .line 608
    iget-object v0, p0, Lorg/andengine/opengl/util/GLState;->mProjectionGLMatrix:[F

    return-object v0
.end method

.method public getRenderer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/andengine/opengl/util/GLState;->mRenderer:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/andengine/opengl/util/GLState;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public glTexImage2D(IILandroid/graphics/Bitmap;ILorg/andengine/opengl/texture/PixelFormat;)V
    .locals 9
    .parameter "pTarget"
    .parameter "pLevel"
    .parameter "pBitmap"
    .parameter "pBorder"
    .parameter "pPixelFormat"

    .prologue
    .line 637
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {p3, p5, v0}, Lorg/andengine/opengl/util/GLHelper;->getPixels(Landroid/graphics/Bitmap;Lorg/andengine/opengl/texture/PixelFormat;Ljava/nio/ByteOrder;)Ljava/nio/Buffer;

    move-result-object v8

    .line 639
    .local v8, pixelBuffer:Ljava/nio/Buffer;
    invoke-virtual {p5}, Lorg/andengine/opengl/texture/PixelFormat;->getGLInternalFormat()I

    move-result v2

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p5}, Lorg/andengine/opengl/texture/PixelFormat;->getGLFormat()I

    move-result v6

    invoke-virtual {p5}, Lorg/andengine/opengl/texture/PixelFormat;->getGLType()I

    move-result v7

    move v0, p1

    move v1, p2

    move v5, p4

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 640
    return-void
.end method

.method public glTexSubImage2D(IIIILandroid/graphics/Bitmap;Lorg/andengine/opengl/texture/PixelFormat;)V
    .locals 9
    .parameter "pTarget"
    .parameter "pLevel"
    .parameter "pX"
    .parameter "pY"
    .parameter "pBitmap"
    .parameter "pPixelFormat"

    .prologue
    .line 649
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {p5, p6, v0}, Lorg/andengine/opengl/util/GLHelper;->getPixels(Landroid/graphics/Bitmap;Lorg/andengine/opengl/texture/PixelFormat;Ljava/nio/ByteOrder;)Ljava/nio/Buffer;

    move-result-object v8

    .line 651
    .local v8, pixelBuffer:Ljava/nio/Buffer;
    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {p6}, Lorg/andengine/opengl/texture/PixelFormat;->getGLFormat()I

    move-result v6

    invoke-virtual {p6}, Lorg/andengine/opengl/texture/PixelFormat;->getGLType()I

    move-result v7

    move v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 652
    return-void
.end method

.method public isBlendEnabled()Z
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lorg/andengine/opengl/util/GLState;->mBlendEnabled:Z

    return v0
.end method

.method public isCullingEnabled()Z
    .locals 1

    .prologue
    .line 246
    iget-boolean v0, p0, Lorg/andengine/opengl/util/GLState;->mCullingEnabled:Z

    return v0
.end method

.method public isDepthTestEnabled()Z
    .locals 1

    .prologue
    .line 322
    iget-boolean v0, p0, Lorg/andengine/opengl/util/GLState;->mDepthTestEnabled:Z

    return v0
.end method

.method public isDitherEnabled()Z
    .locals 1

    .prologue
    .line 284
    iget-boolean v0, p0, Lorg/andengine/opengl/util/GLState;->mDitherEnabled:Z

    return v0
.end method

.method public isScissorTestEnabled()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lorg/andengine/opengl/util/GLState;->mScissorTestEnabled:Z

    return v0
.end method

.method public isTexture(I)Z
    .locals 1
    .parameter "pHardwareTextureID"

    .prologue
    .line 481
    invoke-static {p1}, Landroid/opengl/GLES20;->glIsTexture(I)Z

    move-result v0

    return v0
.end method

.method public lineWidth(F)V
    .locals 1
    .parameter "pLineWidth"

    .prologue
    .line 531
    iget v0, p0, Lorg/andengine/opengl/util/GLState;->mLineWidth:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 532
    iput p1, p0, Lorg/andengine/opengl/util/GLState;->mLineWidth:F

    .line 533
    invoke-static {p1}, Landroid/opengl/GLES20;->glLineWidth(F)V

    .line 535
    :cond_0
    return-void
.end method

.method public loadModelViewGLMatrixIdentity()V
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lorg/andengine/opengl/util/GLState;->mModelViewGLMatrixStack:Lorg/andengine/opengl/util/GLMatrixStack;

    invoke-virtual {v0}, Lorg/andengine/opengl/util/GLMatrixStack;->glLoadIdentity()V

    .line 547
    return-void
.end method

.method public loadProjectionGLMatrixIdentity()V
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lorg/andengine/opengl/util/GLState;->mProjectionGLMatrixStack:Lorg/andengine/opengl/util/GLMatrixStack;

    invoke-virtual {v0}, Lorg/andengine/opengl/util/GLMatrixStack;->glLoadIdentity()V

    .line 579
    return-void
.end method

.method public orthoModelViewGLMatrixf(FFFFFF)V
    .locals 7
    .parameter "pLeft"
    .parameter "pRight"
    .parameter "pBottom"
    .parameter "pTop"
    .parameter "pZNear"
    .parameter "pZFar"

    .prologue
    .line 566
    iget-object v0, p0, Lorg/andengine/opengl/util/GLState;->mModelViewGLMatrixStack:Lorg/andengine/opengl/util/GLMatrixStack;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/andengine/opengl/util/GLMatrixStack;->glOrthof(FFFFFF)V

    .line 567
    return-void
.end method

.method public orthoProjectionGLMatrixf(FFFFFF)V
    .locals 7
    .parameter "pLeft"
    .parameter "pRight"
    .parameter "pBottom"
    .parameter "pTop"
    .parameter "pZNear"
    .parameter "pZFar"

    .prologue
    .line 598
    iget-object v0, p0, Lorg/andengine/opengl/util/GLState;->mProjectionGLMatrixStack:Lorg/andengine/opengl/util/GLMatrixStack;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/andengine/opengl/util/GLMatrixStack;->glOrthof(FFFFFF)V

    .line 599
    return-void
.end method

.method public popModelViewGLMatrix()V
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lorg/andengine/opengl/util/GLState;->mModelViewGLMatrixStack:Lorg/andengine/opengl/util/GLMatrixStack;

    invoke-virtual {v0}, Lorg/andengine/opengl/util/GLMatrixStack;->glPopMatrix()V

    .line 543
    return-void
.end method

.method public popProjectionGLMatrix()V
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lorg/andengine/opengl/util/GLState;->mProjectionGLMatrixStack:Lorg/andengine/opengl/util/GLMatrixStack;

    invoke-virtual {v0}, Lorg/andengine/opengl/util/GLMatrixStack;->glPopMatrix()V

    .line 575
    return-void
.end method

.method public pushModelViewGLMatrix()V
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lorg/andengine/opengl/util/GLState;->mModelViewGLMatrixStack:Lorg/andengine/opengl/util/GLMatrixStack;

    invoke-virtual {v0}, Lorg/andengine/opengl/util/GLMatrixStack;->glPushMatrix()V

    .line 539
    return-void
.end method

.method public pushProjectionGLMatrix()V
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lorg/andengine/opengl/util/GLState;->mProjectionGLMatrixStack:Lorg/andengine/opengl/util/GLMatrixStack;

    invoke-virtual {v0}, Lorg/andengine/opengl/util/GLMatrixStack;->glPushMatrix()V

    .line 571
    return-void
.end method

.method public reset(Lorg/andengine/engine/options/RenderOptions;Lorg/andengine/opengl/view/ConfigChooser;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 4
    .parameter "pRenderOptions"
    .parameter "pConfigChooser"
    .parameter "pEGLConfig"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 121
    const/16 v0, 0x1f02

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/andengine/opengl/util/GLState;->mVersion:Ljava/lang/String;

    .line 122
    const/16 v0, 0x1f01

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/andengine/opengl/util/GLState;->mRenderer:Ljava/lang/String;

    .line 123
    const/16 v0, 0x1f03

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/andengine/opengl/util/GLState;->mExtensions:Ljava/lang/String;

    .line 125
    const v0, 0x8869

    invoke-virtual {p0, v0}, Lorg/andengine/opengl/util/GLState;->getInteger(I)I

    move-result v0

    iput v0, p0, Lorg/andengine/opengl/util/GLState;->mMaximumVertexAttributeCount:I

    .line 126
    const v0, 0x8dfb

    invoke-virtual {p0, v0}, Lorg/andengine/opengl/util/GLState;->getInteger(I)I

    move-result v0

    iput v0, p0, Lorg/andengine/opengl/util/GLState;->mMaximumVertexShaderUniformVectorCount:I

    .line 127
    const v0, 0x8dfd

    invoke-virtual {p0, v0}, Lorg/andengine/opengl/util/GLState;->getInteger(I)I

    move-result v0

    iput v0, p0, Lorg/andengine/opengl/util/GLState;->mMaximumFragmentShaderUniformVectorCount:I

    .line 128
    const v0, 0x8872

    invoke-virtual {p0, v0}, Lorg/andengine/opengl/util/GLState;->getInteger(I)I

    move-result v0

    iput v0, p0, Lorg/andengine/opengl/util/GLState;->mMaximumTextureUnits:I

    .line 129
    const/16 v0, 0xd33

    invoke-virtual {p0, v0}, Lorg/andengine/opengl/util/GLState;->getInteger(I)I

    move-result v0

    iput v0, p0, Lorg/andengine/opengl/util/GLState;->mMaximumTextureSize:I

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VERSION: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/andengine/opengl/util/GLState;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/andengine/util/debug/Debug;->d(Ljava/lang/String;)V

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RENDERER: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/andengine/opengl/util/GLState;->mRenderer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/andengine/util/debug/Debug;->d(Ljava/lang/String;)V

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EGLCONFIG: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(Red="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lorg/andengine/opengl/view/ConfigChooser;->getRedSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Green="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lorg/andengine/opengl/view/ConfigChooser;->getGreenSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Blue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lorg/andengine/opengl/view/ConfigChooser;->getBlueSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lorg/andengine/opengl/view/ConfigChooser;->getAlphaSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Depth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lorg/andengine/opengl/view/ConfigChooser;->getDepthSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Stencil="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lorg/andengine/opengl/view/ConfigChooser;->getStencilSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/andengine/util/debug/Debug;->d(Ljava/lang/String;)V

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EXTENSIONS: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/andengine/opengl/util/GLState;->mExtensions:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/andengine/util/debug/Debug;->d(Ljava/lang/String;)V

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MAX_VERTEX_ATTRIBS: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/andengine/opengl/util/GLState;->mMaximumVertexAttributeCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/andengine/util/debug/Debug;->d(Ljava/lang/String;)V

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MAX_VERTEX_UNIFORM_VECTORS: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/andengine/opengl/util/GLState;->mMaximumVertexShaderUniformVectorCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/andengine/util/debug/Debug;->d(Ljava/lang/String;)V

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MAX_FRAGMENT_UNIFORM_VECTORS: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/andengine/opengl/util/GLState;->mMaximumFragmentShaderUniformVectorCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/andengine/util/debug/Debug;->d(Ljava/lang/String;)V

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MAX_TEXTURE_IMAGE_UNITS: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/andengine/opengl/util/GLState;->mMaximumTextureUnits:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/andengine/util/debug/Debug;->d(Ljava/lang/String;)V

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MAX_TEXTURE_SIZE: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/andengine/opengl/util/GLState;->mMaximumTextureSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/andengine/util/debug/Debug;->d(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lorg/andengine/opengl/util/GLState;->mModelViewGLMatrixStack:Lorg/andengine/opengl/util/GLMatrixStack;

    invoke-virtual {v0}, Lorg/andengine/opengl/util/GLMatrixStack;->reset()V

    .line 144
    iget-object v0, p0, Lorg/andengine/opengl/util/GLState;->mProjectionGLMatrixStack:Lorg/andengine/opengl/util/GLMatrixStack;

    invoke-virtual {v0}, Lorg/andengine/opengl/util/GLMatrixStack;->reset()V

    .line 146
    iput v2, p0, Lorg/andengine/opengl/util/GLState;->mCurrentArrayBufferID:I

    .line 147
    iput v2, p0, Lorg/andengine/opengl/util/GLState;->mCurrentIndexBufferID:I

    .line 148
    iput v2, p0, Lorg/andengine/opengl/util/GLState;->mCurrentShaderProgramID:I

    .line 149
    iget-object v0, p0, Lorg/andengine/opengl/util/GLState;->mCurrentBoundTextureIDs:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 150
    iput v2, p0, Lorg/andengine/opengl/util/GLState;->mCurrentFramebufferID:I

    .line 151
    iput v3, p0, Lorg/andengine/opengl/util/GLState;->mCurrentActiveTextureIndex:I

    .line 153
    iput v2, p0, Lorg/andengine/opengl/util/GLState;->mCurrentSourceBlendMode:I

    .line 154
    iput v2, p0, Lorg/andengine/opengl/util/GLState;->mCurrentDestinationBlendMode:I

    .line 156
    invoke-virtual {p0}, Lorg/andengine/opengl/util/GLState;->enableDither()Z

    .line 157
    invoke-virtual {p0}, Lorg/andengine/opengl/util/GLState;->enableDepthTest()Z

    .line 159
    invoke-virtual {p0}, Lorg/andengine/opengl/util/GLState;->disableBlend()Z

    .line 160
    invoke-virtual {p0}, Lorg/andengine/opengl/util/GLState;->disableCulling()Z

    .line 162
    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 163
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 164
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 166
    const/high16 v0, 0x3f80

    iput v0, p0, Lorg/andengine/opengl/util/GLState;->mLineWidth:F

    .line 167
    return-void
.end method

.method public resetGLMatrixStacks()V
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lorg/andengine/opengl/util/GLState;->mModelViewGLMatrixStack:Lorg/andengine/opengl/util/GLMatrixStack;

    invoke-virtual {v0}, Lorg/andengine/opengl/util/GLMatrixStack;->reset()V

    .line 626
    iget-object v0, p0, Lorg/andengine/opengl/util/GLState;->mProjectionGLMatrixStack:Lorg/andengine/opengl/util/GLMatrixStack;

    invoke-virtual {v0}, Lorg/andengine/opengl/util/GLMatrixStack;->reset()V

    .line 627
    return-void
.end method

.method public resetModelViewGLMatrixStack()V
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lorg/andengine/opengl/util/GLState;->mModelViewGLMatrixStack:Lorg/andengine/opengl/util/GLMatrixStack;

    invoke-virtual {v0}, Lorg/andengine/opengl/util/GLMatrixStack;->reset()V

    .line 618
    return-void
.end method

.method public resetProjectionGLMatrixStack()V
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lorg/andengine/opengl/util/GLState;->mProjectionGLMatrixStack:Lorg/andengine/opengl/util/GLMatrixStack;

    invoke-virtual {v0}, Lorg/andengine/opengl/util/GLMatrixStack;->reset()V

    .line 622
    return-void
.end method

.method public rotateModelViewGLMatrixf(FFFF)V
    .locals 1
    .parameter "pAngle"
    .parameter "pX"
    .parameter "pY"
    .parameter "pZ"

    .prologue
    .line 554
    iget-object v0, p0, Lorg/andengine/opengl/util/GLState;->mModelViewGLMatrixStack:Lorg/andengine/opengl/util/GLMatrixStack;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/andengine/opengl/util/GLMatrixStack;->glRotatef(FFFF)V

    .line 555
    return-void
.end method

.method public rotateProjectionGLMatrixf(FFFF)V
    .locals 1
    .parameter "pAngle"
    .parameter "pX"
    .parameter "pY"
    .parameter "pZ"

    .prologue
    .line 586
    iget-object v0, p0, Lorg/andengine/opengl/util/GLState;->mProjectionGLMatrixStack:Lorg/andengine/opengl/util/GLMatrixStack;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/andengine/opengl/util/GLMatrixStack;->glRotatef(FFFF)V

    .line 587
    return-void
.end method

.method public scaleModelViewGLMatrixf(FFI)V
    .locals 2
    .parameter "pScaleX"
    .parameter "pScaleY"
    .parameter "pScaleZ"

    .prologue
    .line 558
    iget-object v0, p0, Lorg/andengine/opengl/util/GLState;->mModelViewGLMatrixStack:Lorg/andengine/opengl/util/GLMatrixStack;

    int-to-float v1, p3

    invoke-virtual {v0, p1, p2, v1}, Lorg/andengine/opengl/util/GLMatrixStack;->glScalef(FFF)V

    .line 559
    return-void
.end method

.method public scaleProjectionGLMatrixf(FFF)V
    .locals 1
    .parameter "pScaleX"
    .parameter "pScaleY"
    .parameter "pScaleZ"

    .prologue
    .line 590
    iget-object v0, p0, Lorg/andengine/opengl/util/GLState;->mProjectionGLMatrixStack:Lorg/andengine/opengl/util/GLMatrixStack;

    invoke-virtual {v0, p1, p2, p3}, Lorg/andengine/opengl/util/GLMatrixStack;->glScalef(FFF)V

    .line 591
    return-void
.end method

.method public setBlendEnabled(Z)Z
    .locals 1
    .parameter "pEnabled"

    .prologue
    .line 238
    if-eqz p1, :cond_0

    .line 239
    invoke-virtual {p0}, Lorg/andengine/opengl/util/GLState;->enableBlend()Z

    move-result v0

    .line 241
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/andengine/opengl/util/GLState;->disableBlend()Z

    move-result v0

    goto :goto_0
.end method

.method public setCullingEnabled(Z)Z
    .locals 1
    .parameter "pEnabled"

    .prologue
    .line 276
    if-eqz p1, :cond_0

    .line 277
    invoke-virtual {p0}, Lorg/andengine/opengl/util/GLState;->enableCulling()Z

    move-result v0

    .line 279
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/andengine/opengl/util/GLState;->disableCulling()Z

    move-result v0

    goto :goto_0
.end method

.method public setDepthTestEnabled(Z)Z
    .locals 1
    .parameter "pEnabled"

    .prologue
    .line 352
    if-eqz p1, :cond_0

    .line 353
    invoke-virtual {p0}, Lorg/andengine/opengl/util/GLState;->enableDepthTest()Z

    move-result v0

    .line 355
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/andengine/opengl/util/GLState;->disableDepthTest()Z

    move-result v0

    goto :goto_0
.end method

.method public setDitherEnabled(Z)Z
    .locals 1
    .parameter "pEnabled"

    .prologue
    .line 314
    if-eqz p1, :cond_0

    .line 315
    invoke-virtual {p0}, Lorg/andengine/opengl/util/GLState;->enableDither()Z

    move-result v0

    .line 317
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/andengine/opengl/util/GLState;->disableDither()Z

    move-result v0

    goto :goto_0
.end method

.method public setScissorTestEnabled(Z)Z
    .locals 1
    .parameter "pEnabled"

    .prologue
    .line 200
    if-eqz p1, :cond_0

    .line 201
    invoke-virtual {p0}, Lorg/andengine/opengl/util/GLState;->enableScissorTest()Z

    move-result v0

    .line 203
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/andengine/opengl/util/GLState;->disableScissorTest()Z

    move-result v0

    goto :goto_0
.end method

.method public skewModelViewGLMatrixf(FF)V
    .locals 1
    .parameter "pSkewX"
    .parameter "pSkewY"

    .prologue
    .line 562
    iget-object v0, p0, Lorg/andengine/opengl/util/GLState;->mModelViewGLMatrixStack:Lorg/andengine/opengl/util/GLMatrixStack;

    invoke-virtual {v0, p1, p2}, Lorg/andengine/opengl/util/GLMatrixStack;->glSkewf(FF)V

    .line 563
    return-void
.end method

.method public skewProjectionGLMatrixf(FF)V
    .locals 1
    .parameter "pSkewX"
    .parameter "pSkewY"

    .prologue
    .line 594
    iget-object v0, p0, Lorg/andengine/opengl/util/GLState;->mProjectionGLMatrixStack:Lorg/andengine/opengl/util/GLMatrixStack;

    invoke-virtual {v0, p1, p2}, Lorg/andengine/opengl/util/GLMatrixStack;->glSkewf(FF)V

    .line 595
    return-void
.end method

.method public translateModelViewGLMatrixf(FFF)V
    .locals 1
    .parameter "pX"
    .parameter "pY"
    .parameter "pZ"

    .prologue
    .line 550
    iget-object v0, p0, Lorg/andengine/opengl/util/GLState;->mModelViewGLMatrixStack:Lorg/andengine/opengl/util/GLMatrixStack;

    invoke-virtual {v0, p1, p2, p3}, Lorg/andengine/opengl/util/GLMatrixStack;->glTranslatef(FFF)V

    .line 551
    return-void
.end method

.method public translateProjectionGLMatrixf(FFF)V
    .locals 1
    .parameter "pX"
    .parameter "pY"
    .parameter "pZ"

    .prologue
    .line 582
    iget-object v0, p0, Lorg/andengine/opengl/util/GLState;->mProjectionGLMatrixStack:Lorg/andengine/opengl/util/GLMatrixStack;

    invoke-virtual {v0, p1, p2, p3}, Lorg/andengine/opengl/util/GLMatrixStack;->glTranslatef(FFF)V

    .line 583
    return-void
.end method

.method public useProgram(I)V
    .locals 1
    .parameter "pShaderProgramID"

    .prologue
    .line 462
    iget v0, p0, Lorg/andengine/opengl/util/GLState;->mCurrentShaderProgramID:I

    if-eq v0, p1, :cond_0

    .line 463
    iput p1, p0, Lorg/andengine/opengl/util/GLState;->mCurrentShaderProgramID:I

    .line 464
    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 466
    :cond_0
    return-void
.end method
