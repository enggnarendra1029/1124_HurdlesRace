.class public Lorg/andengine/entity/sprite/vbo/HighPerformanceDiamondSpriteVertexBufferObject;
.super Lorg/andengine/entity/sprite/vbo/HighPerformanceSpriteVertexBufferObject;
.source "HighPerformanceDiamondSpriteVertexBufferObject.java"

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
    .line 29
    invoke-direct/range {p0 .. p5}, Lorg/andengine/entity/sprite/vbo/HighPerformanceSpriteVertexBufferObject;-><init>(Lorg/andengine/opengl/vbo/VertexBufferObjectManager;ILorg/andengine/opengl/vbo/DrawType;ZLorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;)V

    .line 30
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

    .line 69
    iget-object v0, p0, Lorg/andengine/entity/sprite/vbo/HighPerformanceDiamondSpriteVertexBufferObject;->mBufferData:[F

    .line 71
    .local v0, bufferData:[F
    invoke-virtual {p1}, Lorg/andengine/entity/sprite/Sprite;->getTextureRegion()Lorg/andengine/opengl/texture/region/ITextureRegion;

    move-result-object v1

    .line 78
    .local v1, textureRegion:Lorg/andengine/opengl/texture/region/ITextureRegion;
    invoke-virtual {p1}, Lorg/andengine/entity/sprite/Sprite;->isFlippedVertical()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 79
    invoke-virtual {p1}, Lorg/andengine/entity/sprite/Sprite;->isFlippedHorizontal()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 80
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU2()F

    move-result v2

    .line 81
    .local v2, u:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU()F

    move-result v3

    .line 82
    .local v3, u2:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV2()F

    move-result v5

    .line 83
    .local v5, v:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV()F

    move-result v6

    .line 104
    .local v6, v2:F
    :goto_0
    add-float v8, v2, v3

    mul-float v4, v8, v9

    .line 105
    .local v4, uCenter:F
    add-float v8, v5, v6

    mul-float v7, v8, v9

    .line 107
    .local v7, vCenter:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->isRotated()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 108
    aput v4, v0, v10

    .line 109
    aput v5, v0, v11

    .line 111
    aput v2, v0, v12

    .line 112
    aput v7, v0, v13

    .line 114
    const/16 v8, 0xd

    aput v3, v0, v8

    .line 115
    const/16 v8, 0xe

    aput v7, v0, v8

    .line 117
    const/16 v8, 0x12

    aput v4, v0, v8

    .line 118
    const/16 v8, 0x13

    aput v6, v0, v8

    .line 133
    :goto_1
    invoke-virtual {p0}, Lorg/andengine/entity/sprite/vbo/HighPerformanceDiamondSpriteVertexBufferObject;->setDirtyOnHardware()V

    .line 134
    return-void

    .line 85
    .end local v2           #u:F
    .end local v3           #u2:F
    .end local v4           #uCenter:F
    .end local v5           #v:F
    .end local v6           #v2:F
    .end local v7           #vCenter:F
    :cond_0
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU()F

    move-result v2

    .line 86
    .restart local v2       #u:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU2()F

    move-result v3

    .line 87
    .restart local v3       #u2:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV2()F

    move-result v5

    .line 88
    .restart local v5       #v:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV()F

    move-result v6

    .line 90
    .restart local v6       #v2:F
    goto :goto_0

    .line 91
    .end local v2           #u:F
    .end local v3           #u2:F
    .end local v5           #v:F
    .end local v6           #v2:F
    :cond_1
    invoke-virtual {p1}, Lorg/andengine/entity/sprite/Sprite;->isFlippedHorizontal()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 92
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU2()F

    move-result v2

    .line 93
    .restart local v2       #u:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU()F

    move-result v3

    .line 94
    .restart local v3       #u2:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV()F

    move-result v5

    .line 95
    .restart local v5       #v:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV2()F

    move-result v6

    .line 96
    .restart local v6       #v2:F
    goto :goto_0

    .line 97
    .end local v2           #u:F
    .end local v3           #u2:F
    .end local v5           #v:F
    .end local v6           #v2:F
    :cond_2
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU()F

    move-result v2

    .line 98
    .restart local v2       #u:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU2()F

    move-result v3

    .line 99
    .restart local v3       #u2:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV()F

    move-result v5

    .line 100
    .restart local v5       #v:F
    invoke-interface {v1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV2()F

    move-result v6

    .restart local v6       #v2:F
    goto :goto_0

    .line 120
    .restart local v4       #uCenter:F
    .restart local v7       #vCenter:F
    :cond_3
    aput v2, v0, v10

    .line 121
    aput v7, v0, v11

    .line 123
    aput v4, v0, v12

    .line 124
    aput v6, v0, v13

    .line 126
    const/16 v8, 0xd

    aput v4, v0, v8

    .line 127
    const/16 v8, 0xe

    aput v5, v0, v8

    .line 129
    const/16 v8, 0x12

    aput v3, v0, v8

    .line 130
    const/16 v8, 0x13

    aput v7, v0, v8

    goto :goto_1
.end method

.method public onUpdateVertices(Lorg/andengine/entity/sprite/Sprite;)V
    .locals 10
    .parameter "pSprite"

    .prologue
    const/high16 v9, 0x3f00

    const/4 v8, 0x0

    .line 42
    iget-object v0, p0, Lorg/andengine/entity/sprite/vbo/HighPerformanceDiamondSpriteVertexBufferObject;->mBufferData:[F

    .line 44
    .local v0, bufferData:[F
    const/4 v1, 0x0

    .line 45
    .local v1, x:F
    const/4 v4, 0x0

    .line 46
    .local v4, y:F
    invoke-virtual {p1}, Lorg/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v2

    .line 47
    .local v2, x2:F
    invoke-virtual {p1}, Lorg/andengine/entity/sprite/Sprite;->getHeight()F

    move-result v5

    .line 49
    .local v5, y2:F
    add-float v7, v8, v2

    mul-float v3, v7, v9

    .line 50
    .local v3, xCenter:F
    add-float v7, v8, v5

    mul-float v6, v7, v9

    .line 52
    .local v6, yCenter:F
    const/4 v7, 0x0

    aput v8, v0, v7

    .line 53
    const/4 v7, 0x1

    aput v6, v0, v7

    .line 55
    const/4 v7, 0x5

    aput v3, v0, v7

    .line 56
    const/4 v7, 0x6

    aput v5, v0, v7

    .line 58
    const/16 v7, 0xa

    aput v3, v0, v7

    .line 59
    const/16 v7, 0xb

    aput v8, v0, v7

    .line 61
    const/16 v7, 0xf

    aput v2, v0, v7

    .line 62
    const/16 v7, 0x10

    aput v6, v0, v7

    .line 64
    invoke-virtual {p0}, Lorg/andengine/entity/sprite/vbo/HighPerformanceDiamondSpriteVertexBufferObject;->setDirtyOnHardware()V

    .line 65
    return-void
.end method
