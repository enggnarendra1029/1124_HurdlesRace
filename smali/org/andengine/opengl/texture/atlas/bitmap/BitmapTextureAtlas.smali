.class public Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;
.super Lorg/andengine/opengl/texture/atlas/TextureAtlas;
.source "BitmapTextureAtlas.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/andengine/opengl/texture/atlas/TextureAtlas",
        "<",
        "Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;",
        ">;"
    }
.end annotation


# instance fields
.field private final mBitmapTextureFormat:Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;


# direct methods
.method public constructor <init>(Lorg/andengine/opengl/texture/TextureManager;II)V
    .locals 1
    .parameter "pTextureManager"
    .parameter "pWidth"
    .parameter "pHeight"

    .prologue
    .line 48
    sget-object v0, Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;->RGBA_8888:Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(Lorg/andengine/opengl/texture/TextureManager;IILorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/TextureManager;IILorg/andengine/opengl/texture/TextureOptions;)V
    .locals 7
    .parameter "pTextureManager"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pTextureOptions"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 81
    sget-object v4, Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;->RGBA_8888:Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(Lorg/andengine/opengl/texture/TextureManager;IILorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;Lorg/andengine/opengl/texture/TextureOptions;Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/TextureManager;IILorg/andengine/opengl/texture/TextureOptions;Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;)V
    .locals 7
    .parameter "pTextureManager"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pTextureOptions"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/opengl/texture/TextureManager;",
            "II",
            "Lorg/andengine/opengl/texture/TextureOptions;",
            "Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener",
            "<",
            "Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 99
    .local p5, pTextureAtlasStateListener:Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;,"Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener<Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;>;"
    sget-object v4, Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;->RGBA_8888:Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(Lorg/andengine/opengl/texture/TextureManager;IILorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;Lorg/andengine/opengl/texture/TextureOptions;Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/TextureManager;IILorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;)V
    .locals 7
    .parameter "pTextureManager"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/opengl/texture/TextureManager;",
            "II",
            "Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener",
            "<",
            "Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p4, pTextureAtlasStateListener:Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;,"Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener<Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;>;"
    sget-object v4, Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;->RGBA_8888:Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;

    sget-object v5, Lorg/andengine/opengl/texture/TextureOptions;->DEFAULT:Lorg/andengine/opengl/texture/TextureOptions;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(Lorg/andengine/opengl/texture/TextureManager;IILorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;Lorg/andengine/opengl/texture/TextureOptions;Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/TextureManager;IILorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;)V
    .locals 7
    .parameter "pTextureManager"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pBitmapTextureFormat"

    .prologue
    .line 55
    sget-object v5, Lorg/andengine/opengl/texture/TextureOptions;->DEFAULT:Lorg/andengine/opengl/texture/TextureOptions;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(Lorg/andengine/opengl/texture/TextureManager;IILorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;Lorg/andengine/opengl/texture/TextureOptions;Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/TextureManager;IILorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;Lorg/andengine/opengl/texture/TextureOptions;)V
    .locals 7
    .parameter "pTextureManager"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pBitmapTextureFormat"
    .parameter "pTextureOptions"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 89
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(Lorg/andengine/opengl/texture/TextureManager;IILorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;Lorg/andengine/opengl/texture/TextureOptions;Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/TextureManager;IILorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;Lorg/andengine/opengl/texture/TextureOptions;Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;)V
    .locals 7
    .parameter "pTextureManager"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pBitmapTextureFormat"
    .parameter "pTextureOptions"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/opengl/texture/TextureManager;",
            "II",
            "Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;",
            "Lorg/andengine/opengl/texture/TextureOptions;",
            "Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener",
            "<",
            "Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 108
    .local p6, pTextureAtlasStateListener:Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;,"Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener<Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;>;"
    invoke-virtual {p4}, Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;->getPixelFormat()Lorg/andengine/opengl/texture/PixelFormat;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/andengine/opengl/texture/atlas/TextureAtlas;-><init>(Lorg/andengine/opengl/texture/TextureManager;IILorg/andengine/opengl/texture/PixelFormat;Lorg/andengine/opengl/texture/TextureOptions;Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;)V

    .line 110
    iput-object p4, p0, Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;->mBitmapTextureFormat:Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;

    .line 111
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/TextureManager;IILorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;)V
    .locals 7
    .parameter "pTextureManager"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pBitmapTextureFormat"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/opengl/texture/TextureManager;",
            "II",
            "Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;",
            "Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener",
            "<",
            "Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p5, pTextureAtlasStateListener:Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;,"Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener<Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;>;"
    sget-object v5, Lorg/andengine/opengl/texture/TextureOptions;->DEFAULT:Lorg/andengine/opengl/texture/TextureOptions;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(Lorg/andengine/opengl/texture/TextureManager;IILorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;Lorg/andengine/opengl/texture/TextureOptions;Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;)V

    .line 73
    return-void
