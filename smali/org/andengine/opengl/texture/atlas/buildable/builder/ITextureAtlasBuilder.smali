.class public interface abstract Lorg/andengine/opengl/texture/atlas/buildable/builder/ITextureAtlasBuilder;
.super Ljava/lang/Object;
.source "ITextureAtlasBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/andengine/opengl/texture/atlas/buildable/builder/ITextureAtlasBuilder$TextureAtlasBuilderException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;",
        "A::",
        "Lorg/andengine/opengl/texture/atlas/ITextureAtlas",
        "<TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract build(Lorg/andengine/opengl/texture/atlas/ITextureAtlas;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback",
            "<TT;>;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/opengl/texture/atlas/buildable/builder/ITextureAtlasBuilder$TextureAtlasBuilderException;
        }
    .end annotation
.end method
