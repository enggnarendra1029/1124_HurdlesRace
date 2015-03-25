.class public abstract Lorg/andengine/entity/shape/Shape;
.super Lorg/andengine/entity/Entity;
.source "Shape.java"

# interfaces
.implements Lorg/andengine/entity/shape/IShape;


# instance fields
.field protected mBlendFunctionDestination:I

.field protected mBlendFunctionSource:I

.field protected mBlendingEnabled:Z

.field protected mShaderProgram:Lorg/andengine/opengl/shader/ShaderProgram;


# direct methods
.method public constructor <init>(FFLorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 1
    .parameter "pX"
    .parameter "pY"
    .parameter "pShaderProgram"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lorg/andengine/entity/Entity;-><init>(FF)V

    .line 30
    const/16 v0, 0x302

    iput v0, p0, Lorg/andengine/entity/shape/Shape;->mBlendFunctionSource:I

    .line 31
    const/16 v0, 0x303

    iput v0, p0, Lorg/andengine/entity/shape/Shape;->mBlendFunctionDestination:I

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/andengine/entity/shape/Shape;->mBlendingEnabled:Z

    .line 44
    iput-object p3, p0, Lorg/andengine/entity/shape/Shape;->mShaderProgram:Lorg/andengine/opengl/shader/ShaderProgram;

    .line 45
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 138
    invoke-super {p0}, Lorg/andengine/entity/Entity;->dispose()V

    .line 140
    invoke-virtual {p0}, Lorg/andengine/entity/shape/Shape;->getVertexBufferObject()Lorg/andengine/opengl/vbo/IVertexBufferObject;

    move-result-object v0

    .line 141
    .local v0, vertexBufferObject:Lorg/andengine/opengl/vbo/IVertexBufferObject;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/andengine/opengl/vbo/IVertexBufferObject;->isAutoDispose()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/andengine/opengl/vbo/IVertexBufferObject;->isDisposed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 142
    invoke-interface {v0}, Lorg/andengine/opengl/vbo/IVertexBufferObject;->dispose()V

    .line 144
    :cond_0
    return-void
.end method

.method public getBlendFunctionDestination()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lorg/andengine/entity/shape/Shape;->mBlendFunctionDestination:I

    return v0
.end method

.method public getBlendFunctionSource()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lorg/andengine/entity/shape/Shape;->mBlendFunctionSource:I

    return v0
.end method

.method public getShaderProgram()Lorg/andengine/opengl/shader/ShaderProgram;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/andengine/entity/shape/Shape;->mShaderProgram:Lorg/andengine/opengl/shader/ShaderProgram;

    return-object v0
.end method

.method public getVertexBufferObjectManager()Lorg/andengine/opengl/vbo/VertexBufferObjectManager;
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lorg/andengine/entity/shape/Shape;->getVertexBufferObject()Lorg/andengine/opengl/vbo/IVertexBufferObject;

    move-result-object v0

    invoke-interface {v0}, Lorg/andengine/opengl/vbo/IVertexBufferObject;->getVertexBufferObjectManager()Lorg/andengine/opengl/vbo/VertexBufferObjectManager;

    move-result-object v0

    return-object v0
.end method

.method protected initBlendFunction(Lorg/andengine/opengl/texture/ITexture;)V
    .locals 1
    .parameter "pTexture"

    .prologue
    .line 155
    invoke-interface {p1}, Lorg/andengine/opengl/texture/ITexture;->getTextureOptions()Lorg/andengine/opengl/texture/TextureOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/andengine/entity/shape/Shape;->initBlendFunction(Lorg/andengine/opengl/texture/TextureOptions;)V

    .line 156
    return-void
.end method

.method protected initBlendFunction(Lorg/andengine/opengl/texture/TextureOptions;)V
    .locals 2
    .parameter "pTextureOptions"

    .prologue
    .line 159
    iget-boolean v0, p1, Lorg/andengine/opengl/texture/TextureOptions;->mPreMultiplyAlpha:Z

    if-eqz v0, :cond_0

    .line 160
    const/4 v0, 0x1

    const/16 v1, 0x303

    invoke-virtual {p0, v0, v1}, Lorg/andengine/entity/shape/Shape;->setBlendFunction(II)V

    .line 162
    :cond_0
    return-void
.end method

.method protected initBlendFunction(Lorg/andengine/opengl/texture/region/ITextureRegion;)V
    .locals 1
    .parameter "pTextureRegion"

    .prologue
    .line 151
    invoke-interface {p1}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getTexture()Lorg/andengine/opengl/texture/ITexture;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/andengine/entity/shape/Shape;->initBlendFunction(Lorg/andengine/opengl/texture/ITexture;)V

    .line 152
    return-void
.end method

.method public isBlendingEnabled()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lorg/andengine/entity/shape/Shape;->mBlendingEnabled:Z

    return v0
.end method

.method public onAreaTouched(Lorg/andengine/input/touch/TouchEvent;FF)Z
    .locals 1
    .parameter "pSceneTouchEvent"
    .parameter "pTouchAreaLocalX"
    .parameter "pTouchAreaLocalY"

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract onUpdateVertices()V
.end method

.method protected postDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V
    .locals 1
    .parameter "pGLState"
    .parameter "pCamera"

    .prologue
    .line 118
    iget-boolean v0, p0, Lorg/andengine/entity/shape/Shape;->mBlendingEnabled:Z

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p1}, Lorg/andengine/opengl/util/GLState;->disableBlend()Z

    .line 121
    :cond_0
    return-void
