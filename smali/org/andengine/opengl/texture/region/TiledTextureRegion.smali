.class public Lorg/andengine/opengl/texture/region/TiledTextureRegion;
.super Lorg/andengine/opengl/texture/region/BaseTextureRegion;
.source "TiledTextureRegion.java"

# interfaces
.implements Lorg/andengine/opengl/texture/region/ITiledTextureRegion;


# instance fields
.field protected mCurrentTileIndex:I

.field protected final mTextureRegions:[Lorg/andengine/opengl/texture/region/ITextureRegion;

.field protected final mTileCount:I


# direct methods
.method public varargs constructor <init>(Lorg/andengine/opengl/texture/ITexture;Z[Lorg/andengine/opengl/texture/region/ITextureRegion;)V
    .locals 4
    .parameter "pTexture"
    .parameter "pPerformSameTextureSanityCheck"
    .parameter "pTextureRegions"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/andengine/opengl/texture/region/BaseTextureRegion;-><init>(Lorg/andengine/opengl/texture/ITexture;)V

    .line 42
    iput-object p3, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mTextureRegions:[Lorg/andengine/opengl/texture/region/ITextureRegion;

    .line 43
    iget-object v1, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mTextureRegions:[Lorg/andengine/opengl/texture/region/ITextureRegion;

    array-length v1, v1

    iput v1, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mTileCount:I

    .line 45
    if-eqz p2, :cond_0

    .line 46
    iget v1, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mTileCount:I

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_1

    .line 52
    .end local v0           #i:I
    :cond_0
    return-void

    .line 47
    .restart local v0       #i:I
    :cond_1
    aget-object v1, p3, v0

    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getTexture()Lorg/andengine/opengl/texture/ITexture;

    move-result-object v1

    if-eq v1, p1, :cond_2

    .line 48
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v3, Lorg/andengine/opengl/texture/region/ITextureRegion;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' at index: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is not on the same "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lorg/andengine/opengl/texture/ITexture;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p3, v0

    invoke-interface {v3}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getTexture()Lorg/andengine/opengl/texture/ITexture;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' as the supplied "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lorg/andengine/opengl/texture/ITexture;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 46
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0
.end method

.method public varargs constructor <init>(Lorg/andengine/opengl/texture/ITexture;[Lorg/andengine/opengl/texture/region/ITextureRegion;)V
    .locals 1
    .parameter "pTexture"
    .parameter "pTextureRegions"

    .prologue
    .line 31
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lorg/andengine/opengl/texture/region/TiledTextureRegion;-><init>(Lorg/andengine/opengl/texture/ITexture;Z[Lorg/andengine/opengl/texture/region/ITextureRegion;)V

    .line 32
    return-void
.end method

.method public static create(Lorg/andengine/opengl/texture/ITexture;IIIIII)Lorg/andengine/opengl/texture/region/TiledTextureRegion;
    .locals 8
    .parameter "pTexture"
    .parameter "pTextureX"
    .parameter "pTextureY"
    .parameter "pTextureWidth"
    .parameter "pTextureHeight"
    .parameter "pTileColumns"
    .parameter "pTileRows"

    .prologue
    .line 55
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->create(Lorg/andengine/opengl/texture/ITexture;IIIIIIZ)Lorg/andengine/opengl/texture/region/TiledTextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lorg/andengine/opengl/texture/ITexture;IIIIIIZ)Lorg/andengine/opengl/texture/region/TiledTextureRegion;
    .locals 16
    .parameter "pTexture"
    .parameter "pTextureX"
    .parameter "pTextureY"
    .parameter "pTextureWidth"
    .parameter "pTextureHeight"
    .parameter "pTileColumns"
    .parameter "pTileRows"
    .parameter "pRotated"

    .prologue
    .line 59
    mul-int v1, p5, p6

    new-array v8, v1, [Lorg/andengine/opengl/texture/region/ITextureRegion;

    .line 61
    .local v8, textureRegions:[Lorg/andengine/opengl/texture/region/ITextureRegion;
    div-int v13, p3, p5

    .line 62
    .local v13, tileWidth:I
    div-int v10, p4, p6

    .line 64
    .local v10, tileHeight:I
    const/4 v9, 0x0

    .local v9, tileColumn:I
    :goto_0
    move/from16 v0, p5

    if-lt v9, v0, :cond_0

    .line 74
    new-instance v1, Lorg/andengine/opengl/texture/region/TiledTextureRegion;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2, v8}, Lorg/andengine/opengl/texture/region/TiledTextureRegion;-><init>(Lorg/andengine/opengl/texture/ITexture;Z[Lorg/andengine/opengl/texture/region/ITextureRegion;)V

    return-object v1

    .line 65
    :cond_0
    const/4 v12, 0x0

    .local v12, tileRow:I
    :goto_1
    move/from16 v0, p6

    if-lt v12, v0, :cond_1

    .line 64
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 66
    :cond_1
    mul-int v1, v12, p5

    add-int v11, v1, v9

    .line 68
    .local v11, tileIndex:I
    mul-int v1, v9, v13

    add-int v14, p1, v1

    .line 69
    .local v14, x:I
    mul-int v1, v12, v10

    add-int v15, p2, v1

    .line 70
    .local v15, y:I
    new-instance v1, Lorg/andengine/opengl/texture/region/TextureRegion;

    int-to-float v3, v14

    int-to-float v4, v15

    int-to-float v5, v13

    int-to-float v6, v10

    move-object/from16 v2, p0

    move/from16 v7, p7

    invoke-direct/range {v1 .. v7}, Lorg/andengine/opengl/texture/region/TextureRegion;-><init>(Lorg/andengine/opengl/texture/ITexture;FFFFZ)V

    aput-object v1, v8, v11

    .line 65
    add-int/lit8 v12, v12, 0x1

    goto :goto_1
.end method


# virtual methods
.method public bridge synthetic deepCopy()Lorg/andengine/opengl/texture/region/ITextureRegion;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->deepCopy()Lorg/andengine/opengl/texture/region/TiledTextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/andengine/opengl/texture/region/ITiledTextureRegion;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->deepCopy()Lorg/andengine/opengl/texture/region/TiledTextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lorg/andengine/opengl/texture/region/TiledTextureRegion;
    .locals 6

    .prologue
    .line 79
    iget v2, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mTileCount:I

    .line 81
    .local v2, tileCount:I
    new-array v1, v2, [Lorg/andengine/opengl/texture/region/ITextureRegion;

    .line 83
    .local v1, textureRegions:[Lorg/andengine/opengl/texture/region/ITextureRegion;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 87
    new-instance v3, Lorg/andengine/opengl/texture/region/TiledTextureRegion;

    iget-object v4, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mTexture:Lorg/andengine/opengl/texture/ITexture;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v1}, Lorg/andengine/opengl/texture/region/TiledTextureRegion;-><init>(Lorg/andengine/opengl/texture/ITexture;Z[Lorg/andengine/opengl/texture/region/ITextureRegion;)V

    return-object v3

    .line 84
    :cond_0
    iget-object v3, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mTextureRegions:[Lorg/andengine/opengl/texture/region/ITextureRegion;

    aget-object v3, v3, v0

    invoke-interface {v3}, Lorg/andengine/opengl/texture/region/ITextureRegion;->deepCopy()Lorg/andengine/opengl/texture/region/ITextureRegion;

    move-result-object v3

    aput-object v3, v1, v0

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getCurrentTileIndex()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mCurrentTileIndex:I

    return v0
.end method

.method public getHeight()F
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mTextureRegions:[Lorg/andengine/opengl/texture/region/ITextureRegion;

    iget v1, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mCurrentTileIndex:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getHeight()F

    move-result v0

    return v0
.end method

.method public getHeight(I)F
    .locals 1
    .parameter "pTileIndex"

    .prologue
    .line 189
    iget-object v0, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mTextureRegions:[Lorg/andengine/opengl/texture/region/ITextureRegion;

    aget-object v0, v0, p1

    invoke-interface {v0}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getHeight()F

    move-result v0

    return v0
.end method

.method public getScale()F
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mTextureRegions:[Lorg/andengine/opengl/texture/region/ITextureRegion;

    iget v1, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mCurrentTileIndex:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getScale()F

    move-result v0

    return v0
.end method

.method public getScale(I)F
    .locals 1
    .parameter "pTileIndex"

    .prologue
    .line 289
    iget-object v0, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mTextureRegions:[Lorg/andengine/opengl/texture/region/ITextureRegion;

    aget-object v0, v0, p1

    invoke-interface {v0}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getScale()F

    move-result v0

    return v0
.end method

.method public getTextureRegion(I)Lorg/andengine/opengl/texture/region/ITextureRegion;
    .locals 1
    .parameter "pTileIndex"

    .prologue
    .line 114
    iget-object v0, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mTextureRegions:[Lorg/andengine/opengl/texture/region/ITextureRegion;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getTextureX()F
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mTextureRegions:[Lorg/andengine/opengl/texture/region/ITextureRegion;

    iget v1, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mCurrentTileIndex:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getTextureX()F

    move-result v0

    return v0
.end method

.method public getTextureX(I)F
    .locals 1
    .parameter "pTileIndex"

    .prologue
    .line 129
    iget-object v0, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mTextureRegions:[Lorg/andengine/opengl/texture/region/ITextureRegion;

    aget-object v0, v0, p1

    invoke-interface {v0}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getTextureX()F

    move-result v0

    return v0
.end method

.method public getTextureY()F
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mTextureRegions:[Lorg/andengine/opengl/texture/region/ITextureRegion;

    iget v1, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mCurrentTileIndex:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getTextureY()F

    move-result v0

    return v0
.end method

.method public getTextureY(I)F
    .locals 1
    .parameter "pTileIndex"

    .prologue
    .line 139
    iget-object v0, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mTextureRegions:[Lorg/andengine/opengl/texture/region/ITextureRegion;

    aget-object v0, v0, p1

    invoke-interface {v0}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getTextureY()F

    move-result v0

    return v0
.end method

.method public getTileCount()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mTileCount:I

    return v0
.end method

.method public getU()F
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mTextureRegions:[Lorg/andengine/opengl/texture/region/ITextureRegion;

    iget v1, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mCurrentTileIndex:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU()F

    move-result v0

    return v0
.end method

.method public getU(I)F
    .locals 1
    .parameter "pTileIndex"

    .prologue
    .line 239
    iget-object v0, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mTextureRegions:[Lorg/andengine/opengl/texture/region/ITextureRegion;

    aget-object v0, v0, p1

    invoke-interface {v0}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU()F

    move-result v0

    return v0
.end method

.method public getU2()F
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mTextureRegions:[Lorg/andengine/opengl/texture/region/ITextureRegion;

    iget v1, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mCurrentTileIndex:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU2()F

    move-result v0

    return v0
.end method

.method public getU2(I)F
    .locals 1
    .parameter "pTileIndex"

    .prologue
    .line 259
    iget-object v0, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mTextureRegions:[Lorg/andengine/opengl/texture/region/ITextureRegion;

    aget-object v0, v0, p1

    invoke-interface {v0}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU2()F

    move-result v0

    return v0
.end method

.method public getV()F
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mTextureRegions:[Lorg/andengine/opengl/texture/region/ITextureRegion;

    iget v1, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mCurrentTileIndex:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV()F

    move-result v0

    return v0
.end method

.method public getV(I)F
    .locals 1
    .parameter "pTileIndex"

    .prologue
    .line 249
    iget-object v0, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mTextureRegions:[Lorg/andengine/opengl/texture/region/ITextureRegion;

    aget-object v0, v0, p1

    invoke-interface {v0}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV()F

    move-result v0

    return v0
.end method

.method public getV2()F
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mTextureRegions:[Lorg/andengine/opengl/texture/region/ITextureRegion;

    iget v1, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mCurrentTileIndex:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV2()F

    move-result v0

    return v0
.end method

.method public getV2(I)F
    .locals 1
    .parameter "pTileIndex"

    .prologue
    .line 269
    iget-object v0, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mTextureRegions:[Lorg/andengine/opengl/texture/region/ITextureRegion;

    aget-object v0, v0, p1

    invoke-interface {v0}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV2()F

    move-result v0

    return v0
.end method

.method public getWidth()F
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mTextureRegions:[Lorg/andengine/opengl/texture/region/ITextureRegion;

    iget v1, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mCurrentTileIndex:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getWidth()F

    move-result v0

    return v0
.end method

.method public getWidth(I)F
    .locals 1
    .parameter "pTileIndex"

    .prologue
    .line 179
    iget-object v0, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mTextureRegions:[Lorg/andengine/opengl/texture/region/ITextureRegion;

    aget-object v0, v0, p1

    invoke-interface {v0}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getWidth()F

    move-result v0

    return v0
.end method

.method public isRotated()Z
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mTextureRegions:[Lorg/andengine/opengl/texture/region/ITextureRegion;

    iget v1, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mCurrentTileIndex:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Lorg/andengine/opengl/texture/region/ITextureRegion;->isRotated()Z

    move-result v0

    return v0
.end method

.method public isRotated(I)Z
    .locals 1
    .parameter "pTileIndex"

    .prologue
    .line 299
    iget-object v0, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mTextureRegions:[Lorg/andengine/opengl/texture/region/ITextureRegion;

    aget-object v0, v0, p1

    invoke-interface {v0}, Lorg/andengine/opengl/texture/region/ITextureRegion;->isRotated()Z

    move-result v0

    return v0
.end method

.method public isScaled()Z
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mTextureRegions:[Lorg/andengine/opengl/texture/region/ITextureRegion;

    iget v1, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mCurrentTileIndex:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Lorg/andengine/opengl/texture/region/ITextureRegion;->isScaled()Z

    move-result v0

    return v0
.end method

.method public isScaled(I)Z
    .locals 1
    .parameter "pTileIndex"

    .prologue
    .line 279
    iget-object v0, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mTextureRegions:[Lorg/andengine/opengl/texture/region/ITextureRegion;

    aget-object v0, v0, p1

    invoke-interface {v0}, Lorg/andengine/opengl/texture/region/ITextureRegion;->isScaled()Z

    move-result v0

    return v0
.end method

.method public nextTile()V
    .locals 2

    .prologue
    .line 106
    iget v0, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mCurrentTileIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mCurrentTileIndex:I

    .line 107
    iget v0, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mCurrentTileIndex:I

    iget v1, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mTileCount:I

    if-lt v0, v1, :cond_0

    .line 108
    iget v0, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mCurrentTileIndex:I

    iget v1, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mTileCount:I

    rem-int/2addr v0, v1

    iput v0, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mCurrentTileIndex:I

    .line 110
    :cond_0
    return-void
.end method

.method public set(FFFF)V
    .locals 2
    .parameter "pTextureX"
    .parameter "pTextureY"
    .parameter "pTextureWidth"
    .parameter "pTextureHeight"

    .prologue
    .line 224
    iget-object v0, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mTextureRegions:[Lorg/andengine/opengl/texture/region/ITextureRegion;

    iget v1, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mCurrentTileIndex:I

    aget-object v0, v0, v1

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/andengine/opengl/texture/region/ITextureRegion;->set(FFFF)V

    .line 225
    return-void
.end method

.method public set(IFFFF)V
    .locals 1
    .parameter "pTileIndex"
    .parameter "pTextureX"
    .parameter "pTextureY"
    .parameter "pTextureWidth"
    .parameter "pTextureHeight"

    .prologue
    .line 229
    iget-object v0, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mTextureRegions:[Lorg/andengine/opengl/texture/region/ITextureRegion;

    aget-object v0, v0, p1

    invoke-interface {v0, p2, p3, p4, p5}, Lorg/andengine/opengl/texture/region/ITextureRegion;->set(FFFF)V

    .line 230
    return-void
.end method

.method public setCurrentTileIndex(I)V
    .locals 0
    .parameter "pCurrentTileIndex"

    .prologue
    .line 101
    iput p1, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mCurrentTileIndex:I

    .line 102
    return-void
.end method

.method public setTextureHeight(F)V
    .locals 2
    .parameter "pTextureHeight"

    .prologue
    .line 204
    iget-object v0, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mTextureRegions:[Lorg/andengine/opengl/texture/region/ITextureRegion;

    iget v1, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mCurrentTileIndex:I

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->setTextureHeight(F)V

    .line 205
    return-void
.end method

.method public setTextureHeight(IF)V
    .locals 1
    .parameter "pTileIndex"
    .parameter "pTextureHeight"

    .prologue
    .line 209
    iget-object v0, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mTextureRegions:[Lorg/andengine/opengl/texture/region/ITextureRegion;

    aget-object v0, v0, p1

    invoke-interface {v0, p2}, Lorg/andengine/opengl/texture/region/ITextureRegion;->setTextureHeight(F)V

    .line 210
    return-void
.end method

.method public setTexturePosition(FF)V
    .locals 2
    .parameter "pTextureX"
    .parameter "pTextureY"

    .prologue
    .line 164
    iget-object v0, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mTextureRegions:[Lorg/andengine/opengl/texture/region/ITextureRegion;

    iget v1, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mCurrentTileIndex:I

    aget-object v0, v0, v1

    invoke-interface {v0, p1, p2}, Lorg/andengine/opengl/texture/region/ITextureRegion;->setTexturePosition(FF)V

    .line 165
    return-void
.end method

.method public setTexturePosition(IFF)V
    .locals 1
    .parameter "pTileIndex"
    .parameter "pTextureX"
    .parameter "pTextureY"

    .prologue
    .line 169
    iget-object v0, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mTextureRegions:[Lorg/andengine/opengl/texture/region/ITextureRegion;

    aget-object v0, v0, p1

    invoke-interface {v0, p2, p3}, Lorg/andengine/opengl/texture/region/ITextureRegion;->setTexturePosition(FF)V

    .line 170
    return-void
.end method

.method public setTextureSize(FF)V
    .locals 2
    .parameter "pTextureWidth"
    .parameter "pTextureHeight"

    .prologue
    .line 214
    iget-object v0, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mTextureRegions:[Lorg/andengine/opengl/texture/region/ITextureRegion;

    iget v1, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mCurrentTileIndex:I

    aget-object v0, v0, v1

    invoke-interface {v0, p1, p2}, Lorg/andengine/opengl/texture/region/ITextureRegion;->setTextureSize(FF)V

    .line 215
    return-void
.end method

.method public setTextureSize(IFF)V
    .locals 1
    .parameter "pTileIndex"
    .parameter "pTextureWidth"
    .parameter "pTextureHeight"

    .prologue
    .line 219
    iget-object v0, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mTextureRegions:[Lorg/andengine/opengl/texture/region/ITextureRegion;

    aget-object v0, v0, p1

    invoke-interface {v0, p2, p3}, Lorg/andengine/opengl/texture/region/ITextureRegion;->setTextureSize(FF)V

    .line 220
    return-void
.end method

.method public setTextureWidth(F)V
    .locals 2
    .parameter "pTextureWidth"

    .prologue
    .line 194
    iget-object v0, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mTextureRegions:[Lorg/andengine/opengl/texture/region/ITextureRegion;

    iget v1, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mCurrentTileIndex:I

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->setTextureWidth(F)V

    .line 195
    return-void
.end method

.method public setTextureWidth(IF)V
    .locals 1
    .parameter "pTileIndex"
    .parameter "pTextureWidth"

    .prologue
    .line 199
    iget-object v0, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mTextureRegions:[Lorg/andengine/opengl/texture/region/ITextureRegion;

    aget-object v0, v0, p1

    invoke-interface {v0, p2}, Lorg/andengine/opengl/texture/region/ITextureRegion;->setTextureWidth(F)V

    .line 200
    return-void
.end method

.method public setTextureX(F)V
    .locals 2
    .parameter "pTextureX"

    .prologue
    .line 144
    iget-object v0, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mTextureRegions:[Lorg/andengine/opengl/texture/region/ITextureRegion;

    iget v1, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mCurrentTileIndex:I

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->setTextureX(F)V

    .line 145
    return-void
.end method

.method public setTextureX(IF)V
    .locals 1
    .parameter "pTileIndex"
    .parameter "pTextureX"

    .prologue
    .line 149
    iget-object v0, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mTextureRegions:[Lorg/andengine/opengl/texture/region/ITextureRegion;

    aget-object v0, v0, p1

    invoke-interface {v0, p2}, Lorg/andengine/opengl/texture/region/ITextureRegion;->setTextureX(F)V

    .line 150
    return-void
.end method

.method public setTextureY(F)V
    .locals 2
    .parameter "pTextureY"

    .prologue
    .line 154
    iget-object v0, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mTextureRegions:[Lorg/andengine/opengl/texture/region/ITextureRegion;

    iget v1, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mCurrentTileIndex:I

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->setTextureY(F)V

    .line 155
    return-void
.end method

.method public setTextureY(IF)V
    .locals 1
    .parameter "pTileIndex"
    .parameter "pTextureY"

    .prologue
    .line 159
    iget-object v0, p0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;->mTextureRegions:[Lorg/andengine/opengl/texture/region/ITextureRegion;

    aget-object v0, v0, p1

    invoke-interface {v0, p2}, Lorg/andengine/opengl/texture/region/ITextureRegion;->setTextureY(F)V

    .line 160
    return-void
.end method
