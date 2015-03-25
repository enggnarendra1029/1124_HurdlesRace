.class public Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;
.super Ljava/lang/Object;
.source "BuildableTextureAtlas.java"

# interfaces
.implements Lorg/andengine/opengl/texture/atlas/buildable/IBuildableTextureAtlas;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;",
        "T::",
        "Lorg/andengine/opengl/texture/atlas/ITextureAtlas",
        "<TS;>;>",
        "Ljava/lang/Object;",
        "Lorg/andengine/opengl/texture/atlas/buildable/IBuildableTextureAtlas",
        "<TS;TT;>;"
    }
.end annotation


# instance fields
.field private final mTextureAtlas:Lorg/andengine/opengl/texture/atlas/ITextureAtlas;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mTextureAtlasSourcesToPlace:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback",
            "<TS;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/andengine/opengl/texture/atlas/ITextureAtlas;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, this:Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;,"Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas<TS;TT;>;"
    .local p1, pTextureAtlas:Lorg/andengine/opengl/texture/atlas/ITextureAtlas;,"TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlasSourcesToPlace:Ljava/util/ArrayList;

    .line 41
    iput-object p1, p0, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/andengine/opengl/texture/atlas/ITextureAtlas;

    .line 42
    return-void
.end method


# virtual methods
.method public addEmptyTextureAtlasSource(IIII)V
    .locals 1
    .parameter "pTextureX"
    .parameter "pTextureY"
    .parameter "pWidth"
    .parameter "pHeight"

    .prologue
    .line 213
    .local p0, this:Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;,"Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas<TS;TT;>;"
    iget-object v0, p0, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/andengine/opengl/texture/atlas/ITextureAtlas;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/andengine/opengl/texture/atlas/ITextureAtlas;->addEmptyTextureAtlasSource(IIII)V

    .line 214
    return-void
.end method

.method public addTextureAtlasSource(Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;II)V
    .locals 1
    .parameter
    .parameter "pTextureX"
    .parameter "pTextureY"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;II)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 145
    .local p0, this:Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;,"Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas<TS;TT;>;"
    .local p1, pTextureAtlasSource:Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;,"TS;"
    iget-object v0, p0, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/andengine/opengl/texture/atlas/ITextureAtlas;

    invoke-interface {v0, p1, p2, p3}, Lorg/andengine/opengl/texture/atlas/ITextureAtlas;->addTextureAtlasSource(Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;II)V

    .line 146
    return-void
.end method

.method public addTextureAtlasSource(Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;III)V
    .locals 1
    .parameter
    .parameter "pTextureX"
    .parameter "pTextureY"
    .parameter "pTextureAtlasSourcePadding"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;III)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 151
    .local p0, this:Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;,"Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas<TS;TT;>;"
    .local p1, pTextureAtlasSource:Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;,"TS;"
    iget-object v0, p0, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/andengine/opengl/texture/atlas/ITextureAtlas;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/andengine/opengl/texture/atlas/ITextureAtlas;->addTextureAtlasSource(Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;III)V

    .line 152
    return-void
.end method

