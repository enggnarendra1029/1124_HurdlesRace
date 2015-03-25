.class public Lorg/andengine/opengl/shader/PositionTextureCoordinatesUniformColorShaderProgram;
.super Lorg/andengine/opengl/shader/ShaderProgram;
.source "PositionTextureCoordinatesUniformColorShaderProgram.java"


# static fields
.field public static final FRAGMENTSHADER:Ljava/lang/String; = "precision lowp float;\nuniform sampler2D u_texture_0;\nuniform vec4 u_color;\nvarying mediump vec2 v_textureCoordinates;\nvoid main() {\n\tgl_FragColor = u_color * texture2D(u_texture_0, v_textureCoordinates);\n}"

.field private static INSTANCE:Lorg/andengine/opengl/shader/PositionTextureCoordinatesUniformColorShaderProgram; = null

.field public static final VERTEXSHADER:Ljava/lang/String; = "uniform mat4 u_modelViewProjectionMatrix;\nattribute vec4 a_position;\nattribute vec2 a_textureCoordinates;\nvarying vec2 v_textureCoordinates;\nvoid main() {\n\tv_textureCoordinates = a_textureCoordinates;\n\tgl_Position = u_modelViewProjectionMatrix * a_position;\n}"

.field public static sUniformColorLocation:I

.field public static sUniformModelViewPositionMatrixLocation:I

.field public static sUniformTexture0Location:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 46
    sput v0, Lorg/andengine/opengl/shader/PositionTextureCoordinatesUniformColorShaderProgram;->sUniformModelViewPositionMatrixLocation:I

    .line 47
    sput v0, Lorg/andengine/opengl/shader/PositionTextureCoordinatesUniformColorShaderProgram;->sUniformTexture0Location:I

    .line 48
    sput v0, Lorg/andengine/opengl/shader/PositionTextureCoordinatesUniformColorShaderProgram;->sUniformColorLocation:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 55
    const-string v0, "uniform mat4 u_modelViewProjectionMatrix;\nattribute vec4 a_position;\nattribute vec2 a_textureCoordinates;\nvarying vec2 v_textureCoordinates;\nvoid main() {\n\tv_textureCoordinates = a_textureCoordinates;\n\tgl_Position = u_modelViewProjectionMatrix * a_position;\n}"

    const-string v1, "precision lowp float;\nuniform sampler2D u_texture_0;\nuniform vec4 u_color;\nvarying mediump vec2 v_textureCoordinates;\nvoid main() {\n\tgl_FragColor = u_color * texture2D(u_texture_0, v_textureCoordinates);\n}"

    invoke-direct {p0, v0, v1}, Lorg/andengine/opengl/shader/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public static getInstance()Lorg/andengine/opengl/shader/PositionTextureCoordinatesUniformColorShaderProgram;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lorg/andengine/opengl/shader/PositionTextureCoordinatesUniformColorShaderProgram;->INSTANCE:Lorg/andengine/opengl/shader/PositionTextureCoordinatesUniformColorShaderProgram;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lorg/andengine/opengl/shader/PositionTextureCoordinatesUniformColorShaderProgram;

    invoke-direct {v0}, Lorg/andengine/opengl/shader/PositionTextureCoordinatesUniformColorShaderProgram;-><init>()V

    sput-object v0, Lorg/andengine/opengl/shader/PositionTextureCoordinatesUniformColorShaderProgram;->INSTANCE:Lorg/andengine/opengl/shader/PositionTextureCoordinatesUniformColorShaderProgram;

    .line 62
    :cond_0
    sget-object v0, Lorg/andengine/opengl/shader/PositionTextureCoordinatesUniformColorShaderProgram;->INSTANCE:Lorg/andengine/opengl/shader/PositionTextureCoordinatesUniformColorShaderProgram;

    return-object v0
.end method


# virtual methods
.method public bind(Lorg/andengine/opengl/util/GLState;Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;)V
    .locals 4
    .parameter "pGLState"
    .parameter "pVertexBufferObjectAttributes"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 87
    invoke-static {v3}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 89
    invoke-super {p0, p1, p2}, Lorg/andengine/opengl/shader/ShaderProgram;->bind(Lorg/andengine/opengl/util/GLState;Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;)V

    .line 91
    sget v0, Lorg/andengine/opengl/shader/PositionTextureCoordinatesUniformColorShaderProgram;->sUniformModelViewPositionMatrixLocation:I

    invoke-virtual {p1}, Lorg/andengine/opengl/util/GLState;->getModelViewProjectionGLMatrix()[F

    move-result-object v1

    invoke-static {v0, v3, v2, v1, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 92
    sget v0, Lorg/andengine/opengl/shader/PositionTextureCoordinatesUniformColorShaderProgram;->sUniformTexture0Location:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 93
    return-void
.end method

.method protected link(Lorg/andengine/opengl/util/GLState;)V
    .locals 3
    .parameter "pGLState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/opengl/shader/exception/ShaderProgramLinkException;
        }
    .end annotation

    .prologue
    .line 75
    iget v0, p0, Lorg/andengine/opengl/shader/PositionTextureCoordinatesUniformColorShaderProgram;->mProgramID:I

    const/4 v1, 0x0

    const-string v2, "a_position"

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 76
    iget v0, p0, Lorg/andengine/opengl/shader/PositionTextureCoordinatesUniformColorShaderProgram;->mProgramID:I

    const/4 v1, 0x3

    const-string v2, "a_textureCoordinates"

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 78
    invoke-super {p0, p1}, Lorg/andengine/opengl/shader/ShaderProgram;->link(Lorg/andengine/opengl/util/GLState;)V

    .line 80
    const-string v0, "u_modelViewProjectionMatrix"

    invoke-virtual {p0, v0}, Lorg/andengine/opengl/shader/PositionTextureCoordinatesUniformColorShaderProgram;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/andengine/opengl/shader/PositionTextureCoordinatesUniformColorShaderProgram;->sUniformModelViewPositionMatrixLocation:I

    .line 81
    const-string v0, "u_texture_0"

    invoke-virtual {p0, v0}, Lorg/andengine/opengl/shader/PositionTextureCoordinatesUniformColorShaderProgram;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/andengine/opengl/shader/PositionTextureCoordinatesUniformColorShaderProgram;->sUniformTexture0Location:I

    .line 82
    const-string v0, "u_color"

    invoke-virtual {p0, v0}, Lorg/andengine/opengl/shader/PositionTextureCoordinatesUniformColorShaderProgram;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/andengine/opengl/shader/PositionTextureCoordinatesUniformColorShaderProgram;->sUniformColorLocation:I

    .line 83
    return-void
.end method

.method public unbind(Lorg/andengine/opengl/util/GLState;)V
    .locals 1
    .parameter "pGLState"

    .prologue
    .line 97
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 99
    invoke-super {p0, p1}, Lorg/andengine/opengl/shader/ShaderProgram;->unbind(Lorg/andengine/opengl/util/GLState;)V

    .line 100
    return-void
.end method
