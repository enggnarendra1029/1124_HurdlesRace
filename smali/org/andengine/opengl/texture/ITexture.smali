.class public interface abstract Lorg/andengine/opengl/texture/ITexture;
.super Ljava/lang/Object;
.source "ITexture.java"


# virtual methods
.method public abstract bind(Lorg/andengine/opengl/util/GLState;)V
.end method

.method public abstract bind(Lorg/andengine/opengl/util/GLState;I)V
.end method

.method public abstract getHardwareTextureID()I
.end method

.method public abstract getHeight()I
.end method

.method public abstract getPixelFormat()Lorg/andengine/opengl/texture/PixelFormat;
.end method

.method public abstract getTextureOptions()Lorg/andengine/opengl/texture/TextureOptions;
.end method

.method public abstract getTextureStateListener()Lorg/andengine/opengl/texture/ITextureStateListener;
.end method

.method public abstract getWidth()I
.end method

.method public abstract hasTextureStateListener()Z
.end method

.method public abstract isLoadedToHardware()Z
.end method

.method public abstract isUpdateOnHardwareNeeded()Z
.end method

.method public abstract load()V
.end method

.method public abstract load(Lorg/andengine/opengl/util/GLState;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract loadToHardware(Lorg/andengine/opengl/util/GLState;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract reloadToHardware(Lorg/andengine/opengl/util/GLState;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setNotLoadedToHardware()V
.end method

.method public abstract setTextureStateListener(Lorg/andengine/opengl/texture/ITextureStateListener;)V
.end method

.method public abstract setUpdateOnHardwareNeeded(Z)V
.end method

.method public abstract unload()V
.end method

.method public abstract unload(Lorg/andengine/opengl/util/GLState;)V
.end method

.method public abstract unloadFromHardware(Lorg/andengine/opengl/util/GLState;)V
.end method
