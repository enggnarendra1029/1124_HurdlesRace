.class public Lorg/andengine/opengl/shader/PositionTextureCoordinatesShaderProgram;
.super Lorg/andengine/opengl/shader/ShaderProgram;
.source "PositionTextureCoordinatesShaderProgram.java"


# static fields
.field public static final FRAGMENTSHADER:Ljava/lang/String; = "precision lowp float;\nuniform sampler2D u_texture_0;\nvarying mediump vec2 v_textureCoordinates;\nvoid main() {\n\tgl_FragColor = texture2D(u_texture_0, v_textureCoordinates);\n}"

.field private static INSTANCE:Lorg/andengine/opengl/shader/PositionTextureCoordinatesShaderProgram; = null

.field public static final VERTEXSHADER:Ljava/lang/String; = "uniform mat4 u_modelViewProjectionMatrix;\nattribute vec4 a_position;\nattribute vec2 a_textureCoordinates;\nvarying vec2 v_textureCoordinates;\nvoid main() {\n\tv_textureCoordinates = a_textureCoordinates;\n\tgl_Position = u_modelViewProjectionMatrix * a_position;\n}"

.field public static sUniformModelViewPositionMatrixLocation:I

.field public static sUniformTexture0Location:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 45
    sput v0, Lorg/andengine/opengl/shader/PositionTextureCoordinatesShaderProgram;->sUniformModelViewPositionMatrixLocation:I

    .line 46
    sput v0, Lorg/andengine/opengl/shader/PositionTextureCoordinatesShaderProgram;->sUniformTexture0Location:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 53
    const-string v0, "uniform mat4 u_modelViewProjectionMatrix;\nattribute vec4 a_position;\nattribute vec2 a_textureCoordinates;\nvarying vec2 v_textureCoordinates;\nvoid main() {\n\tv_textureCoordinates = a_textureCoordinates;\n\tgl_Position = u_modelViewProjectionMatrix * a_position;\n}"

    const-string v1, "precision lowp float;\nuniform sampler2D u_texture_0;\nvarying mediump vec2 v_textureCoordinates;\nvoid main() {\n\tgl_FragColor = texture2D(u_texture_0, v_textureCoordinates);\n}"

    invoke-direct {p0, v0, v1}, Lorg/andengine/opengl/shader/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public static getInstance()Lorg/andengine/opengl/shader/PositionTextureCoordinatesShaderProgram;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lorg/andengine/opengl/shader/PositionTextureCoordinatesShaderProgram;->INSTANCE:Lorg/andengine/opengl/shader/PositionTextureCoordinatesShaderProgram;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lorg/andengine/opengl/shader/PositionTextureCoordinatesShaderProgram;

    invoke-direct {v0}, Lorg/andengine/opengl/shader/PositionTextureCoordinatesShaderProgram;-><init>()V

    sput-object v0, Lorg/andengine/opengl/shader/PositionTextureCoordinatesShaderProgram;->INSTANCE:Lorg/andengine/opengl/shader/PositionTextureCoordinatesShaderProgram;

    .line 60
    :cond_0
    sget-object v0, Lorg/andengine/opengl/shader/PositionTextureCoordinatesShaderProgram;->INSTANCE:Lorg/andengine/opengl/shader/PositionTextureCoordinatesShaderProgram;

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

    .line 84
    invoke-static {v3}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 86
    invoke-super {p0, p1, p2}, Lorg/andengine/opengl/shader/ShaderProgram;->bind(Lorg/andengine/opengl/util/GLState;Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;)V

    .line 88
    sget v0, Lorg/andengine/opengl/shader/PositionTextureCoordinatesShaderProgram;->sUniformModelViewPositionMatrixLocation:I

    invoke-virtual {p1}, Lorg/andengine/opengl/util/GLState;->getModelViewProjectionGLMatrix()[F

    move-result-object v1

    invoke-static {v0, v3, v2, v1, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 89
    sget v0, Lorg/andengine/opengl/shader/PositionTextureCoordinatesShaderProgram;->sUniformTexture0Location:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 90
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
    .line 73
    iget v0, p0, Lorg/andengine/opengl/shader/PositionTextureCoordinatesShaderProgram;->mProgramID:I

    const/4 v1, 0x0

    const-string v2, "a_position"

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 74
    iget v0, p0, Lorg/andengine/opengl/shader/PositionTextureCoordinatesShaderProgram;->mProgramID:I

    const/4 v1, 0x3

    const-string v2, "a_textureCoordinates"

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 76
    invoke-super {p0, p1}, Lorg/andengine/opengl/shader/ShaderProgram;->link(Lorg/andengine/opengl/util/GLState;)V

    .line 78
    const-string v0, "u_modelViewProjectionMatrix"

    invoke-virtual {p0, v0}, Lorg/andengine/opengl/shader/PositionTextureCoordinatesShaderProgram;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/andengine/opengl/shader/PositionTextureCoordinatesShaderProgram;->sUniformModelViewPositionMatrixLocation:I

    .line 79
    const-string v0, "u_texture_0"

    invoke-virtual {p0, v0}, Lorg/andengine/opengl/shader/PositionTextureCoordinatesShaderProgram;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/andengine/opengl/shader/PositionTextureCoordinatesShaderProgram;->sUniformTexture0Location:I

    .line 80
    return-void
.end method

.method public unbind(Lorg/andengine/opengl/util/GLState;)V
    .locals 1
    .parameter "pGLState"

    .prologue
    .line 94
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 96
    invoke-super {p0, p1}, Lorg/andengine/opengl/shader/ShaderProgram;->unbind(Lorg/andengine/opengl/util/GLState;)V

    .line 97
    return-void
.end method
