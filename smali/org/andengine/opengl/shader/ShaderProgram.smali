.class public Lorg/andengine/opengl/shader/ShaderProgram;
.super Ljava/lang/Object;
.source "ShaderProgram.java"


# static fields
.field private static final HARDWAREID_CONTAINER:[I = null

.field private static final LENGTH_CONTAINER:[I = null

.field private static final NAME_CONTAINER:[B = null

.field private static final NAME_CONTAINER_SIZE:I = 0x40

.field private static final PARAMETERS_CONTAINER:[I

.field private static final SIZE_CONTAINER:[I

.field private static final TYPE_CONTAINER:[I


# instance fields
.field protected final mAttributeLocations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mCompiled:Z

.field protected final mFragmentShaderSource:Lorg/andengine/opengl/shader/source/IShaderSource;

.field protected mProgramID:I

.field protected final mUniformLocations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final mVertexShaderSource:Lorg/andengine/opengl/shader/source/IShaderSource;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 29
    new-array v0, v1, [I

    sput-object v0, Lorg/andengine/opengl/shader/ShaderProgram;->HARDWAREID_CONTAINER:[I

    .line 30
    new-array v0, v1, [I

    sput-object v0, Lorg/andengine/opengl/shader/ShaderProgram;->PARAMETERS_CONTAINER:[I

    .line 31
    new-array v0, v1, [I

    sput-object v0, Lorg/andengine/opengl/shader/ShaderProgram;->LENGTH_CONTAINER:[I

    .line 32
    new-array v0, v1, [I

    sput-object v0, Lorg/andengine/opengl/shader/ShaderProgram;->SIZE_CONTAINER:[I

    .line 33
    new-array v0, v1, [I

    sput-object v0, Lorg/andengine/opengl/shader/ShaderProgram;->TYPE_CONTAINER:[I

    .line 35
    const/16 v0, 0x40

    new-array v0, v0, [B

    sput-object v0, Lorg/andengine/opengl/shader/ShaderProgram;->NAME_CONTAINER:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "pVertexShaderSource"
    .parameter "pFragmentShaderSource"

    .prologue
    .line 56
    new-instance v0, Lorg/andengine/opengl/shader/source/StringShaderSource;

    invoke-direct {v0, p1}, Lorg/andengine/opengl/shader/source/StringShaderSource;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/andengine/opengl/shader/source/StringShaderSource;

    invoke-direct {v1, p2}, Lorg/andengine/opengl/shader/source/StringShaderSource;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lorg/andengine/opengl/shader/ShaderProgram;-><init>(Lorg/andengine/opengl/shader/source/IShaderSource;Lorg/andengine/opengl/shader/source/IShaderSource;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/shader/source/IShaderSource;Lorg/andengine/opengl/shader/source/IShaderSource;)V
    .locals 1
    .parameter "pVertexShaderSource"
    .parameter "pFragmentShaderSource"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lorg/andengine/opengl/shader/ShaderProgram;->mProgramID:I

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/andengine/opengl/shader/ShaderProgram;->mUniformLocations:Ljava/util/HashMap;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/andengine/opengl/shader/ShaderProgram;->mAttributeLocations:Ljava/util/HashMap;

    .line 60
    iput-object p1, p0, Lorg/andengine/opengl/shader/ShaderProgram;->mVertexShaderSource:Lorg/andengine/opengl/shader/source/IShaderSource;

    .line 61
    iput-object p2, p0, Lorg/andengine/opengl/shader/ShaderProgram;->mFragmentShaderSource:Lorg/andengine/opengl/shader/source/IShaderSource;

    .line 62
    return-void
.end method

.method private static compileShader(Ljava/lang/String;I)I
    .locals 4
    .parameter "pSource"
    .parameter "pType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/opengl/shader/exception/ShaderProgramException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 177
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    .line 178
    .local v0, shaderID:I
    if-nez v0, :cond_0

    .line 179
    new-instance v1, Lorg/andengine/opengl/shader/exception/ShaderProgramException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not create Shader of type: \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x22

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/andengine/opengl/shader/exception/ShaderProgramException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 182
    :cond_0
    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 183
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 185
    const v1, 0x8b81

    sget-object v2, Lorg/andengine/opengl/shader/ShaderProgram;->HARDWAREID_CONTAINER:[I

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 186
    sget-object v1, Lorg/andengine/opengl/shader/ShaderProgram;->HARDWAREID_CONTAINER:[I

    aget v1, v1, v3

    if-nez v1, :cond_1

    .line 187
    new-instance v1, Lorg/andengine/opengl/shader/exception/ShaderProgramCompileException;

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lorg/andengine/opengl/shader/exception/ShaderProgramCompileException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 189
    :cond_1
    return v0
.end method

.method private initAttributeLocations()V
    .locals 15
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Lorg/andengine/opengl/shader/ShaderProgram;->mAttributeLocations:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 240
    sget-object v0, Lorg/andengine/opengl/shader/ShaderProgram;->PARAMETERS_CONTAINER:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v0, v2

    .line 241
    iget v0, p0, Lorg/andengine/opengl/shader/ShaderProgram;->mProgramID:I

    const v2, 0x8b89

    sget-object v3, Lorg/andengine/opengl/shader/ShaderProgram;->PARAMETERS_CONTAINER:[I

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 242
    sget-object v0, Lorg/andengine/opengl/shader/ShaderProgram;->PARAMETERS_CONTAINER:[I

    const/4 v2, 0x0

    aget v14, v0, v2

    .line 244
    .local v14, numAttributes:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v14, :cond_0

    .line 276
    return-void

    .line 245
    :cond_0
    iget v0, p0, Lorg/andengine/opengl/shader/ShaderProgram;->mProgramID:I

    const/16 v2, 0x40

    sget-object v3, Lorg/andengine/opengl/shader/ShaderProgram;->LENGTH_CONTAINER:[I

    const/4 v4, 0x0

    sget-object v5, Lorg/andengine/opengl/shader/ShaderProgram;->SIZE_CONTAINER:[I

    const/4 v6, 0x0

    sget-object v7, Lorg/andengine/opengl/shader/ShaderProgram;->TYPE_CONTAINER:[I

    const/4 v8, 0x0

    sget-object v9, Lorg/andengine/opengl/shader/ShaderProgram;->NAME_CONTAINER:[B

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Landroid/opengl/GLES20;->glGetActiveAttrib(III[II[II[II[BI)V

    .line 247
    sget-object v0, Lorg/andengine/opengl/shader/ShaderProgram;->LENGTH_CONTAINER:[I

    const/4 v2, 0x0

    aget v11, v0, v2

    .line 250
    .local v11, length:I
    if-nez v11, :cond_1

    .line 251
    :goto_1
    const/16 v0, 0x40

    if-ge v11, v0, :cond_1

    sget-object v0, Lorg/andengine/opengl/shader/ShaderProgram;->NAME_CONTAINER:[B

    aget-byte v0, v0, v11

    if-nez v0, :cond_3

    .line 256
    :cond_1
    new-instance v13, Ljava/lang/String;

    sget-object v0, Lorg/andengine/opengl/shader/ShaderProgram;->NAME_CONTAINER:[B

    const/4 v2, 0x0

    invoke-direct {v13, v0, v2, v11}, Ljava/lang/String;-><init>([BII)V

    .line 257
    .local v13, name:Ljava/lang/String;
    iget v0, p0, Lorg/andengine/opengl/shader/ShaderProgram;->mProgramID:I

    invoke-static {v0, v13}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v12

    .line 259
    .local v12, location:I
    const/4 v0, -0x1

    if-ne v12, v0, :cond_5

    .line 261
    const/4 v11, 0x0

    .line 262
    :goto_2
    const/16 v0, 0x40

    if-ge v11, v0, :cond_2

    sget-object v0, Lorg/andengine/opengl/shader/ShaderProgram;->NAME_CONTAINER:[B

    aget-byte v0, v0, v11

    if-nez v0, :cond_4

    .line 266
    :cond_2
    new-instance v13, Ljava/lang/String;

    .end local v13           #name:Ljava/lang/String;
    sget-object v0, Lorg/andengine/opengl/shader/ShaderProgram;->NAME_CONTAINER:[B

    const/4 v2, 0x0

    invoke-direct {v13, v0, v2, v11}, Ljava/lang/String;-><init>([BII)V

    .line 267
    .restart local v13       #name:Ljava/lang/String;
    iget v0, p0, Lorg/andengine/opengl/shader/ShaderProgram;->mProgramID:I

    invoke-static {v0, v13}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v12

    .line 269
    const/4 v0, -0x1

    if-ne v12, v0, :cond_5

    .line 270
    new-instance v0, Lorg/andengine/opengl/shader/exception/ShaderProgramLinkException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid location for attribute: \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/andengine/opengl/shader/exception/ShaderProgramLinkException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    .end local v12           #location:I
    .end local v13           #name:Ljava/lang/String;
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 263
    .restart local v12       #location:I
    .restart local v13       #name:Ljava/lang/String;
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 274
    :cond_5
    iget-object v0, p0, Lorg/andengine/opengl/shader/ShaderProgram;->mAttributeLocations:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private initUniformLocations()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/opengl/shader/exception/ShaderProgramLinkException;
        }
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lorg/andengine/opengl/shader/ShaderProgram;->mUniformLocations:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 195
    sget-object v0, Lorg/andengine/opengl/shader/ShaderProgram;->PARAMETERS_CONTAINER:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v0, v2

    .line 196
    iget v0, p0, Lorg/andengine/opengl/shader/ShaderProgram;->mProgramID:I

    const v2, 0x8b86

    sget-object v3, Lorg/andengine/opengl/shader/ShaderProgram;->PARAMETERS_CONTAINER:[I

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 197
    sget-object v0, Lorg/andengine/opengl/shader/ShaderProgram;->PARAMETERS_CONTAINER:[I

    const/4 v2, 0x0

    aget v14, v0, v2

    .line 199
    .local v14, numUniforms:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v14, :cond_0

    .line 231
    return-void

    .line 200
    :cond_0
    iget v0, p0, Lorg/andengine/opengl/shader/ShaderProgram;->mProgramID:I

    const/16 v2, 0x40

    sget-object v3, Lorg/andengine/opengl/shader/ShaderProgram;->LENGTH_CONTAINER:[I

    const/4 v4, 0x0

    sget-object v5, Lorg/andengine/opengl/shader/ShaderProgram;->SIZE_CONTAINER:[I

    const/4 v6, 0x0

    sget-object v7, Lorg/andengine/opengl/shader/ShaderProgram;->TYPE_CONTAINER:[I

    const/4 v8, 0x0

    sget-object v9, Lorg/andengine/opengl/shader/ShaderProgram;->NAME_CONTAINER:[B

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Landroid/opengl/GLES20;->glGetActiveUniform(III[II[II[II[BI)V

    .line 202
    sget-object v0, Lorg/andengine/opengl/shader/ShaderProgram;->LENGTH_CONTAINER:[I

    const/4 v2, 0x0

    aget v11, v0, v2

    .line 205
    .local v11, length:I
    if-nez v11, :cond_1

    .line 206
    :goto_1
    const/16 v0, 0x40

    if-ge v11, v0, :cond_1

    sget-object v0, Lorg/andengine/opengl/shader/ShaderProgram;->NAME_CONTAINER:[B

    aget-byte v0, v0, v11

    if-nez v0, :cond_3

    .line 211
    :cond_1
    new-instance v13, Ljava/lang/String;

    sget-object v0, Lorg/andengine/opengl/shader/ShaderProgram;->NAME_CONTAINER:[B

    const/4 v2, 0x0

    invoke-direct {v13, v0, v2, v11}, Ljava/lang/String;-><init>([BII)V

    .line 212
    .local v13, name:Ljava/lang/String;
    iget v0, p0, Lorg/andengine/opengl/shader/ShaderProgram;->mProgramID:I

    invoke-static {v0, v13}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v12

    .line 214
    .local v12, location:I
    const/4 v0, -0x1

    if-ne v12, v0, :cond_5

    .line 216
    const/4 v11, 0x0

    .line 217
    :goto_2
    const/16 v0, 0x40

    if-ge v11, v0, :cond_2

    sget-object v0, Lorg/andengine/opengl/shader/ShaderProgram;->NAME_CONTAINER:[B

    aget-byte v0, v0, v11

    if-nez v0, :cond_4

    .line 221
    :cond_2
    new-instance v13, Ljava/lang/String;

    .end local v13           #name:Ljava/lang/String;
    sget-object v0, Lorg/andengine/opengl/shader/ShaderProgram;->NAME_CONTAINER:[B

    const/4 v2, 0x0

    invoke-direct {v13, v0, v2, v11}, Ljava/lang/String;-><init>([BII)V

    .line 222
    .restart local v13       #name:Ljava/lang/String;
    iget v0, p0, Lorg/andengine/opengl/shader/ShaderProgram;->mProgramID:I

    invoke-static {v0, v13}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v12

    .line 224
    const/4 v0, -0x1

    if-ne v12, v0, :cond_5

    .line 225
    new-instance v0, Lorg/andengine/opengl/shader/exception/ShaderProgramLinkException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid location for uniform: \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/andengine/opengl/shader/exception/ShaderProgramLinkException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    .end local v12           #location:I
    .end local v13           #name:Ljava/lang/String;
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 218
    .restart local v12       #location:I
    .restart local v13       #name:Ljava/lang/String;
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 229
    :cond_5
    iget-object v0, p0, Lorg/andengine/opengl/shader/ShaderProgram;->mUniformLocations:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public bind(Lorg/andengine/opengl/util/GLState;Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;)V
    .locals 1
    .parameter "pGLState"
    .parameter "pVertexBufferObjectAttributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/opengl/shader/exception/ShaderProgramException;
        }
    .end annotation

    .prologue
    .line 121
    iget-boolean v0, p0, Lorg/andengine/opengl/shader/ShaderProgram;->mCompiled:Z

    if-nez v0, :cond_0

    .line 122
    invoke-virtual {p0, p1}, Lorg/andengine/opengl/shader/ShaderProgram;->compile(Lorg/andengine/opengl/util/GLState;)V

    .line 124
    :cond_0
    iget v0, p0, Lorg/andengine/opengl/shader/ShaderProgram;->mProgramID:I

    invoke-virtual {p1, v0}, Lorg/andengine/opengl/util/GLState;->useProgram(I)V

    .line 126
    invoke-virtual {p2}, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;->glVertexAttribPointers()V

    .line 127
    return-void
.end method

.method protected compile(Lorg/andengine/opengl/util/GLState;)V
    .locals 8
    .parameter "pGLState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/opengl/shader/exception/ShaderProgramException;
        }
    .end annotation

    .prologue
    .line 142
    iget-object v5, p0, Lorg/andengine/opengl/shader/ShaderProgram;->mVertexShaderSource:Lorg/andengine/opengl/shader/source/IShaderSource;

    invoke-interface {v5, p1}, Lorg/andengine/opengl/shader/source/IShaderSource;->getShaderSource(Lorg/andengine/opengl/util/GLState;)Ljava/lang/String;

    move-result-object v4

    .line 143
    .local v4, vertexShaderSource:Ljava/lang/String;
    const v5, 0x8b31

    invoke-static {v4, v5}, Lorg/andengine/opengl/shader/ShaderProgram;->compileShader(Ljava/lang/String;I)I

    move-result v3

    .line 145
    .local v3, vertexShaderID:I
    iget-object v5, p0, Lorg/andengine/opengl/shader/ShaderProgram;->mFragmentShaderSource:Lorg/andengine/opengl/shader/source/IShaderSource;

    invoke-interface {v5, p1}, Lorg/andengine/opengl/shader/source/IShaderSource;->getShaderSource(Lorg/andengine/opengl/util/GLState;)Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, fragmentShaderSource:Ljava/lang/String;
    const v5, 0x8b30

    invoke-static {v2, v5}, Lorg/andengine/opengl/shader/ShaderProgram;->compileShader(Ljava/lang/String;I)I

    move-result v1

    .line 148
    .local v1, fragmentShaderID:I
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v5

    iput v5, p0, Lorg/andengine/opengl/shader/ShaderProgram;->mProgramID:I

    .line 149
    iget v5, p0, Lorg/andengine/opengl/shader/ShaderProgram;->mProgramID:I

    invoke-static {v5, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 150
    iget v5, p0, Lorg/andengine/opengl/shader/ShaderProgram;->mProgramID:I

    invoke-static {v5, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 153
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/andengine/opengl/shader/ShaderProgram;->link(Lorg/andengine/opengl/util/GLState;)V
    :try_end_0
    .catch Lorg/andengine/opengl/shader/exception/ShaderProgramLinkException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    invoke-static {v3}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 159
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 160
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, e:Lorg/andengine/opengl/shader/exception/ShaderProgramLinkException;
    new-instance v5, Lorg/andengine/opengl/shader/exception/ShaderProgramLinkException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "VertexShaderSource:\n##########################\n"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n##########################"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n\nFragmentShaderSource:\n##########################\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n##########################"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Lorg/andengine/opengl/shader/exception/ShaderProgramLinkException;-><init>(Ljava/lang/String;Lorg/andengine/opengl/shader/exception/ShaderProgramException;)V

    throw v5
.end method

.method public delete(Lorg/andengine/opengl/util/GLState;)V
    .locals 1
    .parameter "pGLState"

    .prologue
    .line 134
    iget-boolean v0, p0, Lorg/andengine/opengl/shader/ShaderProgram;->mCompiled:Z

    if-eqz v0, :cond_0

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/andengine/opengl/shader/ShaderProgram;->mCompiled:Z

    .line 136
    iget v0, p0, Lorg/andengine/opengl/shader/ShaderProgram;->mProgramID:I

    invoke-virtual {p1, v0}, Lorg/andengine/opengl/util/GLState;->deleteProgram(I)V

    .line 137
    const/4 v0, -0x1

    iput v0, p0, Lorg/andengine/opengl/shader/ShaderProgram;->mProgramID:I

    .line 139
    :cond_0
    return-void
.end method

.method public getAttributeLocation(Ljava/lang/String;)I
    .locals 4
    .parameter "pAttributeName"

    .prologue
    .line 77
    iget-object v1, p0, Lorg/andengine/opengl/shader/ShaderProgram;->mAttributeLocations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 78
    .local v0, location:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 81
    :cond_0
    new-instance v1, Lorg/andengine/opengl/shader/exception/ShaderProgramException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected attribute: \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'. Existing attributes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/andengine/opengl/shader/ShaderProgram;->mAttributeLocations:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/andengine/opengl/shader/exception/ShaderProgramException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAttributeLocationOptional(Ljava/lang/String;)I
    .locals 2
    .parameter "pAttributeName"

    .prologue
    .line 86
    iget-object v1, p0, Lorg/andengine/opengl/shader/ShaderProgram;->mAttributeLocations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 87
    .local v0, location:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 90
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getUniformLocation(Ljava/lang/String;)I
    .locals 4
    .parameter "pUniformName"

    .prologue
    .line 95
    iget-object v1, p0, Lorg/andengine/opengl/shader/ShaderProgram;->mUniformLocations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 96
    .local v0, location:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 99
    :cond_0
    new-instance v1, Lorg/andengine/opengl/shader/exception/ShaderProgramException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected uniform: \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'. Existing uniforms: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/andengine/opengl/shader/ShaderProgram;->mUniformLocations:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/andengine/opengl/shader/exception/ShaderProgramException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getUniformLocationOptional(Ljava/lang/String;)I
    .locals 2
    .parameter "pUniformName"

    .prologue
    .line 104
    iget-object v1, p0, Lorg/andengine/opengl/shader/ShaderProgram;->mUniformLocations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 105
    .local v0, location:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 108
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public isCompiled()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lorg/andengine/opengl/shader/ShaderProgram;->mCompiled:Z

    return v0
.end method

.method protected link(Lorg/andengine/opengl/util/GLState;)V
    .locals 4
    .parameter "pGLState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/opengl/shader/exception/ShaderProgramLinkException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 163
    iget v0, p0, Lorg/andengine/opengl/shader/ShaderProgram;->mProgramID:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 165
    iget v0, p0, Lorg/andengine/opengl/shader/ShaderProgram;->mProgramID:I

    const v1, 0x8b82

    sget-object v2, Lorg/andengine/opengl/shader/ShaderProgram;->HARDWAREID_CONTAINER:[I

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 166
    sget-object v0, Lorg/andengine/opengl/shader/ShaderProgram;->HARDWAREID_CONTAINER:[I

    aget v0, v0, v3

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Lorg/andengine/opengl/shader/exception/ShaderProgramLinkException;

    iget v1, p0, Lorg/andengine/opengl/shader/ShaderProgram;->mProgramID:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/andengine/opengl/shader/exception/ShaderProgramLinkException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_0
    invoke-direct {p0}, Lorg/andengine/opengl/shader/ShaderProgram;->initAttributeLocations()V

    .line 171
    invoke-direct {p0}, Lorg/andengine/opengl/shader/ShaderProgram;->initUniformLocations()V

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/andengine/opengl/shader/ShaderProgram;->mCompiled:Z

    .line 174
    return-void
.end method

.method public setCompiled(Z)V
    .locals 0
    .parameter "pCompiled"

    .prologue
    .line 73
    iput-boolean p1, p0, Lorg/andengine/opengl/shader/ShaderProgram;->mCompiled:Z

    .line 74
    return-void
.end method

.method public setTexture(Ljava/lang/String;I)V
    .locals 1
    .parameter "pUniformName"
    .parameter "pTexture"

    .prologue
    .line 338
    invoke-virtual {p0, p1}, Lorg/andengine/opengl/shader/ShaderProgram;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 339
    return-void
.end method

.method public setTextureOptional(Ljava/lang/String;I)V
    .locals 2
    .parameter "pUniformName"
    .parameter "pTexture"

    .prologue
    .line 346
    invoke-virtual {p0, p1}, Lorg/andengine/opengl/shader/ShaderProgram;->getUniformLocationOptional(Ljava/lang/String;)I

    move-result v0

    .line 347
    .local v0, location:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 348
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 350
    :cond_0
    return-void
.end method

.method public setUniform(Ljava/lang/String;F)V
    .locals 1
    .parameter "pUniformName"
    .parameter "pX"

    .prologue
    .line 290
    invoke-virtual {p0, p1}, Lorg/andengine/opengl/shader/ShaderProgram;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 291
    return-void
.end method

.method public setUniform(Ljava/lang/String;FF)V
    .locals 1
    .parameter "pUniformName"
    .parameter "pX"
    .parameter "pY"

    .prologue
    .line 301
    invoke-virtual {p0, p1}, Lorg/andengine/opengl/shader/ShaderProgram;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, p2, p3}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 302
    return-void
.end method

.method public setUniform(Ljava/lang/String;FFF)V
    .locals 1
    .parameter "pUniformName"
    .parameter "pX"
    .parameter "pY"
    .parameter "pZ"

    .prologue
    .line 312
    invoke-virtual {p0, p1}, Lorg/andengine/opengl/shader/ShaderProgram;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, p2, p3, p4}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    .line 313
    return-void
.end method

.method public setUniform(Ljava/lang/String;FFFF)V
    .locals 1
    .parameter "pUniformName"
    .parameter "pX"
    .parameter "pY"
    .parameter "pZ"
    .parameter "pW"

    .prologue
    .line 323
    invoke-virtual {p0, p1}, Lorg/andengine/opengl/shader/ShaderProgram;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, p2, p3, p4, p5}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 324
    return-void
.end method

.method public setUniform(Ljava/lang/String;[F)V
    .locals 3
    .parameter "pUniformName"
    .parameter "pGLMatrix"

    .prologue
    const/4 v2, 0x0

    .line 279
    invoke-virtual {p0, p1}, Lorg/andengine/opengl/shader/ShaderProgram;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v2, p2, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 280
    return-void
.end method

.method public setUniformOptional(Ljava/lang/String;F)V
    .locals 2
    .parameter "pUniformName"
    .parameter "pX"

    .prologue
    .line 294
    invoke-virtual {p0, p1}, Lorg/andengine/opengl/shader/ShaderProgram;->getUniformLocationOptional(Ljava/lang/String;)I

    move-result v0

    .line 295
    .local v0, location:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 296
    invoke-virtual {p0, p1}, Lorg/andengine/opengl/shader/ShaderProgram;->getUniformLocationOptional(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 298
    :cond_0
    return-void
.end method

.method public setUniformOptional(Ljava/lang/String;FF)V
    .locals 2
    .parameter "pUniformName"
    .parameter "pX"
    .parameter "pY"

    .prologue
    .line 305
    invoke-virtual {p0, p1}, Lorg/andengine/opengl/shader/ShaderProgram;->getUniformLocationOptional(Ljava/lang/String;)I

    move-result v0

    .line 306
    .local v0, location:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 307
    invoke-virtual {p0, p1}, Lorg/andengine/opengl/shader/ShaderProgram;->getUniformLocationOptional(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, p2, p3}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 309
    :cond_0
    return-void
.end method

.method public setUniformOptional(Ljava/lang/String;FFF)V
    .locals 2
    .parameter "pUniformName"
    .parameter "pX"
    .parameter "pY"
    .parameter "pZ"

    .prologue
    .line 316
    invoke-virtual {p0, p1}, Lorg/andengine/opengl/shader/ShaderProgram;->getUniformLocationOptional(Ljava/lang/String;)I

    move-result v0

    .line 317
    .local v0, location:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 318
    invoke-virtual {p0, p1}, Lorg/andengine/opengl/shader/ShaderProgram;->getUniformLocationOptional(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, p2, p3, p4}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    .line 320
    :cond_0
    return-void
.end method

.method public setUniformOptional(Ljava/lang/String;FFFF)V
    .locals 2
    .parameter "pUniformName"
    .parameter "pX"
    .parameter "pY"
    .parameter "pZ"
    .parameter "pW"

    .prologue
    .line 327
    invoke-virtual {p0, p1}, Lorg/andengine/opengl/shader/ShaderProgram;->getUniformLocationOptional(Ljava/lang/String;)I

    move-result v0

    .line 328
    .local v0, location:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 329
    invoke-virtual {p0, p1}, Lorg/andengine/opengl/shader/ShaderProgram;->getUniformLocationOptional(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, p2, p3, p4, p5}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 331
    :cond_0
    return-void
.end method

.method public setUniformOptional(Ljava/lang/String;[F)V
    .locals 4
    .parameter "pUniformName"
    .parameter "pGLMatrix"

    .prologue
    const/4 v3, 0x0

    .line 283
    invoke-virtual {p0, p1}, Lorg/andengine/opengl/shader/ShaderProgram;->getUniformLocationOptional(Ljava/lang/String;)I

    move-result v0

    .line 284
    .local v0, location:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 285
    invoke-virtual {p0, p1}, Lorg/andengine/opengl/shader/ShaderProgram;->getUniformLocationOptional(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v1, v2, v3, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 287
    :cond_0
    return-void
.end method

.method public unbind(Lorg/andengine/opengl/util/GLState;)V
    .locals 0
    .parameter "pGLState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/opengl/shader/exception/ShaderProgramException;
        }
    .end annotation

    .prologue
    .line 131
    return-void
.end method
