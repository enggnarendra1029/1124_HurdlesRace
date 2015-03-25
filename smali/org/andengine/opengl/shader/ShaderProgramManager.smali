.class public Lorg/andengine/opengl/shader/ShaderProgramManager;
.super Ljava/lang/Object;
.source "ShaderProgramManager.java"


# instance fields
.field private final mShaderProgramsManaged:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/andengine/opengl/shader/ShaderProgram;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/andengine/opengl/shader/ShaderProgramManager;->mShaderProgramsManaged:Ljava/util/ArrayList;

    .line 14
    return-void
.end method


# virtual methods
.method public declared-synchronized loadShaderProgram(Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 2
    .parameter "pShaderProgram"

    .prologue
    .line 60
    monitor-enter p0

    if-nez p1, :cond_0

    .line 61
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pShaderProgram must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 64
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lorg/andengine/opengl/shader/ShaderProgram;->isCompiled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Loading an already compiled "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lorg/andengine/opengl/shader/ShaderProgram;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'. \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' will be recompiled."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/andengine/util/debug/Debug;->w(Ljava/lang/String;)V

    .line 67
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/andengine/opengl/shader/ShaderProgram;->setCompiled(Z)V

    .line 70
    :cond_1
    iget-object v0, p0, Lorg/andengine/opengl/shader/ShaderProgramManager;->mShaderProgramsManaged:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Loading an already loaded "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lorg/andengine/opengl/shader/ShaderProgram;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/andengine/util/debug/Debug;->w(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    :goto_0
    monitor-exit p0

    return-void

    .line 73
    :cond_2
    :try_start_2
    iget-object v0, p0, Lorg/andengine/opengl/shader/ShaderProgramManager;->mShaderProgramsManaged:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public varargs loadShaderPrograms([Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 2
    .parameter "pShaderPrograms"

    .prologue
    .line 78
    array-length v1, p1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 81
    return-void

    .line 79
    :cond_0
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/andengine/opengl/shader/ShaderProgramManager;->loadShaderProgram(Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 78
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public declared-synchronized onCreate()V
    .locals 1

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lorg/andengine/opengl/shader/PositionColorTextureCoordinatesShaderProgram;->getInstance()Lorg/andengine/opengl/shader/PositionColorTextureCoordinatesShaderProgram;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/andengine/opengl/shader/ShaderProgramManager;->loadShaderProgram(Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 43
    invoke-static {}, Lorg/andengine/opengl/shader/PositionTextureCoordinatesShaderProgram;->getInstance()Lorg/andengine/opengl/shader/PositionTextureCoordinatesShaderProgram;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/andengine/opengl/shader/ShaderProgramManager;->loadShaderProgram(Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 44
    invoke-static {}, Lorg/andengine/opengl/shader/PositionTextureCoordinatesUniformColorShaderProgram;->getInstance()Lorg/andengine/opengl/shader/PositionTextureCoordinatesUniformColorShaderProgram;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/andengine/opengl/shader/ShaderProgramManager;->loadShaderProgram(Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 45
    invoke-static {}, Lorg/andengine/opengl/shader/PositionColorShaderProgram;->getInstance()Lorg/andengine/opengl/shader/PositionColorShaderProgram;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/andengine/opengl/shader/ShaderProgramManager;->loadShaderProgram(Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 46
    invoke-static {}, Lorg/andengine/opengl/shader/PositionTextureCoordinatesTextureSelectShaderProgram;->getInstance()Lorg/andengine/opengl/shader/PositionTextureCoordinatesTextureSelectShaderProgram;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/andengine/opengl/shader/ShaderProgramManager;->loadShaderProgram(Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 47
    invoke-static {}, Lorg/andengine/opengl/shader/PositionTextureCoordinatesPositionInterpolationTextureSelectShaderProgram;->getInstance()Lorg/andengine/opengl/shader/PositionTextureCoordinatesPositionInterpolationTextureSelectShaderProgram;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/andengine/opengl/shader/ShaderProgramManager;->loadShaderProgram(Lorg/andengine/opengl/shader/ShaderProgram;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    monitor-exit p0

    return-void

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onDestroy()V
    .locals 4

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/andengine/opengl/shader/ShaderProgramManager;->mShaderProgramsManaged:Ljava/util/ArrayList;

    .line 52
    .local v1, managedShaderPrograms:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/andengine/opengl/shader/ShaderProgram;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 56
    iget-object v2, p0, Lorg/andengine/opengl/shader/ShaderProgramManager;->mShaderProgramsManaged:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit p0

    return-void

    .line 53
    :cond_0
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/andengine/opengl/shader/ShaderProgram;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/andengine/opengl/shader/ShaderProgram;->setCompiled(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 51
    .end local v0           #i:I
    .end local v1           #managedShaderPrograms:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/andengine/opengl/shader/ShaderProgram;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized onReload()V
    .locals 4

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/andengine/opengl/shader/ShaderProgramManager;->mShaderProgramsManaged:Ljava/util/ArrayList;

    .line 85
    .local v1, managedShaderPrograms:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/andengine/opengl/shader/ShaderProgram;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 88
    monitor-exit p0

    return-void

    .line 86
    :cond_0
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/andengine/opengl/shader/ShaderProgram;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/andengine/opengl/shader/ShaderProgram;->setCompiled(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 84
    .end local v0           #i:I
    .end local v1           #managedShaderPrograms:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/andengine/opengl/shader/ShaderProgram;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
