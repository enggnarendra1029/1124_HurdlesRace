.class public Lorg/andengine/opengl/texture/region/TextureRegion;
.super Lorg/andengine/opengl/texture/region/BaseTextureRegion;
.source "TextureRegion.java"


# static fields
.field private static final SCALE_DEFAULT:F = 1.0f


# instance fields
.field protected final mRotated:Z

.field protected final mScale:F

.field protected mTextureHeight:F

.field protected mTextureWidth:F

.field protected mTextureX:F

.field protected mTextureY:F

.field protected mU:F

.field protected mU2:F

.field protected mV:F

.field protected mV2:F


# direct methods
.method public constructor <init>(Lorg/andengine/opengl/texture/ITexture;FFFF)V
    .locals 7
    .parameter "pTexture"
    .parameter "pTextureX"
    .parameter "pTextureY"
    .parameter "pTextureWidth"
    .parameter "pTextureHeight"

    .prologue
    .line 41
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/andengine/opengl/texture/region/TextureRegion;-><init>(Lorg/andengine/opengl/texture/ITexture;FFFFZ)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/ITexture;FFFFF)V
    .locals 8
    .parameter "pTexture"
    .parameter "pTextureX"
    .parameter "pTextureY"
    .parameter "pTextureWidth"
    .parameter "pTextureHeight"
    .parameter "pScale"

    .prologue
    .line 49
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/andengine/opengl/texture/region/TextureRegion;-><init>(Lorg/andengine/opengl/texture/ITexture;FFFFFZ)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/ITexture;FFFFFZ)V
    .locals 1
    .parameter "pTexture"
    .parameter "pTextureX"
    .parameter "pTextureY"
    .parameter "pTextureWidth"
    .parameter "pTextureHeight"
    .parameter "pScale"
    .parameter "pRotated"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lorg/andengine/opengl/texture/region/BaseTextureRegion;-><init>(Lorg/andengine/opengl/texture/ITexture;)V

    .line 55
    iput p2, p0, Lorg/andengine/opengl/texture/region/TextureRegion;->mTextureX:F

    .line 56
    iput p3, p0, Lorg/andengine/opengl/texture/region/TextureRegion;->mTextureY:F

    .line 58
    if-eqz p7, :cond_0

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/andengine/opengl/texture/region/TextureRegion;->mRotated:Z

    .line 61
    iput p5, p0, Lorg/andengine/opengl/texture/region/TextureRegion;->mTextureWidth:F

    .line 62
    iput p4, p0, Lorg/andengine/opengl/texture/region/TextureRegion;->mTextureHeight:F

    .line 70
    :goto_0
    iput p6, p0, Lorg/andengine/opengl/texture/region/TextureRegion;->mScale:F

    .line 72
    invoke-virtual {p0}, Lorg/andengine/opengl/texture/region/TextureRegion;->updateUV()V

    .line 73
    return-void

    .line 64
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/andengine/opengl/texture/region/TextureRegion;->mRotated:Z

    .line 66
    iput p4, p0, Lorg/andengine/opengl/texture/region/TextureRegion;->mTextureWidth:F

    .line 67
    iput p5, p0, Lorg/andengine/opengl/texture/region/TextureRegion;->mTextureHeight:F

    goto :goto_0
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/ITexture;FFFFZ)V
    .locals 8
    .parameter "pTexture"
    .parameter "pTextureX"
    .parameter "pTextureY"
    .parameter "pTextureWidth"
    .parameter "pTextureHeight"
    .parameter "pRotated"

    .prologue
    .line 45
    const/high16 v6, 0x3f80

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/andengine/opengl/texture/region/TextureRegion;-><init>(Lorg/andengine/opengl/texture/ITexture;FFFFFZ)V

    .line 46
    return-void
.end method


