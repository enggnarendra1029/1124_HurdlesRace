.class public Lorg/andengine/entity/sprite/vbo/LowMemoryDiamondSpriteVertexBufferObject;
.super Lorg/andengine/entity/sprite/vbo/LowMemorySpriteVertexBufferObject;
.source "LowMemoryDiamondSpriteVertexBufferObject.java"

# interfaces
.implements Lorg/andengine/entity/sprite/vbo/IDiamondSpriteVertexBufferObject;


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
    invoke-direct/range {p0 .. p5}, Lorg/andengine/entity/sprite/vbo/LowMemorySpriteVertexBufferObject;-><init>(Lorg/andengine/opengl/vbo/VertexBufferObjectManager;ILorg/andengine/opengl/vbo/DrawType;ZLorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;)V

    .line 32
    return-void
.end method


# virtual methods
.method public onUpdateTextureCoordinates(Lorg/andengine/entity/sprite/Sprite;)V
    .locals 14
    .parameter "pSprite"

    .prologue
    const/16 v13, 0x9

    const/16 v12, 0x8

    const/4 v11, 0x4

    const/4 v10, 0x3

    const/high16 v9, 0x3f00

    .line 71
    iget-object v0, p0, Lorg/andengine/entity/sprite/vbo/LowMemoryDiamondSpriteVertexBufferObject;->mFloatBuffer:Ljava/nio/FloatBuffer;

    .line 73
    .local v0, bufferData:Ljava/nio/FloatBuffer;
    invoke-virtual {p1}, Lorg/andengine/entity/sprite/Sprite;->getTextureRegion()Lorg/andengine/opengl/texture/region/ITextureRegion;

    move-result-object v1

    .line 80
    .local v1, textureRegion:Lorg/andengine/opengl/texture/region/ITextureRegion;
    invoke-virtual {p1}, Lorg/andengine/entity/sprite/Sprite;->isFlippedVertical()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 81
    invoke-virtual {p1}, Lorg/andengine/entity/sprite/Sprite;->isFlippedHorizontal()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 82
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU2()F

    move-result v2

    .line 83
    .local v2, u:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU()F

    move-result v3

    .line 84
    .local v3, u2:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV2()F

    move-result v5

    .line 85
    .local v5, v:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV()F

    move-result v6

    .line 106
    .local v6, v2:F
    :goto_0
    add-float v8, v2, v3

    mul-float v4, v8, v9

    .line 107
    .local v4, uCenter:F
    add-float v8, v5, v6

    mul-float v7, v8, v9

    .line 109
    .local v7, vCenter:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->isRotated()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 110
    invoke-virtual {v0, v10, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 111
    invoke-virtual {v0, v11, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 113
    invoke-virtual {v0, v12, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 114
    invoke-virtual {v0, v13, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 116
    const/16 v8, 0xd

    invoke-virtual {v0, v8, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 117
    const/16 v8, 0xe

    invoke-virtual {v0, v8, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 119
    const/16 v8, 0x12

    invoke-virtual {v0, v8, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 120
    const/16 v8, 0x13

    invoke-virtual {v0, v8, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 135
    :goto_1
    invoke-virtual {p0}, Lorg/andengine/entity/sprite/vbo/LowMemoryDiamondSpriteVertexBufferObject;->setDirtyOnHardware()V

    .line 136
    return-void

    .line 87
    .end local v2           #u:F
    .end local v3           #u2:F
    .end local v4           #uCenter:F
    .end local v5           #v:F
    .end local v6           #v2:F
    .end local v7           #vCenter:F
    :cond_0
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU()F

    move-result v2

    .line 88
    .restart local v2       #u:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU2()F

    move-result v3

    .line 89
    .restart local v3       #u2:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV2()F

    move-result v5

    .line 90
    .restart local v5       #v:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV()F

    move-result v6

    .line 92
    .restart local v6       #v2:F
    goto :goto_0

    .line 93
    .end local v2           #u:F
    .end local v3           #u2:F
    .end local v5           #v:F
    .end local v6           #v2:F
    :cond_1
    invoke-virtual {p1}, Lorg/andengine/entity/sprite/Sprite;->isFlippedHorizontal()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 94
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU2()F

    move-result v2

    .line 95
    .restart local v2       #u:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU()F

    move-result v3

    .line 96
    .restart local v3       #u2:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV()F

    move-result v5

    .line 97
    .restart local v5       #v:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV2()F

    move-result v6

    .line 98
    .restart local v6       #v2:F
    goto :goto_0

    .line 99
    .end local v2           #u:F
    .end local v3           #u2:F
    .end local v5           #v:F
    .end local v6           #v2:F
    :cond_2
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU()F

    move-result v2

    .line 100
    .restart local v2       #u:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU2()F

    move-result v3

    .line 101
    .restart local v3       #u2:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV()F

    move-result v5

    .line 102
    .restart local v5       #v:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV2()F

    move-result v6

    .restart local v6       #v2:F
    goto :goto_0

    .line 122
    .restart local v4       #uCenter:F
    .restart local v7       #vCenter:F
    :cond_3
    invoke-virtual {v0, v10, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 123
    invoke-virtual {v0, v11, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 125
    invoke-virtual {v0, v12, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 126
    invoke-virtual {v0, v13, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 128
    const/16 v8, 0xd

    invoke-virtual {v0, v8, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 129
    const/16 v8, 0xe

    invoke-virtual {v0, v8, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 131
    const/16 v8, 0x12

    invoke-virtual {v0, v8, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 132
    const/16 v8, 0x13

    invoke-virtual {v0, v8, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    goto :goto_1
.end method

.method public onUpdateVertices(Lorg/andengine/entity/sprite/Sprite;)V
    .locals 10
    .parameter "pSprite"

    .prologue
    const/high16 v9, 0x3f00

    const/4 v8, 0x0

    .line 44
    iget-object v0, p0, Lorg/andengine/entity/sprite/vbo/LowMemoryDiamondSpriteVertexBufferObject;->mFloatBuffer:Ljava/nio/FloatBuffer;

    .line 46
    .local v0, bufferData:Ljava/nio/FloatBuffer;
    const/4 v1, 0x0

    .line 47
    .local v1, x:F
    const/4 v4, 0x0

    .line 48
    .local v4, y:F
    invoke-virtual {p1}, Lorg/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v2

    .line 49
    .local v2, x2:F
    invoke-virtual {p1}, Lorg/andengine/entity/sprite/Sprite;->getHeight()F

    move-result v5

    .line 51
    .local v5, y2:F
    add-float v7, v8, v2

    mul-float v3, v7, v9

    .line 52
    .local v3, xCenter:F
    add-float v7, v8, v5

    mul-float v6, v7, v9

    .line 54
    .local v6, yCenter:F
    const/4 v7, 0x0

    invoke-virtual {v0, v7, v8}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 55
    const/4 v7, 0x1

    invoke-virtual {v0, v7, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 57
    const/4 v7, 0x5

    invoke-virtual {v0, v7, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 58
    const/4 v7, 0x6

    invoke-virtual {v0, v7, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 60
    const/16 v7, 0xa

    invoke-virtual {v0, v7, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 61
    const/16 v7, 0xb

    invoke-virtual {v0, v7, v8}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 63
    const/16 v7, 0xf

    invoke-virtual {v0, v7, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 64
    const/16 v7, 0x10

    invoke-virtual {v0, v7, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 66
    invoke-virtual {p0}, Lorg/andengine/entity/sprite/vbo/LowMemoryDiamondSpriteVertexBufferObject;->setDirtyOnHardware()V

    .line 67
    return-void
.end method
