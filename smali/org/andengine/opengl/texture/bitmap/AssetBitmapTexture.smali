.class public Lorg/andengine/opengl/texture/bitmap/AssetBitmapTexture;
.super Lorg/andengine/opengl/texture/bitmap/BitmapTexture;
.source "AssetBitmapTexture.java"


# direct methods
.method public constructor <init>(Lorg/andengine/opengl/texture/TextureManager;Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 1
    .parameter "pTextureManager"
    .parameter "pAssetManager"
    .parameter "pAssetPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    new-instance v0, Lorg/andengine/util/adt/io/in/AssetInputStreamOpener;

    invoke-direct {v0, p2, p3}, Lorg/andengine/util/adt/io/in/AssetInputStreamOpener;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lorg/andengine/opengl/texture/bitmap/BitmapTexture;-><init>(Lorg/andengine/opengl/texture/TextureManager;Lorg/andengine/util/adt/io/in/IInputStreamOpener;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/TextureManager;Landroid/content/res/AssetManager;Ljava/lang/String;Lorg/andengine/opengl/texture/TextureOptions;)V
    .locals 1
    .parameter "pTextureManager"
    .parameter "pAssetManager"
    .parameter "pAssetPath"
    .parameter "pTextureOptions"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Lorg/andengine/util/adt/io/in/AssetInputStreamOpener;

    invoke-direct {v0, p2, p3}, Lorg/andengine/util/adt/io/in/AssetInputStreamOpener;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p4}, Lorg/andengine/opengl/texture/bitmap/BitmapTexture;-><init>(Lorg/andengine/opengl/texture/TextureManager;Lorg/andengine/util/adt/io/in/IInputStreamOpener;Lorg/andengine/opengl/texture/TextureOptions;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/TextureManager;Landroid/content/res/AssetManager;Ljava/lang/String;Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;)V
    .locals 1
    .parameter "pTextureManager"
    .parameter "pAssetManager"
    .parameter "pAssetPath"
    .parameter "pBitmapTextureFormat"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Lorg/andengine/util/adt/io/in/AssetInputStreamOpener;

    invoke-direct {v0, p2, p3}, Lorg/andengine/util/adt/io/in/AssetInputStreamOpener;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p4}, Lorg/andengine/opengl/texture/bitmap/BitmapTexture;-><init>(Lorg/andengine/opengl/texture/TextureManager;Lorg/andengine/util/adt/io/in/IInputStreamOpener;Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/TextureManager;Landroid/content/res/AssetManager;Ljava/lang/String;Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;Lorg/andengine/opengl/texture/TextureOptions;)V
    .locals 1
    .parameter "pTextureManager"
    .parameter "pAssetManager"
    .parameter "pAssetPath"
    .parameter "pBitmapTextureFormat"
    .parameter "pTextureOptions"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Lorg/andengine/util/adt/io/in/AssetInputStreamOpener;

    invoke-direct {v0, p2, p3}, Lorg/andengine/util/adt/io/in/AssetInputStreamOpener;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p4, p5}, Lorg/andengine/opengl/texture/bitmap/BitmapTexture;-><init>(Lorg/andengine/opengl/texture/TextureManager;Lorg/andengine/util/adt/io/in/IInputStreamOpener;Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;Lorg/andengine/opengl/texture/TextureOptions;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/TextureManager;Landroid/content/res/AssetManager;Ljava/lang/String;Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;Lorg/andengine/opengl/texture/TextureOptions;Lorg/andengine/opengl/texture/ITextureStateListener;)V
    .locals 6
    .parameter "pTextureManager"
    .parameter "pAssetManager"
    .parameter "pAssetPath"
    .parameter "pBitmapTextureFormat"
    .parameter "pTextureOptions"
    .parameter "pTextureStateListener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    new-instance v2, Lorg/andengine/util/adt/io/in/AssetInputStreamOpener;

    invoke-direct {v2, p2, p3}, Lorg/andengine/util/adt/io/in/AssetInputStreamOpener;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/andengine/opengl/texture/bitmap/BitmapTexture;-><init>(Lorg/andengine/opengl/texture/TextureManager;Lorg/andengine/util/adt/io/in/IInputStreamOpener;Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;Lorg/andengine/opengl/texture/TextureOptions;Lorg/andengine/opengl/texture/ITextureStateListener;)V

    .line 49
    return-void
.end method
