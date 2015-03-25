.class public Lorg/andengine/opengl/texture/TextureWarmUpVertexBufferObject;
.super Lorg/andengine/opengl/vbo/VertexBufferObject;
.source "TextureWarmUpVertexBufferObject.java"


# static fields
.field public static final TEXTURECOORDINATES_INDEX_U:I = 0x2

.field public static final TEXTURECOORDINATES_INDEX_V:I = 0x3

.field public static final VERTEXBUFFEROBJECTATTRIBUTES_DEFAULT:Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes; = null

.field public static final VERTEXBUFFEROBJECT_SIZE:I = 0xc

.field public static final VERTEX_INDEX_X:I = 0x0

.field public static final VERTEX_INDEX_Y:I = 0x1

.field public static final VERTEX_SIZE:I = 0x4

.field public static final VERTICES_PER_VERTEXBUFFEROBJECT_SIZE:I = 0x3


# instance fields
.field protected final mFloatBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/16 v4, 0x1406

    const/4 v3, 0x2

    const/4 v1, 0x0

    .line 36
    new-instance v0, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;

    invoke-direct {v0, v3}, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;-><init>(I)V

    .line 37
    const-string v2, "a_position"

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;->add(ILjava/lang/String;IIZ)Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;

    move-result-object v5

    .line 38
    const/4 v6, 0x3

    const-string v7, "a_textureCoordinates"

    move v8, v3

    move v9, v4

    move v10, v1

    invoke-virtual/range {v5 .. v10}, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;->add(ILjava/lang/String;IIZ)Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;->build()Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;

    move-result-object v0

    .line 36
    sput-object v0, Lorg/andengine/opengl/texture/TextureWarmUpVertexBufferObject;->VERTEXBUFFEROBJECTATTRIBUTES_DEFAULT:Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/high16 v7, 0x3f80

    const/4 v6, 0x0

    .line 52
    const/4 v1, 0x0

    const/16 v2, 0xc

    sget-object v3, Lorg/andengine/opengl/vbo/DrawType;->STATIC:Lorg/andengine/opengl/vbo/DrawType;

    sget-object v5, Lorg/andengine/opengl/texture/TextureWarmUpVertexBufferObject;->VERTEXBUFFEROBJECTATTRIBUTES_DEFAULT:Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/andengine/opengl/vbo/VertexBufferObject;-><init>(Lorg/andengine/opengl/vbo/VertexBufferObjectManager;ILorg/andengine/opengl/vbo/DrawType;ZLorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;)V

    .line 54
    iget-object v0, p0, Lorg/andengine/opengl/texture/TextureWarmUpVertexBufferObject;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/andengine/opengl/texture/TextureWarmUpVertexBufferObject;->mFloatBuffer:Ljava/nio/FloatBuffer;

    .line 56
    iget-object v0, p0, Lorg/andengine/opengl/texture/TextureWarmUpVertexBufferObject;->mFloatBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 57
    iget-object v0, p0, Lorg/andengine/opengl/texture/TextureWarmUpVertexBufferObject;->mFloatBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v4, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 58
    iget-object v0, p0, Lorg/andengine/opengl/texture/TextureWarmUpVertexBufferObject;->mFloatBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 59
    iget-object v0, p0, Lorg/andengine/opengl/texture/TextureWarmUpVertexBufferObject;->mFloatBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 61
    iget-object v0, p0, Lorg/andengine/opengl/texture/TextureWarmUpVertexBufferObject;->mFloatBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 62
    iget-object v0, p0, Lorg/andengine/opengl/texture/TextureWarmUpVertexBufferObject;->mFloatBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 63
    iget-object v0, p0, Lorg/andengine/opengl/texture/TextureWarmUpVertexBufferObject;->mFloatBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 64
    iget-object v0, p0, Lorg/andengine/opengl/texture/TextureWarmUpVertexBufferObject;->mFloatBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 66
    iget-object v0, p0, Lorg/andengine/opengl/texture/TextureWarmUpVertexBufferObject;->mFloatBuffer:Ljava/nio/FloatBuffer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 67
    iget-object v0, p0, Lorg/andengine/opengl/texture/TextureWarmUpVertexBufferObject;->mFloatBuffer:Ljava/nio/FloatBuffer;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 68
    iget-object v0, p0, Lorg/andengine/opengl/texture/TextureWarmUpVertexBufferObject;->mFloatBuffer:Ljava/nio/FloatBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 69
    iget-object v0, p0, Lorg/andengine/opengl/texture/TextureWarmUpVertexBufferObject;->mFloatBuffer:Ljava/nio/FloatBuffer;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 70
    return-void
.end method


# virtual methods
.method public getHeapMemoryByteSize()I
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public getNativeHeapMemoryByteSize()I
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lorg/andengine/opengl/texture/TextureWarmUpVertexBufferObject;->getByteCapacity()I

    move-result v0

    return v0
.end method

.method protected onBufferData()V
    .locals 4

    .prologue
    .line 92
    const v0, 0x8892

    iget-object v1, p0, Lorg/andengine/opengl/texture/TextureWarmUpVertexBufferObject;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    iget-object v2, p0, Lorg/andengine/opengl/texture/TextureWarmUpVertexBufferObject;->mByteBuffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Lorg/andengine/opengl/texture/TextureWarmUpVertexBufferObject;->mUsage:I

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 93
    return-void
.end method

.method public warmup(Lorg/andengine/opengl/util/GLState;Lorg/andengine/opengl/texture/ITexture;)V
    .locals 3
    .parameter "pGLState"
    .parameter "pTexture"

    .prologue
    const v2, 0x49742400

    const v1, 0x38d1b717

    .line 96
    invoke-interface {p2, p1}, Lorg/andengine/opengl/texture/ITexture;->bind(Lorg/andengine/opengl/util/GLState;)V

    .line 97
    invoke-static {}, Lorg/andengine/opengl/shader/PositionTextureCoordinatesShaderProgram;->getInstance()Lorg/andengine/opengl/shader/PositionTextureCoordinatesShaderProgram;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/andengine/opengl/texture/TextureWarmUpVertexBufferObject;->bind(Lorg/andengine/opengl/util/GLState;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 99
    invoke-virtual {p1}, Lorg/andengine/opengl/util/GLState;->pushModelViewGLMatrix()V

    .line 102
    invoke-virtual {p1}, Lorg/andengine/opengl/util/GLState;->loadModelViewGLMatrixIdentity()V

    .line 103
    const/4 v0, 0x0

    invoke-virtual {p1, v2, v2, v0}, Lorg/andengine/opengl/util/GLState;->translateModelViewGLMatrixf(FFF)V

    .line 104
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v1, v0}, Lorg/andengine/opengl/util/GLState;->scaleModelViewGLMatrixf(FFI)V

    .line 106
    const/4 v0, 0x4

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/andengine/opengl/texture/TextureWarmUpVertexBufferObject;->draw(II)V

    .line 108
    invoke-virtual {p1}, Lorg/andengine/opengl/util/GLState;->popModelViewGLMatrix()V

    .line 110
    invoke-static {}, Lorg/andengine/opengl/shader/PositionTextureCoordinatesShaderProgram;->getInstance()Lorg/andengine/opengl/shader/PositionTextureCoordinatesShaderProgram;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/andengine/opengl/texture/TextureWarmUpVertexBufferObject;->unbind(Lorg/andengine/opengl/util/GLState;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 111
    return-void
.end method
