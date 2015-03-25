.class public interface abstract Lorg/andengine/opengl/vbo/IVertexBufferObject;
.super Ljava/lang/Object;
.source "IVertexBufferObject.java"

# interfaces
.implements Lorg/andengine/util/IDisposable;


# static fields
.field public static final HARDWARE_BUFFER_ID_INVALID:I = -0x1


# virtual methods
.method public abstract bind(Lorg/andengine/opengl/util/GLState;)V
.end method

.method public abstract bind(Lorg/andengine/opengl/util/GLState;Lorg/andengine/opengl/shader/ShaderProgram;)V
.end method

.method public abstract draw(II)V
.end method

.method public abstract draw(III)V
.end method

.method public abstract getByteCapacity()I
.end method

.method public abstract getCapacity()I
.end method

.method public abstract getGPUMemoryByteSize()I
.end method

.method public abstract getHardwareBufferID()I
.end method

.method public abstract getHeapMemoryByteSize()I
.end method

.method public abstract getNativeHeapMemoryByteSize()I
.end method

.method public abstract getVertexBufferObjectManager()Lorg/andengine/opengl/vbo/VertexBufferObjectManager;
.end method

.method public abstract isAutoDispose()Z
.end method

.method public abstract isDirtyOnHardware()Z
.end method

.method public abstract isLoadedToHardware()Z
.end method

.method public abstract setDirtyOnHardware()V
.end method

.method public abstract setNotLoadedToHardware()V
.end method

.method public abstract unbind(Lorg/andengine/opengl/util/GLState;Lorg/andengine/opengl/shader/ShaderProgram;)V
.end method

.method public abstract unloadFromHardware(Lorg/andengine/opengl/util/GLState;)V
.end method
