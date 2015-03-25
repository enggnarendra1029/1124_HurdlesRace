.class public Lorg/andengine/entity/sprite/vbo/HighPerformanceTiledSpriteVertexBufferObject;
.super Lorg/andengine/entity/sprite/vbo/HighPerformanceSpriteVertexBufferObject;
.source "HighPerformanceTiledSpriteVertexBufferObject.java"

# interfaces
.implements Lorg/andengine/entity/sprite/vbo/ITiledSpriteVertexBufferObject;


# direct methods
.method public constructor <init>(Lorg/andengine/opengl/vbo/VertexBufferObjectManager;ILorg/andengine/opengl/vbo/DrawType;ZLorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;)V
    .locals 0
    .parameter "pVertexBufferObjectManager"
    .parameter "pCapacity"
    .parameter "pDrawType"
    .parameter "pAutoDispose"
    .parameter "pVertexBufferObjectAttributes"

    .prologue
    .line 31
    invoke-direct/range {p0 .. p5}, Lorg/andengine/entity/sprite/vbo/HighPerformanceSpriteVertexBufferObject;-><init>(Lorg/andengine/opengl/vbo/VertexBufferObjectManager;ILorg/andengine/opengl/vbo/DrawType;ZLorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;)V

    .line 32
    return-void
.end method


