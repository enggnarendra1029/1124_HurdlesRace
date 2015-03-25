.class public abstract Lorg/andengine/opengl/texture/atlas/TextureAtlas;
.super Lorg/andengine/opengl/texture/Texture;
.source "TextureAtlas.java"

# interfaces
.implements Lorg/andengine/opengl/texture/atlas/ITextureAtlas;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;",
        ">",
        "Lorg/andengine/opengl/texture/Texture;",
        "Lorg/andengine/opengl/texture/atlas/ITextureAtlas",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final mHeight:I

.field protected final mTextureAtlasSources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected final mWidth:I


# direct methods
.method public constructor <init>(Lorg/andengine/opengl/texture/TextureManager;IILorg/andengine/opengl/texture/PixelFormat;Lorg/andengine/opengl/texture/TextureOptions;Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;)V
    .locals 1
    .parameter "pTextureManager"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pPixelFormat"
    .parameter "pTextureOptions"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/opengl/texture/TextureManager;",
            "II",
            "Lorg/andengine/opengl/texture/PixelFormat;",
            "Lorg/andengine/opengl/texture/TextureOptions;",
            "Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, this:Lorg/andengine/opengl/texture/atlas/TextureAtlas;,"Lorg/andengine/opengl/texture/atlas/TextureAtlas<TT;>;"
    .local p6, pTextureAtlasStateListener:Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;,"Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener<TT;>;"
    invoke-direct {p0, p1, p4, p5, p6}, Lorg/andengine/opengl/texture/Texture;-><init>(Lorg/andengine/opengl/texture/TextureManager;Lorg/andengine/opengl/texture/PixelFormat;Lorg/andengine/opengl/texture/TextureOptions;Lorg/andengine/opengl/texture/ITextureStateListener;)V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/andengine/opengl/texture/atlas/TextureAtlas;->mTextureAtlasSources:Ljava/util/ArrayList;

    .line 40
    iput p2, p0, Lorg/andengine/opengl/texture/atlas/TextureAtlas;->mWidth:I

    .line 41
    iput p3, p0, Lorg/andengine/opengl/texture/atlas/TextureAtlas;->mHeight:I

    .line 42
    return-void
.end method

.method private checkTextureAtlasSourcePosition(Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;II)V
    .locals 3
    .parameter
    .parameter "pTextureX"
    .parameter "pTextureY"
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

    .prologue
    .line 162
    .local p0, this:Lorg/andengine/opengl/texture/atlas/TextureAtlas;,"Lorg/andengine/opengl/texture/atlas/TextureAtlas<TT;>;"
    .local p1, pTextureAtlasSource:Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;,"TT;"
    if-gez p2, :cond_0

    .line 163
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal negative pTextureX supplied: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_0
    if-gez p3, :cond_1

    .line 165
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal negative pTextureY supplied: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_1
    invoke-interface {p1}, Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;->getTextureWidth()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lorg/andengine/opengl/texture/atlas/TextureAtlas;->getWidth()I

    move-result v1

    if-gt v0, v1, :cond_2

    invoke-interface {p1}, Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;->getTextureHeight()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p0}, Lorg/andengine/opengl/texture/atlas/TextureAtlas;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_3

    .line 167
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Supplied pTextureAtlasSource must not exceed bounds of Texture."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_3
    return-void
.end method


# virtual methods
.method public addTextureAtlasSource(Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;II)V
    .locals 1
    .parameter
    .parameter "pTextureX"
    .parameter "pTextureY"
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

    .prologue
    .line 104
    .local p0, this:Lorg/andengine/opengl/texture/atlas/TextureAtlas;,"Lorg/andengine/opengl/texture/atlas/TextureAtlas<TT;>;"
    .local p1, pTextureAtlasSource:Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;,"TT;"
    invoke-direct {p0, p1, p2, p3}, Lorg/andengine/opengl/texture/atlas/TextureAtlas;->checkTextureAtlasSourcePosition(Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;II)V

    .line 105
    invoke-interface {p1, p2}, Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;->setTextureX(I)V

    .line 106
    invoke-interface {p1, p3}, Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;->setTextureY(I)V

    .line 107
    iget-object v0, p0, Lorg/andengine/opengl/texture/atlas/TextureAtlas;->mTextureAtlasSources:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/andengine/opengl/texture/atlas/TextureAtlas;->mUpdateOnHardwareNeeded:Z

    .line 109
    return-void