.method public addTextureAtlasSource(Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;Lorg/andengine/util/call/Callback;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lorg/andengine/util/call/Callback",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 218
    .local p0, this:Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;,"Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas<TS;TT;>;"
    .local p1, pTextureAtlasSource:Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;,"TS;"
    .local p2, pCallback:Lorg/andengine/util/call/Callback;,"Lorg/andengine/util/call/Callback<TS;>;"
    iget-object v0, p0, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlasSourcesToPlace:Ljava/util/ArrayList;

    new-instance v1, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;

    invoke-direct {v1, p1, p2}, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;-><init>(Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;Lorg/andengine/util/call/Callback;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    return-void
.end method

.method public bind(Lorg/andengine/opengl/util/GLState;)V
    .locals 1
    .parameter "pGLState"

    .prologue
    .line 124
    .local p0, this:Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;,"Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas<TS;TT;>;"
    iget-object v0, p0, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/andengine/opengl/texture/atlas/ITextureAtlas;

    invoke-interface {v0, p1}, Lorg/andengine/opengl/texture/atlas/ITextureAtlas;->bind(Lorg/andengine/opengl/util/GLState;)V

    .line 125
    return-void
.end method

.method public bind(Lorg/andengine/opengl/util/GLState;I)V
    .locals 1
    .parameter "pGLState"
    .parameter "pGLActiveTexture"

    .prologue
    .line 129
    .local p0, this:Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;,"Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas<TS;TT;>;"
    iget-object v0, p0, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/andengine/opengl/texture/atlas/ITextureAtlas;

    invoke-interface {v0, p1, p2}, Lorg/andengine/opengl/texture/atlas/ITextureAtlas;->bind(Lorg/andengine/opengl/util/GLState;I)V

    .line 130
    return-void
.end method

.method public build(Lorg/andengine/opengl/texture/atlas/buildable/builder/ITextureAtlasBuilder;)Lorg/andengine/opengl/texture/atlas/buildable/IBuildableTextureAtlas;
    .locals 2
    .parameter
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

    .prologue
    .line 236
    .local p0, this:Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;,"Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas<TS;TT;>;"
    .local p1, pTextureAtlasBuilder:Lorg/andengine/opengl/texture/atlas/buildable/builder/ITextureAtlasBuilder;,"Lorg/andengine/opengl/texture/atlas/buildable/builder/ITextureAtlasBuilder<TS;TT;>;"
    iget-object v0, p0, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/andengine/opengl/texture/atlas/ITextureAtlas;

    iget-object v1, p0, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlasSourcesToPlace:Ljava/util/ArrayList;

    invoke-interface {p1, v0, v1}, Lorg/andengine/opengl/texture/atlas/buildable/builder/ITextureAtlasBuilder;->build(Lorg/andengine/opengl/texture/atlas/ITextureAtlas;Ljava/util/ArrayList;)V

    .line 237
    iget-object v0, p0, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlasSourcesToPlace:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 238
    iget-object v0, p0, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/andengine/opengl/texture/atlas/ITextureAtlas;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/andengine/opengl/texture/atlas/ITextureAtlas;->setUpdateOnHardwareNeeded(Z)V

    .line 240
    return-object p0
.end method

.method public clearTextureAtlasSources()V
    .locals 1

    .prologue
    .line 161
    .local p0, this:Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;,"Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas<TS;TT;>;"
    iget-object v0, p0, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/andengine/opengl/texture/atlas/ITextureAtlas;

    invoke-interface {v0}, Lorg/andengine/opengl/texture/atlas/ITextureAtlas;->clearTextureAtlasSources()V

    .line 162
    iget-object v0, p0, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlasSourcesToPlace:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 163
    return-void
.end method

.method public getHardwareTextureID()I
    .locals 1

    .prologue
    .line 64
    .local p0, this:Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;,"Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas<TS;TT;>;"
    iget-object v0, p0, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/andengine/opengl/texture/atlas/ITextureAtlas;

    invoke-interface {v0}, Lorg/andengine/opengl/texture/atlas/ITextureAtlas;->getHardwareTextureID()I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 59
    .local p0, this:Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;,"Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas<TS;TT;>;"
    iget-object v0, p0, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/andengine/opengl/texture/atlas/ITextureAtlas;

    invoke-interface {v0}, Lorg/andengine/opengl/texture/atlas/ITextureAtlas;->getHeight()I

    move-result v0

    return v0
.end method

.method public getPixelFormat()Lorg/andengine/opengl/texture/PixelFormat;
    .locals 1

    .prologue
    .line 134
    .local p0, this:Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;,"Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas<TS;TT;>;"
    iget-object v0, p0, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/andengine/opengl/texture/atlas/ITextureAtlas;

    invoke-interface {v0}, Lorg/andengine/opengl/texture/atlas/ITextureAtlas;->getPixelFormat()Lorg/andengine/opengl/texture/PixelFormat;

    move-result-object v0

    return-object v0
.end method

.method public getTextureAtlasStateListener()Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 190
    .local p0, this:Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;,"Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas<TS;TT;>;"
    iget-object v0, p0, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/andengine/opengl/texture/atlas/ITextureAtlas;

    invoke-interface {v0}, Lorg/andengine/opengl/texture/atlas/ITextureAtlas;->getTextureAtlasStateListener()Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;

    move-result-object v0

    return-object v0
.end method

.method public getTextureOptions()Lorg/andengine/opengl/texture/TextureOptions;
    .locals 1

    .prologue
    .line 139
    .local p0, this:Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;,"Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas<TS;TT;>;"
    iget-object v0, p0, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/andengine/opengl/texture/atlas/ITextureAtlas;

    invoke-interface {v0}, Lorg/andengine/opengl/texture/atlas/ITextureAtlas;->getTextureOptions()Lorg/andengine/opengl/texture/TextureOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTextureStateListener()Lorg/andengine/opengl/texture/ITextureStateListener;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->getTextureStateListener()Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;

    move-result-object v0

    return-object v0
.end method

.method public getTextureStateListener()Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener",
            "<TS;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 185
    .local p0, this:Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;,"Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas<TS;TT;>;"
    iget-object v0, p0, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/andengine/opengl/texture/atlas/ITextureAtlas;

    invoke-interface {v0}, Lorg/andengine/opengl/texture/atlas/ITextureAtlas;->getTextureStateListener()Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 54
    .local p0, this:Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;,"Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas<TS;TT;>;"
    iget-object v0, p0, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/andengine/opengl/texture/atlas/ITextureAtlas;

    invoke-interface {v0}, Lorg/andengine/opengl/texture/atlas/ITextureAtlas;->getWidth()I

    move-result v0

    return v0
.end method

.method public hasTextureAtlasStateListener()Z
    .locals 1

    .prologue
    .line 176
    .local p0, this:Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;,"Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas<TS;TT;>;"
    iget-object v0, p0, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/andengine/opengl/texture/atlas/ITextureAtlas;

    invoke-interface {v0}, Lorg/andengine/opengl/texture/atlas/ITextureAtlas;->hasTextureAtlasStateListener()Z

    move-result v0

    return v0
.end method

.method public hasTextureStateListener()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 171
    .local p0, this:Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;,"Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas<TS;TT;>;"
    iget-object v0, p0, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/andengine/opengl/texture/atlas/ITextureAtlas;

    invoke-interface {v0}, Lorg/andengine/opengl/texture/atlas/ITextureAtlas;->hasTextureStateListener()Z

    move-result v0

    return v0
.end method

.method public isLoadedToHardware()Z
    .locals 1

    .prologue
    .line 69
    .local p0, this:Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;,"Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas<TS;TT;>;"
    iget-object v0, p0, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/andengine/opengl/texture/atlas/ITextureAtlas;

    invoke-interface {v0}, Lorg/andengine/opengl/texture/atlas/ITextureAtlas;->isLoadedToHardware()Z

    move-result v0

    return v0
.end method

.method public isUpdateOnHardwareNeeded()Z
    .locals 1

    .prologue
    .line 79
    .local p0, this:Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;,"Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas<TS;TT;>;"
    iget-object v0, p0, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/andengine/opengl/texture/atlas/ITextureAtlas;

    invoke-interface {v0}, Lorg/andengine/opengl/texture/atlas/ITextureAtlas;->isUpdateOnHardwareNeeded()Z

    move-result v0

    return v0
.end method

.method public load()V
    .locals 1

    .prologue
    .line 89
    .local p0, this:Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;,"Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas<TS;TT;>;"
    iget-object v0, p0, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/andengine/opengl/texture/atlas/ITextureAtlas;

    invoke-interface {v0}, Lorg/andengine/opengl/texture/atlas/ITextureAtlas;->load()V

    .line 90
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
    .line 94
    .local p0, this:Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;,"Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas<TS;TT;>;"
    iget-object v0, p0, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/andengine/opengl/texture/atlas/ITextureAtlas;

    invoke-interface {v0, p1}, Lorg/andengine/opengl/texture/atlas/ITextureAtlas;->load(Lorg/andengine/opengl/util/GLState;)V

    .line 95
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
    .line 109
    .local p0, this:Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;,"Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas<TS;TT;>;"
    iget-object v0, p0, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/andengine/opengl/texture/atlas/ITextureAtlas;

    invoke-interface {v0, p1}, Lorg/andengine/opengl/texture/atlas/ITextureAtlas;->loadToHardware(Lorg/andengine/opengl/util/GLState;)V

    .line 110
    return-void
.end method

.method public reloadToHardware(Lorg/andengine/opengl/util/GLState;)V
    .locals 1
    .parameter "pGLState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    .local p0, this:Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;,"Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas<TS;TT;>;"
    iget-object v0, p0, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/andengine/opengl/texture/atlas/ITextureAtlas;

    invoke-interface {v0, p1}, Lorg/andengine/opengl/texture/atlas/ITextureAtlas;->reloadToHardware(Lorg/andengine/opengl/util/GLState;)V

    .line 120
    return-void
.end method

.method public removeTextureAtlasSource(Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;)V
    .locals 5
    .parameter "pTextureAtlasSource"

    .prologue
    .line 223
    .local p0, this:Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;,"Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas<TS;TT;>;"
    iget-object v2, p0, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlasSourcesToPlace:Ljava/util/ArrayList;

    .line 224
    .local v2, textureSources:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback<TS;>;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 232
    :goto_1
    return-void

    .line 225
    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;

    .line 226
    .local v1, textureSource:Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;,"Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback<TS;>;"
    #getter for: Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;->mTextureAtlasSource:Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;
    invoke-static {v1}, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;->access$0(Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;)Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;

    move-result-object v3

    if-ne v3, p1, :cond_1

    .line 227
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 228
    iget-object v3, p0, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/andengine/opengl/texture/atlas/ITextureAtlas;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lorg/andengine/opengl/texture/atlas/ITextureAtlas;->setUpdateOnHardwareNeeded(Z)V

    goto :goto_1

    .line 224
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public removeTextureAtlasSource(Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;II)V
    .locals 1
    .parameter
    .parameter "pTextureX"
    .parameter "pTextureY"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;II)V"
        }
    .end annotation

    .prologue
    .line 156
    .local p0, this:Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;,"Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas<TS;TT;>;"
    .local p1, pTextureAtlasSource:Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;,"TS;"
    iget-object v0, p0, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/andengine/opengl/texture/atlas/ITextureAtlas;

    invoke-interface {v0, p1, p2, p3}, Lorg/andengine/opengl/texture/atlas/ITextureAtlas;->removeTextureAtlasSource(Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;II)V

    .line 157
    return-void