# virtual methods
.method public bridge synthetic deepCopy()Lorg/andengine/opengl/texture/region/ITextureRegion;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/opengl/texture/region/TextureRegion;->deepCopy()Lorg/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lorg/andengine/opengl/texture/region/TextureRegion;
    .locals 8

    .prologue
    .line 77
    iget-boolean v0, p0, Lorg/andengine/opengl/texture/region/TextureRegion;->mRotated:Z

    if-eqz v0, :cond_0

    .line 78
    new-instance v0, Lorg/andengine/opengl/texture/region/TextureRegion;

    iget-object v1, p0, Lorg/andengine/opengl/texture/region/TextureRegion;->mTexture:Lorg/andengine/opengl/texture/ITexture;

    iget v2, p0, Lorg/andengine/opengl/texture/region/TextureRegion;->mTextureX:F

    iget v3, p0, Lorg/andengine/opengl/texture/region/TextureRegion;->mTextureY:F

    iget v4, p0, Lorg/andengine/opengl/texture/region/TextureRegion;->mTextureHeight:F

    iget v5, p0, Lorg/andengine/opengl/texture/region/TextureRegion;->mTextureWidth:F

    iget v6, p0, Lorg/andengine/opengl/texture/region/TextureRegion;->mScale:F

    iget-boolean v7, p0, Lorg/andengine/opengl/texture/region/TextureRegion;->mRotated:Z

    invoke-direct/range {v0 .. v7}, Lorg/andengine/opengl/texture/region/TextureRegion;-><init>(Lorg/andengine/opengl/texture/ITexture;FFFFFZ)V

    .line 80
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/andengine/opengl/texture/region/TextureRegion;

    iget-object v1, p0, Lorg/andengine/opengl/texture/region/TextureRegion;->mTexture:Lorg/andengine/opengl/texture/ITexture;

    iget v2, p0, Lorg/andengine/opengl/texture/region/TextureRegion;->mTextureX:F

    iget v3, p0, Lorg/andengine/opengl/texture/region/TextureRegion;->mTextureY:F

    iget v4, p0, Lorg/andengine/opengl/texture/region/TextureRegion;->mTextureWidth:F

    iget v5, p0, Lorg/andengine/opengl/texture/region/TextureRegion;->mTextureHeight:F

    iget v6, p0, Lorg/andengine/opengl/texture/region/TextureRegion;->mScale:F

    iget-boolean v7, p0, Lorg/andengine/opengl/texture/region/TextureRegion;->mRotated:Z

    invoke-direct/range {v0 .. v7}, Lorg/andengine/opengl/texture/region/TextureRegion;-><init>(Lorg/andengine/opengl/texture/ITexture;FFFFFZ)V

    goto :goto_0
.end method

.method public getHeight()F
    .locals 2

    .prologue
    .line 131
    iget-boolean v0, p0, Lorg/andengine/opengl/texture/region/TextureRegion;->mRotated:Z

    if-eqz v0, :cond_0

    .line 132
    iget v0, p0, Lorg/andengine/opengl/texture/region/TextureRegion;->mTextureWidth:F

    iget v1, p0, Lorg/andengine/opengl/texture/region/TextureRegion;->mScale:F

    mul-float/2addr v0, v1

    .line 134
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/andengine/opengl/texture/region/TextureRegion;->mTextureHeight:F

    iget v1, p0, Lorg/andengine/opengl/texture/region/TextureRegion;->mScale:F

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lorg/andengine/opengl/texture/region/TextureRegion;->mScale:F

    return v0
.end method

.method public getTextureX()F
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lorg/andengine/opengl/texture/region/TextureRegion;->mTextureX:F

    return v0
.end method

.method public getTextureY()F
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lorg/andengine/opengl/texture/region/TextureRegion;->mTextureY:F

    return v0
.end method

.method public getU()F
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lorg/andengine/opengl/texture/region/TextureRegion;->mU:F

    return v0
.end method

.method public getU2()F
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lorg/andengine/opengl/texture/region/TextureRegion;->mU2:F

    return v0
.end method

.method public getV()F
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lorg/andengine/opengl/texture/region/TextureRegion;->mV:F

    return v0
.end method

.method public getV2()F
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lorg/andengine/opengl/texture/region/TextureRegion;->mV2:F

    return v0
.end method

.method public getWidth()F
    .locals 2

    .prologue
    .line 122
    iget-boolean v0, p0, Lorg/andengine/opengl/texture/region/TextureRegion;->mRotated:Z

    if-eqz v0, :cond_0

    .line 123
    iget v0, p0, Lorg/andengine/opengl/texture/region/TextureRegion;->mTextureHeight:F

    iget v1, p0, Lorg/andengine/opengl/texture/region/TextureRegion;->mScale:F

    mul-float/2addr v0, v1

    .line 125
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/andengine/opengl/texture/region/TextureRegion;->mTextureWidth:F

    iget v1, p0, Lorg/andengine/opengl/texture/region/TextureRegion;->mScale:F

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method public isRotated()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lorg/andengine/opengl/texture/region/TextureRegion;->mRotated:Z

    return v0
.end method

.method public isScaled()Z
    .locals 2

    .prologue
    .line 192
    iget v0, p0, Lorg/andengine/opengl/texture/region/TextureRegion;->mScale:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(FFFF)V
    .locals 0
    .parameter "pTextureX"
    .parameter "pTextureY"
    .parameter "pTextureWidth"
    .parameter "pTextureHeight"

    .prologue
    .line 162
    iput p1, p0, Lorg/andengine/opengl/texture/region/TextureRegion;->mTextureX:F

    .line 163
    iput p2, p0, Lorg/andengine/opengl/texture/region/TextureRegion;->mTextureY:F

    .line 164
    iput p3, p0, Lorg/andengine/opengl/texture/region/TextureRegion;->mTextureWidth:F

    .line 165
    iput p4, p0, Lorg/andengine/opengl/texture/region/TextureRegion;->mTextureHeight:F

    .line 167
    invoke-virtual {p0}, Lorg/andengine/opengl/texture/region/TextureRegion;->updateUV()V

    .line 168
    return-void
