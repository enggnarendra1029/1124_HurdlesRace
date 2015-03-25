.class public Lorg/andengine/entity/sprite/vbo/HighPerformanceUncoloredSpriteVertexBufferObject;
.super Lorg/andengine/entity/sprite/vbo/HighPerformanceSpriteVertexBufferObject;
.source "HighPerformanceUncoloredSpriteVertexBufferObject.java"

# interfaces
.implements Lorg/andengine/entity/sprite/vbo/IUncoloredSpriteVertexBufferObject;


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
    invoke-direct/range {p0 .. p5}, Lorg/andengine/entity/sprite/vbo/HighPerformanceSpriteVertexBufferObject;-><init>(Lorg/andengine/opengl/vbo/VertexBufferObjectManager;ILorg/andengine/opengl/vbo/DrawType;ZLorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;)V

    .line 31
    return-void
.end method


# virtual methods
.method public onUpdateTextureCoordinates(Lorg/andengine/entity/sprite/Sprite;)V
    .locals 12
    .parameter "pSprite"

    .prologue
    const/16 v11, 0xa

    const/4 v10, 0x7

    const/4 v9, 0x6

    const/4 v8, 0x3

    const/4 v7, 0x2

    .line 67
    iget-object v0, p0, Lorg/andengine/entity/sprite/vbo/HighPerformanceUncoloredSpriteVertexBufferObject;->mBufferData:[F

    .line 69
    .local v0, bufferData:[F
    invoke-virtual {p1}, Lorg/andengine/entity/sprite/Sprite;->getTextureRegion()Lorg/andengine/opengl/texture/region/ITextureRegion;

    move-result-object v1

    .line 76
    .local v1, textureRegion:Lorg/andengine/opengl/texture/region/ITextureRegion;
    invoke-virtual {p1}, Lorg/andengine/entity/sprite/Sprite;->isFlippedVertical()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 77
    invoke-virtual {p1}, Lorg/andengine/entity/sprite/Sprite;->isFlippedHorizontal()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 78
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU2()F

    move-result v2

    .line 79
    .local v2, u:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU()F

    move-result v3

    .line 80
    .local v3, u2:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV2()F

    move-result v4

    .line 81
    .local v4, v:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV()F

    move-result v5

    .line 102
    .local v5, v2:F
    :goto_0
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->isRotated()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 103
    aput v3, v0, v7

    .line 104
    aput v4, v0, v8

    .line 106
    aput v2, v0, v9

    .line 107
    aput v4, v0, v10

    .line 109
    aput v3, v0, v11

    .line 110
    const/16 v6, 0xb

    aput v5, v0, v6

    .line 112
    const/16 v6, 0xe

    aput v2, v0, v6

    .line 113
    const/16 v6, 0xf

    aput v5, v0, v6

    .line 128
    :goto_1
    invoke-virtual {p0}, Lorg/andengine/entity/sprite/vbo/HighPerformanceUncoloredSpriteVertexBufferObject;->setDirtyOnHardware()V

    .line 129
    return-void

    .line 83
    .end local v2           #u:F
    .end local v3           #u2:F
    .end local v4           #v:F
    .end local v5           #v2:F
    :cond_0
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU()F

    move-result v2

    .line 84
    .restart local v2       #u:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU2()F

    move-result v3

    .line 85
    .restart local v3       #u2:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV2()F

    move-result v4

    .line 86
    .restart local v4       #v:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV()F

    move-result v5

    .line 88
    .restart local v5       #v2:F
    goto :goto_0

    .line 89
    .end local v2           #u:F
    .end local v3           #u2:F
    .end local v4           #v:F
    .end local v5           #v2:F
    :cond_1
    invoke-virtual {p1}, Lorg/andengine/entity/sprite/Sprite;->isFlippedHorizontal()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 90
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU2()F

    move-result v2

    .line 91
    .restart local v2       #u:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU()F

    move-result v3

    .line 92
    .restart local v3       #u2:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV()F

    move-result v4

    .line 93
    .restart local v4       #v:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV2()F

    move-result v5

    .line 94
    .restart local v5       #v2:F
    goto :goto_0

    .line 95
    .end local v2           #u:F
    .end local v3           #u2:F
    .end local v4           #v:F
    .end local v5           #v2:F
    :cond_2
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU()F

    move-result v2

    .line 96
    .restart local v2       #u:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU2()F

    move-result v3

    .line 97
    .restart local v3       #u2:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV()F

    move-result v4

    .line 98
    .restart local v4       #v:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV2()F

    move-result v5

    .restart local v5       #v2:F
    goto :goto_0

    .line 115
    :cond_3
    aput v2, v0, v7

    .line 116
    aput v4, v0, v8

    .line 118
    aput v2, v0, v9

    .line 119
    aput v5, v0, v10

    .line 121
    aput v3, v0, v11

    .line 122
    const/16 v6, 0xb

    aput v4, v0, v6

    .line 124
    const/16 v6, 0xe

    aput v3, v0, v6

    .line 125
    const/16 v6, 0xf

    aput v5, v0, v6

    goto :goto_1
.end method

.method public onUpdateVertices(Lorg/andengine/entity/sprite/Sprite;)V
    .locals 7
    .parameter "pSprite"

    .prologue
    const/4 v6, 0x0

    .line 43
    iget-object v0, p0, Lorg/andengine/entity/sprite/vbo/HighPerformanceUncoloredSpriteVertexBufferObject;->mBufferData:[F

    .line 45
    .local v0, bufferData:[F
    const/4 v1, 0x0

    .line 46
    .local v1, x:F
    const/4 v3, 0x0

    .line 47
    .local v3, y:F
    invoke-virtual {p1}, Lorg/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v2

    .line 48
    .local v2, x2:F
    invoke-virtual {p1}, Lorg/andengine/entity/sprite/Sprite;->getHeight()F

    move-result v4

    .line 50
    .local v4, y2:F
    const/4 v5, 0x0

    aput v6, v0, v5

    .line 51
    const/4 v5, 0x1

    aput v6, v0, v5

    .line 53
    const/4 v5, 0x4

    aput v6, v0, v5

    .line 54
    const/4 v5, 0x5

    aput v4, v0, v5

    .line 56
    const/16 v5, 0x8

    aput v2, v0, v5

    .line 57
    const/16 v5, 0x9

    aput v6, v0, v5

    .line 59
    const/16 v5, 0xc

    aput v2, v0, v5

    .line 60
    const/16 v5, 0xd

    aput v4, v0, v5

    .line 62
    invoke-virtual {p0}, Lorg/andengine/entity/sprite/vbo/HighPerformanceUncoloredSpriteVertexBufferObject;->setDirtyOnHardware()V

    .line 63
    return-void
.end method
