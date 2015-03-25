.class public Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;
.super Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;
.source "BuildableBitmapTextureAtlas.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas",
        "<",
        "Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;",
        "Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/andengine/opengl/texture/TextureManager;II)V
    .locals 1
    .parameter "pTextureManager"
    .parameter "pWidth"
    .parameter "pHeight"

    .prologue
    .line 34
    sget-object v0, Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;->RGBA_8888:Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;-><init>(Lorg/andengine/opengl/texture/TextureManager;IILorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;)V

    .line 35
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
    .line 67
    sget-object v4, Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;->RGBA_8888:Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;-><init>(Lorg/andengine/opengl/texture/TextureManager;IILorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;Lorg/andengine/opengl/texture/TextureOptions;Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;)V

    .line 68
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
    .line 85
    .local p5, pTextureStateListener:Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;,"Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener<Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;>;"
    sget-object v4, Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;->RGBA_8888:Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;-><init>(Lorg/andengine/opengl/texture/TextureManager;IILorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;Lorg/andengine/opengl/texture/TextureOptions;Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;)V

    .line 86
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
    .line 50
    .local p4, pTextureStateListener:Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;,"Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener<Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;>;"
    sget-object v4, Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;->RGBA_8888:Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;

    sget-object v5, Lorg/andengine/opengl/texture/TextureOptions;->DEFAULT:Lorg/andengine/opengl/texture/TextureOptions;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;-><init>(Lorg/andengine/opengl/texture/TextureManager;IILorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;Lorg/andengine/opengl/texture/TextureOptions;Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/TextureManager;IILorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;)V
    .locals 7
    .parameter "pTextureManager"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pBitmapTextureFormat"

    .prologue
    .line 41
    sget-object v5, Lorg/andengine/opengl/texture/TextureOptions;->DEFAULT:Lorg/andengine/opengl/texture/TextureOptions;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;-><init>(Lorg/andengine/opengl/texture/TextureManager;IILorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;Lorg/andengine/opengl/texture/TextureOptions;Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;)V

    .line 42
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
    .line 75
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;-><init>(Lorg/andengine/opengl/texture/TextureManager;IILorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;Lorg/andengine/opengl/texture/TextureOptions;Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;)V

    .line 76
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
    .line 94
    .local p6, pTextureStateListener:Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;,"Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener<Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;>;"
    new-instance v0, Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(Lorg/andengine/opengl/texture/TextureManager;IILorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;Lorg/andengine/opengl/texture/TextureOptions;Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;)V

    invoke-direct {p0, v0}, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;-><init>(Lorg/andengine/opengl/texture/atlas/ITextureAtlas;)V

    .line 95
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
    .line 58
    .local p5, pTextureStateListener:Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;,"Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener<Lorg/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;>;"
    sget-object v5, Lorg/andengine/opengl/texture/TextureOptions;->DEFAULT:Lorg/andengine/opengl/texture/TextureOptions;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;-><init>(Lorg/andengine/opengl/texture/TextureManager;IILorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;Lorg/andengine/opengl/texture/TextureOptions;Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;)V

    .line 59
    return-void
.end method
