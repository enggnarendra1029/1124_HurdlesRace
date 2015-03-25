.class public Lorg/andengine/opengl/shader/PositionTextureCoordinatesPositionInterpolationTextureSelectShaderProgram;
.super Lorg/andengine/opengl/shader/ShaderProgram;
.source "PositionTextureCoordinatesPositionInterpolationTextureSelectShaderProgram.java"


# static fields
.field public static final FRAGMENTSHADER:Ljava/lang/String; = "precision lowp float;\nuniform sampler2D u_texture_0;\nuniform sampler2D u_texture_1;\nuniform bool u_textureselect_texture_0;\nvarying mediump vec2 v_textureCoordinates;\nvoid main() {\n\tif(u_textureselect_texture_0) {\n\t\tgl_FragColor = texture2D(u_texture_0, v_textureCoordinates);\n\t} else {\n\t\tgl_FragColor = texture2D(u_texture_1, v_textureCoordinates);\n\t}\n}"

.field private static INSTANCE:Lorg/andengine/opengl/shader/PositionTextureCoordinatesPositionInterpolationTextureSelectShaderProgram; = null

.field public static final VERTEXSHADER:Ljava/lang/String; = "uniform mat4 u_modelViewProjectionMatrix;\nuniform float u_position_interpolation_mix_0;\nattribute vec4 a_position_0;\nattribute vec4 a_position_1;\nattribute vec2 a_textureCoordinates;\nvarying vec2 v_textureCoordinates;\nvoid main() {\n\tvec4 position = vec4(0, 0, 0, 1);\n\tposition.xy = mix(a_position_0.xy,a_position_1.xy,u_position_interpolation_mix_0);\n\tv_textureCoordinates = a_textureCoordinates;\n\tgl_Position = u_modelViewProjectionMatrix * position;\n}"

.field public static sUniformModelViewPositionMatrixLocation:I

.field public static sUniformPositionInterpolationMix0Location:I

.field public static sUniformTexture0Location:I

.field public static sUniformTexture1Location:I

