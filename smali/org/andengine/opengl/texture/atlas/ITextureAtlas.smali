.class public interface abstract Lorg/andengine/opengl/texture/atlas/ITextureAtlas;
.super Ljava/lang/Object;
.source "ITextureAtlas.java"

# interfaces
.implements Lorg/andengine/opengl/texture/ITexture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/andengine/opengl/texture/ITexture;"
    }
.end annotation


# virtual methods
.method public abstract addEmptyTextureAtlasSource(IIII)V
.end method

.method public abstract addTextureAtlasSource(Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract addTextureAtlasSource(Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;III)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;III)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract clearTextureAtlasSources()V
.end method

.method public abstract getTextureAtlasStateListener()Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract getTextureStateListener()Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract hasTextureAtlasStateListener()Z
.end method

.method public abstract hasTextureStateListener()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract removeTextureAtlasSource(Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation
.end method

.method public abstract setTextureAtlasStateListener(Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method public abstract setTextureStateListener(Lorg/andengine/opengl/texture/ITextureStateListener;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