.end method

.method public addTextureAtlasSource(Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;III)V
    .locals 2
    .parameter
    .parameter "pTextureX"
    .parameter "pTextureY"
    .parameter "pTextureAtlasSourcePadding"
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

    .prologue
    .line 113
    .local p0, this:Lorg/andengine/opengl/texture/atlas/TextureAtlas;,"Lorg/andengine/opengl/texture/atlas/TextureAtlas<TT;>;"
    .local p1, pTextureAtlasSource:Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;,"TT;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/andengine/opengl/texture/atlas/TextureAtlas;->addTextureAtlasSource(Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;II)V

    .line 115
    if-lez p4, :cond_3

    .line 117
    if-lt p2, p4, :cond_0

    .line 118
    sub-int v0, p2, p4

    invoke-interface {p1}, Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;->getTextureHeight()I

    move-result v1

    invoke-virtual {p0, v0, p3, p4, v1}, Lorg/andengine/opengl/texture/atlas/TextureAtlas;->addEmptyTextureAtlasSource(IIII)V

    .line 122
    :cond_0
    if-lt p3, p4, :cond_1

    .line 123
    sub-int v0, p3, p4

    invoke-interface {p1}, Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;->getTextureWidth()I

    move-result v1

    invoke-virtual {p0, p2, v0, v1, p4}, Lorg/andengine/opengl/texture/atlas/TextureAtlas;->addEmptyTextureAtlasSource(IIII)V

    .line 127
    :cond_1
    invoke-interface {p1}, Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;->getTextureWidth()I

    move-result v0

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    add-int/2addr v0, p4

    invoke-virtual {p0}, Lorg/andengine/opengl/texture/atlas/TextureAtlas;->getWidth()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 128
    invoke-interface {p1}, Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;->getTextureWidth()I

    move-result v0

    add-int/2addr v0, p2

    invoke-interface {p1}, Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;->getTextureHeight()I

    move-result v1

    invoke-virtual {p0, v0, p3, p4, v1}, Lorg/andengine/opengl/texture/atlas/TextureAtlas;->addEmptyTextureAtlasSource(IIII)V

    .line 132
    :cond_2
    invoke-interface {p1}, Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;->getTextureHeight()I

    move-result v0

    add-int/2addr v0, p3

    add-int/lit8 v0, v0, -0x1

    add-int/2addr v0, p4

    invoke-virtual {p0}, Lorg/andengine/opengl/texture/atlas/TextureAtlas;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_3

    .line 133
    invoke-interface {p1}, Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;->getTextureHeight()I

    move-result v0

    add-int/2addr v0, p3

    invoke-interface {p1}, Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;->getTextureWidth()I

    move-result v1

    invoke-virtual {p0, p2, v0, v1, p4}, Lorg/andengine/opengl/texture/atlas/TextureAtlas;->addEmptyTextureAtlasSource(IIII)V

    .line 136
    :cond_3
    return-void
.end method

.method public clearTextureAtlasSources()V
    .locals 1

    .prologue
    .line 153
    .local p0, this:Lorg/andengine/opengl/texture/atlas/TextureAtlas;,"Lorg/andengine/opengl/texture/atlas/TextureAtlas<TT;>;"
    iget-object v0, p0, Lorg/andengine/opengl/texture/atlas/TextureAtlas;->mTextureAtlasSources:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/andengine/opengl/texture/atlas/TextureAtlas;->mUpdateOnHardwareNeeded:Z

    .line 155
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 55
    .local p0, this:Lorg/andengine/opengl/texture/atlas/TextureAtlas;,"Lorg/andengine/opengl/texture/atlas/TextureAtlas<TT;>;"
    iget v0, p0, Lorg/andengine/opengl/texture/atlas/TextureAtlas;->mHeight:I

    return v0
.end method

.method public getTextureAtlasStateListener()Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, this:Lorg/andengine/opengl/texture/atlas/TextureAtlas;,"Lorg/andengine/opengl/texture/atlas/TextureAtlas<TT;>;"
    invoke-super {p0}, Lorg/andengine/opengl/texture/Texture;->getTextureStateListener()Lorg/andengine/opengl/texture/ITextureStateListener;

    move-result-object v0

    check-cast v0, Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;

    return-object v0