.end method

.method public setTextureHeight(F)V
    .locals 0
    .parameter "pTextureHeight"

    .prologue
    .line 147
    iput p1, p0, Lorg/andengine/opengl/texture/region/TextureRegion;->mTextureHeight:F

    .line 149
    invoke-virtual {p0}, Lorg/andengine/opengl/texture/region/TextureRegion;->updateUV()V

    .line 150
    return-void
.end method

.method public setTexturePosition(FF)V
    .locals 0
    .parameter "pTextureX"
    .parameter "pTextureY"

    .prologue
    .line 114
    iput p1, p0, Lorg/andengine/opengl/texture/region/TextureRegion;->mTextureX:F

    .line 115
    iput p2, p0, Lorg/andengine/opengl/texture/region/TextureRegion;->mTextureY:F

    .line 117
    invoke-virtual {p0}, Lorg/andengine/opengl/texture/region/TextureRegion;->updateUV()V

    .line 118
    return-void
.end method

.method public setTextureSize(FF)V
    .locals 0
    .parameter "pTextureWidth"
    .parameter "pTextureHeight"

    .prologue
    .line 154
    iput p1, p0, Lorg/andengine/opengl/texture/region/TextureRegion;->mTextureWidth:F

    .line 155
    iput p2, p0, Lorg/andengine/opengl/texture/region/TextureRegion;->mTextureHeight:F

    .line 157
    invoke-virtual {p0}, Lorg/andengine/opengl/texture/region/TextureRegion;->updateUV()V

    .line 158
    return-void
.end method

.method public setTextureWidth(F)V
    .locals 0
    .parameter "pTextureWidth"

    .prologue
    .line 140
    iput p1, p0, Lorg/andengine/opengl/texture/region/TextureRegion;->mTextureWidth:F

    .line 142
    invoke-virtual {p0}, Lorg/andengine/opengl/texture/region/TextureRegion;->updateUV()V

    .line 143
    return-void
.end method

.method public setTextureX(F)V
    .locals 0
    .parameter "pTextureX"

    .prologue
    .line 100
    iput p1, p0, Lorg/andengine/opengl/texture/region/TextureRegion;->mTextureX:F

    .line 102
    invoke-virtual {p0}, Lorg/andengine/opengl/texture/region/TextureRegion;->updateUV()V

    .line 103
    return-void
.end method

.method public setTextureY(F)V
    .locals 0
    .parameter "pTextureY"

    .prologue
    .line 107
    iput p1, p0, Lorg/andengine/opengl/texture/region/TextureRegion;->mTextureY:F

    .line 109
    invoke-virtual {p0}, Lorg/andengine/opengl/texture/region/TextureRegion;->updateUV()V

    .line 110
    return-void
.end method

.method public updateUV()V
    .locals 6

    .prologue
    .line 214
    iget-object v0, p0, Lorg/andengine/opengl/texture/region/TextureRegion;->mTexture:Lorg/andengine/opengl/texture/ITexture;

    .line 215
    .local v0, texture:Lorg/andengine/opengl/texture/ITexture;
    invoke-interface {v0}, Lorg/andengine/opengl/texture/ITexture;->getWidth()I

    move-result v5

    int-to-float v2, v5

    .line 216
    .local v2, textureWidth:F
    invoke-interface {v0}, Lorg/andengine/opengl/texture/ITexture;->getHeight()I

    move-result v5

    int-to-float v1, v5

    .line 218
    .local v1, textureHeight:F
    invoke-virtual {p0}, Lorg/andengine/opengl/texture/region/TextureRegion;->getTextureX()F

    move-result v3

    .line 219
    .local v3, x:F
    invoke-virtual {p0}, Lorg/andengine/opengl/texture/region/TextureRegion;->getTextureY()F

    move-result v4

    .line 221
    .local v4, y:F
    div-float v5, v3, v2

    iput v5, p0, Lorg/andengine/opengl/texture/region/TextureRegion;->mU:F

    .line 222
    iget v5, p0, Lorg/andengine/opengl/texture/region/TextureRegion;->mTextureWidth:F

    add-float/2addr v5, v3

    div-float/2addr v5, v2

    iput v5, p0, Lorg/andengine/opengl/texture/region/TextureRegion;->mU2:F

    .line 224
    div-float v5, v4, v1

    iput v5, p0, Lorg/andengine/opengl/texture/region/TextureRegion;->mV:F

    .line 225
    iget v5, p0, Lorg/andengine/opengl/texture/region/TextureRegion;->mTextureHeight:F

    add-float/2addr v5, v4

    div-float/2addr v5, v1

    iput v5, p0, Lorg/andengine/opengl/texture/region/TextureRegion;->mV2:F

    .line 232
    return-void
.end method
