.class public Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener$TextureAtlasStateAdapter;
.super Ljava/lang/Object;
.source "ITextureAtlas.java"

# interfaces
.implements Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextureAtlasStateAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    .local p0, this:Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener$TextureAtlasStateAdapter;,"Lorg/andengine/opengl/texture/atlas/ITextureAtlas<TT;>.ITextureAtlasStateListener<TT;>.TextureAtlasStateAdapter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadedToHardware(Lorg/andengine/opengl/texture/ITexture;)V
    .locals 0
    .parameter "pTexture"

    .prologue
    .line 68
    .local p0, this:Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener$TextureAtlasStateAdapter;,"Lorg/andengine/opengl/texture/atlas/ITextureAtlas<TT;>.ITextureAtlasStateListener<TT;>.TextureAtlasStateAdapter<TT;>;"
    return-void
.end method

.method public onTextureAtlasSourceLoadExeption(Lorg/andengine/opengl/texture/atlas/ITextureAtlas;Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter
    .parameter "pThrowable"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/opengl/texture/atlas/ITextureAtlas",
            "<TT;>;TT;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, this:Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener$TextureAtlasStateAdapter;,"Lorg/andengine/opengl/texture/atlas/ITextureAtlas<TT;>.ITextureAtlasStateListener<TT;>.TextureAtlasStateAdapter<TT;>;"
    .local p1, pTextureAtlas:Lorg/andengine/opengl/texture/atlas/ITextureAtlas;,"Lorg/andengine/opengl/texture/atlas/ITextureAtlas<TT;>;"
    .local p2, pTextureAtlasSource:Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;,"TT;"
    return-void
.end method

.method public onTextureAtlasSourceLoaded(Lorg/andengine/opengl/texture/atlas/ITextureAtlas;Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/opengl/texture/atlas/ITextureAtlas",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, this:Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener$TextureAtlasStateAdapter;,"Lorg/andengine/opengl/texture/atlas/ITextureAtlas<TT;>.ITextureAtlasStateListener<TT;>.TextureAtlasStateAdapter<TT;>;"
    .local p1, pTextureAtlas:Lorg/andengine/opengl/texture/atlas/ITextureAtlas;,"Lorg/andengine/opengl/texture/atlas/ITextureAtlas<TT;>;"
    .local p2, pTextureAtlasSource:Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;,"TT;"
    return-void
.end method

.method public onUnloadedFromHardware(Lorg/andengine/opengl/texture/ITexture;)V
    .locals 0
    .parameter "pTexture"

    .prologue
    .line 77
    .local p0, this:Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener$TextureAtlasStateAdapter;,"Lorg/andengine/opengl/texture/atlas/ITextureAtlas<TT;>.ITextureAtlasStateListener<TT;>.TextureAtlasStateAdapter<TT;>;"
    return-void
.end method
