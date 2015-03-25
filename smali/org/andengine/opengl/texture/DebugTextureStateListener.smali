.class public Lorg/andengine/opengl/texture/DebugTextureStateListener;
.super Ljava/lang/Object;
.source "DebugTextureStateListener.java"

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
    .line 13
    .local p0, this:Lorg/andengine/opengl/texture/DebugTextureStateListener;,"Lorg/andengine/opengl/texture/DebugTextureStateListener<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadedToHardware(Lorg/andengine/opengl/texture/ITexture;)V
    .locals 2
    .parameter "pTexture"

    .prologue
    .line 37
    .local p0, this:Lorg/andengine/opengl/texture/DebugTextureStateListener;,"Lorg/andengine/opengl/texture/DebugTextureStateListener<TT;>;"
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

    .line 39
    return-void
.end method

.method public onUnloadedFromHardware(Lorg/andengine/opengl/texture/ITexture;)V
    .locals 2
    .parameter "pTexture"

    .prologue
    .line 44
    .local p0, this:Lorg/andengine/opengl/texture/DebugTextureStateListener;,"Lorg/andengine/opengl/texture/DebugTextureStateListener<TT;>;"
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

    .line 46
    return-void
.end method
