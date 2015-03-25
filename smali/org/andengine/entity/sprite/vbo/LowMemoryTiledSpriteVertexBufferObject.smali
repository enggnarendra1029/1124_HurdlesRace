.class public Lorg/andengine/entity/sprite/vbo/LowMemoryTiledSpriteVertexBufferObject;
.super Lorg/andengine/entity/sprite/vbo/LowMemorySpriteVertexBufferObject;
.source "LowMemoryTiledSpriteVertexBufferObject.java"

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
    .line 33
    invoke-direct/range {p0 .. p5}, Lorg/andengine/entity/sprite/vbo/LowMemorySpriteVertexBufferObject;-><init>(Lorg/andengine/opengl/vbo/VertexBufferObjectManager;ILorg/andengine/opengl/vbo/DrawType;ZLorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;)V

    .line 34
    return-void
.end method


# virtual methods
.method public onUpdateColor(Lorg/andengine/entity/sprite/TiledSprite;)V
    .locals 6
    .parameter "pTiledSprite"

    .prologue
    .line 46
    iget-object v0, p0, Lorg/andengine/entity/sprite/vbo/LowMemoryTiledSpriteVertexBufferObject;->mFloatBuffer:Ljava/nio/FloatBuffer;

    .line 48
    .local v0, bufferData:Ljava/nio/FloatBuffer;
    invoke-virtual {p1}, Lorg/andengine/entity/sprite/TiledSprite;->getColor()Lorg/andengine/util/color/Color;

    move-result-object v5

    invoke-virtual {v5}, Lorg/andengine/util/color/Color;->getABGRPackedFloat()F

    move-result v3

    .line 50
    .local v3, packedColor:F
    invoke-virtual {p1}, Lorg/andengine/entity/sprite/TiledSprite;->getTileCount()I

    move-result v4

    .line 51
    .local v4, tileCount:I
    const/4 v1, 0x0

    .line 52
    .local v1, bufferDataOffset:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v4, :cond_0

    .line 63
    invoke-virtual {p0}, Lorg/andengine/entity/sprite/vbo/LowMemoryTiledSpriteVertexBufferObject;->setDirtyOnHardware()V

    .line 64
    return-void

    .line 53
    :cond_0
    add-int/lit8 v5, v1, 0x0

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v0, v5, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 54
    add-int/lit8 v5, v1, 0x5

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v0, v5, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 55
    add-int/lit8 v5, v1, 0xa

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v0, v5, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 56
    add-int/lit8 v5, v1, 0xf

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v0, v5, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 57
    add-int/lit8 v5, v1, 0x14

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v0, v5, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 58
    add-int/lit8 v5, v1, 0x19

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v0, v5, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 60
    add-int/lit8 v1, v1, 0x1e

    .line 52
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onUpdateTextureCoordinates(Lorg/andengine/entity/sprite/TiledSprite;)V
    .locals 11
    .parameter "pTiledSprite"

    .prologue
    .line 104
    iget-object v0, p0, Lorg/andengine/entity/sprite/vbo/LowMemoryTiledSpriteVertexBufferObject;->mFloatBuffer:Ljava/nio/FloatBuffer;

    .line 106
    .local v0, bufferData:Ljava/nio/FloatBuffer;
    invoke-virtual {p1}, Lorg/andengine/entity/sprite/TiledSprite;->getTiledTextureRegion()Lorg/andengine/opengl/texture/region/ITiledTextureRegion;

    move-result-object v5

    .line 108
    .local v5, tiledTextureRegion:Lorg/andengine/opengl/texture/region/ITiledTextureRegion;
    invoke-virtual {p1}, Lorg/andengine/entity/sprite/TiledSprite;->getTileCount()I

    move-result v4

    .line 109
    .local v4, tileCount:I
    const/4 v1, 0x0

    .line 110
    .local v1, bufferDataOffset:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v4, :cond_0

    .line 185
    invoke-virtual {p0}, Lorg/andengine/entity/sprite/vbo/LowMemoryTiledSpriteVertexBufferObject;->setDirtyOnHardware()V

    .line 186
    return-void

    .line 111
    :cond_0
    invoke-interface {v5, v2}, Lorg/andengine/opengl/texture/region/ITiledTextureRegion;->getTextureRegion(I)Lorg/andengine/opengl/texture/region/ITextureRegion;

    move-result-object v3

    .line 118
    .local v3, textureRegion:Lorg/andengine/opengl/texture/region/ITextureRegion;
    invoke-virtual {p1}, Lorg/andengine/entity/sprite/TiledSprite;->isFlippedVertical()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 119
    invoke-virtual {p1}, Lorg/andengine/entity/sprite/TiledSprite;->isFlippedHorizontal()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 120
    invoke-interface {v3}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU2()F

    move-result v6

    .line 121
    .local v6, u:F
    invoke-interface {v3}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU()F

    move-result v7

    .line 122
    .local v7, u2:F
    invoke-interface {v3}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV2()F

    move-result v8

    .line 123
    .local v8, v:F
    invoke-interface {v3}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV()F

    move-result v9

    .line 144
    .local v9, v2:F
    :goto_1
    invoke-interface {v3}, Lorg/andengine/opengl/texture/region/ITextureRegion;->isRotated()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 145
    add-int/lit8 v10, v1, 0x0

    add-int/lit8 v10, v10, 0x3

    invoke-virtual {v0, v10, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 146
    add-int/lit8 v10, v1, 0x0

    add-int/lit8 v10, v10, 0x4

    invoke-virtual {v0, v10, v8}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 148
    add-int/lit8 v10, v1, 0x5

    add-int/lit8 v10, v10, 0x3

    invoke-virtual {v0, v10, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 149
    add-int/lit8 v10, v1, 0x5

    add-int/lit8 v10, v10, 0x4

    invoke-virtual {v0, v10, v8}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 151
    add-int/lit8 v10, v1, 0xa

    add-int/lit8 v10, v10, 0x3

    invoke-virtual {v0, v10, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 152
    add-int/lit8 v10, v1, 0xa

    add-int/lit8 v10, v10, 0x4

    invoke-virtual {v0, v10, v9}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 154
    add-int/lit8 v10, v1, 0xf

    add-int/lit8 v10, v10, 0x3

    invoke-virtual {v0, v10, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 155
    add-int/lit8 v10, v1, 0xf

    add-int/lit8 v10, v10, 0x4

    invoke-virtual {v0, v10, v9}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 157
    add-int/lit8 v10, v1, 0x14

    add-int/lit8 v10, v10, 0x3

    invoke-virtual {v0, v10, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 158
    add-int/lit8 v10, v1, 0x14

    add-int/lit8 v10, v10, 0x4

    invoke-virtual {v0, v10, v8}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 160
    add-int/lit8 v10, v1, 0x19

    add-int/lit8 v10, v10, 0x3

    invoke-virtual {v0, v10, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 161
    add-int/lit8 v10, v1, 0x19

    add-int/lit8 v10, v10, 0x4

    invoke-virtual {v0, v10, v9}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 182
    :goto_2
    add-int/lit8 v1, v1, 0x1e

    .line 110
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 125
    .end local v6           #u:F
    .end local v7           #u2:F
    .end local v8           #v:F
    .end local v9           #v2:F
    :cond_1
    invoke-interface {v3}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU()F

    move-result v6

    .line 126
    .restart local v6       #u:F
    invoke-interface {v3}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU2()F

    move-result v7

    .line 127
    .restart local v7       #u2:F
    invoke-interface {v3}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV2()F

    move-result v8

    .line 128
    .restart local v8       #v:F
    invoke-interface {v3}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV()F

    move-result v9

    .line 130
    .restart local v9       #v2:F
    goto :goto_1

    .line 131
    .end local v6           #u:F
    .end local v7           #u2:F
    .end local v8           #v:F
    .end local v9           #v2:F
    :cond_2
    invoke-virtual {p1}, Lorg/andengine/entity/sprite/TiledSprite;->isFlippedHorizontal()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 132
    invoke-interface {v3}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU2()F

    move-result v6

    .line 133
    .restart local v6       #u:F
    invoke-interface {v3}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU()F

    move-result v7

    .line 134
    .restart local v7       #u2:F
    invoke-interface {v3}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV()F

    move-result v8

    .line 135
    .restart local v8       #v:F
    invoke-interface {v3}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV2()F

    move-result v9

    .line 136
    .restart local v9       #v2:F
    goto/16 :goto_1

    .line 137
    .end local v6           #u:F
    .end local v7           #u2:F
    .end local v8           #v:F
    .end local v9           #v2:F
    :cond_3
    invoke-interface {v3}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU()F

    move-result v6

    .line 138
    .restart local v6       #u:F
    invoke-interface {v3}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU2()F

    move-result v7

    .line 139
    .restart local v7       #u2:F
    invoke-interface {v3}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV()F

    move-result v8

    .line 140
    .restart local v8       #v:F
    invoke-interface {v3}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV2()F

    move-result v9

    .restart local v9       #v2:F
    goto/16 :goto_1

    .line 163
    :cond_4
    add-int/lit8 v10, v1, 0x0

    add-int/lit8 v10, v10, 0x3

    invoke-virtual {v0, v10, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 164
    add-int/lit8 v10, v1, 0x0

    add-int/lit8 v10, v10, 0x4

    invoke-virtual {v0, v10, v8}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 166
    add-int/lit8 v10, v1, 0x5

    add-int/lit8 v10, v10, 0x3

    invoke-virtual {v0, v10, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 167
    add-int/lit8 v10, v1, 0x5

    add-int/lit8 v10, v10, 0x4

    invoke-virtual {v0, v10, v9}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 169
    add-int/lit8 v10, v1, 0xa

    add-int/lit8 v10, v10, 0x3

    invoke-virtual {v0, v10, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 170
    add-int/lit8 v10, v1, 0xa

    add-int/lit8 v10, v10, 0x4

    invoke-virtual {v0, v10, v8}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 172
    add-int/lit8 v10, v1, 0xf

    add-int/lit8 v10, v10, 0x3

    invoke-virtual {v0, v10, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 173
    add-int/lit8 v10, v1, 0xf

    add-int/lit8 v10, v10, 0x4

    invoke-virtual {v0, v10, v8}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 175
    add-int/lit8 v10, v1, 0x14

    add-int/lit8 v10, v10, 0x3

    invoke-virtual {v0, v10, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 176
    add-int/lit8 v10, v1, 0x14

    add-int/lit8 v10, v10, 0x4

    invoke-virtual {v0, v10, v9}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 178
    add-int/lit8 v10, v1, 0x19

    add-int/lit8 v10, v10, 0x3

    invoke-virtual {v0, v10, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 179
    add-int/lit8 v10, v1, 0x19

    add-int/lit8 v10, v10, 0x4

    invoke-virtual {v0, v10, v9}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    goto/16 :goto_2
.end method

.method public onUpdateVertices(Lorg/andengine/entity/sprite/TiledSprite;)V
    .locals 10
    .parameter "pTiledSprite"

    .prologue
    const/4 v9, 0x0

    .line 68
    iget-object v0, p0, Lorg/andengine/entity/sprite/vbo/LowMemoryTiledSpriteVertexBufferObject;->mFloatBuffer:Ljava/nio/FloatBuffer;

    .line 70
    .local v0, bufferData:Ljava/nio/FloatBuffer;
    const/4 v4, 0x0

    .line 71
    .local v4, x:F
    const/4 v6, 0x0

    .line 72
    .local v6, y:F
    invoke-virtual {p1}, Lorg/andengine/entity/sprite/TiledSprite;->getWidth()F

    move-result v5

    .line 73
    .local v5, x2:F
    invoke-virtual {p1}, Lorg/andengine/entity/sprite/TiledSprite;->getHeight()F

    move-result v7

    .line 75
    .local v7, y2:F
    invoke-virtual {p1}, Lorg/andengine/entity/sprite/TiledSprite;->getTileCount()I

    move-result v3

    .line 76
    .local v3, tileCount:I
    const/4 v1, 0x0

    .line 77
    .local v1, bufferDataOffset:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 99
    invoke-virtual {p0}, Lorg/andengine/entity/sprite/vbo/LowMemoryTiledSpriteVertexBufferObject;->setDirtyOnHardware()V

    .line 100
    return-void

    .line 78
    :cond_0
    add-int/lit8 v8, v1, 0x0

    add-int/lit8 v8, v8, 0x0

    invoke-virtual {v0, v8, v9}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 79
    add-int/lit8 v8, v1, 0x0

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v0, v8, v9}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 81
    add-int/lit8 v8, v1, 0x5

    add-int/lit8 v8, v8, 0x0

    invoke-virtual {v0, v8, v9}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 82
    add-int/lit8 v8, v1, 0x5

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v0, v8, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 84
    add-int/lit8 v8, v1, 0xa

    add-int/lit8 v8, v8, 0x0

    invoke-virtual {v0, v8, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 85
    add-int/lit8 v8, v1, 0xa

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v0, v8, v9}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 87
    add-int/lit8 v8, v1, 0xf

    add-int/lit8 v8, v8, 0x0

    invoke-virtual {v0, v8, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 88
    add-int/lit8 v8, v1, 0xf

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v0, v8, v9}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 90
    add-int/lit8 v8, v1, 0x14

    add-int/lit8 v8, v8, 0x0

    invoke-virtual {v0, v8, v9}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 91
    add-int/lit8 v8, v1, 0x14

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v0, v8, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 93
    add-int/lit8 v8, v1, 0x19

    add-int/lit8 v8, v8, 0x0

    invoke-virtual {v0, v8, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 94
    add-int/lit8 v8, v1, 0x19

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v0, v8, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 96
    add-int/lit8 v1, v1, 0x1e

    .line 77
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
