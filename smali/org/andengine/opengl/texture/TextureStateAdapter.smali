.class public Lorg/andengine/opengl/texture/TextureStateAdapter;
.super Ljava/lang/Object;
.source "TextureStateAdapter.java"

# interfaces
.implements Lorg/andengine/opengl/texture/ITextureStateListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/andengine/opengl/texture/ITextureStateListener;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    .local p0, this:Lorg/andengine/opengl/texture/TextureStateAdapter;,"Lorg/andengine/opengl/texture/TextureStateAdapter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadedToHardware(Lorg/andengine/opengl/texture/ITexture;)V
    .locals 0
    .parameter "pTexture"

    .prologue
    .line 34
    .local p0, this:Lorg/andengine/opengl/texture/TextureStateAdapter;,"Lorg/andengine/opengl/texture/TextureStateAdapter<TT;>;"
    return-void
.end method

.method public onUnloadedFromHardware(Lorg/andengine/opengl/texture/ITexture;)V
    .locals 0
    .parameter "pTexture"

    .prologue
    .line 39
    .local p0, this:Lorg/andengine/opengl/texture/TextureStateAdapter;,"Lorg/andengine/opengl/texture/TextureStateAdapter<TT;>;"
    return-void
.end method
