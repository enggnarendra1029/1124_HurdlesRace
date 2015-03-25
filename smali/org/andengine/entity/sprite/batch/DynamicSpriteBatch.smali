.class public abstract Lorg/andengine/entity/sprite/batch/DynamicSpriteBatch;
.super Lorg/andengine/entity/sprite/batch/SpriteBatch;
.source "DynamicSpriteBatch.java"


# direct methods
.method public constructor <init>(FFLorg/andengine/opengl/texture/ITexture;ILorg/andengine/entity/sprite/batch/vbo/ISpriteBatchVertexBufferObject;)V
    .locals 0
    .parameter "pX"
    .parameter "pY"
    .parameter "pTexture"
    .parameter "pCapacity"
    .parameter "pSpriteBatchVertexBufferObject"

    .prologue
    .line 57
    invoke-direct/range {p0 .. p5}, Lorg/andengine/entity/sprite/batch/SpriteBatch;-><init>(FFLorg/andengine/opengl/texture/ITexture;ILorg/andengine/entity/sprite/batch/vbo/ISpriteBatchVertexBufferObject;)V

    .line 58
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/texture/ITexture;ILorg/andengine/entity/sprite/batch/vbo/ISpriteBatchVertexBufferObject;Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 0
    .parameter "pX"
    .parameter "pY"
    .parameter "pTexture"
    .parameter "pCapacity"
    .parameter "pSpriteBatchVertexBufferObject"
    .parameter "pShaderProgram"

    .prologue
    .line 73
    invoke-direct/range {p0 .. p6}, Lorg/andengine/entity/sprite/batch/SpriteBatch;-><init>(FFLorg/andengine/opengl/texture/ITexture;ILorg/andengine/entity/sprite/batch/vbo/ISpriteBatchVertexBufferObject;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 74
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/texture/ITexture;ILorg/andengine/opengl/vbo/VertexBufferObjectManager;)V
    .locals 7
    .parameter "pX"
    .parameter "pY"
    .parameter "pTexture"
    .parameter "pCapacity"
    .parameter "pVertexBufferObjectManager"

    .prologue
    .line 33
    sget-object v6, Lorg/andengine/opengl/vbo/DrawType;->DYNAMIC:Lorg/andengine/opengl/vbo/DrawType;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/andengine/entity/sprite/batch/SpriteBatch;-><init>(FFLorg/andengine/opengl/texture/ITexture;ILorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V

    .line 34
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/texture/ITexture;ILorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 8
    .parameter "pX"
    .parameter "pY"
    .parameter "pTexture"
    .parameter "pCapacity"
    .parameter "pVertexBufferObjectManager"
    .parameter "pShaderProgram"

    .prologue
    .line 49
    sget-object v6, Lorg/andengine/opengl/vbo/DrawType;->DYNAMIC:Lorg/andengine/opengl/vbo/DrawType;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/andengine/entity/sprite/batch/SpriteBatch;-><init>(FFLorg/andengine/opengl/texture/ITexture;ILorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 50
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/texture/ITexture;ILorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V
    .locals 0
    .parameter "pX"
    .parameter "pY"
    .parameter "pTexture"
    .parameter "pCapacity"
    .parameter "pVertexBufferObjectManager"
    .parameter "pDrawType"

    .prologue
    .line 41
    invoke-direct/range {p0 .. p6}, Lorg/andengine/entity/sprite/batch/SpriteBatch;-><init>(FFLorg/andengine/opengl/texture/ITexture;ILorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V

    .line 42
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/texture/ITexture;ILorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 0
    .parameter "pX"
    .parameter "pY"
    .parameter "pTexture"
    .parameter "pCapacity"
    .parameter "pVertexBufferObjectManager"
    .parameter "pDrawType"
    .parameter "pShaderProgram"

    .prologue
    .line 65
    invoke-direct/range {p0 .. p7}, Lorg/andengine/entity/sprite/batch/SpriteBatch;-><init>(FFLorg/andengine/opengl/texture/ITexture;ILorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/ITexture;ILorg/andengine/entity/sprite/batch/vbo/ISpriteBatchVertexBufferObject;)V
    .locals 0
    .parameter "pTexture"
    .parameter "pCapacity"
    .parameter "pSpriteBatchVertexBufferObject"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lorg/andengine/entity/sprite/batch/SpriteBatch;-><init>(Lorg/andengine/opengl/texture/ITexture;ILorg/andengine/entity/sprite/batch/vbo/ISpriteBatchVertexBufferObject;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/ITexture;ILorg/andengine/entity/sprite/batch/vbo/ISpriteBatchVertexBufferObject;Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 0
    .parameter "pTexture"
    .parameter "pCapacity"
    .parameter "pSpriteBatchVertexBufferObject"
    .parameter "pShaderProgram"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/andengine/entity/sprite/batch/SpriteBatch;-><init>(Lorg/andengine/opengl/texture/ITexture;ILorg/andengine/entity/sprite/batch/vbo/ISpriteBatchVertexBufferObject;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/ITexture;ILorg/andengine/opengl/vbo/VertexBufferObjectManager;)V
    .locals 1
    .parameter "pTexture"
    .parameter "pCapacity"
    .parameter "pVertexBufferObjectManager"

    .prologue
    .line 29
    sget-object v0, Lorg/andengine/opengl/vbo/DrawType;->DYNAMIC:Lorg/andengine/opengl/vbo/DrawType;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/andengine/entity/sprite/batch/SpriteBatch;-><init>(Lorg/andengine/opengl/texture/ITexture;ILorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/ITexture;ILorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 6
    .parameter "pTexture"
    .parameter "pCapacity"
    .parameter "pVertexBufferObjectManager"
    .parameter "pShaderProgram"

    .prologue
    .line 45
    sget-object v4, Lorg/andengine/opengl/vbo/DrawType;->DYNAMIC:Lorg/andengine/opengl/vbo/DrawType;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/andengine/entity/sprite/batch/SpriteBatch;-><init>(Lorg/andengine/opengl/texture/ITexture;ILorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/ITexture;ILorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V
    .locals 0
    .parameter "pTexture"
    .parameter "pCapacity"
    .parameter "pVertexBufferObjectManager"
    .parameter "pDrawType"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/andengine/entity/sprite/batch/SpriteBatch;-><init>(Lorg/andengine/opengl/texture/ITexture;ILorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/ITexture;ILorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 0
    .parameter "pTexture"
    .parameter "pCapacity"
    .parameter "pVertexBufferObjectManager"
    .parameter "pDrawType"
    .parameter "pShaderProgram"

    .prologue
    .line 61
    invoke-direct/range {p0 .. p5}, Lorg/andengine/entity/sprite/batch/SpriteBatch;-><init>(Lorg/andengine/opengl/texture/ITexture;ILorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 62
    return-void
.end method


# virtual methods
.method protected begin()V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Lorg/andengine/entity/sprite/batch/SpriteBatch;->begin()V

    .line 93
    invoke-virtual {p0}, Lorg/andengine/entity/sprite/batch/DynamicSpriteBatch;->onUpdateSpriteBatch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lorg/andengine/entity/sprite/batch/DynamicSpriteBatch;->submit()V

    .line 96
    :cond_0
    return-void
.end method

.method protected abstract onUpdateSpriteBatch()Z
.end method
