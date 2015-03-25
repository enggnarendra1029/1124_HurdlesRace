.class public Lorg/andengine/entity/sprite/batch/vbo/LowMemorySpriteBatchVertexBufferObject;
.super Lorg/andengine/opengl/vbo/LowMemoryVertexBufferObject;
.source "LowMemorySpriteBatchVertexBufferObject.java"

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
    .line 34
    invoke-direct/range {p0 .. p5}, Lorg/andengine/opengl/vbo/LowMemoryVertexBufferObject;-><init>(Lorg/andengine/opengl/vbo/VertexBufferObjectManager;ILorg/andengine/opengl/vbo/DrawType;ZLorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;)V

    .line 35
    return-void
.end method


# virtual methods
.method public addWithPackedColor(Lorg/andengine/opengl/texture/region/ITextureRegion;FFFFF)V
    .locals 12
    .parameter "pTextureRegion"
    .parameter "pX1"
    .parameter "pY1"
    .parameter "pX2"
    .parameter "pY2"
    .parameter "pColorABGRPackedInt"

    .prologue
    .line 163
    invoke-virtual {p0}, Lorg/andengine/entity/sprite/batch/vbo/LowMemorySpriteBatchVertexBufferObject;->getFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 164
    .local v1, bufferData:Ljava/nio/FloatBuffer;
    iget v2, p0, Lorg/andengine/entity/sprite/batch/vbo/LowMemorySpriteBatchVertexBufferObject;->mBufferDataOffset:I

    .line 166
    .local v2, bufferDataOffset:I
    move v7, p2

    .line 167
    .local v7, x1:F
    move v9, p3

    .line 168
    .local v9, y1:F
    move/from16 v8, p4

    .line 169
    .local v8, x2:F
    move/from16 v10, p5

    .line 170
    .local v10, y2:F
    invoke-interface {p1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU()F

    move-result v3

    .line 171
    .local v3, u:F
    invoke-interface {p1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV()F

    move-result v5

    .line 172
    .local v5, v:F
    invoke-interface {p1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU2()F

    move-result v4

    .line 173
    .local v4, u2:F
    invoke-interface {p1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV2()F

    move-result v6

    .line 175
    .local v6, v2:F
    invoke-interface {p1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->isRotated()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 176
    add-int/lit8 v11, v2, 0x0

    add-int/lit8 v11, v11, 0x0

    invoke-virtual {v1, v11, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 177
    add-int/lit8 v11, v2, 0x0

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v1, v11, v9}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 178
    add-int/lit8 v11, v2, 0x0

    add-int/lit8 v11, v11, 0x2

    move/from16 v0, p6

    invoke-virtual {v1, v11, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 179
    add-int/lit8 v11, v2, 0x0

    add-int/lit8 v11, v11, 0x3

    invoke-virtual {v1, v11, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 180
    add-int/lit8 v11, v2, 0x0

    add-int/lit8 v11, v11, 0x4

    invoke-virtual {v1, v11, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 182
    add-int/lit8 v11, v2, 0x5

    add-int/lit8 v11, v11, 0x0

    invoke-virtual {v1, v11, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 183
    add-int/lit8 v11, v2, 0x5

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v1, v11, v10}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 184
    add-int/lit8 v11, v2, 0x5

    add-int/lit8 v11, v11, 0x2

    move/from16 v0, p6

    invoke-virtual {v1, v11, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 185
    add-int/lit8 v11, v2, 0x5

    add-int/lit8 v11, v11, 0x3

    invoke-virtual {v1, v11, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 186
    add-int/lit8 v11, v2, 0x5

    add-int/lit8 v11, v11, 0x4

    invoke-virtual {v1, v11, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 188
    add-int/lit8 v11, v2, 0xa

    add-int/lit8 v11, v11, 0x0

    invoke-virtual {v1, v11, v8}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 189
    add-int/lit8 v11, v2, 0xa

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v1, v11, v9}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 190
    add-int/lit8 v11, v2, 0xa

    add-int/lit8 v11, v11, 0x2

    move/from16 v0, p6

    invoke-virtual {v1, v11, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 191
    add-int/lit8 v11, v2, 0xa

    add-int/lit8 v11, v11, 0x3

    invoke-virtual {v1, v11, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 192
    add-int/lit8 v11, v2, 0xa

    add-int/lit8 v11, v11, 0x4

    invoke-virtual {v1, v11, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 194
    add-int/lit8 v11, v2, 0xf

    add-int/lit8 v11, v11, 0x0

    invoke-virtual {v1, v11, v8}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 195
    add-int/lit8 v11, v2, 0xf

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v1, v11, v9}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 196
    add-int/lit8 v11, v2, 0xf

    add-int/lit8 v11, v11, 0x2

    move/from16 v0, p6

    invoke-virtual {v1, v11, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 197
    add-int/lit8 v11, v2, 0xf

    add-int/lit8 v11, v11, 0x3

    invoke-virtual {v1, v11, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 198
    add-int/lit8 v11, v2, 0xf

    add-int/lit8 v11, v11, 0x4

    invoke-virtual {v1, v11, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 200
    add-int/lit8 v11, v2, 0x14

    add-int/lit8 v11, v11, 0x0

    invoke-virtual {v1, v11, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 201
    add-int/lit8 v11, v2, 0x14

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v1, v11, v10}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 202
    add-int/lit8 v11, v2, 0x14

    add-int/lit8 v11, v11, 0x2

    move/from16 v0, p6

    invoke-virtual {v1, v11, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 203
    add-int/lit8 v11, v2, 0x14

    add-int/lit8 v11, v11, 0x3

    invoke-virtual {v1, v11, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 204
    add-int/lit8 v11, v2, 0x14

    add-int/lit8 v11, v11, 0x4

    invoke-virtual {v1, v11, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 206
    add-int/lit8 v11, v2, 0x19

    add-int/lit8 v11, v11, 0x0

    invoke-virtual {v1, v11, v8}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 207
    add-int/lit8 v11, v2, 0x19

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v1, v11, v10}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 208
    add-int/lit8 v11, v2, 0x19

    add-int/lit8 v11, v11, 0x2

    move/from16 v0, p6

    invoke-virtual {v1, v11, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 209
    add-int/lit8 v11, v2, 0x19

    add-int/lit8 v11, v11, 0x3

    invoke-virtual {v1, v11, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 210
    add-int/lit8 v11, v2, 0x19

    add-int/lit8 v11, v11, 0x4

    invoke-virtual {v1, v11, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 249
    :goto_0
    iget v11, p0, Lorg/andengine/entity/sprite/batch/vbo/LowMemorySpriteBatchVertexBufferObject;->mBufferDataOffset:I

    add-int/lit8 v11, v11, 0x1e

    iput v11, p0, Lorg/andengine/entity/sprite/batch/vbo/LowMemorySpriteBatchVertexBufferObject;->mBufferDataOffset:I

    .line 250
    return-void

    .line 212
    :cond_0
    add-int/lit8 v11, v2, 0x0

    add-int/lit8 v11, v11, 0x0

    invoke-virtual {v1, v11, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 213
    add-int/lit8 v11, v2, 0x0

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v1, v11, v9}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 214
    add-int/lit8 v11, v2, 0x0

    add-int/lit8 v11, v11, 0x2

    move/from16 v0, p6

    invoke-virtual {v1, v11, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 215
    add-int/lit8 v11, v2, 0x0

    add-int/lit8 v11, v11, 0x3

    invoke-virtual {v1, v11, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 216
    add-int/lit8 v11, v2, 0x0

    add-int/lit8 v11, v11, 0x4

    invoke-virtual {v1, v11, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 218
    add-int/lit8 v11, v2, 0x5

    add-int/lit8 v11, v11, 0x0

    invoke-virtual {v1, v11, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 219
    add-int/lit8 v11, v2, 0x5

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v1, v11, v10}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 220
    add-int/lit8 v11, v2, 0x5

    add-int/lit8 v11, v11, 0x2

    move/from16 v0, p6

    invoke-virtual {v1, v11, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 221
    add-int/lit8 v11, v2, 0x5

    add-int/lit8 v11, v11, 0x3

    invoke-virtual {v1, v11, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 222
    add-int/lit8 v11, v2, 0x5

    add-int/lit8 v11, v11, 0x4

    invoke-virtual {v1, v11, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 224
    add-int/lit8 v11, v2, 0xa

    add-int/lit8 v11, v11, 0x0

    invoke-virtual {v1, v11, v8}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 225
    add-int/lit8 v11, v2, 0xa

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v1, v11, v9}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 226
    add-int/lit8 v11, v2, 0xa

    add-int/lit8 v11, v11, 0x2

    move/from16 v0, p6

    invoke-virtual {v1, v11, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 227
    add-int/lit8 v11, v2, 0xa

    add-int/lit8 v11, v11, 0x3

    invoke-virtual {v1, v11, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 228
    add-int/lit8 v11, v2, 0xa

    add-int/lit8 v11, v11, 0x4

    invoke-virtual {v1, v11, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 230
    add-int/lit8 v11, v2, 0xf

    add-int/lit8 v11, v11, 0x0

    invoke-virtual {v1, v11, v8}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 231
    add-int/lit8 v11, v2, 0xf

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v1, v11, v9}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 232
    add-int/lit8 v11, v2, 0xf

    add-int/lit8 v11, v11, 0x2

    move/from16 v0, p6

    invoke-virtual {v1, v11, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 233
    add-int/lit8 v11, v2, 0xf

    add-int/lit8 v11, v11, 0x3

    invoke-virtual {v1, v11, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 234
    add-int/lit8 v11, v2, 0xf

    add-int/lit8 v11, v11, 0x4

    invoke-virtual {v1, v11, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 236
    add-int/lit8 v11, v2, 0x14

    add-int/lit8 v11, v11, 0x0

    invoke-virtual {v1, v11, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 237
    add-int/lit8 v11, v2, 0x14

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v1, v11, v10}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 238
    add-int/lit8 v11, v2, 0x14

    add-int/lit8 v11, v11, 0x2

    move/from16 v0, p6

    invoke-virtual {v1, v11, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 239
    add-int/lit8 v11, v2, 0x14

    add-int/lit8 v11, v11, 0x3

    invoke-virtual {v1, v11, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 240
    add-int/lit8 v11, v2, 0x14

    add-int/lit8 v11, v11, 0x4

    invoke-virtual {v1, v11, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 242
    add-int/lit8 v11, v2, 0x19

    add-int/lit8 v11, v11, 0x0

    invoke-virtual {v1, v11, v8}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 243
    add-int/lit8 v11, v2, 0x19

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v1, v11, v10}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 244
    add-int/lit8 v11, v2, 0x19

    add-int/lit8 v11, v11, 0x2

    move/from16 v0, p6

    invoke-virtual {v1, v11, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 245
    add-int/lit8 v11, v2, 0x19

    add-int/lit8 v11, v11, 0x3

    invoke-virtual {v1, v11, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 246
    add-int/lit8 v11, v2, 0x19

    add-int/lit8 v11, v11, 0x4

    invoke-virtual {v1, v11, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    goto/16 :goto_0
.end method

.method public addWithPackedColor(Lorg/andengine/opengl/texture/region/ITextureRegion;FFFFFFFFF)V
    .locals 16
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
    .line 62
    invoke-virtual/range {p0 .. p0}, Lorg/andengine/entity/sprite/batch/vbo/LowMemorySpriteBatchVertexBufferObject;->getFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 63
    .local v1, bufferData:Ljava/nio/FloatBuffer;
    move-object/from16 v0, p0

    iget v2, v0, Lorg/andengine/entity/sprite/batch/vbo/LowMemorySpriteBatchVertexBufferObject;->mBufferDataOffset:I

    .line 65
    .local v2, bufferDataOffset:I
    move/from16 v7, p2

    .line 66
    .local v7, x1:F
    move/from16 v11, p3

    .line 67
    .local v11, y1:F
    move/from16 v8, p4

    .line 68
    .local v8, x2:F
    move/from16 v12, p5

    .line 69
    .local v12, y2:F
    move/from16 v9, p6

    .line 70
    .local v9, x3:F
    move/from16 v13, p7

    .line 71
    .local v13, y3:F
    move/from16 v10, p8

    .line 72
    .local v10, x4:F
    move/from16 v14, p9

    .line 73
    .local v14, y4:F
    invoke-interface/range {p1 .. p1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU()F

    move-result v3

    .line 74
    .local v3, u:F
    invoke-interface/range {p1 .. p1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV()F

    move-result v5

    .line 75
    .local v5, v:F
    invoke-interface/range {p1 .. p1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getU2()F

    move-result v4

    .line 76
    .local v4, u2:F
    invoke-interface/range {p1 .. p1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getV2()F

    move-result v6

    .line 78
    .local v6, v2:F
    invoke-interface/range {p1 .. p1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->isRotated()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 79
    add-int/lit8 v15, v2, 0x0

    add-int/lit8 v15, v15, 0x0

    invoke-virtual {v1, v15, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 80
    add-int/lit8 v15, v2, 0x0

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v1, v15, v11}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 81
    add-int/lit8 v15, v2, 0x0

    add-int/lit8 v15, v15, 0x2

    move/from16 v0, p10

    invoke-virtual {v1, v15, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 82
    add-int/lit8 v15, v2, 0x0

    add-int/lit8 v15, v15, 0x3

    invoke-virtual {v1, v15, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 83
    add-int/lit8 v15, v2, 0x0

    add-int/lit8 v15, v15, 0x4

    invoke-virtual {v1, v15, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 85
    add-int/lit8 v15, v2, 0x5

    add-int/lit8 v15, v15, 0x0

    invoke-virtual {v1, v15, v8}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 86
    add-int/lit8 v15, v2, 0x5

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v1, v15, v12}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 87
    add-int/lit8 v15, v2, 0x5

    add-int/lit8 v15, v15, 0x2

    move/from16 v0, p10

    invoke-virtual {v1, v15, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 88
    add-int/lit8 v15, v2, 0x5

    add-int/lit8 v15, v15, 0x3

    invoke-virtual {v1, v15, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 89
    add-int/lit8 v15, v2, 0x5

    add-int/lit8 v15, v15, 0x4

    invoke-virtual {v1, v15, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 91
    add-int/lit8 v15, v2, 0xa

    add-int/lit8 v15, v15, 0x0

    invoke-virtual {v1, v15, v9}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 92
    add-int/lit8 v15, v2, 0xa

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v1, v15, v13}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 93
    add-int/lit8 v15, v2, 0xa

    add-int/lit8 v15, v15, 0x2

    move/from16 v0, p10

    invoke-virtual {v1, v15, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 94
    add-int/lit8 v15, v2, 0xa

    add-int/lit8 v15, v15, 0x3

    invoke-virtual {v1, v15, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 95
    add-int/lit8 v15, v2, 0xa

    add-int/lit8 v15, v15, 0x4

    invoke-virtual {v1, v15, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 97
    add-int/lit8 v15, v2, 0xf

    add-int/lit8 v15, v15, 0x0

    invoke-virtual {v1, v15, v9}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 98
    add-int/lit8 v15, v2, 0xf

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v1, v15, v13}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 99
    add-int/lit8 v15, v2, 0xf

    add-int/lit8 v15, v15, 0x2

    move/from16 v0, p10

    invoke-virtual {v1, v15, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 100
    add-int/lit8 v15, v2, 0xf

    add-int/lit8 v15, v15, 0x3

    invoke-virtual {v1, v15, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 101
    add-int/lit8 v15, v2, 0xf

    add-int/lit8 v15, v15, 0x4

    invoke-virtual {v1, v15, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 103
    add-int/lit8 v15, v2, 0x14

    add-int/lit8 v15, v15, 0x0

    invoke-virtual {v1, v15, v8}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 104
    add-int/lit8 v15, v2, 0x14

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v1, v15, v12}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 105
    add-int/lit8 v15, v2, 0x14

    add-int/lit8 v15, v15, 0x2

    move/from16 v0, p10

    invoke-virtual {v1, v15, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 106
    add-int/lit8 v15, v2, 0x14

    add-int/lit8 v15, v15, 0x3

    invoke-virtual {v1, v15, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 107
    add-int/lit8 v15, v2, 0x14

    add-int/lit8 v15, v15, 0x4

    invoke-virtual {v1, v15, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 109
    add-int/lit8 v15, v2, 0x19

    add-int/lit8 v15, v15, 0x0

    invoke-virtual {v1, v15, v10}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 110
    add-int/lit8 v15, v2, 0x19

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v1, v15, v14}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 111
    add-int/lit8 v15, v2, 0x19

    add-int/lit8 v15, v15, 0x2

    move/from16 v0, p10

    invoke-virtual {v1, v15, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 112
    add-int/lit8 v15, v2, 0x19

    add-int/lit8 v15, v15, 0x3

    invoke-virtual {v1, v15, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 113
    add-int/lit8 v15, v2, 0x19

    add-int/lit8 v15, v15, 0x4

    invoke-virtual {v1, v15, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 152
    :goto_0
    move-object/from16 v0, p0

    iget v15, v0, Lorg/andengine/entity/sprite/batch/vbo/LowMemorySpriteBatchVertexBufferObject;->mBufferDataOffset:I

    add-int/lit8 v15, v15, 0x1e

    move-object/from16 v0, p0

    iput v15, v0, Lorg/andengine/entity/sprite/batch/vbo/LowMemorySpriteBatchVertexBufferObject;->mBufferDataOffset:I

    .line 153
    return-void

    .line 115
    :cond_0
    add-int/lit8 v15, v2, 0x0

    add-int/lit8 v15, v15, 0x0

    invoke-virtual {v1, v15, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 116
    add-int/lit8 v15, v2, 0x0

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v1, v15, v11}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 117
    add-int/lit8 v15, v2, 0x0

    add-int/lit8 v15, v15, 0x2

    move/from16 v0, p10

    invoke-virtual {v1, v15, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 118
    add-int/lit8 v15, v2, 0x0

    add-int/lit8 v15, v15, 0x3

    invoke-virtual {v1, v15, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 119
    add-int/lit8 v15, v2, 0x0

    add-int/lit8 v15, v15, 0x4

    invoke-virtual {v1, v15, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 121
    add-int/lit8 v15, v2, 0x5

    add-int/lit8 v15, v15, 0x0

    invoke-virtual {v1, v15, v8}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 122
    add-int/lit8 v15, v2, 0x5

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v1, v15, v12}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 123
    add-int/lit8 v15, v2, 0x5

    add-int/lit8 v15, v15, 0x2

    move/from16 v0, p10

    invoke-virtual {v1, v15, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 124
    add-int/lit8 v15, v2, 0x5

    add-int/lit8 v15, v15, 0x3

    invoke-virtual {v1, v15, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 125
    add-int/lit8 v15, v2, 0x5

    add-int/lit8 v15, v15, 0x4

    invoke-virtual {v1, v15, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 127
    add-int/lit8 v15, v2, 0xa

    add-int/lit8 v15, v15, 0x0

    invoke-virtual {v1, v15, v9}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 128
    add-int/lit8 v15, v2, 0xa

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v1, v15, v13}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 129
    add-int/lit8 v15, v2, 0xa

    add-int/lit8 v15, v15, 0x2

    move/from16 v0, p10

    invoke-virtual {v1, v15, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 130
    add-int/lit8 v15, v2, 0xa

    add-int/lit8 v15, v15, 0x3

    invoke-virtual {v1, v15, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 131
    add-int/lit8 v15, v2, 0xa

    add-int/lit8 v15, v15, 0x4

    invoke-virtual {v1, v15, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 133
    add-int/lit8 v15, v2, 0xf

    add-int/lit8 v15, v15, 0x0

    invoke-virtual {v1, v15, v9}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 134
    add-int/lit8 v15, v2, 0xf

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v1, v15, v13}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 135
    add-int/lit8 v15, v2, 0xf

    add-int/lit8 v15, v15, 0x2

    move/from16 v0, p10

    invoke-virtual {v1, v15, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 136
    add-int/lit8 v15, v2, 0xf

    add-int/lit8 v15, v15, 0x3

    invoke-virtual {v1, v15, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 137
    add-int/lit8 v15, v2, 0xf

    add-int/lit8 v15, v15, 0x4

    invoke-virtual {v1, v15, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 139
    add-int/lit8 v15, v2, 0x14

    add-int/lit8 v15, v15, 0x0

    invoke-virtual {v1, v15, v8}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 140
    add-int/lit8 v15, v2, 0x14

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v1, v15, v12}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 141
    add-int/lit8 v15, v2, 0x14

    add-int/lit8 v15, v15, 0x2

    move/from16 v0, p10

    invoke-virtual {v1, v15, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 142
    add-int/lit8 v15, v2, 0x14

    add-int/lit8 v15, v15, 0x3

    invoke-virtual {v1, v15, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 143
    add-int/lit8 v15, v2, 0x14

    add-int/lit8 v15, v15, 0x4

    invoke-virtual {v1, v15, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 145
    add-int/lit8 v15, v2, 0x19

    add-int/lit8 v15, v15, 0x0

    invoke-virtual {v1, v15, v10}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 146
    add-int/lit8 v15, v2, 0x19

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v1, v15, v14}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 147
    add-int/lit8 v15, v2, 0x19

    add-int/lit8 v15, v15, 0x2

    move/from16 v0, p10

    invoke-virtual {v1, v15, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 148
    add-int/lit8 v15, v2, 0x19

    add-int/lit8 v15, v15, 0x3

    invoke-virtual {v1, v15, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 149
    add-int/lit8 v15, v2, 0x19

    add-int/lit8 v15, v15, 0x4

    invoke-virtual {v1, v15, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    goto/16 :goto_0
.end method

.method public getBufferDataOffset()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lorg/andengine/entity/sprite/batch/vbo/LowMemorySpriteBatchVertexBufferObject;->mBufferDataOffset:I

    return v0
.end method

.method public setBufferDataOffset(I)V
    .locals 0
    .parameter "pBufferDataOffset"

    .prologue
    .line 48
    iput p1, p0, Lorg/andengine/entity/sprite/batch/vbo/LowMemorySpriteBatchVertexBufferObject;->mBufferDataOffset:I

    .line 49
    return-void
.end method
