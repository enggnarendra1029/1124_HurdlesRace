.class public Lorg/andengine/opengl/shader/PositionColorShaderProgram;
.super Lorg/andengine/opengl/shader/ShaderProgram;
.source "PositionColorShaderProgram.java"


# static fields
.field public static final FRAGMENTSHADER:Ljava/lang/String; = "precision lowp float;\nvarying vec4 v_color;\nvoid main() {\n\tgl_FragColor = v_color;\n}"

.field private static INSTANCE:Lorg/andengine/opengl/shader/PositionColorShaderProgram; = null

.field public static final VERTEXSHADER:Ljava/lang/String; = "uniform mat4 u_modelViewProjectionMatrix;\nattribute vec4 a_position;\nattribute vec4 a_color;\nvarying vec4 v_color;\nvoid main() {\n\tgl_Position = u_modelViewProjectionMatrix * a_position;\n\tv_color = a_color;\n}"

.field public static sUniformModelViewPositionMatrixLocation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, -0x1

    sput v0, Lorg/andengine/opengl/shader/PositionColorShaderProgram;->sUniformModelViewPositionMatrixLocation:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 51
    const-string v0, "uniform mat4 u_modelViewProjectionMatrix;\nattribute vec4 a_position;\nattribute vec4 a_color;\nvarying vec4 v_color;\nvoid main() {\n\tgl_Position = u_modelViewProjectionMatrix * a_position;\n\tv_color = a_color;\n}"

    const-string v1, "precision lowp float;\nvarying vec4 v_color;\nvoid main() {\n\tgl_FragColor = v_color;\n}"

    invoke-direct {p0, v0, v1}, Lorg/andengine/opengl/shader/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public static getInstance()Lorg/andengine/opengl/shader/PositionColorShaderProgram;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lorg/andengine/opengl/shader/PositionColorShaderProgram;->INSTANCE:Lorg/andengine/opengl/shader/PositionColorShaderProgram;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lorg/andengine/opengl/shader/PositionColorShaderProgram;

    invoke-direct {v0}, Lorg/andengine/opengl/shader/PositionColorShaderProgram;-><init>()V

    sput-object v0, Lorg/andengine/opengl/shader/PositionColorShaderProgram;->INSTANCE:Lorg/andengine/opengl/shader/PositionColorShaderProgram;

    .line 58
    :cond_0
    sget-object v0, Lorg/andengine/opengl/shader/PositionColorShaderProgram;->INSTANCE:Lorg/andengine/opengl/shader/PositionColorShaderProgram;

    return-object v0
.end method


# virtual methods
.method public bind(Lorg/andengine/opengl/util/GLState;Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;)V
    .locals 4
    .parameter "pGLState"
    .parameter "pVertexBufferObjectAttributes"

    .prologue
    const/4 v3, 0x0

    .line 81
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 83
    invoke-super {p0, p1, p2}, Lorg/andengine/opengl/shader/ShaderProgram;->bind(Lorg/andengine/opengl/util/GLState;Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;)V

    .line 85
    sget v0, Lorg/andengine/opengl/shader/PositionColorShaderProgram;->sUniformModelViewPositionMatrixLocation:I

    const/4 v1, 0x1

    invoke-virtual {p1}, Lorg/andengine/opengl/util/GLState;->getModelViewProjectionGLMatrix()[F

    move-result-object v2

    invoke-static {v0, v1, v3, v2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 86
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
    .line 71
    iget v0, p0, Lorg/andengine/opengl/shader/PositionColorShaderProgram;->mProgramID:I

    const/4 v1, 0x0

    const-string v2, "a_position"

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 72
    iget v0, p0, Lorg/andengine/opengl/shader/PositionColorShaderProgram;->mProgramID:I

    const/4 v1, 0x1

    const-string v2, "a_color"

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 74
    invoke-super {p0, p1}, Lorg/andengine/opengl/shader/ShaderProgram;->link(Lorg/andengine/opengl/util/GLState;)V

    .line 76
    const-string v0, "u_modelViewProjectionMatrix"

    invoke-virtual {p0, v0}, Lorg/andengine/opengl/shader/PositionColorShaderProgram;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/andengine/opengl/shader/PositionColorShaderProgram;->sUniformModelViewPositionMatrixLocation:I

    .line 77
    return-void
.end method

.method public unbind(Lorg/andengine/opengl/util/GLState;)V
    .locals 1
    .parameter "pGLState"

    .prologue
    .line 90
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 92
    invoke-super {p0, p1}, Lorg/andengine/opengl/shader/ShaderProgram;->unbind(Lorg/andengine/opengl/util/GLState;)V

    .line 93
    return-void
.end method
