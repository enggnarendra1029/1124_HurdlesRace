.class public Lorg/andengine/entity/sprite/vbo/LowMemorySpriteVertexBufferObject;
.super Lorg/andengine/opengl/vbo/LowMemoryVertexBufferObject;
.source "LowMemorySpriteVertexBufferObject.java"

# interfaces
.implements Lorg/andengine/entity/sprite/vbo/ISpriteVertexBufferObject;


# direct methods
.method public constructor <init>(Lorg/andengine/opengl/vbo/VertexBufferObjectManager;ILorg/andengine/opengl/vbo/DrawType;ZLorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;)V
    .locals 0
    .parameter "pVertexBufferObjectManager"
    .parameter "pCapacity"
    .parameter "pDrawType"
    .parameter "pAutoDispose"
    .parameter "pVertexBufferObjectAttributes"

    .prologue
    .line 32
    invoke-direct/range {p0 .. p5}, Lorg/andengine/opengl/vbo/LowMemoryVertexBufferObject;-><init>(Lorg/andengine/opengl/vbo/VertexBufferObjectManager;ILorg/andengine/opengl/vbo/DrawType;ZLorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;)V

    .line 33
    return-void
.end method


# virtual methods
.method public onUpdateColor(Lorg/andengine/entity/sprite/Sprite;)V
    .locals 3
    .parameter "pSprite"

    .prologue
    .line 45
    iget-object v0, p0, Lorg/andengine/entity/sprite/vbo/LowMemorySpriteVertexBufferObject;->mFloatBuffer:Ljava/nio/FloatBuffer;

    .line 47
    .local v0, bufferData:Ljava/nio/FloatBuffer;
    invoke-virtual {p1}, Lorg/andengine/entity/sprite/Sprite;->getColor()Lorg/andengine/util/color/Color;

    move-result-object v2

    invoke-virtual {v2}, Lorg/andengine/util/color/Color;->getABGRPackedFloat()F

    move-result v1

    .line 49
    .local v1, packedColor:F
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 50
    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 51
    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 52
    const/16 v2, 0x11

    invoke-virtual {v0, v2, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 54
    invoke-virtual {p0}, Lorg/andengine/entity/sprite/vbo/LowMemorySpriteVertexBufferObject;->setDirtyOnHardware()V

    .line 55
    return-void
.end method

.method public onUpdateTextureCoordinates(Lorg/andengine/entity/sprite/Sprite;)V
    .locals 12
    .parameter "pSprite"

    .prologue
    const/16 v11, 0xd

    const/16 v10, 0x9

    const/16 v9, 0x8

    const/4 v8, 0x4

    const/4 v7, 0x3

    .line 83
    iget-object v0, p0, Lorg/andengine/entity/sprite/vbo/LowMemorySpriteVertexBufferObject;->mFloatBuffer:Ljava/nio/FloatBuffer;

    .line 85
    .local v0, bufferData:Ljava/nio/FloatBuffer;
    invoke-virtual {p1}, Lorg/andengine/entity/sprite/Sprite;->getTextureRegion()Lorg/andengine/opengl/texture/region/ITextureRegion;

    move-result-object v1

    .line 92
    .local v1, textureRegion:Lorg/andengine/opengl/texture/region/ITextureRegion;
    invoke-virtual {p1}, Lorg/andengine/entity/sprite/Sprite;->isFlippedVertical()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 93
    invoke-virtual {p1}, Lorg/andengine/entity/sprite/Sprite;->isFlippedHorizontal()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 94
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU2()F

    move-result v2

    .line 95
    .local v2, u:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU()F

    move-result v3

    .line 96
    .local v3, u2:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV2()F

    move-result v4

    .line 97
    .local v4, v:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV()F

    move-result v5

    .line 118
    .local v5, v2:F
    :goto_0
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->isRotated()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 119
    invoke-virtual {v0, v7, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 120
    invoke-virtual {v0, v8, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 122
    invoke-virtual {v0, v9, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 123
    invoke-virtual {v0, v10, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 125
    invoke-virtual {v0, v11, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 126
    const/16 v6, 0xe

    invoke-virtual {v0, v6, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 128
    const/16 v6, 0x12

    invoke-virtual {v0, v6, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 129
    const/16 v6, 0x13

    invoke-virtual {v0, v6, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 144
    :goto_1
    invoke-virtual {p0}, Lorg/andengine/entity/sprite/vbo/LowMemorySpriteVertexBufferObject;->setDirtyOnHardware()V

    .line 145
    return-void

    .line 99
    .end local v2           #u:F
    .end local v3           #u2:F
    .end local v4           #v:F
    .end local v5           #v2:F
    :cond_0
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU()F

    move-result v2

    .line 100
    .restart local v2       #u:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU2()F

    move-result v3

    .line 101
    .restart local v3       #u2:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV2()F

    move-result v4

    .line 102
    .restart local v4       #v:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV()F

    move-result v5

    .line 104
    .restart local v5       #v2:F
    goto :goto_0

    .line 105
    .end local v2           #u:F
    .end local v3           #u2:F
    .end local v4           #v:F
    .end local v5           #v2:F
    :cond_1
    invoke-virtual {p1}, Lorg/andengine/entity/sprite/Sprite;->isFlippedHorizontal()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 106
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU2()F

    move-result v2

    .line 107
    .restart local v2       #u:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU()F

    move-result v3

    .line 108
    .restart local v3       #u2:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV()F

    move-result v4

    .line 109
    .restart local v4       #v:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV2()F

    move-result v5

    .line 110
    .restart local v5       #v2:F
    goto :goto_0

    .line 111
    .end local v2           #u:F
    .end local v3           #u2:F
    .end local v4           #v:F
    .end local v5           #v2:F
    :cond_2
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU()F

    move-result v2

    .line 112
    .restart local v2       #u:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU2()F

    move-result v3

    .line 113
    .restart local v3       #u2:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV()F

    move-result v4

    .line 114
    .restart local v4       #v:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV2()F

    move-result v5

    .restart local v5       #v2:F
    goto :goto_0

    .line 131
    :cond_3
    invoke-virtual {v0, v7, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 132
    invoke-virtual {v0, v8, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 134
    invoke-virtual {v0, v9, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 135
    invoke-virtual {v0, v10, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 137
    invoke-virtual {v0, v11, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 138
    const/16 v6, 0xe

    invoke-virtual {v0, v6, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 140
    const/16 v6, 0x12

    invoke-virtual {v0, v6, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 141
    const/16 v6, 0x13

    invoke-virtual {v0, v6, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    goto :goto_1
.end method

.method public onUpdateVertices(Lorg/andengine/entity/sprite/Sprite;)V
    .locals 7
    .parameter "pSprite"

    .prologue
    const/4 v6, 0x0

    .line 59
    iget-object v0, p0, Lorg/andengine/entity/sprite/vbo/LowMemorySpriteVertexBufferObject;->mFloatBuffer:Ljava/nio/FloatBuffer;

    .line 61
    .local v0, bufferData:Ljava/nio/FloatBuffer;
    const/4 v1, 0x0

    .line 62
    .local v1, x:F
    const/4 v3, 0x0

    .line 63
    .local v3, y:F
    invoke-virtual {p1}, Lorg/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v2

    .line 64
    .local v2, x2:F
    invoke-virtual {p1}, Lorg/andengine/entity/sprite/Sprite;->getHeight()F

    move-result v4

    .line 66
    .local v4, y2:F
    const/4 v5, 0x0

    invoke-virtual {v0, v5, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 67
    const/4 v5, 0x1

    invoke-virtual {v0, v5, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 69
    const/4 v5, 0x5

    invoke-virtual {v0, v5, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 70
    const/4 v5, 0x6

    invoke-virtual {v0, v5, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 72
    const/16 v5, 0xa

    invoke-virtual {v0, v5, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 73
    const/16 v5, 0xb

    invoke-virtual {v0, v5, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 75
    const/16 v5, 0xf

    invoke-virtual {v0, v5, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 76
    const/16 v5, 0x10

    invoke-virtual {v0, v5, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 78
    invoke-virtual {p0}, Lorg/andengine/entity/sprite/vbo/LowMemorySpriteVertexBufferObject;->setDirtyOnHardware()V

    .line 79
    return-void
.end method
