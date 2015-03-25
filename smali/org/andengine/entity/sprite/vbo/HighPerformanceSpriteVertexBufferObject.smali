.class public Lorg/andengine/entity/sprite/vbo/HighPerformanceSpriteVertexBufferObject;
.super Lorg/andengine/opengl/vbo/HighPerformanceVertexBufferObject;
.source "HighPerformanceSpriteVertexBufferObject.java"

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
    .line 30
    invoke-direct/range {p0 .. p5}, Lorg/andengine/opengl/vbo/HighPerformanceVertexBufferObject;-><init>(Lorg/andengine/opengl/vbo/VertexBufferObjectManager;ILorg/andengine/opengl/vbo/DrawType;ZLorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;)V

    .line 31
    return-void
.end method


# virtual methods
.method public onUpdateColor(Lorg/andengine/entity/sprite/Sprite;)V
    .locals 3
    .parameter "pSprite"

    .prologue
    .line 43
    iget-object v0, p0, Lorg/andengine/entity/sprite/vbo/HighPerformanceSpriteVertexBufferObject;->mBufferData:[F

    .line 45
    .local v0, bufferData:[F
    invoke-virtual {p1}, Lorg/andengine/entity/sprite/Sprite;->getColor()Lorg/andengine/util/color/Color;

    move-result-object v2

    invoke-virtual {v2}, Lorg/andengine/util/color/Color;->getABGRPackedFloat()F

    move-result v1

    .line 47
    .local v1, packedColor:F
    const/4 v2, 0x2

    aput v1, v0, v2

    .line 48
    const/4 v2, 0x7

    aput v1, v0, v2

    .line 49
    const/16 v2, 0xc

    aput v1, v0, v2

    .line 50
    const/16 v2, 0x11

    aput v1, v0, v2

    .line 52
    invoke-virtual {p0}, Lorg/andengine/entity/sprite/vbo/HighPerformanceSpriteVertexBufferObject;->setDirtyOnHardware()V

    .line 53
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

    .line 81
    iget-object v0, p0, Lorg/andengine/entity/sprite/vbo/HighPerformanceSpriteVertexBufferObject;->mBufferData:[F

    .line 83
    .local v0, bufferData:[F
    invoke-virtual {p1}, Lorg/andengine/entity/sprite/Sprite;->getTextureRegion()Lorg/andengine/opengl/texture/region/ITextureRegion;

    move-result-object v1

    .line 90
    .local v1, textureRegion:Lorg/andengine/opengl/texture/region/ITextureRegion;
    invoke-virtual {p1}, Lorg/andengine/entity/sprite/Sprite;->isFlippedVertical()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 91
    invoke-virtual {p1}, Lorg/andengine/entity/sprite/Sprite;->isFlippedHorizontal()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 92
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU2()F

    move-result v2

    .line 93
    .local v2, u:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU()F

    move-result v3

    .line 94
    .local v3, u2:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV2()F

    move-result v4

    .line 95
    .local v4, v:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV()F

    move-result v5

    .line 116
    .local v5, v2:F
    :goto_0
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->isRotated()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 117
    aput v3, v0, v7

    .line 118
    aput v4, v0, v8

    .line 120
    aput v2, v0, v9

    .line 121
    aput v4, v0, v10

    .line 123
    aput v3, v0, v11

    .line 124
    const/16 v6, 0xe

    aput v5, v0, v6

    .line 126
    const/16 v6, 0x12

    aput v2, v0, v6

    .line 127
    const/16 v6, 0x13

    aput v5, v0, v6

    .line 142
    :goto_1
    invoke-virtual {p0}, Lorg/andengine/entity/sprite/vbo/HighPerformanceSpriteVertexBufferObject;->setDirtyOnHardware()V

    .line 143
    return-void

    .line 97
    .end local v2           #u:F
    .end local v3           #u2:F
    .end local v4           #v:F
    .end local v5           #v2:F
    :cond_0
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU()F

    move-result v2

    .line 98
    .restart local v2       #u:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU2()F

    move-result v3

    .line 99
    .restart local v3       #u2:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV2()F

    move-result v4

    .line 100
    .restart local v4       #v:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV()F

    move-result v5

    .line 102
    .restart local v5       #v2:F
    goto :goto_0

    .line 103
    .end local v2           #u:F
    .end local v3           #u2:F
    .end local v4           #v:F
    .end local v5           #v2:F
    :cond_1
    invoke-virtual {p1}, Lorg/andengine/entity/sprite/Sprite;->isFlippedHorizontal()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 104
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU2()F

    move-result v2

    .line 105
    .restart local v2       #u:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU()F

    move-result v3

    .line 106
    .restart local v3       #u2:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV()F

    move-result v4

    .line 107
    .restart local v4       #v:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV2()F

    move-result v5

    .line 108
    .restart local v5       #v2:F
    goto :goto_0

    .line 109
    .end local v2           #u:F
    .end local v3           #u2:F
    .end local v4           #v:F
    .end local v5           #v2:F
    :cond_2
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU()F

    move-result v2

    .line 110
    .restart local v2       #u:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU2()F

    move-result v3

    .line 111
    .restart local v3       #u2:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV()F

    move-result v4

    .line 112
    .restart local v4       #v:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV2()F

    move-result v5

    .restart local v5       #v2:F
    goto :goto_0

    .line 129
    :cond_3
    aput v2, v0, v7

    .line 130
    aput v4, v0, v8

    .line 132
    aput v2, v0, v9

    .line 133
    aput v5, v0, v10

    .line 135
    aput v3, v0, v11

    .line 136
    const/16 v6, 0xe

    aput v4, v0, v6

    .line 138
    const/16 v6, 0x12

    aput v3, v0, v6

    .line 139
    const/16 v6, 0x13

    aput v5, v0, v6

    goto :goto_1
.end method

.method public onUpdateVertices(Lorg/andengine/entity/sprite/Sprite;)V
    .locals 7
    .parameter "pSprite"

    .prologue
    const/4 v6, 0x0

    .line 57
    iget-object v0, p0, Lorg/andengine/entity/sprite/vbo/HighPerformanceSpriteVertexBufferObject;->mBufferData:[F

    .line 59
    .local v0, bufferData:[F
    const/4 v1, 0x0

    .line 60
    .local v1, x:F
    const/4 v3, 0x0

    .line 61
    .local v3, y:F
    invoke-virtual {p1}, Lorg/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v2

    .line 62
    .local v2, x2:F
    invoke-virtual {p1}, Lorg/andengine/entity/sprite/Sprite;->getHeight()F

    move-result v4

    .line 64
    .local v4, y2:F
    const/4 v5, 0x0

    aput v6, v0, v5

    .line 65
    const/4 v5, 0x1

    aput v6, v0, v5

    .line 67
    const/4 v5, 0x5

    aput v6, v0, v5

    .line 68
    const/4 v5, 0x6

    aput v4, v0, v5

    .line 70
    const/16 v5, 0xa

    aput v2, v0, v5

    .line 71
    const/16 v5, 0xb

    aput v6, v0, v5

    .line 73
    const/16 v5, 0xf

    aput v2, v0, v5

    .line 74
    const/16 v5, 0x10

    aput v4, v0, v5

    .line 76
    invoke-virtual {p0}, Lorg/andengine/entity/sprite/vbo/HighPerformanceSpriteVertexBufferObject;->setDirtyOnHardware()V

    .line 77
    return-void
.end method
