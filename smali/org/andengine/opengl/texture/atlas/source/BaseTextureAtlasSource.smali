.class public abstract Lorg/andengine/opengl/texture/atlas/source/BaseTextureAtlasSource;
.super Ljava/lang/Object;
.source "BaseTextureAtlasSource.java"

# interfaces
.implements Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;


# instance fields
.field protected mTextureHeight:I

.field protected mTextureWidth:I

.field protected mTextureX:I

.field protected mTextureY:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .parameter "pTextureX"
    .parameter "pTextureY"
    .parameter "pTextureWidth"
    .parameter "pTextureHeight"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lorg/andengine/opengl/texture/atlas/source/BaseTextureAtlasSource;->mTextureX:I

    .line 30
    iput p2, p0, Lorg/andengine/opengl/texture/atlas/source/BaseTextureAtlasSource;->mTextureY:I

    .line 31
    iput p3, p0, Lorg/andengine/opengl/texture/atlas/source/BaseTextureAtlasSource;->mTextureWidth:I

    .line 32
    iput p4, p0, Lorg/andengine/opengl/texture/atlas/source/BaseTextureAtlasSource;->mTextureHeight:I

    .line 33
    return-void
.end method


# virtual methods
.method public getTextureHeight()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lorg/andengine/opengl/texture/atlas/source/BaseTextureAtlasSource;->mTextureHeight:I

    return v0
.end method

.method public getTextureWidth()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lorg/andengine/opengl/texture/atlas/source/BaseTextureAtlasSource;->mTextureWidth:I

    return v0
.end method

.method public getTextureX()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lorg/andengine/opengl/texture/atlas/source/BaseTextureAtlasSource;->mTextureX:I

    return v0
.end method

.method public getTextureY()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lorg/andengine/opengl/texture/atlas/source/BaseTextureAtlasSource;->mTextureY:I

    return v0
.end method

.method public setTextureHeight(I)V
    .locals 0
    .parameter "pTextureHeight"

    .prologue
    .line 76
    iput p1, p0, Lorg/andengine/opengl/texture/atlas/source/BaseTextureAtlasSource;->mTextureHeight:I

    .line 77
    return-void
.end method

.method public setTextureWidth(I)V
    .locals 0
    .parameter "pTextureWidth"

    .prologue
    .line 71
    iput p1, p0, Lorg/andengine/opengl/texture/atlas/source/BaseTextureAtlasSource;->mTextureWidth:I

    .line 72
    return-void
.end method

.method public setTextureX(I)V
    .locals 0
    .parameter "pTextureX"

    .prologue
    .line 51
    iput p1, p0, Lorg/andengine/opengl/texture/atlas/source/BaseTextureAtlasSource;->mTextureX:I

    .line 52
    return-void
.end method

.method public setTextureY(I)V
    .locals 0
    .parameter "pTextureY"

    .prologue
    .line 56
    iput p1, p0, Lorg/andengine/opengl/texture/atlas/source/BaseTextureAtlasSource;->mTextureY:I

    .line 57
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/andengine/opengl/texture/atlas/source/BaseTextureAtlasSource;->getTextureWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/andengine/opengl/texture/atlas/source/BaseTextureAtlasSource;->getTextureHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/andengine/opengl/texture/atlas/source/BaseTextureAtlasSource;->mTextureX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/andengine/opengl/texture/atlas/source/BaseTextureAtlasSource;->mTextureY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
