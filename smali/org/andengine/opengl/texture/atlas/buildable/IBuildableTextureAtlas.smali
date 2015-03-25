.class public interface abstract Lorg/andengine/opengl/texture/atlas/buildable/IBuildableTextureAtlas;
.super Ljava/lang/Object;
.source "IBuildableTextureAtlas.java"

# interfaces
.implements Lorg/andengine/opengl/texture/atlas/ITextureAtlas;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;",
        "T::",
        "Lorg/andengine/opengl/texture/atlas/ITextureAtlas",
        "<TS;>;>",
        "Ljava/lang/Object;",
        "Lorg/andengine/opengl/texture/atlas/ITextureAtlas",
        "<TS;>;"
    }
.end annotation


# virtual methods
.method public abstract addTextureAtlasSource(Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;II)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract addTextureAtlasSource(Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;III)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;III)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract addTextureAtlasSource(Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;Lorg/andengine/util/call/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lorg/andengine/util/call/Callback",
            "<TS;>;)V"
        }
    .end annotation
.end method

.method public abstract build(Lorg/andengine/opengl/texture/atlas/buildable/builder/ITextureAtlasBuilder;)Lorg/andengine/opengl/texture/atlas/buildable/IBuildableTextureAtlas;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/opengl/texture/atlas/buildable/builder/ITextureAtlasBuilder",
            "<TS;TT;>;)",
            "Lorg/andengine/opengl/texture/atlas/buildable/IBuildableTextureAtlas",
            "<TS;TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/opengl/texture/atlas/buildable/builder/ITextureAtlasBuilder$TextureAtlasBuilderException;
        }
    .end annotation
.end method

.method public abstract removeTextureAtlasSource(Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;)V
.end method