.end method

.method public bridge synthetic getTextureStateListener()Lorg/andengine/opengl/texture/ITextureStateListener;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/opengl/texture/atlas/TextureAtlas;->getTextureStateListener()Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;

    move-result-object v0

    return-object v0
.end method

.method public getTextureStateListener()Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 75
    .local p0, this:Lorg/andengine/opengl/texture/atlas/TextureAtlas;,"Lorg/andengine/opengl/texture/atlas/TextureAtlas<TT;>;"
    invoke-virtual {p0}, Lorg/andengine/opengl/texture/atlas/TextureAtlas;->getTextureAtlasStateListener()Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 50
    .local p0, this:Lorg/andengine/opengl/texture/atlas/TextureAtlas;,"Lorg/andengine/opengl/texture/atlas/TextureAtlas<TT;>;"
    iget v0, p0, Lorg/andengine/opengl/texture/atlas/TextureAtlas;->mWidth:I

    return v0
.end method

.method public hasTextureAtlasStateListener()Z
    .locals 1

    .prologue
    .line 66
    .local p0, this:Lorg/andengine/opengl/texture/atlas/TextureAtlas;,"Lorg/andengine/opengl/texture/atlas/TextureAtlas<TT;>;"
    invoke-super {p0}, Lorg/andengine/opengl/texture/Texture;->hasTextureStateListener()Z

    move-result v0

    return v0
.end method

.method public hasTextureStateListener()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 61
    .local p0, this:Lorg/andengine/opengl/texture/atlas/TextureAtlas;,"Lorg/andengine/opengl/texture/atlas/TextureAtlas<TT;>;"
    invoke-super {p0}, Lorg/andengine/opengl/texture/Texture;->hasTextureStateListener()Z

    move-result v0

    return v0
.end method

.method public removeTextureAtlasSource(Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;II)V
    .locals 4
    .parameter
    .parameter "pTextureX"
    .parameter "pTextureY"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    .prologue
    .line 140
    .local p0, this:Lorg/andengine/opengl/texture/atlas/TextureAtlas;,"Lorg/andengine/opengl/texture/atlas/TextureAtlas<TT;>;"
    .local p1, pTextureAtlasSource:Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;,"TT;"
    iget-object v2, p0, Lorg/andengine/opengl/texture/atlas/TextureAtlas;->mTextureAtlasSources:Ljava/util/ArrayList;

    .line 141
    .local v2, textureSources:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 149
    :goto_1
    return-void

    .line 142
    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;

    .line 143
    .local v1, textureSource:Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;,"TT;"
    if-ne v1, p1, :cond_1

    invoke-interface {v1}, Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;->getTextureX()I

    move-result v3

    if-ne v3, p2, :cond_1

    invoke-interface {v1}, Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;->getTextureY()I

    move-result v3

    if-ne v3, p3, :cond_1

    .line 144
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 145
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/andengine/opengl/texture/atlas/TextureAtlas;->mUpdateOnHardwareNeeded:Z

    goto :goto_1

    .line 141
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public setTextureAtlasStateListener(Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, this:Lorg/andengine/opengl/texture/atlas/TextureAtlas;,"Lorg/andengine/opengl/texture/atlas/TextureAtlas<TT;>;"
    .local p1, pTextureAtlasStateListener:Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;,"Lorg/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener<TT;>;"
    invoke-super {p0, p1}, Lorg/andengine/opengl/texture/Texture;->setTextureStateListener(Lorg/andengine/opengl/texture/ITextureStateListener;)V

    .line 96
    return-void
.end method

.method public setTextureStateListener(Lorg/andengine/opengl/texture/ITextureStateListener;)V
    .locals 0
    .parameter "pTextureStateListener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 90
    .local p0, this:Lorg/andengine/opengl/texture/atlas/TextureAtlas;,"Lorg/andengine/opengl/texture/atlas/TextureAtlas<TT;>;"
    invoke-super {p0, p1}, Lorg/andengine/opengl/texture/Texture;->setTextureStateListener(Lorg/andengine/opengl/texture/ITextureStateListener;)V

    .line 91
    return-void
.end method
