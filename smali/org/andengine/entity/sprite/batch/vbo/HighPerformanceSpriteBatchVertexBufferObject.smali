.class public Lorg/andengine/entity/sprite/batch/vbo/HighPerformanceSpriteBatchVertexBufferObject;
.super Lorg/andengine/opengl/vbo/HighPerformanceVertexBufferObject;
.source "HighPerformanceSpriteBatchVertexBufferObject.java"

# interfaces
.implements Lorg/andengine/entity/sprite/batch/vbo/ISpriteBatchVertexBufferObject;


# instance fields
.field protected mBufferDataOffset:I


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
    invoke-direct/range {p0 .. p5}, Lorg/andengine/opengl/vbo/HighPerformanceVertexBufferObject;-><init>(Lorg/andengine/opengl/vbo/VertexBufferObjectManager;ILorg/andengine/opengl/vbo/DrawType;ZLorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;)V

    .line 33
    return-void
.end method


# virtual methods
.method public addWithPackedColor(Lorg/andengine/opengl/texture/region/ITextureRegion;FFFFF)V
    .locals 11
    .parameter "pTextureRegion"
    .parameter "pX1"
    .parameter "pY1"
    .parameter "pX2"
    .parameter "pY2"
    .parameter "pColorABGRPackedInt"

    .prologue
    .line 161
    invoke-virtual {p0}, Lorg/andengine/entity/sprite/batch/vbo/HighPerformanceSpriteBatchVertexBufferObject;->getBufferData()[F

    move-result-object v0

    .line 162
    .local v0, bufferData:[F
    iget v1, p0, Lorg/andengine/entity/sprite/batch/vbo/HighPerformanceSpriteBatchVertexBufferObject;->mBufferDataOffset:I

    .line 164
    .local v1, bufferDataOffset:I
    move v6, p2

    .line 165
    .local v6, x1:F
    move v8, p3

    .line 166
    .local v8, y1:F
    move v7, p4

    .line 167
    .local v7, x2:F
    move/from16 v9, p5

    .line 168
    .local v9, y2:F
    invoke-interface {p1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU()F

    move-result v2

    .line 169
    .local v2, u:F
    invoke-interface {p1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV()F

    move-result v4

    .line 170
    .local v4, v:F
    invoke-interface {p1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU2()F

    move-result v3

    .line 171
    .local v3, u2:F
    invoke-interface {p1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV2()F

    move-result v5

    .line 173
    .local v5, v2:F
    invoke-interface {p1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->isRotated()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 174
    add-int/lit8 v10, v1, 0x0

    add-int/lit8 v10, v10, 0x0

    aput v6, v0, v10

    .line 175
    add-int/lit8 v10, v1, 0x0

    add-int/lit8 v10, v10, 0x1

    aput v8, v0, v10

    .line 176
    add-int/lit8 v10, v1, 0x0

    add-int/lit8 v10, v10, 0x2

    aput p6, v0, v10

    .line 177
    add-int/lit8 v10, v1, 0x0

    add-int/lit8 v10, v10, 0x3

    aput v3, v0, v10

    .line 178
    add-int/lit8 v10, v1, 0x0

    add-int/lit8 v10, v10, 0x4

    aput v4, v0, v10

    .line 180
    add-int/lit8 v10, v1, 0x5

    add-int/lit8 v10, v10, 0x0

    aput v6, v0, v10

    .line 181
    add-int/lit8 v10, v1, 0x5

    add-int/lit8 v10, v10, 0x1

    aput v9, v0, v10

    .line 182
    add-int/lit8 v10, v1, 0x5

    add-int/lit8 v10, v10, 0x2

    aput p6, v0, v10

    .line 183
    add-int/lit8 v10, v1, 0x5

    add-int/lit8 v10, v10, 0x3

    aput v2, v0, v10

    .line 184
    add-int/lit8 v10, v1, 0x5

    add-int/lit8 v10, v10, 0x4

    aput v4, v0, v10

    .line 186
    add-int/lit8 v10, v1, 0xa

    add-int/lit8 v10, v10, 0x0

    aput v7, v0, v10

    .line 187
    add-int/lit8 v10, v1, 0xa

    add-int/lit8 v10, v10, 0x1

    aput v8, v0, v10

    .line 188
    add-int/lit8 v10, v1, 0xa

    add-int/lit8 v10, v10, 0x2

    aput p6, v0, v10

    .line 189
    add-int/lit8 v10, v1, 0xa

    add-int/lit8 v10, v10, 0x3

    aput v3, v0, v10

    .line 190
    add-int/lit8 v10, v1, 0xa

    add-int/lit8 v10, v10, 0x4

    aput v5, v0, v10

    .line 192
    add-int/lit8 v10, v1, 0xf

    add-int/lit8 v10, v10, 0x0

    aput v7, v0, v10

    .line 193
    add-int/lit8 v10, v1, 0xf

    add-int/lit8 v10, v10, 0x1

    aput v8, v0, v10

    .line 194
    add-int/lit8 v10, v1, 0xf

    add-int/lit8 v10, v10, 0x2

    aput p6, v0, v10

    .line 195
    add-int/lit8 v10, v1, 0xf

    add-int/lit8 v10, v10, 0x3

    aput v3, v0, v10

    .line 196
    add-int/lit8 v10, v1, 0xf

    add-int/lit8 v10, v10, 0x4

    aput v5, v0, v10

    .line 198
    add-int/lit8 v10, v1, 0x14

    add-int/lit8 v10, v10, 0x0

    aput v6, v0, v10

    .line 199
    add-int/lit8 v10, v1, 0x14

    add-int/lit8 v10, v10, 0x1

    aput v9, v0, v10

    .line 200
    add-int/lit8 v10, v1, 0x14

    add-int/lit8 v10, v10, 0x2

    aput p6, v0, v10

    .line 201
    add-int/lit8 v10, v1, 0x14

    add-int/lit8 v10, v10, 0x3

    aput v2, v0, v10

    .line 202
    add-int/lit8 v10, v1, 0x14

    add-int/lit8 v10, v10, 0x4

    aput v4, v0, v10

    .line 204
    add-int/lit8 v10, v1, 0x19

    add-int/lit8 v10, v10, 0x0

    aput v7, v0, v10

    .line 205
    add-int/lit8 v10, v1, 0x19

    add-int/lit8 v10, v10, 0x1

    aput v9, v0, v10

    .line 206
    add-int/lit8 v10, v1, 0x19

    add-int/lit8 v10, v10, 0x2

    aput p6, v0, v10

    .line 207
    add-int/lit8 v10, v1, 0x19

    add-int/lit8 v10, v10, 0x3

    aput v2, v0, v10

    .line 208
    add-int/lit8 v10, v1, 0x19

    add-int/lit8 v10, v10, 0x4

    aput v5, v0, v10

    .line 247
    :goto_0
    iget v10, p0, Lorg/andengine/entity/sprite/batch/vbo/HighPerformanceSpriteBatchVertexBufferObject;->mBufferDataOffset:I

    add-int/lit8 v10, v10, 0x1e

    iput v10, p0, Lorg/andengine/entity/sprite/batch/vbo/HighPerformanceSpriteBatchVertexBufferObject;->mBufferDataOffset:I

    .line 248
    return-void

    .line 210
    :cond_0
    add-int/lit8 v10, v1, 0x0

    add-int/lit8 v10, v10, 0x0

    aput v6, v0, v10

    .line 211
    add-int/lit8 v10, v1, 0x0

    add-int/lit8 v10, v10, 0x1

    aput v8, v0, v10

    .line 212
    add-int/lit8 v10, v1, 0x0

    add-int/lit8 v10, v10, 0x2

    aput p6, v0, v10

    .line 213
    add-int/lit8 v10, v1, 0x0

    add-int/lit8 v10, v10, 0x3

    aput v2, v0, v10

    .line 214
    add-int/lit8 v10, v1, 0x0

    add-int/lit8 v10, v10, 0x4

    aput v4, v0, v10

    .line 216
    add-int/lit8 v10, v1, 0x5

    add-int/lit8 v10, v10, 0x0

    aput v6, v0, v10

    .line 217
    add-int/lit8 v10, v1, 0x5

    add-int/lit8 v10, v10, 0x1

    aput v9, v0, v10

    .line 218
    add-int/lit8 v10, v1, 0x5

    add-int/lit8 v10, v10, 0x2

    aput p6, v0, v10

    .line 219
    add-int/lit8 v10, v1, 0x5

    add-int/lit8 v10, v10, 0x3

    aput v2, v0, v10

    .line 220
    add-int/lit8 v10, v1, 0x5

    add-int/lit8 v10, v10, 0x4

    aput v5, v0, v10

    .line 222
    add-int/lit8 v10, v1, 0xa

    add-int/lit8 v10, v10, 0x0

    aput v7, v0, v10

    .line 223
    add-int/lit8 v10, v1, 0xa

    add-int/lit8 v10, v10, 0x1

    aput v8, v0, v10

    .line 224
    add-int/lit8 v10, v1, 0xa

    add-int/lit8 v10, v10, 0x2

    aput p6, v0, v10

    .line 225
    add-int/lit8 v10, v1, 0xa

    add-int/lit8 v10, v10, 0x3

    aput v3, v0, v10

    .line 226
    add-int/lit8 v10, v1, 0xa

    add-int/lit8 v10, v10, 0x4

    aput v4, v0, v10

    .line 228
    add-int/lit8 v10, v1, 0xf

    add-int/lit8 v10, v10, 0x0

    aput v7, v0, v10

    .line 229
    add-int/lit8 v10, v1, 0xf

    add-int/lit8 v10, v10, 0x1

    aput v8, v0, v10

    .line 230
    add-int/lit8 v10, v1, 0xf

    add-int/lit8 v10, v10, 0x2

    aput p6, v0, v10

    .line 231
    add-int/lit8 v10, v1, 0xf

    add-int/lit8 v10, v10, 0x3

    aput v3, v0, v10

    .line 232
    add-int/lit8 v10, v1, 0xf

    add-int/lit8 v10, v10, 0x4

    aput v4, v0, v10

    .line 234
    add-int/lit8 v10, v1, 0x14

    add-int/lit8 v10, v10, 0x0

    aput v6, v0, v10

    .line 235
    add-int/lit8 v10, v1, 0x14

    add-int/lit8 v10, v10, 0x1

    aput v9, v0, v10

    .line 236
    add-int/lit8 v10, v1, 0x14

    add-int/lit8 v10, v10, 0x2

    aput p6, v0, v10

    .line 237
    add-int/lit8 v10, v1, 0x14

    add-int/lit8 v10, v10, 0x3

    aput v2, v0, v10

    .line 238
    add-int/lit8 v10, v1, 0x14

    add-int/lit8 v10, v10, 0x4

    aput v5, v0, v10

    .line 240
    add-int/lit8 v10, v1, 0x19

    add-int/lit8 v10, v10, 0x0

    aput v7, v0, v10

    .line 241
    add-int/lit8 v10, v1, 0x19

    add-int/lit8 v10, v10, 0x1

    aput v9, v0, v10

    .line 242
    add-int/lit8 v10, v1, 0x19

    add-int/lit8 v10, v10, 0x2

    aput p6, v0, v10

    .line 243
    add-int/lit8 v10, v1, 0x19

    add-int/lit8 v10, v10, 0x3

    aput v3, v0, v10

    .line 244
    add-int/lit8 v10, v1, 0x19

    add-int/lit8 v10, v10, 0x4

    aput v5, v0, v10

    goto/16 :goto_0
.end method

.method public addWithPackedColor(Lorg/andengine/opengl/texture/region/ITextureRegion;FFFFFFFFF)V
    .locals 15
    .parameter "pTextureRegion"
    .parameter "pX1"
    .parameter "pY1"
    .parameter "pX2"
    .parameter "pY2"
    .parameter "pX3"
    .parameter "pY3"
    .parameter "pX4"
    .parameter "pY4"
    .parameter "pColorABGRPackedInt"

    .prologue
    .line 60
    invoke-virtual {p0}, Lorg/andengine/entity/sprite/batch/vbo/HighPerformanceSpriteBatchVertexBufferObject;->getBufferData()[F

    move-result-object v0

    .line 61
    .local v0, bufferData:[F
    iget v1, p0, Lorg/andengine/entity/sprite/batch/vbo/HighPerformanceSpriteBatchVertexBufferObject;->mBufferDataOffset:I

    .line 63
    .local v1, bufferDataOffset:I
    move/from16 v6, p2

    .line 64
    .local v6, x1:F
    move/from16 v10, p3

    .line 65
    .local v10, y1:F
    move/from16 v7, p4

    .line 66
    .local v7, x2:F
    move/from16 v11, p5

    .line 67
    .local v11, y2:F
    move/from16 v8, p6

    .line 68
    .local v8, x3:F
    move/from16 v12, p7

    .line 69
    .local v12, y3:F
    move/from16 v9, p8

    .line 70
    .local v9, x4:F
    move/from16 v13, p9

    .line 71
    .local v13, y4:F
    invoke-interface/range {p1 .. p1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU()F

    move-result v2

    .line 72
    .local v2, u:F
    invoke-interface/range {p1 .. p1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV()F

    move-result v4

    .line 73
    .local v4, v:F
    invoke-interface/range {p1 .. p1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU2()F

    move-result v3

    .line 74
    .local v3, u2:F
    invoke-interface/range {p1 .. p1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV2()F

    move-result v5

    .line 76
    .local v5, v2:F
    invoke-interface/range {p1 .. p1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->isRotated()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 77
    add-int/lit8 v14, v1, 0x0

    add-int/lit8 v14, v14, 0x0

    aput v6, v0, v14

    .line 78
    add-int/lit8 v14, v1, 0x0

    add-int/lit8 v14, v14, 0x1

    aput v10, v0, v14

    .line 79
    add-int/lit8 v14, v1, 0x0

    add-int/lit8 v14, v14, 0x2

    aput p10, v0, v14

    .line 80
    add-int/lit8 v14, v1, 0x0

    add-int/lit8 v14, v14, 0x3

    aput v3, v0, v14

    .line 81
    add-int/lit8 v14, v1, 0x0

    add-int/lit8 v14, v14, 0x4

    aput v4, v0, v14

    .line 83
    add-int/lit8 v14, v1, 0x5

    add-int/lit8 v14, v14, 0x0

    aput v7, v0, v14

    .line 84
    add-int/lit8 v14, v1, 0x5

    add-int/lit8 v14, v14, 0x1

    aput v11, v0, v14

    .line 85
    add-int/lit8 v14, v1, 0x5

    add-int/lit8 v14, v14, 0x2

    aput p10, v0, v14

    .line 86
    add-int/lit8 v14, v1, 0x5

    add-int/lit8 v14, v14, 0x3

    aput v2, v0, v14

    .line 87
    add-int/lit8 v14, v1, 0x5

    add-int/lit8 v14, v14, 0x4

    aput v4, v0, v14

    .line 89
    add-int/lit8 v14, v1, 0xa

    add-int/lit8 v14, v14, 0x0

    aput v8, v0, v14

    .line 90
    add-int/lit8 v14, v1, 0xa

    add-int/lit8 v14, v14, 0x1

    aput v12, v0, v14

    .line 91
    add-int/lit8 v14, v1, 0xa

    add-int/lit8 v14, v14, 0x2

    aput p10, v0, v14

    .line 92
    add-int/lit8 v14, v1, 0xa

    add-int/lit8 v14, v14, 0x3

    aput v3, v0, v14

    .line 93
    add-int/lit8 v14, v1, 0xa

    add-int/lit8 v14, v14, 0x4

    aput v5, v0, v14

    .line 95
    add-int/lit8 v14, v1, 0xf

    add-int/lit8 v14, v14, 0x0

    aput v8, v0, v14

    .line 96
    add-int/lit8 v14, v1, 0xf

    add-int/lit8 v14, v14, 0x1

    aput v12, v0, v14

    .line 97
    add-int/lit8 v14, v1, 0xf

    add-int/lit8 v14, v14, 0x2

    aput p10, v0, v14

    .line 98
    add-int/lit8 v14, v1, 0xf

    add-int/lit8 v14, v14, 0x3

    aput v3, v0, v14

    .line 99
    add-int/lit8 v14, v1, 0xf

    add-int/lit8 v14, v14, 0x4

    aput v5, v0, v14

    .line 101
    add-int/lit8 v14, v1, 0x14

    add-int/lit8 v14, v14, 0x0

    aput v7, v0, v14

    .line 102
    add-int/lit8 v14, v1, 0x14

    add-int/lit8 v14, v14, 0x1

    aput v11, v0, v14

    .line 103
    add-int/lit8 v14, v1, 0x14

    add-int/lit8 v14, v14, 0x2

    aput p10, v0, v14

    .line 104
    add-int/lit8 v14, v1, 0x14

    add-int/lit8 v14, v14, 0x3

    aput v2, v0, v14

    .line 105
    add-int/lit8 v14, v1, 0x14

    add-int/lit8 v14, v14, 0x4

    aput v4, v0, v14

    .line 107
    add-int/lit8 v14, v1, 0x19

    add-int/lit8 v14, v14, 0x0

    aput v9, v0, v14

    .line 108
    add-int/lit8 v14, v1, 0x19

    add-int/lit8 v14, v14, 0x1

    aput v13, v0, v14

    .line 109
    add-int/lit8 v14, v1, 0x19

    add-int/lit8 v14, v14, 0x2

    aput p10, v0, v14

    .line 110
    add-int/lit8 v14, v1, 0x19

    add-int/lit8 v14, v14, 0x3

    aput v2, v0, v14

    .line 111
    add-int/lit8 v14, v1, 0x19

    add-int/lit8 v14, v14, 0x4

    aput v5, v0, v14

    .line 150
    :goto_0
    iget v14, p0, Lorg/andengine/entity/sprite/batch/vbo/HighPerformanceSpriteBatchVertexBufferObject;->mBufferDataOffset:I

    add-int/lit8 v14, v14, 0x1e

    iput v14, p0, Lorg/andengine/entity/sprite/batch/vbo/HighPerformanceSpriteBatchVertexBufferObject;->mBufferDataOffset:I

    .line 151
    return-void

    .line 113
    :cond_0
    add-int/lit8 v14, v1, 0x0

    add-int/lit8 v14, v14, 0x0

    aput v6, v0, v14

    .line 114
    add-int/lit8 v14, v1, 0x0

    add-int/lit8 v14, v14, 0x1

    aput v10, v0, v14

    .line 115
    add-int/lit8 v14, v1, 0x0

    add-int/lit8 v14, v14, 0x2

    aput p10, v0, v14

    .line 116
    add-int/lit8 v14, v1, 0x0

    add-int/lit8 v14, v14, 0x3

    aput v2, v0, v14

    .line 117
    add-int/lit8 v14, v1, 0x0

    add-int/lit8 v14, v14, 0x4

    aput v4, v0, v14

    .line 119
    add-int/lit8 v14, v1, 0x5

    add-int/lit8 v14, v14, 0x0

    aput v7, v0, v14

    .line 120
    add-int/lit8 v14, v1, 0x5

    add-int/lit8 v14, v14, 0x1

    aput v11, v0, v14

    .line 121
    add-int/lit8 v14, v1, 0x5

    add-int/lit8 v14, v14, 0x2

    aput p10, v0, v14

    .line 122
    add-int/lit8 v14, v1, 0x5

    add-int/lit8 v14, v14, 0x3

    aput v2, v0, v14

    .line 123
    add-int/lit8 v14, v1, 0x5

    add-int/lit8 v14, v14, 0x4

    aput v5, v0, v14

    .line 125
    add-int/lit8 v14, v1, 0xa

    add-int/lit8 v14, v14, 0x0

    aput v8, v0, v14

    .line 126
    add-int/lit8 v14, v1, 0xa

    add-int/lit8 v14, v14, 0x1

    aput v12, v0, v14

    .line 127
    add-int/lit8 v14, v1, 0xa

    add-int/lit8 v14, v14, 0x2

    aput p10, v0, v14

    .line 128
    add-int/lit8 v14, v1, 0xa

    add-int/lit8 v14, v14, 0x3

    aput v3, v0, v14

    .line 129
    add-int/lit8 v14, v1, 0xa

    add-int/lit8 v14, v14, 0x4

    aput v4, v0, v14

    .line 131
    add-int/lit8 v14, v1, 0xf

    add-int/lit8 v14, v14, 0x0

    aput v8, v0, v14

    .line 132
    add-int/lit8 v14, v1, 0xf

    add-int/lit8 v14, v14, 0x1

    aput v12, v0, v14

    .line 133
    add-int/lit8 v14, v1, 0xf

    add-int/lit8 v14, v14, 0x2

    aput p10, v0, v14

    .line 134
    add-int/lit8 v14, v1, 0xf

    add-int/lit8 v14, v14, 0x3

    aput v3, v0, v14

    .line 135
    add-int/lit8 v14, v1, 0xf

    add-int/lit8 v14, v14, 0x4

    aput v4, v0, v14

    .line 137
    add-int/lit8 v14, v1, 0x14

    add-int/lit8 v14, v14, 0x0

    aput v7, v0, v14

    .line 138
    add-int/lit8 v14, v1, 0x14

    add-int/lit8 v14, v14, 0x1

    aput v11, v0, v14

    .line 139
    add-int/lit8 v14, v1, 0x14

    add-int/lit8 v14, v14, 0x2

    aput p10, v0, v14

    .line 140
    add-int/lit8 v14, v1, 0x14

    add-int/lit8 v14, v14, 0x3

    aput v2, v0, v14

    .line 141
    add-int/lit8 v14, v1, 0x14

    add-int/lit8 v14, v14, 0x4

    aput v5, v0, v14

    .line 143
    add-int/lit8 v14, v1, 0x19

    add-int/lit8 v14, v14, 0x0

    aput v9, v0, v14

    .line 144
    add-int/lit8 v14, v1, 0x19

    add-int/lit8 v14, v14, 0x1

    aput v13, v0, v14

    .line 145
    add-int/lit8 v14, v1, 0x19

    add-int/lit8 v14, v14, 0x2

    aput p10, v0, v14

    .line 146
    add-int/lit8 v14, v1, 0x19

    add-int/lit8 v14, v14, 0x3

    aput v3, v0, v14

    .line 147
    add-int/lit8 v14, v1, 0x19

    add-int/lit8 v14, v14, 0x4

    aput v5, v0, v14

    goto/16 :goto_0
.end method

.method public getBufferDataOffset()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lorg/andengine/entity/sprite/batch/vbo/HighPerformanceSpriteBatchVertexBufferObject;->mBufferDataOffset:I

    return v0
.end method

.method public setBufferDataOffset(I)V
    .locals 0
    .parameter "pBufferDataOffset"

    .prologue
    .line 46
    iput p1, p0, Lorg/andengine/entity/sprite/batch/vbo/HighPerformanceSpriteBatchVertexBufferObject;->mBufferDataOffset:I

    .line 47
    return-void
.end method