.end method

.method public setNotLoadedToHardware()V
    .locals 1

    .prologue
    .line 74
    .local p0, this:Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;,"Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas<TS;TT;>;"
    iget-object v0, p0, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/andengine/opengl/texture/atlas/ITextureAtlas;

    invoke-interface {v0}, Lorg/andengine/opengl/texture/atlas/ITextureAtlas;->setNotLoadedToHardware()V

    .line 75
    return-void
.end method

.method public setTextureAtlasStateListener(Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 204
    .local p0, this:Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;,"Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas<TS;TT;>;"
    .local p1, pTextureAtlasStateListener:Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;,"Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener<TS;>;"
    iget-object v0, p0, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/andengine/opengl/texture/atlas/ITextureAtlas;

    invoke-interface {v0, p1}, Lorg/andengine/opengl/texture/atlas/ITextureAtlas;->setTextureAtlasStateListener(Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;)V

    .line 205
    return-void
.end method

.method public setTextureStateListener(Lorg/andengine/opengl/texture/ITextureStateListener;)V
    .locals 1
    .parameter "pTextureStateListener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 199
    .local p0, this:Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;,"Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas<TS;TT;>;"
    iget-object v0, p0, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/andengine/opengl/texture/atlas/ITextureAtlas;

    invoke-interface {v0, p1}, Lorg/andengine/opengl/texture/atlas/ITextureAtlas;->setTextureStateListener(Lorg/andengine/opengl/texture/ITextureStateListener;)V

    .line 200
    return-void
.end method

.method public setUpdateOnHardwareNeeded(Z)V
    .locals 1
    .parameter "pUpdateOnHardwareNeeded"

    .prologue
    .line 84
    .local p0, this:Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;,"Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas<TS;TT;>;"
    iget-object v0, p0, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/andengine/opengl/texture/atlas/ITextureAtlas;

    invoke-interface {v0, p1}, Lorg/andengine/opengl/texture/atlas/ITextureAtlas;->setUpdateOnHardwareNeeded(Z)V

    .line 85
    return-void
.end method

.method public unload()V
    .locals 1

    .prologue
    .line 99
    .local p0, this:Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;,"Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas<TS;TT;>;"
    iget-object v0, p0, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/andengine/opengl/texture/atlas/ITextureAtlas;

    invoke-interface {v0}, Lorg/andengine/opengl/texture/atlas/ITextureAtlas;->unload()V

    .line 100
    return-void
.end method

.method public unload(Lorg/andengine/opengl/util/GLState;)V
    .locals 1
    .parameter "pGLState"

    .prologue
    .line 104
    .local p0, this:Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;,"Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas<TS;TT;>;"
    iget-object v0, p0, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/andengine/opengl/texture/atlas/ITextureAtlas;

    invoke-interface {v0, p1}, Lorg/andengine/opengl/texture/atlas/ITextureAtlas;->unload(Lorg/andengine/opengl/util/GLState;)V

    .line 105
    return-void
.end method

.method public unloadFromHardware(Lorg/andengine/opengl/util/GLState;)V
    .locals 1
    .parameter "pGLState"

    .prologue
    .line 114
    .local p0, this:Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;,"Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas<TS;TT;>;"
    iget-object v0, p0, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/andengine/opengl/texture/atlas/ITextureAtlas;

    invoke-interface {v0, p1}, Lorg/andengine/opengl/texture/atlas/ITextureAtlas;->unloadFromHardware(Lorg/andengine/opengl/util/GLState;)V

    .line 115
    return-void
.end method
