.class public Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;
.super Ljava/lang/Object;
.source "VertexBufferObjectAttributesBuilder.java"


# static fields
.field private static final WORAROUND_GLES2_GLVERTEXATTRIBPOINTER_MISSING:Z


# instance fields
.field private mIndex:I

.field private mOffset:I

.field private final mVertexBufferObjectAttributes:[Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttribute;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/16 v0, 0x8

    invoke-static {v0}, Lorg/andengine/util/system/SystemUtils;->isAndroidVersionOrLower(I)Z

    move-result v0

    sput-boolean v0, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;->WORAROUND_GLES2_GLVERTEXATTRIBPOINTER_MISSING:Z

    .line 26
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "pCount"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-array v0, p1, [Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttribute;

    iput-object v0, p0, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;->mVertexBufferObjectAttributes:[Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttribute;

    .line 43
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/String;IIZ)Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;
    .locals 9
    .parameter "pLocation"
    .parameter "pName"
    .parameter "pSize"
    .parameter "pType"
    .parameter "pNormalized"

    .prologue
    .line 58
    sget-boolean v0, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;->WORAROUND_GLES2_GLVERTEXATTRIBPOINTER_MISSING:Z

    if-eqz v0, :cond_0

    .line 59
    iget-object v7, p0, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;->mVertexBufferObjectAttributes:[Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttribute;

    iget v8, p0, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;->mIndex:I

    new-instance v0, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributeFix;

    iget v6, p0, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;->mOffset:I

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributeFix;-><init>(ILjava/lang/String;IIZI)V

    aput-object v0, v7, v8

    .line 64
    :goto_0
    sparse-switch p4, :sswitch_data_0

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected pType: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    iget-object v7, p0, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;->mVertexBufferObjectAttributes:[Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttribute;

    iget v8, p0, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;->mIndex:I

    new-instance v0, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttribute;

    iget v6, p0, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;->mOffset:I

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttribute;-><init>(ILjava/lang/String;IIZI)V

    aput-object v0, v7, v8

    goto :goto_0

    .line 66
    :sswitch_0
    iget v0, p0, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;->mOffset:I

    mul-int/lit8 v1, p3, 0x4

    add-int/2addr v0, v1

    iput v0, p0, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;->mOffset:I

    .line 75
    :goto_1
    iget v0, p0, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;->mIndex:I

    .line 77
    return-object p0

    .line 69
    :sswitch_1
    iget v0, p0, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;->mOffset:I

    mul-int/lit8 v1, p3, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;->mOffset:I

    goto :goto_1

    .line 64
    nop

    :sswitch_data_0
    .sparse-switch
        0x1401 -> :sswitch_1
        0x1406 -> :sswitch_0
    .end sparse-switch
.end method

.method public build()Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;
    .locals 3

    .prologue
    .line 81
    iget v0, p0, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;->mIndex:I

    iget-object v1, p0, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;->mVertexBufferObjectAttributes:[Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttribute;

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 82
    new-instance v0, Lorg/andengine/util/exception/AndEngineRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not enough "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttribute;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "s added to this "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/andengine/util/exception/AndEngineRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    new-instance v0, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;

    iget v1, p0, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;->mOffset:I

    iget-object v2, p0, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributesBuilder;->mVertexBufferObjectAttributes:[Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttribute;

    invoke-direct {v0, v1, v2}, Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;-><init>(I[Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttribute;)V

    return-object v0
.end method
