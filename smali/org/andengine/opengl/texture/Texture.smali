.class public abstract Lorg/andengine/opengl/texture/Texture;
.super Ljava/lang/Object;
.source "Texture.java"

# interfaces
.implements Lorg/andengine/opengl/texture/ITexture;


# static fields
.field public static final HARDWARE_TEXTURE_ID_INVALID:I = -0x1


# instance fields
.field protected mHardwareTextureID:I

.field protected final mPixelFormat:Lorg/andengine/opengl/texture/PixelFormat;

.field protected final mTextureManager:Lorg/andengine/opengl/texture/TextureManager;

.field protected final mTextureOptions:Lorg/andengine/opengl/texture/TextureOptions;

.field protected mTextureStateListener:Lorg/andengine/opengl/texture/ITextureStateListener;

.field protected mUpdateOnHardwareNeeded:Z


# direct methods
.method public constructor <init>(Lorg/andengine/opengl/texture/TextureManager;Lorg/andengine/opengl/texture/PixelFormat;Lorg/andengine/opengl/texture/TextureOptions;Lorg/andengine/opengl/texture/ITextureStateListener;)V
    .locals 1
    .parameter "pTextureManager"
    .parameter "pPixelFormat"
    .parameter "pTextureOptions"
    .parameter "pTextureStateListener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lorg/andengine/opengl/texture/Texture;->mHardwareTextureID:I

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/andengine/opengl/texture/Texture;->mUpdateOnHardwareNeeded:Z

    .line 45
    iput-object p1, p0, Lorg/andengine/opengl/texture/Texture;->mTextureManager:Lorg/andengine/opengl/texture/TextureManager;

    .line 46
    iput-object p2, p0, Lorg/andengine/opengl/texture/Texture;->mPixelFormat:Lorg/andengine/opengl/texture/PixelFormat;

    .line 47
    iput-object p3, p0, Lorg/andengine/opengl/texture/Texture;->mTextureOptions:Lorg/andengine/opengl/texture/TextureOptions;

    .line 48
    iput-object p4, p0, Lorg/andengine/opengl/texture/Texture;->mTextureStateListener:Lorg/andengine/opengl/texture/ITextureStateListener;

    .line 49
    return-void
.end method


# virtual methods
.method public bind(Lorg/andengine/opengl/util/GLState;)V
    .locals 1
    .parameter "pGLState"

    .prologue
    .line 167
    iget v0, p0, Lorg/andengine/opengl/texture/Texture;->mHardwareTextureID:I

    invoke-virtual {p1, v0}, Lorg/andengine/opengl/util/GLState;->bindTexture(I)V

    .line 168
    return-void
.end method

.method public bind(Lorg/andengine/opengl/util/GLState;I)V
    .locals 1
    .parameter "pGLState"
    .parameter "pGLActiveTexture"

    .prologue
    .line 172
    invoke-virtual {p1, p2}, Lorg/andengine/opengl/util/GLState;->activeTexture(I)V

    .line 173
    iget v0, p0, Lorg/andengine/opengl/texture/Texture;->mHardwareTextureID:I

    invoke-virtual {p1, v0}, Lorg/andengine/opengl/util/GLState;->bindTexture(I)V

    .line 174
    return-void
.end method

.method public getHardwareTextureID()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lorg/andengine/opengl/texture/Texture;->mHardwareTextureID:I

    return v0
.end method

.method public getPixelFormat()Lorg/andengine/opengl/texture/PixelFormat;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/andengine/opengl/texture/Texture;->mPixelFormat:Lorg/andengine/opengl/texture/PixelFormat;

    return-object v0
.end method

.method public getTextureOptions()Lorg/andengine/opengl/texture/TextureOptions;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/andengine/opengl/texture/Texture;->mTextureOptions:Lorg/andengine/opengl/texture/TextureOptions;

    return-object v0
.end method

.method public getTextureStateListener()Lorg/andengine/opengl/texture/ITextureStateListener;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/andengine/opengl/texture/Texture;->mTextureStateListener:Lorg/andengine/opengl/texture/ITextureStateListener;

    return-object v0
.end method

.method public hasTextureStateListener()Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/andengine/opengl/texture/Texture;->mTextureStateListener:Lorg/andengine/opengl/texture/ITextureStateListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoadedToHardware()Z
    .locals 2

    .prologue
    .line 62
    iget v0, p0, Lorg/andengine/opengl/texture/Texture;->mHardwareTextureID:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUpdateOnHardwareNeeded()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lorg/andengine/opengl/texture/Texture;->mUpdateOnHardwareNeeded:Z

    return v0
.end method

.method public load()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/andengine/opengl/texture/Texture;->mTextureManager:Lorg/andengine/opengl/texture/TextureManager;

    invoke-virtual {v0, p0}, Lorg/andengine/opengl/texture/TextureManager;->loadTexture(Lorg/andengine/opengl/texture/ITexture;)Z

    .line 114
    return-void
.end method

.method public load(Lorg/andengine/opengl/util/GLState;)V
    .locals 1
    .parameter "pGLState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lorg/andengine/opengl/texture/Texture;->mTextureManager:Lorg/andengine/opengl/texture/TextureManager;

    invoke-virtual {v0, p1, p0}, Lorg/andengine/opengl/texture/TextureManager;->loadTexture(Lorg/andengine/opengl/util/GLState;Lorg/andengine/opengl/texture/ITexture;)Z

    .line 119
    return-void
