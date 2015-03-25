.class public Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener$DebugTextureAtlasStateListener;
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
    name = "DebugTextureAtlasStateListener"
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
    .line 80
    .local p0, this:Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener$DebugTextureAtlasStateListener;,"Lorg/andengine/opengl/texture/atlas/ITextureAtlas<TT;>.ITextureAtlasStateListener<TT;>.DebugTextureAtlasStateListener<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadedToHardware(Lorg/andengine/opengl/texture/ITexture;)V
    .locals 2
    .parameter "pTexture"

    .prologue
    .line 84
    .local p0, this:Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener$DebugTextureAtlasStateListener;,"Lorg/andengine/opengl/texture/atlas/ITextureAtlas<TT;>.ITextureAtlasStateListener<TT;>.DebugTextureAtlasStateListener<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Texture loaded: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/andengine/util/debug/Debug;->d(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public onTextureAtlasSourceLoadExeption(Lorg/andengine/opengl/texture/atlas/ITextureAtlas;Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;Ljava/lang/Throwable;)V
    .locals 2
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
    .line 95
    .local p0, this:Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener$DebugTextureAtlasStateListener;,"Lorg/andengine/opengl/texture/atlas/ITextureAtlas<TT;>.ITextureAtlasStateListener<TT;>.DebugTextureAtlasStateListener<TT;>;"
    .local p1, pTextureAtlas:Lorg/andengine/opengl/texture/atlas/ITextureAtlas;,"Lorg/andengine/opengl/texture/atlas/ITextureAtlas<TT;>;"
    .local p2, pTextureAtlasSource:Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;,"TT;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception loading TextureAtlasSource. TextureAtlas: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TextureAtlasSource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lorg/andengine/util/debug/Debug;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    return-void
.end method

.method public onTextureAtlasSourceLoaded(Lorg/andengine/opengl/texture/atlas/ITextureAtlas;Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;)V
    .locals 2
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
    .line 90
    .local p0, this:Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener$DebugTextureAtlasStateListener;,"Lorg/andengine/opengl/texture/atlas/ITextureAtlas<TT;>.ITextureAtlasStateListener<TT;>.DebugTextureAtlasStateListener<TT;>;"
    .local p1, pTextureAtlas:Lorg/andengine/opengl/texture/atlas/ITextureAtlas;,"Lorg/andengine/opengl/texture/atlas/ITextureAtlas<TT;>;"
    .local p2, pTextureAtlasSource:Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;,"TT;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Loaded TextureAtlasSource. TextureAtlas: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TextureAtlasSource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/andengine/util/debug/Debug;->e(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public onUnloadedFromHardware(Lorg/andengine/opengl/texture/ITexture;)V
    .locals 2
    .parameter "pTexture"

    .prologue
    .line 101
    .local p0, this:Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener$DebugTextureAtlasStateListener;,"Lorg/andengine/opengl/texture/atlas/ITextureAtlas<TT;>.ITextureAtlasStateListener<TT;>.DebugTextureAtlasStateListener<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Texture unloaded: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/andengine/util/debug/Debug;->d(Ljava/lang/String;)V

    .line 103
    return-void
.end method