.end method

.method protected preDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V
    .locals 2
    .parameter "pGLState"
    .parameter "pCamera"

    .prologue
    .line 110
    iget-boolean v0, p0, Lorg/andengine/entity/shape/Shape;->mBlendingEnabled:Z

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p1}, Lorg/andengine/opengl/util/GLState;->enableBlend()Z

    .line 112
    iget v0, p0, Lorg/andengine/entity/shape/Shape;->mBlendFunctionSource:I

    iget v1, p0, Lorg/andengine/entity/shape/Shape;->mBlendFunctionDestination:I

    invoke-virtual {p1, v0, v1}, Lorg/andengine/opengl/util/GLState;->blendFunction(II)V

    .line 114
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 130
    invoke-super {p0}, Lorg/andengine/entity/Entity;->reset()V

    .line 132
    const/16 v0, 0x302

    iput v0, p0, Lorg/andengine/entity/shape/Shape;->mBlendFunctionSource:I

    .line 133
    const/16 v0, 0x303

    iput v0, p0, Lorg/andengine/entity/shape/Shape;->mBlendFunctionDestination:I

    .line 134
    return-void
.end method

.method public setBlendFunction(II)V
    .locals 0
    .parameter "pBlendFunctionSource"
    .parameter "pBlendFunctionDestination"

    .prologue
    .line 83
    iput p1, p0, Lorg/andengine/entity/shape/Shape;->mBlendFunctionSource:I

    .line 84
    iput p2, p0, Lorg/andengine/entity/shape/Shape;->mBlendFunctionDestination:I

    .line 85
    return-void
.end method

.method public setBlendFunctionDestination(I)V
    .locals 0
    .parameter "pBlendFunctionDestination"

    .prologue
    .line 78
    iput p1, p0, Lorg/andengine/entity/shape/Shape;->mBlendFunctionDestination:I

    .line 79
    return-void
.end method

.method public setBlendFunctionSource(I)V
    .locals 0
    .parameter "pBlendFunctionSource"

    .prologue
    .line 68
    iput p1, p0, Lorg/andengine/entity/shape/Shape;->mBlendFunctionSource:I

    .line 69
    return-void
.end method

.method public setBlendingEnabled(Z)V
    .locals 0
    .parameter "pBlendingEnabled"

    .prologue
    .line 58
    iput-boolean p1, p0, Lorg/andengine/entity/shape/Shape;->mBlendingEnabled:Z

    .line 59
    return-void
.end method

.method public setShaderProgram(Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 0
    .parameter "pShaderProgram"

    .prologue
    .line 94
    iput-object p1, p0, Lorg/andengine/entity/shape/Shape;->mShaderProgram:Lorg/andengine/opengl/shader/ShaderProgram;

    .line 95
    return-void
.end method