.end method

.method public loadToHardware(Lorg/andengine/opengl/util/GLState;)V
    .locals 1
    .parameter "pGLState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-virtual {p1}, Lorg/andengine/opengl/util/GLState;->generateTexture()I

    move-result v0

    iput v0, p0, Lorg/andengine/opengl/texture/Texture;->mHardwareTextureID:I

    .line 135
    iget v0, p0, Lorg/andengine/opengl/texture/Texture;->mHardwareTextureID:I

    invoke-virtual {p1, v0}, Lorg/andengine/opengl/util/GLState;->bindTexture(I)V

    .line 137
    invoke-virtual {p0, p1}, Lorg/andengine/opengl/texture/Texture;->writeTextureToHardware(Lorg/andengine/opengl/util/GLState;)V

    .line 139
    iget-object v0, p0, Lorg/andengine/opengl/texture/Texture;->mTextureOptions:Lorg/andengine/opengl/texture/TextureOptions;

    invoke-virtual {v0}, Lorg/andengine/opengl/texture/TextureOptions;->apply()V

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/andengine/opengl/texture/Texture;->mUpdateOnHardwareNeeded:Z

    .line 143
    iget-object v0, p0, Lorg/andengine/opengl/texture/Texture;->mTextureStateListener:Lorg/andengine/opengl/texture/ITextureStateListener;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lorg/andengine/opengl/texture/Texture;->mTextureStateListener:Lorg/andengine/opengl/texture/ITextureStateListener;

    invoke-interface {v0, p0}, Lorg/andengine/opengl/texture/ITextureStateListener;->onLoadedToHardware(Lorg/andengine/opengl/texture/ITexture;)V

    .line 146
    :cond_0
    return-void
.end method

.method public reloadToHardware(Lorg/andengine/opengl/util/GLState;)V
    .locals 0
    .parameter "pGLState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    invoke-virtual {p0, p1}, Lorg/andengine/opengl/texture/Texture;->unloadFromHardware(Lorg/andengine/opengl/util/GLState;)V

    .line 162
    invoke-virtual {p0, p1}, Lorg/andengine/opengl/texture/Texture;->loadToHardware(Lorg/andengine/opengl/util/GLState;)V

    .line 163
    return-void
.end method

.method public setNotLoadedToHardware()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lorg/andengine/opengl/texture/Texture;->mHardwareTextureID:I

    .line 68
    return-void
.end method

.method public setTextureStateListener(Lorg/andengine/opengl/texture/ITextureStateListener;)V
    .locals 0
    .parameter "pTextureStateListener"

    .prologue
    .line 97
    iput-object p1, p0, Lorg/andengine/opengl/texture/Texture;->mTextureStateListener:Lorg/andengine/opengl/texture/ITextureStateListener;

    .line 98
    return-void
.end method

.method public setUpdateOnHardwareNeeded(Z)V
    .locals 0
    .parameter "pUpdateOnHardwareNeeded"

    .prologue
    .line 77
    iput-boolean p1, p0, Lorg/andengine/opengl/texture/Texture;->mUpdateOnHardwareNeeded:Z

    .line 78
    return-void
.end method

.method public unload()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/andengine/opengl/texture/Texture;->mTextureManager:Lorg/andengine/opengl/texture/TextureManager;

    invoke-virtual {v0, p0}, Lorg/andengine/opengl/texture/TextureManager;->unloadTexture(Lorg/andengine/opengl/texture/ITexture;)Z

    .line 124
    return-void
.end method

.method public unload(Lorg/andengine/opengl/util/GLState;)V
    .locals 1
    .parameter "pGLState"

    .prologue
    .line 128
    iget-object v0, p0, Lorg/andengine/opengl/texture/Texture;->mTextureManager:Lorg/andengine/opengl/texture/TextureManager;

    invoke-virtual {v0, p1, p0}, Lorg/andengine/opengl/texture/TextureManager;->unloadTexture(Lorg/andengine/opengl/util/GLState;Lorg/andengine/opengl/texture/ITexture;)Z

    .line 129
    return-void
.end method

.method public unloadFromHardware(Lorg/andengine/opengl/util/GLState;)V
    .locals 1
    .parameter "pGLState"

    .prologue
    .line 150
    iget v0, p0, Lorg/andengine/opengl/texture/Texture;->mHardwareTextureID:I

    invoke-virtual {p1, v0}, Lorg/andengine/opengl/util/GLState;->deleteTexture(I)V

    .line 152
    const/4 v0, -0x1

    iput v0, p0, Lorg/andengine/opengl/texture/Texture;->mHardwareTextureID:I

    .line 154
    iget-object v0, p0, Lorg/andengine/opengl/texture/Texture;->mTextureStateListener:Lorg/andengine/opengl/texture/ITextureStateListener;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lorg/andengine/opengl/texture/Texture;->mTextureStateListener:Lorg/andengine/opengl/texture/ITextureStateListener;

    invoke-interface {v0, p0}, Lorg/andengine/opengl/texture/ITextureStateListener;->onUnloadedFromHardware(Lorg/andengine/opengl/texture/ITexture;)V

    .line 157
    :cond_0
    return-void
.end method

.method protected abstract writeTextureToHardware(Lorg/andengine/opengl/util/GLState;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