.end method


# virtual methods
.method public addEmptyTextureAtlasSource(IIII)V
    .locals 1
    .parameter "pTextureX"
    .parameter "pTextureY"
    .parameter "pWidth"
    .parameter "pHeight"

    .prologue
    .line 127
    new-instance v0, Lorg/andengine/opengl/texture/atlas/bitmap/source/EmptyBitmapTextureAtlasSource;

    invoke-direct {v0, p3, p4}, Lorg/andengine/opengl/texture/atlas/bitmap/source/EmptyBitmapTextureAtlasSource;-><init>(II)V

    invoke-virtual {p0, v0, p1, p2}, Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;->addTextureAtlasSource(Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;II)V

    .line 128
    return-void
.end method

.method public getBitmapTextureFormat()Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;->mBitmapTextureFormat:Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;

    return-object v0
.end method

.method protected writeTextureToHardware(Lorg/andengine/opengl/util/GLState;)V
    .locals 34
    .parameter "pGLState"

    .prologue
    .line 136
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;->mBitmapTextureFormat:Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;

    invoke-virtual {v4}, Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;->getPixelFormat()Lorg/andengine/opengl/texture/PixelFormat;

    move-result-object v28

    .line 137
    .local v28, pixelFormat:Lorg/andengine/opengl/texture/PixelFormat;
    invoke-virtual/range {v28 .. v28}, Lorg/andengine/opengl/texture/PixelFormat;->getGLInternalFormat()I

    move-result v6

    .line 138
    .local v6, glInternalFormat:I
    invoke-virtual/range {v28 .. v28}, Lorg/andengine/opengl/texture/PixelFormat;->getGLFormat()I

    move-result v10

    .line 139
    .local v10, glFormat:I
    invoke-virtual/range {v28 .. v28}, Lorg/andengine/opengl/texture/PixelFormat;->getGLType()I

    move-result v11

    .line 141
    .local v11, glType:I
    const/16 v4, 0xde1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;->mWidth:I

    move-object/from16 v0, p0

    iget v8, v0, Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;->mHeight:I

    const/4 v9, 0x0

    const/4 v12, 0x0

    invoke-static/range {v4 .. v12}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 143
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;->mTextureOptions:Lorg/andengine/opengl/texture/TextureOptions;

    iget-boolean v0, v4, Lorg/andengine/opengl/texture/TextureOptions;->mPreMultiplyAlpha:Z

    move/from16 v29, v0

    .line 145
    .local v29, preMultipyAlpha:Z
    if-eqz v29, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;->mBitmapTextureFormat:Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;

    invoke-virtual {v4}, Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;->getBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v24

    .line 147
    .local v24, bitmapConfig:Landroid/graphics/Bitmap$Config;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;->mTextureAtlasSources:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    .line 148
    .local v31, textureSources:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;>;"
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v30

    .line 150
    .local v30, textureSourceCount:I
    invoke-virtual/range {p0 .. p0}, Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;->getTextureAtlasStateListener()Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;

    move-result-object v32

    .line 151
    .local v32, textureStateListener:Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;,"Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener<Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;>;"
    const/16 v27, 0x0

    .local v27, i:I
    :goto_1
    move/from16 v0, v27

    move/from16 v1, v30

    if-lt v0, v1, :cond_1

    .line 189
    return-void

    .line 145
    .end local v24           #bitmapConfig:Landroid/graphics/Bitmap$Config;
    .end local v27           #i:I
    .end local v30           #textureSourceCount:I
    .end local v31           #textureSources:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;>;"
    .end local v32           #textureStateListener:Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;,"Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener<Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;>;"
    :cond_0
    sget-object v24, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    .line 152
    .restart local v24       #bitmapConfig:Landroid/graphics/Bitmap$Config;
    .restart local v27       #i:I
    .restart local v30       #textureSourceCount:I
    .restart local v31       #textureSources:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;>;"
    .restart local v32       #textureStateListener:Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;,"Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener<Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;>;"
    :cond_1
    move-object/from16 v0, v31

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;

    .line 154
    .local v25, bitmapTextureAtlasSource:Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;
    :try_start_0
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;->onLoadBitmap(Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 155
    .local v16, bitmap:Landroid/graphics/Bitmap;
    if-nez v16, :cond_3

    .line 156
    new-instance v4, Lorg/andengine/util/exception/NullBitmapException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Caused by: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " --> "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " returned a null Bitmap."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/andengine/util/exception/NullBitmapException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Lorg/andengine/util/exception/NullBitmapException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    .end local v16           #bitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v26

    .line 182
    .local v26, e:Lorg/andengine/util/exception/NullBitmapException;
    if-eqz v32, :cond_8

    .line 183
    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-interface {v0, v1, v2, v3}, Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;->onTextureAtlasSourceLoadExeption(Lorg/andengine/opengl/texture/atlas/ITextureAtlas;Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;Ljava/lang/Throwable;)V

    .line 151
    .end local v26           #e:Lorg/andengine/util/exception/NullBitmapException;
    :cond_2
    :goto_2
    add-int/lit8 v27, v27, 0x1

    goto :goto_1

    .line 159
    .restart local v16       #bitmap:Landroid/graphics/Bitmap;
    :cond_3
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-static {v4}, Lorg/andengine/util/math/MathUtils;->isPowerOfTwo(I)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v4}, Lorg/andengine/util/math/MathUtils;->isPowerOfTwo(I)Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Lorg/andengine/opengl/texture/PixelFormat;->RGBA_8888:Lorg/andengine/opengl/texture/PixelFormat;

    move-object/from16 v0, v28

    if-ne v0, v4, :cond_6

    const/16 v33, 0x1

    .line 160
    .local v33, useDefaultAlignment:Z
    :goto_3
    if-nez v33, :cond_4

    .line 162
    const/16 v4, 0xcf5

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 165
    :cond_4
    if-eqz v29, :cond_7

    .line 166
    const/16 v12, 0xde1

    const/4 v13, 0x0

    invoke-interface/range {v25 .. v25}, Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;->getTextureX()I

    move-result v14

    invoke-interface/range {v25 .. v25}, Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;->getTextureY()I

    move-result v15

    move/from16 v17, v10

    move/from16 v18, v11

    invoke-static/range {v12 .. v18}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    .line 171
    :goto_4
    if-nez v33, :cond_5

    .line 173
    const/16 v4, 0xcf5

    const/4 v5, 0x4

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 176
    :cond_5
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->recycle()V

    .line 178
    if-eqz v32, :cond_2

    .line 179
    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;->onTextureAtlasSourceLoaded(Lorg/andengine/opengl/texture/atlas/ITextureAtlas;Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;)V

    goto :goto_2

    .line 159
    .end local v33           #useDefaultAlignment:Z
    :cond_6
    const/16 v33, 0x0

    goto :goto_3

    .line 168
    .restart local v33       #useDefaultAlignment:Z
    :cond_7
    const/16 v18, 0xde1

    const/16 v19, 0x0

    invoke-interface/range {v25 .. v25}, Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;->getTextureX()I

    move-result v20

    invoke-interface/range {v25 .. v25}, Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;->getTextureY()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;->mPixelFormat:Lorg/andengine/opengl/texture/PixelFormat;

    move-object/from16 v23, v0

    move-object/from16 v17, p1

    move-object/from16 v22, v16

    invoke-virtual/range {v17 .. v23}, Lorg/andengine/opengl/util/GLState;->glTexSubImage2D(IIIILandroid/graphics/Bitmap;Lorg/andengine/opengl/texture/PixelFormat;)V
    :try_end_1
    .catch Lorg/andengine/util/exception/NullBitmapException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 185
    .end local v16           #bitmap:Landroid/graphics/Bitmap;
    .end local v33           #useDefaultAlignment:Z
    .restart local v26       #e:Lorg/andengine/util/exception/NullBitmapException;
    :cond_8
    throw v26
.end method
