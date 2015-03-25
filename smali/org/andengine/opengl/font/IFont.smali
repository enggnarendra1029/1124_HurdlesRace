.class public interface abstract Lorg/andengine/opengl/font/IFont;
.super Ljava/lang/Object;
.source "IFont.java"


# virtual methods
.method public abstract getLetter(C)Lorg/andengine/opengl/font/Letter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/opengl/font/exception/LetterNotFoundException;
        }
    .end annotation
.end method

.method public abstract getLineHeight()F
.end method

.method public abstract getTexture()Lorg/andengine/opengl/texture/ITexture;
.end method

.method public abstract load()V
.end method

.method public abstract unload()V
.end method
