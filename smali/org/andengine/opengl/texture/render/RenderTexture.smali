.class public Lorg/andengine/opengl/texture/render/RenderTexture;
.super Lorg/andengine/opengl/texture/Texture;
.source "RenderTexture.java"


# static fields
.field private static final CLEARCOLOR_CONTAINER:[F = null

.field private static final CLEARCOLOR_CONTAINER_ALPHA_INDEX:I = 0x3

.field private static final CLEARCOLOR_CONTAINER_BLUE_INDEX:I = 0x2

.field private static final CLEARCOLOR_CONTAINER_GREEN_INDEX:I = 0x1

.field private static final CLEARCOLOR_CONTAINER_RED_INDEX:I = 0x0

.field private static final VIEWPORT_CONTAINER:[I = null

.field private static final VIEWPORT_CONTAINER_HEIGHT_INDEX:I = 0x3

.field private static final VIEWPORT_CONTAINER_WIDTH_INDEX:I = 0x2

.field private static final VIEWPORT_CONTAINER_X_INDEX:I = 0x0

.field private static final VIEWPORT_CONTAINER_Y_INDEX:I = 0x1


# instance fields
.field protected mFramebufferObjectID:I

.field protected final mHeight:I

.field private mInitialized:Z

.field protected final mPixelFormat:Lorg/andengine/opengl/texture/PixelFormat;

.field private mPreviousFramebufferObjectID:I

.field private mPreviousViewPortHeight:I

.field private mPreviousViewPortWidth:I

.field private mPreviousViewPortX:I

.field private mPreviousViewPortY:I

.field protected final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 35
    new-array v0, v1, [I

    sput-object v0, Lorg/andengine/opengl/texture/render/RenderTexture;->VIEWPORT_CONTAINER:[I

    .line 36
    new-array v0, v1, [F

    sput-object v0, Lorg/andengine/opengl/texture/render/RenderTexture;->CLEARCOLOR_CONTAINER:[F

    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/TextureManager;II)V
    .locals 6
    .parameter "pTextureManager"
    .parameter "pWidth"
    .parameter "pHeight"

    .prologue
    .line 70
    sget-object v4, Lorg/andengine/opengl/texture/PixelFormat;->RGBA_8888:Lorg/andengine/opengl/texture/PixelFormat;

    sget-object v5, Lorg/andengine/opengl/texture/TextureOptions;->NEAREST:Lorg/andengine/opengl/texture/TextureOptions;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/andengine/opengl/texture/render/RenderTexture;-><init>(Lorg/andengine/opengl/texture/TextureManager;IILorg/andengine/opengl/texture/PixelFormat;Lorg/andengine/opengl/texture/TextureOptions;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/TextureManager;IILorg/andengine/opengl/texture/PixelFormat;)V
    .locals 6
    .parameter "pTextureManager"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pPixelFormat"

    .prologue
    .line 74
    sget-object v5, Lorg/andengine/opengl/texture/TextureOptions;->NEAREST:Lorg/andengine/opengl/texture/TextureOptions;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/andengine/opengl/texture/render/RenderTexture;-><init>(Lorg/andengine/opengl/texture/TextureManager;IILorg/andengine/opengl/texture/PixelFormat;Lorg/andengine/opengl/texture/TextureOptions;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/TextureManager;IILorg/andengine/opengl/texture/PixelFormat;Lorg/andengine/opengl/texture/TextureOptions;)V
    .locals 7
    .parameter "pTextureManager"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pPixelFormat"
    .parameter "pTextureOptions"

    .prologue
    .line 82
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/andengine/opengl/texture/render/RenderTexture;-><init>(Lorg/andengine/opengl/texture/TextureManager;IILorg/andengine/opengl/texture/PixelFormat;Lorg/andengine/opengl/texture/TextureOptions;Lorg/andengine/opengl/texture/ITextureStateListener;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/TextureManager;IILorg/andengine/opengl/texture/PixelFormat;Lorg/andengine/opengl/texture/TextureOptions;Lorg/andengine/opengl/texture/ITextureStateListener;)V
    .locals 0
    .parameter "pTextureManager"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pPixelFormat"
    .parameter "pTextureOptions"
    .parameter "pTextureStateListener"

    .prologue
    .line 86
    invoke-direct {p0, p1, p4, p5, p6}, Lorg/andengine/opengl/texture/Texture;-><init>(Lorg/andengine/opengl/texture/TextureManager;Lorg/andengine/opengl/texture/PixelFormat;Lorg/andengine/opengl/texture/TextureOptions;Lorg/andengine/opengl/texture/ITextureStateListener;)V

    .line 88
    iput p2, p0, Lorg/andengine/opengl/texture/render/RenderTexture;->mWidth:I

    .line 89
    iput p3, p0, Lorg/andengine/opengl/texture/render/RenderTexture;->mHeight:I

    .line 91
    iput-object p4, p0, Lorg/andengine/opengl/texture/render/RenderTexture;->mPixelFormat:Lorg/andengine/opengl/texture/PixelFormat;

    .line 92
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/TextureManager;IILorg/andengine/opengl/texture/TextureOptions;)V
    .locals 6
    .parameter "pTextureManager"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pTextureOptions"

    .prologue
    .line 78
    sget-object v4, Lorg/andengine/opengl/texture/PixelFormat;->RGBA_8888:Lorg/andengine/opengl/texture/PixelFormat;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/andengine/opengl/texture/render/RenderTexture;-><init>(Lorg/andengine/opengl/texture/TextureManager;IILorg/andengine/opengl/texture/PixelFormat;Lorg/andengine/opengl/texture/TextureOptions;)V

    .line 79
    return-void
.end method


# virtual methods
.method public begin(Lorg/andengine/opengl/util/GLState;)V
    .locals 1
    .parameter "pGLState"

    .prologue
    const/4 v0, 0x0

    .line 166
    invoke-virtual {p0, p1, v0, v0}, Lorg/andengine/opengl/texture/render/RenderTexture;->begin(Lorg/andengine/opengl/util/GLState;ZZ)V

    .line 167
    return-void
.end method

.method public begin(Lorg/andengine/opengl/util/GLState;FFFF)V
    .locals 8
    .parameter "pGLState"
    .parameter "pRed"
    .parameter "pGreen"
    .parameter "pBlue"
    .parameter "pAlpha"

    .prologue
    const/4 v2, 0x0

    .line 189
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lorg/andengine/opengl/texture/render/RenderTexture;->begin(Lorg/andengine/opengl/util/GLState;ZZFFFF)V

    .line 190
    return-void
.end method

.method public begin(Lorg/andengine/opengl/util/GLState;Lorg/andengine/util/color/Color;)V
    .locals 6
    .parameter "pGLState"
    .parameter "pColor"

    .prologue
    .line 176
    invoke-virtual {p2}, Lorg/andengine/util/color/Color;->getRed()F

    move-result v2

    invoke-virtual {p2}, Lorg/andengine/util/color/Color;->getGreen()F

    move-result v3

    invoke-virtual {p2}, Lorg/andengine/util/color/Color;->getBlue()F

    move-result v4

    invoke-virtual {p2}, Lorg/andengine/util/color/Color;->getAlpha()F

    move-result v5

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/andengine/opengl/texture/render/RenderTexture;->begin(Lorg/andengine/opengl/util/GLState;FFFF)V

    .line 177
    return-void
.end method

.method public begin(Lorg/andengine/opengl/util/GLState;ZZ)V
    .locals 7
    .parameter "pGLState"
    .parameter "pFlipX"
    .parameter "pFlipY"

    .prologue
    const/4 v6, 0x0

    .line 229
    invoke-virtual {p0}, Lorg/andengine/opengl/texture/render/RenderTexture;->savePreviousViewport()V

    .line 230
    iget v0, p0, Lorg/andengine/opengl/texture/render/RenderTexture;->mWidth:I

    iget v5, p0, Lorg/andengine/opengl/texture/render/RenderTexture;->mHeight:I

    invoke-static {v6, v6, v0, v5}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 232
    invoke-virtual {p1}, Lorg/andengine/opengl/util/GLState;->pushProjectionGLMatrix()V

    .line 238
    if-eqz p2, :cond_0

    .line 239
    iget v0, p0, Lorg/andengine/opengl/texture/render/RenderTexture;->mWidth:I

    int-to-float v1, v0

    .line 240
    .local v1, left:F
    const/4 v2, 0x0

    .line 245
    .local v2, right:F
    :goto_0
    if-eqz p3, :cond_1

    .line 246
    iget v0, p0, Lorg/andengine/opengl/texture/render/RenderTexture;->mHeight:I

    int-to-float v4, v0

    .line 247
    .local v4, top:F
    const/4 v3, 0x0

    .line 252
    .local v3, bottom:F
    :goto_1
    const/high16 v5, -0x4080

    const/high16 v6, 0x3f80

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lorg/andengine/opengl/util/GLState;->orthoProjectionGLMatrixf(FFFFFF)V

    .line 254
    invoke-virtual {p0, p1}, Lorg/andengine/opengl/texture/render/RenderTexture;->savePreviousFramebufferObjectID(Lorg/andengine/opengl/util/GLState;)V

    .line 255
    iget v0, p0, Lorg/andengine/opengl/texture/render/RenderTexture;->mFramebufferObjectID:I

    invoke-virtual {p1, v0}, Lorg/andengine/opengl/util/GLState;->bindFramebuffer(I)V

    .line 257
    invoke-virtual {p1}, Lorg/andengine/opengl/util/GLState;->pushModelViewGLMatrix()V

    .line 258
    invoke-virtual {p1}, Lorg/andengine/opengl/util/GLState;->loadModelViewGLMatrixIdentity()V

    .line 259
    return-void

    .line 242
    .end local v1           #left:F
    .end local v2           #right:F
    .end local v3           #bottom:F
    .end local v4           #top:F
    :cond_0
    const/4 v1, 0x0

    .line 243
    .restart local v1       #left:F
    iget v0, p0, Lorg/andengine/opengl/texture/render/RenderTexture;->mWidth:I

    int-to-float v2, v0

    .restart local v2       #right:F
    goto :goto_0

    .line 249
    :cond_1
    const/4 v4, 0x0

    .line 250
    .restart local v4       #top:F
    iget v0, p0, Lorg/andengine/opengl/texture/render/RenderTexture;->mHeight:I

    int-to-float v3, v0

    .restart local v3       #bottom:F
    goto :goto_1
.end method

.method public begin(Lorg/andengine/opengl/util/GLState;ZZFFFF)V
    .locals 5
    .parameter "pGLState"
    .parameter "pFlipX"
    .parameter "pFlipY"
    .parameter "pRed"
    .parameter "pGreen"
    .parameter "pBlue"
    .parameter "pAlpha"

    .prologue
    const/4 v2, 0x0

    .line 212
    invoke-virtual {p0, p1, p2, p3}, Lorg/andengine/opengl/texture/render/RenderTexture;->begin(Lorg/andengine/opengl/util/GLState;ZZ)V

    .line 215
    const/16 v0, 0xc22

    sget-object v1, Lorg/andengine/opengl/texture/render/RenderTexture;->CLEARCOLOR_CONTAINER:[F

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGetFloatv(I[FI)V

    .line 217
    invoke-static {p4, p5, p6, p7}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 218
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 221
    sget-object v0, Lorg/andengine/opengl/texture/render/RenderTexture;->CLEARCOLOR_CONTAINER:[F

    aget v0, v0, v2

    sget-object v1, Lorg/andengine/opengl/texture/render/RenderTexture;->CLEARCOLOR_CONTAINER:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    sget-object v2, Lorg/andengine/opengl/texture/render/RenderTexture;->CLEARCOLOR_CONTAINER:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    sget-object v3, Lorg/andengine/opengl/texture/render/RenderTexture;->CLEARCOLOR_CONTAINER:[F

    const/4 v4, 0x3

    aget v3, v3, v4

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 222
    return-void
.end method

.method public begin(Lorg/andengine/opengl/util/GLState;ZZLorg/andengine/util/color/Color;)V
    .locals 8
    .parameter "pGLState"
    .parameter "pFlipX"
    .parameter "pFlipY"
    .parameter "pColor"

    .prologue
    .line 199
    invoke-virtual {p4}, Lorg/andengine/util/color/Color;->getRed()F

    move-result v4

    invoke-virtual {p4}, Lorg/andengine/util/color/Color;->getGreen()F

    move-result v5

    invoke-virtual {p4}, Lorg/andengine/util/color/Color;->getBlue()F

    move-result v6

    invoke-virtual {p4}, Lorg/andengine/util/color/Color;->getAlpha()F

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v7}, Lorg/andengine/opengl/texture/render/RenderTexture;->begin(Lorg/andengine/opengl/util/GLState;ZZFFFF)V

    .line 200
    return-void
.end method

.method public destroy(Lorg/andengine/opengl/util/GLState;)V
    .locals 1
    .parameter "pGLState"

    .prologue
    .line 316
    invoke-virtual {p0, p1}, Lorg/andengine/opengl/texture/render/RenderTexture;->unloadFromHardware(Lorg/andengine/opengl/util/GLState;)V

    .line 318
    iget v0, p0, Lorg/andengine/opengl/texture/render/RenderTexture;->mFramebufferObjectID:I

    invoke-virtual {p1, v0}, Lorg/andengine/opengl/util/GLState;->deleteFramebuffer(I)V

    .line 320
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/andengine/opengl/texture/render/RenderTexture;->mInitialized:Z

    .line 321
    return-void
.end method

.method public end(Lorg/andengine/opengl/util/GLState;)V
    .locals 1
    .parameter "pGLState"

    .prologue
    const/4 v0, 0x0

    .line 284
    invoke-virtual {p0, p1, v0, v0}, Lorg/andengine/opengl/texture/render/RenderTexture;->end(Lorg/andengine/opengl/util/GLState;ZZ)V

    .line 285
    return-void
.end method

.method public end(Lorg/andengine/opengl/util/GLState;ZZ)V
    .locals 0
    .parameter "pGLState"
    .parameter "pFlush"
    .parameter "pFinish"

    .prologue
    .line 300
    if-eqz p3, :cond_1

    .line 301
    invoke-virtual {p0, p1}, Lorg/andengine/opengl/texture/render/RenderTexture;->finish(Lorg/andengine/opengl/util/GLState;)V

    .line 306
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/andengine/opengl/util/GLState;->popModelViewGLMatrix()V

    .line 308
    invoke-virtual {p0, p1}, Lorg/andengine/opengl/texture/render/RenderTexture;->restorePreviousFramebufferObjectID(Lorg/andengine/opengl/util/GLState;)V

    .line 310
    invoke-virtual {p1}, Lorg/andengine/opengl/util/GLState;->popProjectionGLMatrix()V

    .line 312
    invoke-virtual {p0}, Lorg/andengine/opengl/texture/render/RenderTexture;->resotorePreviousViewport()V

    .line 313
    return-void

    .line 302
    :cond_1
    if-eqz p2, :cond_0

    .line 303
    invoke-virtual {p0, p1}, Lorg/andengine/opengl/texture/render/RenderTexture;->flush(Lorg/andengine/opengl/util/GLState;)V

    goto :goto_0
.end method

.method public finish(Lorg/andengine/opengl/util/GLState;)V
    .locals 0
    .parameter "pGLState"

    .prologue
    .line 272
    invoke-virtual {p1}, Lorg/andengine/opengl/util/GLState;->finish()V

    .line 273
    return-void
.end method

.method public flush(Lorg/andengine/opengl/util/GLState;)V
    .locals 0
    .parameter "pGLState"

    .prologue
    .line 265
    invoke-virtual {p1}, Lorg/andengine/opengl/util/GLState;->flush()V

    .line 266
    return-void
.end method

.method public getBitmap(Lorg/andengine/opengl/util/GLState;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "pGLState"

    .prologue
    const/4 v2, 0x0

    .line 361
    iget v4, p0, Lorg/andengine/opengl/texture/render/RenderTexture;->mWidth:I

    iget v5, p0, Lorg/andengine/opengl/texture/render/RenderTexture;->mHeight:I

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lorg/andengine/opengl/texture/render/RenderTexture;->getBitmap(Lorg/andengine/opengl/util/GLState;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBitmap(Lorg/andengine/opengl/util/GLState;IIII)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "pGLState"
    .parameter "pX"
    .parameter "pY"
    .parameter "pWidth"
    .parameter "pHeight"

    .prologue
    .line 365
    iget-object v0, p0, Lorg/andengine/opengl/texture/render/RenderTexture;->mPixelFormat:Lorg/andengine/opengl/texture/PixelFormat;

    sget-object v1, Lorg/andengine/opengl/texture/PixelFormat;->RGBA_8888:Lorg/andengine/opengl/texture/PixelFormat;

    if-eq v0, v1, :cond_0

    .line 366
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Currently only \'PixelFormat."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lorg/andengine/opengl/texture/PixelFormat;->RGBA_8888:Lorg/andengine/opengl/texture/PixelFormat;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is supported to be retrieved as a Bitmap."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 369
    :cond_0
    invoke-virtual/range {p0 .. p5}, Lorg/andengine/opengl/texture/render/RenderTexture;->getPixelsARGB_8888(Lorg/andengine/opengl/util/GLState;IIII)[I

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p4, p5, v1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lorg/andengine/opengl/texture/render/RenderTexture;->mHeight:I

    return v0
.end method

.method public getPixelsARGB_8888(Lorg/andengine/opengl/util/GLState;)[I
    .locals 6
    .parameter "pGLState"

    .prologue
    const/4 v2, 0x0

    .line 345
    iget v4, p0, Lorg/andengine/opengl/texture/render/RenderTexture;->mWidth:I

    iget v5, p0, Lorg/andengine/opengl/texture/render/RenderTexture;->mHeight:I

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lorg/andengine/opengl/texture/render/RenderTexture;->getPixelsARGB_8888(Lorg/andengine/opengl/util/GLState;IIII)[I

    move-result-object v0

    return-object v0
.end method

.method public getPixelsARGB_8888(Lorg/andengine/opengl/util/GLState;IIII)[I
    .locals 8
    .parameter "pGLState"
    .parameter "pX"
    .parameter "pY"
    .parameter "pWidth"
    .parameter "pHeight"

    .prologue
    .line 349
    mul-int v0, p4, p5

    new-array v7, v0, [I

    .line 350
    .local v7, pixelsRGBA_8888:[I
    invoke-static {v7}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v6

    .line 351
    .local v6, glPixelBuffer:Ljava/nio/IntBuffer;
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 353
    invoke-virtual {p0, p1}, Lorg/andengine/opengl/texture/render/RenderTexture;->begin(Lorg/andengine/opengl/util/GLState;)V

    .line 354
    iget-object v0, p0, Lorg/andengine/opengl/texture/render/RenderTexture;->mPixelFormat:Lorg/andengine/opengl/texture/PixelFormat;

    invoke-virtual {v0}, Lorg/andengine/opengl/texture/PixelFormat;->getGLFormat()I

    move-result v4

    iget-object v0, p0, Lorg/andengine/opengl/texture/render/RenderTexture;->mPixelFormat:Lorg/andengine/opengl/texture/PixelFormat;

    invoke-virtual {v0}, Lorg/andengine/opengl/texture/PixelFormat;->getGLType()I

    move-result v5

    move v0, p2

    move v1, p3

    move v2, p4

    move v3, p5

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 355
    invoke-virtual {p0, p1}, Lorg/andengine/opengl/texture/render/RenderTexture;->end(Lorg/andengine/opengl/util/GLState;)V

    .line 357
    invoke-static {v7}, Lorg/andengine/opengl/util/GLHelper;->convertRGBA_8888toARGB_8888([I)[I

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lorg/andengine/opengl/texture/render/RenderTexture;->mWidth:I

    return v0
.end method

.method public init(Lorg/andengine/opengl/util/GLState;)V
    .locals 6
    .parameter "pGLState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/opengl/exception/GLFrameBufferException;,
            Lorg/andengine/opengl/exception/GLException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 130
    invoke-virtual {p0, p1}, Lorg/andengine/opengl/texture/render/RenderTexture;->savePreviousFramebufferObjectID(Lorg/andengine/opengl/util/GLState;)V

    .line 133
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/andengine/opengl/texture/render/RenderTexture;->loadToHardware(Lorg/andengine/opengl/util/GLState;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 139
    :goto_0
    invoke-virtual {p1, v5}, Lorg/andengine/opengl/util/GLState;->bindTexture(I)V

    .line 142
    invoke-virtual {p1}, Lorg/andengine/opengl/util/GLState;->generateFramebuffer()I

    move-result v1

    iput v1, p0, Lorg/andengine/opengl/texture/render/RenderTexture;->mFramebufferObjectID:I

    .line 143
    iget v1, p0, Lorg/andengine/opengl/texture/render/RenderTexture;->mFramebufferObjectID:I

    invoke-virtual {p1, v1}, Lorg/andengine/opengl/util/GLState;->bindFramebuffer(I)V

    .line 146
    const v1, 0x8d40

    const v2, 0x8ce0

    const/16 v3, 0xde1

    iget v4, p0, Lorg/andengine/opengl/texture/render/RenderTexture;->mHardwareTextureID:I

    invoke-static {v1, v2, v3, v4, v5}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 149
    :try_start_1
    invoke-virtual {p1}, Lorg/andengine/opengl/util/GLState;->checkFramebufferStatus()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/andengine/opengl/exception/GLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 155
    invoke-virtual {p0, p1}, Lorg/andengine/opengl/texture/render/RenderTexture;->restorePreviousFramebufferObjectID(Lorg/andengine/opengl/util/GLState;)V

    .line 158
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/andengine/opengl/texture/render/RenderTexture;->mInitialized:Z

    .line 159
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, e:Lorg/andengine/opengl/exception/GLException;
    :try_start_2
    invoke-virtual {p0, p1}, Lorg/andengine/opengl/texture/render/RenderTexture;->destroy(Lorg/andengine/opengl/util/GLState;)V

    .line 153
    new-instance v1, Lorg/andengine/opengl/exception/RenderTextureInitializationException;

    invoke-direct {v1, v0}, Lorg/andengine/opengl/exception/RenderTextureInitializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 154
    .end local v0           #e:Lorg/andengine/opengl/exception/GLException;
    :catchall_0
    move-exception v1

    .line 155
    invoke-virtual {p0, p1}, Lorg/andengine/opengl/texture/render/RenderTexture;->restorePreviousFramebufferObjectID(Lorg/andengine/opengl/util/GLState;)V

    .line 156
    throw v1

    .line 134
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lorg/andengine/opengl/texture/render/RenderTexture;->mInitialized:Z

    return v0
.end method

.method protected resotorePreviousViewport()V
    .locals 4

    .prologue
    .line 341
    iget v0, p0, Lorg/andengine/opengl/texture/render/RenderTexture;->mPreviousViewPortX:I

    iget v1, p0, Lorg/andengine/opengl/texture/render/RenderTexture;->mPreviousViewPortY:I

    iget v2, p0, Lorg/andengine/opengl/texture/render/RenderTexture;->mPreviousViewPortWidth:I

    iget v3, p0, Lorg/andengine/opengl/texture/render/RenderTexture;->mPreviousViewPortHeight:I

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 342
    return-void
.end method

.method protected restorePreviousFramebufferObjectID(Lorg/andengine/opengl/util/GLState;)V
    .locals 1
    .parameter "pGLState"

    .prologue
    .line 328
    iget v0, p0, Lorg/andengine/opengl/texture/render/RenderTexture;->mPreviousFramebufferObjectID:I

    invoke-virtual {p1, v0}, Lorg/andengine/opengl/util/GLState;->bindFramebuffer(I)V

    .line 329
    return-void
.end method

.method protected savePreviousFramebufferObjectID(Lorg/andengine/opengl/util/GLState;)V
    .locals 1
    .parameter "pGLState"

    .prologue
    .line 324
    invoke-virtual {p1}, Lorg/andengine/opengl/util/GLState;->getActiveFramebuffer()I

    move-result v0

    iput v0, p0, Lorg/andengine/opengl/texture/render/RenderTexture;->mPreviousFramebufferObjectID:I

    .line 325
    return-void
.end method

.method protected savePreviousViewport()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 332
    const/16 v0, 0xba2

    sget-object v1, Lorg/andengine/opengl/texture/render/RenderTexture;->VIEWPORT_CONTAINER:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 334
    sget-object v0, Lorg/andengine/opengl/texture/render/RenderTexture;->VIEWPORT_CONTAINER:[I

    aget v0, v0, v2

    iput v0, p0, Lorg/andengine/opengl/texture/render/RenderTexture;->mPreviousViewPortX:I

    .line 335
    sget-object v0, Lorg/andengine/opengl/texture/render/RenderTexture;->VIEWPORT_CONTAINER:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lorg/andengine/opengl/texture/render/RenderTexture;->mPreviousViewPortY:I

    .line 336
    sget-object v0, Lorg/andengine/opengl/texture/render/RenderTexture;->VIEWPORT_CONTAINER:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    iput v0, p0, Lorg/andengine/opengl/texture/render/RenderTexture;->mPreviousViewPortWidth:I

    .line 337
    sget-object v0, Lorg/andengine/opengl/texture/render/RenderTexture;->VIEWPORT_CONTAINER:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    iput v0, p0, Lorg/andengine/opengl/texture/render/RenderTexture;->mPreviousViewPortHeight:I

    .line 338
    return-void
.end method

.method protected writeTextureToHardware(Lorg/andengine/opengl/util/GLState;)V
    .locals 9
    .parameter "pGLState"

    .prologue
    const/4 v1, 0x0

    .line 118
    const/16 v0, 0xde1

    iget-object v2, p0, Lorg/andengine/opengl/texture/render/RenderTexture;->mPixelFormat:Lorg/andengine/opengl/texture/PixelFormat;

    invoke-virtual {v2}, Lorg/andengine/opengl/texture/PixelFormat;->getGLInternalFormat()I

    move-result v2

    iget v3, p0, Lorg/andengine/opengl/texture/render/RenderTexture;->mWidth:I

    iget v4, p0, Lorg/andengine/opengl/texture/render/RenderTexture;->mHeight:I

    iget-object v5, p0, Lorg/andengine/opengl/texture/render/RenderTexture;->mPixelFormat:Lorg/andengine/opengl/texture/PixelFormat;

    invoke-virtual {v5}, Lorg/andengine/opengl/texture/PixelFormat;->getGLFormat()I

    move-result v6

    iget-object v5, p0, Lorg/andengine/opengl/texture/render/RenderTexture;->mPixelFormat:Lorg/andengine/opengl/texture/PixelFormat;

    invoke-virtual {v5}, Lorg/andengine/opengl/texture/PixelFormat;->getGLType()I

    move-result v7

    const/4 v8, 0x0

    move v5, v1

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 119
    return-void
.end method
