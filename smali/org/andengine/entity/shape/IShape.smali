.class public interface abstract Lorg/andengine/entity/shape/IShape;
.super Ljava/lang/Object;
.source "IShape.java"

# interfaces
.implements Lorg/andengine/entity/IEntity;
.implements Lorg/andengine/entity/scene/ITouchArea;


# static fields
.field public static final BLENDFUNCTION_DESTINATION_DEFAULT:I = 0x303

.field public static final BLENDFUNCTION_DESTINATION_PREMULTIPLYALPHA_DEFAULT:I = 0x303

.field public static final BLENDFUNCTION_SOURCE_DEFAULT:I = 0x302

.field public static final BLENDFUNCTION_SOURCE_PREMULTIPLYALPHA_DEFAULT:I = 0x1


# virtual methods
.method public abstract collidesWith(Lorg/andengine/entity/shape/IShape;)Z
.end method

.method public abstract getBlendFunctionDestination()I
.end method

.method public abstract getBlendFunctionSource()I
.end method

.method public abstract getShaderProgram()Lorg/andengine/opengl/shader/ShaderProgram;
.end method

.method public abstract getVertexBufferObject()Lorg/andengine/opengl/vbo/IVertexBufferObject;
.end method

.method public abstract getVertexBufferObjectManager()Lorg/andengine/opengl/vbo/VertexBufferObjectManager;
.end method

.method public abstract isBlendingEnabled()Z
.end method

.method public abstract setBlendFunction(II)V
.end method

.method public abstract setBlendFunctionDestination(I)V
.end method

.method public abstract setBlendFunctionSource(I)V
.end method

.method public abstract setBlendingEnabled(Z)V
.end method

.method public abstract setShaderProgram(Lorg/andengine/opengl/shader/ShaderProgram;)V
.end method
