.class public interface abstract Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;
.super Ljava/lang/Object;
.source "ITextureAtlas.java"

# interfaces
.implements Lorg/andengine/opengl/texture/ITextureStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andengine/opengl/texture/atlas/ITextureAtlas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ITextureAtlasStateListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener$DebugTextureAtlasStateListener;,
        Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener$TextureAtlasStateAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/andengine/opengl/texture/ITextureStateListener;"
    }
.end annotation


# virtual methods
.method public abstract onTextureAtlasSourceLoadExeption(Lorg/andengine/opengl/texture/atlas/ITextureAtlas;Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;Ljava/lang/Throwable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/opengl/texture/atlas/ITextureAtlas",
            "<TT;>;TT;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onTextureAtlasSourceLoaded(Lorg/andengine/opengl/texture/atlas/ITextureAtlas;Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/opengl/texture/atlas/ITextureAtlas",
            "<TT;>;TT;)V"
        }
    .end annotation
.end method