# virtual methods
.method public onUpdateColor(Lorg/andengine/entity/sprite/TiledSprite;)V
    .locals 6
    .parameter "pTiledSprite"

    .prologue
    .line 44
    iget-object v0, p0, Lorg/andengine/entity/sprite/vbo/HighPerformanceTiledSpriteVertexBufferObject;->mBufferData:[F

    .line 46
    .local v0, bufferData:[F
    invoke-virtual {p1}, Lorg/andengine/entity/sprite/TiledSprite;->getColor()Lorg/andengine/util/color/Color;

    move-result-object v5

    invoke-virtual {v5}, Lorg/andengine/util/color/Color;->getABGRPackedFloat()F

    move-result v3

    .line 48
    .local v3, packedColor:F
    invoke-virtual {p1}, Lorg/andengine/entity/sprite/TiledSprite;->getTileCount()I

    move-result v4

    .line 49
    .local v4, tileCount:I
    const/4 v1, 0x0

    .line 50
    .local v1, bufferDataOffset:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v4, :cond_0

    .line 61
    invoke-virtual {p0}, Lorg/andengine/entity/sprite/vbo/HighPerformanceTiledSpriteVertexBufferObject;->setDirtyOnHardware()V

    .line 62
    return-void

    .line 51
    :cond_0
    add-int/lit8 v5, v1, 0x0

    add-int/lit8 v5, v5, 0x2

    aput v3, v0, v5

    .line 52
    add-int/lit8 v5, v1, 0x5

    add-int/lit8 v5, v5, 0x2

    aput v3, v0, v5

    .line 53
    add-int/lit8 v5, v1, 0xa

    add-int/lit8 v5, v5, 0x2

    aput v3, v0, v5

    .line 54
    add-int/lit8 v5, v1, 0xf

    add-int/lit8 v5, v5, 0x2

    aput v3, v0, v5

    .line 55
    add-int/lit8 v5, v1, 0x14

    add-int/lit8 v5, v5, 0x2

    aput v3, v0, v5

    .line 56
    add-int/lit8 v5, v1, 0x19

    add-int/lit8 v5, v5, 0x2

    aput v3, v0, v5

    .line 58
    add-int/lit8 v1, v1, 0x1e

    .line 50
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onUpdateTextureCoordinates(Lorg/andengine/entity/sprite/TiledSprite;)V
    .locals 11
    .parameter "pTiledSprite"

    .prologue
    .line 102
    iget-object v0, p0, Lorg/andengine/entity/sprite/vbo/HighPerformanceTiledSpriteVertexBufferObject;->mBufferData:[F

    .line 104
    .local v0, bufferData:[F
    invoke-virtual {p1}, Lorg/andengine/entity/sprite/TiledSprite;->getTiledTextureRegion()Lorg/andengine/opengl/texture/region/ITiledTextureRegion;

    move-result-object v5

    .line 106
    .local v5, tiledTextureRegion:Lorg/andengine/opengl/texture/region/ITiledTextureRegion;
    invoke-virtual {p1}, Lorg/andengine/entity/sprite/TiledSprite;->getTileCount()I

    move-result v4

    .line 107
    .local v4, tileCount:I
    const/4 v1, 0x0

    .line 108
    .local v1, bufferDataOffset:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v4, :cond_0

    .line 183
    invoke-virtual {p0}, Lorg/andengine/entity/sprite/vbo/HighPerformanceTiledSpriteVertexBufferObject;->setDirtyOnHardware()V

    .line 184
    return-void

    .line 109
    :cond_0
    invoke-interface {v5, v2}, Lorg/andengine/opengl/texture/region/ITiledTextureRegion;->getTextureRegion(I)Lorg/andengine/opengl/texture/region/ITextureRegion;

    move-result-object v3

    .line 116
    .local v3, textureRegion:Lorg/andengine/opengl/texture/region/ITextureRegion;
    invoke-virtual {p1}, Lorg/andengine/entity/sprite/TiledSprite;->isFlippedVertical()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 117
    invoke-virtual {p1}, Lorg/andengine/entity/sprite/TiledSprite;->isFlippedHorizontal()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 118
    invoke-interface {v3}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU2()F

    move-result v6

    .line 119
    .local v6, u:F
    invoke-interface {v3}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU()F

    move-result v7

    .line 120
    .local v7, u2:F
    invoke-interface {v3}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV2()F

    move-result v8

    .line 121
    .local v8, v:F
    invoke-interface {v3}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV()F

    move-result v9

    .line 142
    .local v9, v2:F
    :goto_1
    invoke-interface {v3}, Lorg/andengine/opengl/texture/region/ITextureRegion;->isRotated()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 143
    add-int/lit8 v10, v1, 0x0

    add-int/lit8 v10, v10, 0x3

    aput v7, v0, v10

    .line 144
    add-int/lit8 v10, v1, 0x0

    add-int/lit8 v10, v10, 0x4

    aput v8, v0, v10

    .line 146
    add-int/lit8 v10, v1, 0x5

    add-int/lit8 v10, v10, 0x3

    aput v6, v0, v10

    .line 147
    add-int/lit8 v10, v1, 0x5

    add-int/lit8 v10, v10, 0x4

    aput v8, v0, v10

    .line 149
    add-int/lit8 v10, v1, 0xa

    add-int/lit8 v10, v10, 0x3

    aput v7, v0, v10

    .line 150
    add-int/lit8 v10, v1, 0xa

    add-int/lit8 v10, v10, 0x4

    aput v9, v0, v10

    .line 152
    add-int/lit8 v10, v1, 0xf

    add-int/lit8 v10, v10, 0x3

    aput v7, v0, v10

    .line 153
    add-int/lit8 v10, v1, 0xf

    add-int/lit8 v10, v10, 0x4

    aput v9, v0, v10

    .line 155
    add-int/lit8 v10, v1, 0x14

    add-int/lit8 v10, v10, 0x3

    aput v6, v0, v10

    .line 156
    add-int/lit8 v10, v1, 0x14

    add-int/lit8 v10, v10, 0x4

    aput v8, v0, v10

    .line 158
    add-int/lit8 v10, v1, 0x19

    add-int/lit8 v10, v10, 0x3

    aput v6, v0, v10

    .line 159
    add-int/lit8 v10, v1, 0x19

    add-int/lit8 v10, v10, 0x4

    aput v9, v0, v10

    .line 180
    :goto_2
    add-int/lit8 v1, v1, 0x1e

    .line 108
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    .end local v6           #u:F
    .end local v7           #u2:F
    .end local v8           #v:F
    .end local v9           #v2:F
    :cond_1
    invoke-interface {v3}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU()F

    move-result v6

    .line 124
    .restart local v6       #u:F
    invoke-interface {v3}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU2()F

    move-result v7

    .line 125
    .restart local v7       #u2:F
    invoke-interface {v3}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV2()F

    move-result v8

    .line 126
    .restart local v8       #v:F
    invoke-interface {v3}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV()F

    move-result v9

    .line 128
    .restart local v9       #v2:F
    goto :goto_1

    .line 129
    .end local v6           #u:F
    .end local v7           #u2:F
    .end local v8           #v:F
    .end local v9           #v2:F
    :cond_2
    invoke-virtual {p1}, Lorg/andengine/entity/sprite/TiledSprite;->isFlippedHorizontal()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 130
    invoke-interface {v3}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU2()F

    move-result v6

    .line 131
    .restart local v6       #u:F
    invoke-interface {v3}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU()F

    move-result v7

    .line 132
    .restart local v7       #u2:F
    invoke-interface {v3}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV()F

    move-result v8

    .line 133
    .restart local v8       #v:F
    invoke-interface {v3}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV2()F

    move-result v9

    .line 134
    .restart local v9       #v2:F
    goto :goto_1

    .line 135
    .end local v6           #u:F
    .end local v7           #u2:F
    .end local v8           #v:F
    .end local v9           #v2:F
    :cond_3
    invoke-interface {v3}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU()F

    move-result v6

    .line 136
    .restart local v6       #u:F
    invoke-interface {v3}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU2()F

    move-result v7

    .line 137
    .restart local v7       #u2:F
    invoke-interface {v3}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV()F

    move-result v8

    .line 138
    .restart local v8       #v:F
    invoke-interface {v3}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV2()F

    move-result v9

    .restart local v9       #v2:F
    goto/16 :goto_1

    .line 161
    :cond_4
    add-int/lit8 v10, v1, 0x0

    add-int/lit8 v10, v10, 0x3

    aput v6, v0, v10

    .line 162
    add-int/lit8 v10, v1, 0x0

    add-int/lit8 v10, v10, 0x4

    aput v8, v0, v10

    .line 164
    add-int/lit8 v10, v1, 0x5

    add-int/lit8 v10, v10, 0x3

    aput v6, v0, v10

    .line 165
    add-int/lit8 v10, v1, 0x5

    add-int/lit8 v10, v10, 0x4

    aput v9, v0, v10

    .line 167
    add-int/lit8 v10, v1, 0xa

    add-int/lit8 v10, v10, 0x3

    aput v7, v0, v10

    .line 168
    add-int/lit8 v10, v1, 0xa

    add-int/lit8 v10, v10, 0x4

    aput v8, v0, v10

    .line 170
    add-int/lit8 v10, v1, 0xf

    add-int/lit8 v10, v10, 0x3

    aput v7, v0, v10

    .line 171
    add-int/lit8 v10, v1, 0xf

    add-int/lit8 v10, v10, 0x4

    aput v8, v0, v10

    .line 173
    add-int/lit8 v10, v1, 0x14

    add-int/lit8 v10, v10, 0x3

    aput v6, v0, v10

    .line 174
    add-int/lit8 v10, v1, 0x14

    add-int/lit8 v10, v10, 0x4

    aput v9, v0, v10

    .line 176
    add-int/lit8 v10, v1, 0x19

    add-int/lit8 v10, v10, 0x3

    aput v7, v0, v10

    .line 177
    add-int/lit8 v10, v1, 0x19

    add-int/lit8 v10, v10, 0x4

    aput v9, v0, v10

    goto/16 :goto_2
.end method

.method public onUpdateVertices(Lorg/andengine/entity/sprite/TiledSprite;)V
    .locals 10
    .parameter "pTiledSprite"

    .prologue
    const/4 v9, 0x0

    .line 66
    iget-object v0, p0, Lorg/andengine/entity/sprite/vbo/HighPerformanceTiledSpriteVertexBufferObject;->mBufferData:[F

    .line 68
    .local v0, bufferData:[F
    const/4 v4, 0x0

    .line 69
    .local v4, x:F
    const/4 v6, 0x0

    .line 70
    .local v6, y:F
    invoke-virtual {p1}, Lorg/andengine/entity/sprite/TiledSprite;->getWidth()F

    move-result v5

    .line 71
    .local v5, x2:F
    invoke-virtual {p1}, Lorg/andengine/entity/sprite/TiledSprite;->getHeight()F

    move-result v7

    .line 73
    .local v7, y2:F
    invoke-virtual {p1}, Lorg/andengine/entity/sprite/TiledSprite;->getTileCount()I

    move-result v3

    .line 74
    .local v3, tileCount:I
    const/4 v1, 0x0

    .line 75
    .local v1, bufferDataOffset:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 97
    invoke-virtual {p0}, Lorg/andengine/entity/sprite/vbo/HighPerformanceTiledSpriteVertexBufferObject;->setDirtyOnHardware()V

    .line 98
    return-void

    .line 76
    :cond_0
    add-int/lit8 v8, v1, 0x0

    add-int/lit8 v8, v8, 0x0

    aput v9, v0, v8

    .line 77
    add-int/lit8 v8, v1, 0x0

    add-int/lit8 v8, v8, 0x1

    aput v9, v0, v8

    .line 79
    add-int/lit8 v8, v1, 0x5

    add-int/lit8 v8, v8, 0x0

    aput v9, v0, v8

    .line 80
    add-int/lit8 v8, v1, 0x5

    add-int/lit8 v8, v8, 0x1

    aput v7, v0, v8

    .line 82
    add-int/lit8 v8, v1, 0xa

    add-int/lit8 v8, v8, 0x0

    aput v5, v0, v8

    .line 83
    add-int/lit8 v8, v1, 0xa

    add-int/lit8 v8, v8, 0x1

    aput v9, v0, v8

    .line 85
    add-int/lit8 v8, v1, 0xf

    add-int/lit8 v8, v8, 0x0

    aput v5, v0, v8

    .line 86
    add-int/lit8 v8, v1, 0xf

    add-int/lit8 v8, v8, 0x1

    aput v9, v0, v8

    .line 88
    add-int/lit8 v8, v1, 0x14

    add-int/lit8 v8, v8, 0x0

    aput v9, v0, v8

    .line 89
    add-int/lit8 v8, v1, 0x14

    add-int/lit8 v8, v8, 0x1

    aput v7, v0, v8

    .line 91
    add-int/lit8 v8, v1, 0x19

    add-int/lit8 v8, v8, 0x0

    aput v5, v0, v8

    .line 92
    add-int/lit8 v8, v1, 0x19

    add-int/lit8 v8, v8, 0x1

    aput v7, v0, v8

    .line 94
    add-int/lit8 v1, v1, 0x1e

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