.field public static sUniformTextureSelectTexture0Location:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 43
    sput v0, Lorg/andengine/opengl/shader/PositionTextureCoordinatesPositionInterpolationTextureSelectShaderProgram;->sUniformModelViewPositionMatrixLocation:I

    .line 44
    sput v0, Lorg/andengine/opengl/shader/PositionTextureCoordinatesPositionInterpolationTextureSelectShaderProgram;->sUniformTexture0Location:I

    .line 45
    sput v0, Lorg/andengine/opengl/shader/PositionTextureCoordinatesPositionInterpolationTextureSelectShaderProgram;->sUniformTexture1Location:I

    .line 46
    sput v0, Lorg/andengine/opengl/shader/PositionTextureCoordinatesPositionInterpolationTextureSelectShaderProgram;->sUniformTextureSelectTexture0Location:I

    .line 47
    sput v0, Lorg/andengine/opengl/shader/PositionTextureCoordinatesPositionInterpolationTextureSelectShaderProgram;->sUniformPositionInterpolationMix0Location:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 54
    const-string v0, "uniform mat4 u_modelViewProjectionMatrix;\nuniform float u_position_interpolation_mix_0;\nattribute vec4 a_position_0;\nattribute vec4 a_position_1;\nattribute vec2 a_textureCoordinates;\nvarying vec2 v_textureCoordinates;\nvoid main() {\n\tvec4 position = vec4(0, 0, 0, 1);\n\tposition.xy = mix(a_position_0.xy,a_position_1.xy,u_position_interpolation_mix_0);\n\tv_textureCoordinates = a_textureCoordinates;\n\tgl_Position = u_modelViewProjectionMatrix * position;\n}"

    const-string v1, "precision lowp float;\nuniform sampler2D u_texture_0;\nuniform sampler2D u_texture_1;\nuniform bool u_textureselect_texture_0;\nvarying mediump vec2 v_textureCoordinates;\nvoid main() {\n\tif(u_textureselect_texture_0) {\n\t\tgl_FragColor = texture2D(u_texture_0, v_textureCoordinates);\n\t} else {\n\t\tgl_FragColor = texture2D(u_texture_1, v_textureCoordinates);\n\t}\n}"

    invoke-direct {p0, v0, v1}, Lorg/andengine/opengl/shader/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public static getInstance()Lorg/andengine/opengl/shader/PositionTextureCoordinatesPositionInterpolationTextureSelectShaderProgram;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lorg/andengine/opengl/shader/PositionTextureCoordinatesPositionInterpolationTextureSelectShaderProgram;->INSTANCE:Lorg/andengine/opengl/shader/PositionTextureCoordinatesPositionInterpolationTextureSelectShaderProgram;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lorg/andengine/opengl/shader/PositionTextureCoordinatesPositionInterpolationTextureSelectShaderProgram;

    invoke-direct {v0}, Lorg/andengine/opengl/shader/PositionTextureCoordinatesPositionInterpolationTextureSelectShaderProgram;-><init>()V

    sput-object v0, Lorg/andengine/opengl/shader/PositionTextureCoordinatesPositionInterpolationTextureSelectShaderProgram;->INSTANCE:Lorg/andengine/opengl/shader/PositionTextureCoordinatesPositionInterpolationTextureSelectShaderProgram;

    .line 61
    :cond_0
    sget-object v0, Lorg/andengine/opengl/shader/PositionTextureCoordinatesPositionInterpolationTextureSelectShaderProgram;->INSTANCE:Lorg/andengine/opengl/shader/PositionTextureCoordinatesPositionInterpolationTextureSelectShaderProgram;

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

    .line 89
    invoke-static {v3}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 90
    invoke-static {v2}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 91
    const/4 v0, 0x4

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 92
    const/4 v0, 0x5

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 94
    invoke-super {p0, p1, p2}, Lorg/andengine/opengl/shader/ShaderProgram;->bind(Lorg/andengine/opengl/util/GLState;Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;)V

    .line 96
    sget v0, Lorg/andengine/opengl/shader/PositionTextureCoordinatesPositionInterpolationTextureSelectShaderProgram;->sUniformModelViewPositionMatrixLocation:I

    invoke-virtual {p1}, Lorg/andengine/opengl/util/GLState;->getModelViewProjectionGLMatrix()[F

    move-result-object v1

    invoke-static {v0, v3, v2, v1, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 97
    sget v0, Lorg/andengine/opengl/shader/PositionTextureCoordinatesPositionInterpolationTextureSelectShaderProgram;->sUniformTexture0Location:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 98
    sget v0, Lorg/andengine/opengl/shader/PositionTextureCoordinatesPositionInterpolationTextureSelectShaderProgram;->sUniformTexture1Location:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 99
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
    .line 74
    iget v0, p0, Lorg/andengine/opengl/shader/PositionTextureCoordinatesPositionInterpolationTextureSelectShaderProgram;->mProgramID:I

    const/4 v1, 0x4

    const-string v2, "a_position_0"

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 75
    iget v0, p0, Lorg/andengine/opengl/shader/PositionTextureCoordinatesPositionInterpolationTextureSelectShaderProgram;->mProgramID:I

    const/4 v1, 0x5

    const-string v2, "a_position_1"

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 76
    iget v0, p0, Lorg/andengine/opengl/shader/PositionTextureCoordinatesPositionInterpolationTextureSelectShaderProgram;->mProgramID:I

    const/4 v1, 0x3

    const-string v2, "a_textureCoordinates"

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 78
    invoke-super {p0, p1}, Lorg/andengine/opengl/shader/ShaderProgram;->link(Lorg/andengine/opengl/util/GLState;)V

    .line 80
    const-string v0, "u_modelViewProjectionMatrix"

    invoke-virtual {p0, v0}, Lorg/andengine/opengl/shader/PositionTextureCoordinatesPositionInterpolationTextureSelectShaderProgram;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/andengine/opengl/shader/PositionTextureCoordinatesPositionInterpolationTextureSelectShaderProgram;->sUniformModelViewPositionMatrixLocation:I

    .line 81
    const-string v0, "u_texture_0"

    invoke-virtual {p0, v0}, Lorg/andengine/opengl/shader/PositionTextureCoordinatesPositionInterpolationTextureSelectShaderProgram;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/andengine/opengl/shader/PositionTextureCoordinatesPositionInterpolationTextureSelectShaderProgram;->sUniformTexture0Location:I

    .line 82
    const-string v0, "u_texture_1"

    invoke-virtual {p0, v0}, Lorg/andengine/opengl/shader/PositionTextureCoordinatesPositionInterpolationTextureSelectShaderProgram;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/andengine/opengl/shader/PositionTextureCoordinatesPositionInterpolationTextureSelectShaderProgram;->sUniformTexture1Location:I

    .line 83
    const-string v0, "u_textureselect_texture_0"

    invoke-virtual {p0, v0}, Lorg/andengine/opengl/shader/PositionTextureCoordinatesPositionInterpolationTextureSelectShaderProgram;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/andengine/opengl/shader/PositionTextureCoordinatesPositionInterpolationTextureSelectShaderProgram;->sUniformTextureSelectTexture0Location:I

    .line 84
    const-string v0, "u_position_interpolation_mix_0"

    invoke-virtual {p0, v0}, Lorg/andengine/opengl/shader/PositionTextureCoordinatesPositionInterpolationTextureSelectShaderProgram;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/andengine/opengl/shader/PositionTextureCoordinatesPositionInterpolationTextureSelectShaderProgram;->sUniformPositionInterpolationMix0Location:I

    .line 85
    return-void
.end method

.method public unbind(Lorg/andengine/opengl/util/GLState;)V
    .locals 1
    .parameter "pGLState"

    .prologue
    .line 103
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 104
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 105
    const/4 v0, 0x4

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 106
    const/4 v0, 0x5

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 108
    invoke-super {p0, p1}, Lorg/andengine/opengl/shader/ShaderProgram;->unbind(Lorg/andengine/opengl/util/GLState;)V

    .line 109
    return-void
.end method
