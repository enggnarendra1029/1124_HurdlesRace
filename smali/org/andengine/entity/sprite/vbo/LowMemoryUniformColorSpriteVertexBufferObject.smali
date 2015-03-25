.class public Lorg/andengine/entity/sprite/vbo/LowMemoryUniformColorSpriteVertexBufferObject;
.super Lorg/andengine/opengl/vbo/LowMemoryVertexBufferObject;
.source "LowMemoryUniformColorSpriteVertexBufferObject.java"

# interfaces
.implements Lorg/andengine/entity/sprite/vbo/IUniformColorSpriteVertexBufferObject;


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
    invoke-direct/range {p0 .. p5}, Lorg/andengine/opengl/vbo/LowMemoryVertexBufferObject;-><init>(Lorg/andengine/opengl/vbo/VertexBufferObjectManager;ILorg/andengine/opengl/vbo/DrawType;ZLorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;)V

    .line 34
    return-void
.end method


# virtual methods
.method public onUpdateColor(Lorg/andengine/entity/sprite/Sprite;)V
    .locals 0
    .parameter "pSprite"

    .prologue
    .line 47
    return-void
.end method

.method public onUpdateTextureCoordinates(Lorg/andengine/entity/sprite/Sprite;)V
    .locals 12
    .parameter "pSprite"

    .prologue
    const/16 v11, 0xa

    const/4 v10, 0x7

    const/4 v9, 0x6

    const/4 v8, 0x3

    const/4 v7, 0x2

    .line 75
    iget-object v0, p0, Lorg/andengine/entity/sprite/vbo/LowMemoryUniformColorSpriteVertexBufferObject;->mFloatBuffer:Ljava/nio/FloatBuffer;

    .line 77
    .local v0, bufferData:Ljava/nio/FloatBuffer;
    invoke-virtual {p1}, Lorg/andengine/entity/sprite/Sprite;->getTextureRegion()Lorg/andengine/opengl/texture/region/ITextureRegion;

    move-result-object v1

    .line 84
    .local v1, textureRegion:Lorg/andengine/opengl/texture/region/ITextureRegion;
    invoke-virtual {p1}, Lorg/andengine/entity/sprite/Sprite;->isFlippedVertical()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 85
    invoke-virtual {p1}, Lorg/andengine/entity/sprite/Sprite;->isFlippedHorizontal()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 86
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU2()F

    move-result v2

    .line 87
    .local v2, u:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU()F

    move-result v3

    .line 88
    .local v3, u2:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV2()F

    move-result v4

    .line 89
    .local v4, v:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV()F

    move-result v5

    .line 110
    .local v5, v2:F
    :goto_0
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->isRotated()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 111
    invoke-virtual {v0, v7, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 112
    invoke-virtual {v0, v8, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 114
    invoke-virtual {v0, v9, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 115
    invoke-virtual {v0, v10, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 117
    invoke-virtual {v0, v11, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 118
    const/16 v6, 0xb

    invoke-virtual {v0, v6, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 120
    const/16 v6, 0xe

    invoke-virtual {v0, v6, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 121
    const/16 v6, 0xf

    invoke-virtual {v0, v6, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 136
    :goto_1
    invoke-virtual {p0}, Lorg/andengine/entity/sprite/vbo/LowMemoryUniformColorSpriteVertexBufferObject;->setDirtyOnHardware()V

    .line 137
    return-void

    .line 91
    .end local v2           #u:F
    .end local v3           #u2:F
    .end local v4           #v:F
    .end local v5           #v2:F
    :cond_0
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU()F

    move-result v2

    .line 92
    .restart local v2       #u:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU2()F

    move-result v3

    .line 93
    .restart local v3       #u2:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV2()F

    move-result v4

    .line 94
    .restart local v4       #v:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV()F

    move-result v5

    .line 96
    .restart local v5       #v2:F
    goto :goto_0

    .line 97
    .end local v2           #u:F
    .end local v3           #u2:F
    .end local v4           #v:F
    .end local v5           #v2:F
    :cond_1
    invoke-virtual {p1}, Lorg/andengine/entity/sprite/Sprite;->isFlippedHorizontal()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 98
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU2()F

    move-result v2

    .line 99
    .restart local v2       #u:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU()F

    move-result v3

    .line 100
    .restart local v3       #u2:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV()F

    move-result v4

    .line 101
    .restart local v4       #v:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV2()F

    move-result v5

    .line 102
    .restart local v5       #v2:F
    goto :goto_0

    .line 103
    .end local v2           #u:F
    .end local v3           #u2:F
    .end local v4           #v:F
    .end local v5           #v2:F
    :cond_2
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU()F

    move-result v2

    .line 104
    .restart local v2       #u:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU2()F

    move-result v3

    .line 105
    .restart local v3       #u2:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV()F

    move-result v4

    .line 106
    .restart local v4       #v:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV2()F

    move-result v5

    .restart local v5       #v2:F
    goto :goto_0

    .line 123
    :cond_3
    invoke-virtual {v0, v7, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 124
    invoke-virtual {v0, v8, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 126
    invoke-virtual {v0, v9, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 127
    invoke-virtual {v0, v10, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 129
    invoke-virtual {v0, v11, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 130
    const/16 v6, 0xb

    invoke-virtual {v0, v6, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 132
    const/16 v6, 0xe

    invoke-virtual {v0, v6, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 133
    const/16 v6, 0xf

    invoke-virtual {v0, v6, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    goto :goto_1
.end method

.method public onUpdateVertices(Lorg/andengine/entity/sprite/Sprite;)V
    .locals 7
    .parameter "pSprite"

    .prologue
    const/4 v6, 0x0

    .line 51
    iget-object v0, p0, Lorg/andengine/entity/sprite/vbo/LowMemoryUniformColorSpriteVertexBufferObject;->mFloatBuffer:Ljava/nio/FloatBuffer;

    .line 53
    .local v0, bufferData:Ljava/nio/FloatBuffer;
    const/4 v1, 0x0

    .line 54
    .local v1, x:F
    const/4 v3, 0x0

    .line 55
    .local v3, y:F
    invoke-virtual {p1}, Lorg/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v2

    .line 56
    .local v2, x2:F
    invoke-virtual {p1}, Lorg/andengine/entity/sprite/Sprite;->getHeight()F

    move-result v4

    .line 58
    .local v4, y2:F
    const/4 v5, 0x0

    invoke-virtual {v0, v5, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 59
    const/4 v5, 0x1

    invoke-virtual {v0, v5, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 61
    const/4 v5, 0x4

    invoke-virtual {v0, v5, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 62
    const/4 v5, 0x5

    invoke-virtual {v0, v5, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 64
    const/16 v5, 0x8

    invoke-virtual {v0, v5, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 65
    const/16 v5, 0x9

    invoke-virtual {v0, v5, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 67
    const/16 v5, 0xc

    invoke-virtual {v0, v5, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 68
    const/16 v5, 0xd

    invoke-virtual {v0, v5, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 70
    invoke-virtual {p0}, Lorg/andengine/entity/sprite/vbo/LowMemoryUniformColorSpriteVertexBufferObject;->setDirtyOnHardware()V

    .line 71
    return-void
.end method
