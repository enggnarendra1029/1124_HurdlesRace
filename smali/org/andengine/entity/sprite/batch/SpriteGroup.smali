.class public Lorg/andengine/entity/sprite/batch/SpriteGroup;
.super Lorg/andengine/entity/sprite/batch/DynamicSpriteBatch;
.source "SpriteGroup.java"


# direct methods
.method public constructor <init>(FFLorg/andengine/opengl/texture/ITexture;ILorg/andengine/entity/sprite/batch/vbo/ISpriteBatchVertexBufferObject;)V
    .locals 1
    .parameter "pX"
    .parameter "pY"
    .parameter "pTexture"
    .parameter "pCapacity"
    .parameter "pSpriteBatchVertexBufferObject"

    .prologue
    .line 98
    invoke-direct/range {p0 .. p5}, Lorg/andengine/entity/sprite/batch/DynamicSpriteBatch;-><init>(FFLorg/andengine/opengl/texture/ITexture;ILorg/andengine/entity/sprite/batch/vbo/ISpriteBatchVertexBufferObject;)V

    .line 101
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/andengine/entity/sprite/batch/SpriteGroup;->setChildrenVisible(Z)V

    .line 102
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/texture/ITexture;ILorg/andengine/entity/sprite/batch/vbo/ISpriteBatchVertexBufferObject;Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 1
    .parameter "pX"
    .parameter "pY"
    .parameter "pTexture"
    .parameter "pCapacity"
    .parameter "pSpriteBatchVertexBufferObject"
    .parameter "pShaderProgram"

    .prologue
    .line 112
    invoke-direct/range {p0 .. p6}, Lorg/andengine/entity/sprite/batch/DynamicSpriteBatch;-><init>(FFLorg/andengine/opengl/texture/ITexture;ILorg/andengine/entity/sprite/batch/vbo/ISpriteBatchVertexBufferObject;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 115
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/andengine/entity/sprite/batch/SpriteGroup;->setChildrenVisible(Z)V

    .line 116
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/texture/ITexture;ILorg/andengine/opengl/vbo/VertexBufferObjectManager;)V
    .locals 1
    .parameter "pX"
    .parameter "pY"
    .parameter "pTexture"
    .parameter "pCapacity"
    .parameter "pVertexBufferObjectManager"

    .prologue
    .line 42
    invoke-direct/range {p0 .. p5}, Lorg/andengine/entity/sprite/batch/DynamicSpriteBatch;-><init>(FFLorg/andengine/opengl/texture/ITexture;ILorg/andengine/opengl/vbo/VertexBufferObjectManager;)V

    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/andengine/entity/sprite/batch/SpriteGroup;->setChildrenVisible(Z)V

    .line 46
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/texture/ITexture;ILorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 1
    .parameter "pX"
    .parameter "pY"
    .parameter "pTexture"
    .parameter "pCapacity"
    .parameter "pVertexBufferObjectManager"
    .parameter "pShaderProgram"

    .prologue
    .line 70
    invoke-direct/range {p0 .. p6}, Lorg/andengine/entity/sprite/batch/DynamicSpriteBatch;-><init>(FFLorg/andengine/opengl/texture/ITexture;ILorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/andengine/entity/sprite/batch/SpriteGroup;->setChildrenVisible(Z)V

    .line 74
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/texture/ITexture;ILorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V
    .locals 1
    .parameter "pX"
    .parameter "pY"
    .parameter "pTexture"
    .parameter "pCapacity"
    .parameter "pVertexBufferObjectManager"
    .parameter "pDrawType"

    .prologue
    .line 56
    invoke-direct/range {p0 .. p6}, Lorg/andengine/entity/sprite/batch/DynamicSpriteBatch;-><init>(FFLorg/andengine/opengl/texture/ITexture;ILorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V

    .line 59
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/andengine/entity/sprite/batch/SpriteGroup;->setChildrenVisible(Z)V

    .line 60
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/texture/ITexture;ILorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 1
    .parameter "pX"
    .parameter "pY"
    .parameter "pTexture"
    .parameter "pCapacity"
    .parameter "pVertexBufferObjectManager"
    .parameter "pDrawType"
    .parameter "pShaderProgram"

    .prologue
    .line 84
    invoke-direct/range {p0 .. p7}, Lorg/andengine/entity/sprite/batch/DynamicSpriteBatch;-><init>(FFLorg/andengine/opengl/texture/ITexture;ILorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/andengine/entity/sprite/batch/SpriteGroup;->setChildrenVisible(Z)V

    .line 88
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/ITexture;ILorg/andengine/entity/sprite/batch/vbo/ISpriteBatchVertexBufferObject;)V
    .locals 1
    .parameter "pTexture"
    .parameter "pCapacity"
    .parameter "pSpriteBatchVertexBufferObject"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2, p3}, Lorg/andengine/entity/sprite/batch/DynamicSpriteBatch;-><init>(Lorg/andengine/opengl/texture/ITexture;ILorg/andengine/entity/sprite/batch/vbo/ISpriteBatchVertexBufferObject;)V

    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/andengine/entity/sprite/batch/SpriteGroup;->setChildrenVisible(Z)V

    .line 95
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/ITexture;ILorg/andengine/entity/sprite/batch/vbo/ISpriteBatchVertexBufferObject;Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 1
    .parameter "pTexture"
    .parameter "pCapacity"
    .parameter "pSpriteBatchVertexBufferObject"
    .parameter "pShaderProgram"

    .prologue
    .line 105
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/andengine/entity/sprite/batch/DynamicSpriteBatch;-><init>(Lorg/andengine/opengl/texture/ITexture;ILorg/andengine/entity/sprite/batch/vbo/ISpriteBatchVertexBufferObject;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 108
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/andengine/entity/sprite/batch/SpriteGroup;->setChildrenVisible(Z)V

    .line 109
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/ITexture;ILorg/andengine/opengl/vbo/VertexBufferObjectManager;)V
    .locals 1
    .parameter "pTexture"
    .parameter "pCapacity"
    .parameter "pVertexBufferObjectManager"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lorg/andengine/entity/sprite/batch/DynamicSpriteBatch;-><init>(Lorg/andengine/opengl/texture/ITexture;ILorg/andengine/opengl/vbo/VertexBufferObjectManager;)V

    .line 38
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/andengine/entity/sprite/batch/SpriteGroup;->setChildrenVisible(Z)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/ITexture;ILorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 1
    .parameter "pTexture"
    .parameter "pCapacity"
    .parameter "pVertexBufferObjectManager"
    .parameter "pShaderProgram"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/andengine/entity/sprite/batch/DynamicSpriteBatch;-><init>(Lorg/andengine/opengl/texture/ITexture;ILorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 66
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/andengine/entity/sprite/batch/SpriteGroup;->setChildrenVisible(Z)V

    .line 67
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/ITexture;ILorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V
    .locals 1
    .parameter "pTexture"
    .parameter "pCapacity"
    .parameter "pVertexBufferObjectManager"
    .parameter "pDrawType"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/andengine/entity/sprite/batch/DynamicSpriteBatch;-><init>(Lorg/andengine/opengl/texture/ITexture;ILorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V

    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/andengine/entity/sprite/batch/SpriteGroup;->setChildrenVisible(Z)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/ITexture;ILorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 1
    .parameter "pTexture"
    .parameter "pCapacity"
    .parameter "pVertexBufferObjectManager"
    .parameter "pDrawType"
    .parameter "pShaderProgram"

    .prologue
    .line 77
    invoke-direct/range {p0 .. p5}, Lorg/andengine/entity/sprite/batch/DynamicSpriteBatch;-><init>(Lorg/andengine/opengl/texture/ITexture;ILorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/andengine/entity/sprite/batch/SpriteGroup;->setChildrenVisible(Z)V

    .line 81
    return-void
.end method

.method private assertCapacity()V
    .locals 3

    .prologue
    .line 171
    invoke-virtual {p0}, Lorg/andengine/entity/sprite/batch/SpriteGroup;->getChildCount()I

    move-result v0

    iget v1, p0, Lorg/andengine/entity/sprite/batch/SpriteGroup;->mCapacity:I

    if-lt v0, v1, :cond_0

    .line 172
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lorg/andengine/entity/sprite/batch/SpriteGroup;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has already reached its capacity ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/andengine/entity/sprite/batch/SpriteGroup;->mCapacity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_0
    return-void
.end method


# virtual methods
.method public attachChild(Lorg/andengine/entity/IEntity;)V
    .locals 3
    .parameter "pEntity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 132
    instance-of v0, p1, Lorg/andengine/entity/sprite/Sprite;

    if-eqz v0, :cond_0

    .line 133
    check-cast p1, Lorg/andengine/entity/sprite/Sprite;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/andengine/entity/sprite/batch/SpriteGroup;->attachChild(Lorg/andengine/entity/sprite/Sprite;)V

    .line 137
    return-void

    .line 135
    .restart local p1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "A "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lorg/andengine/entity/sprite/batch/SpriteGroup;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can only handle children of type Sprite or subclasses of Sprite, like TiledSprite or AnimatedSprite."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public attachChild(Lorg/andengine/entity/sprite/Sprite;)V
    .locals 1
    .parameter "pSprite"

    .prologue
    .line 140
    invoke-direct {p0}, Lorg/andengine/entity/sprite/batch/SpriteGroup;->assertCapacity()V

    .line 141
    invoke-virtual {p1}, Lorg/andengine/entity/sprite/Sprite;->getTextureRegion()Lorg/andengine/opengl/texture/region/ITextureRegion;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/andengine/entity/sprite/batch/SpriteGroup;->assertTexture(Lorg/andengine/opengl/texture/region/ITextureRegion;)V

    .line 142
    invoke-super {p0, p1}, Lorg/andengine/entity/sprite/batch/DynamicSpriteBatch;->attachChild(Lorg/andengine/entity/IEntity;)V

    .line 143
    return-void
.end method

.method public attachChildren(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<+",
            "Lorg/andengine/entity/sprite/Sprite;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p1, pSprites:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lorg/andengine/entity/sprite/Sprite;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 147
    .local v0, baseSpriteCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 150
    return-void

    .line 148
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v2}, Lorg/andengine/entity/sprite/batch/SpriteGroup;->attachChild(Lorg/andengine/entity/sprite/Sprite;)V

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onUpdateSpriteBatch()Z
    .locals 4

    .prologue
    .line 154
    iget-object v1, p0, Lorg/andengine/entity/sprite/batch/SpriteGroup;->mChildren:Lorg/andengine/util/adt/list/SmartList;

    .line 155
    .local v1, children:Lorg/andengine/util/adt/list/SmartList;,"Lorg/andengine/util/adt/list/SmartList<Lorg/andengine/entity/IEntity;>;"
    if-nez v1, :cond_0

    .line 156
    const/4 v3, 0x0

    .line 162
    :goto_0
    return v3

    .line 158
    :cond_0
    invoke-virtual {v1}, Lorg/andengine/util/adt/list/SmartList;->size()I

    move-result v0

    .line 159
    .local v0, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-lt v2, v0, :cond_1

    .line 162
    const/4 v3, 0x1

    goto :goto_0

    .line 160
    :cond_1
    invoke-virtual {v1, v2}, Lorg/andengine/util/adt/list/SmartList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v3}, Lorg/andengine/entity/sprite/batch/SpriteGroup;->drawWithoutChecks(Lorg/andengine/entity/sprite/Sprite;)V

    .line 159
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
