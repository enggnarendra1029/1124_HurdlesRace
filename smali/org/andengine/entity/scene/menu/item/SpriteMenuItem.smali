.class public Lorg/andengine/entity/scene/menu/item/SpriteMenuItem;
.super Lorg/andengine/entity/sprite/Sprite;
.source "SpriteMenuItem.java"

# interfaces
.implements Lorg/andengine/entity/scene/menu/item/IMenuItem;


# instance fields
.field private final mID:I


# direct methods
.method public constructor <init>(IFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/entity/sprite/vbo/ISpriteVertexBufferObject;)V
    .locals 7
    .parameter "pID"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pTextureRegion"
    .parameter "pSpriteVertexBufferObject"

    .prologue
    const/4 v1, 0x0

    .line 93
    move-object v0, p0

    move v2, v1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/andengine/entity/sprite/Sprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/entity/sprite/vbo/ISpriteVertexBufferObject;)V

    .line 95
    iput p1, p0, Lorg/andengine/entity/scene/menu/item/SpriteMenuItem;->mID:I

    .line 96
    return-void
.end method

.method public constructor <init>(IFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/entity/sprite/vbo/ISpriteVertexBufferObject;Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 8
    .parameter "pID"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pTextureRegion"
    .parameter "pSpriteVertexBufferObject"
    .parameter "pShaderProgram"

    .prologue
    const/4 v1, 0x0

    .line 99
    move-object v0, p0

    move v2, v1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/andengine/entity/sprite/Sprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/entity/sprite/vbo/ISpriteVertexBufferObject;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 101
    iput p1, p0, Lorg/andengine/entity/scene/menu/item/SpriteMenuItem;->mID:I

    .line 102
    return-void
.end method

.method public constructor <init>(IFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;)V
    .locals 7
    .parameter "pID"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pTextureRegion"
    .parameter "pVertexBufferObjectManager"

    .prologue
    const/4 v1, 0x0

    .line 69
    move-object v0, p0

    move v2, v1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/andengine/entity/sprite/Sprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;)V

    .line 71
    iput p1, p0, Lorg/andengine/entity/scene/menu/item/SpriteMenuItem;->mID:I

    .line 72
    return-void
.end method

.method public constructor <init>(IFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 8
    .parameter "pID"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pTextureRegion"
    .parameter "pVertexBufferObjectManager"
    .parameter "pShaderProgram"

    .prologue
    const/4 v1, 0x0

    .line 75
    move-object v0, p0

    move v2, v1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/andengine/entity/sprite/Sprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 77
    iput p1, p0, Lorg/andengine/entity/scene/menu/item/SpriteMenuItem;->mID:I

    .line 78
    return-void
.end method

.method public constructor <init>(IFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V
    .locals 8
    .parameter "pID"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pTextureRegion"
    .parameter "pVertexBufferObjectManager"
    .parameter "pDrawType"

    .prologue
    const/4 v1, 0x0

    .line 81
    move-object v0, p0

    move v2, v1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/andengine/entity/sprite/Sprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V

    .line 83
    iput p1, p0, Lorg/andengine/entity/scene/menu/item/SpriteMenuItem;->mID:I

    .line 84
    return-void
.end method

.method public constructor <init>(IFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 9
    .parameter "pID"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pTextureRegion"
    .parameter "pVertexBufferObjectManager"
    .parameter "pDrawType"
    .parameter "pShaderProgram"

    .prologue
    .line 87
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/andengine/entity/sprite/Sprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 89
    iput p1, p0, Lorg/andengine/entity/scene/menu/item/SpriteMenuItem;->mID:I

    .line 90
    return-void
.end method

.method public constructor <init>(ILorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/entity/sprite/vbo/ISpriteVertexBufferObject;)V
    .locals 1
    .parameter "pID"
    .parameter "pTextureRegion"
    .parameter "pVertexBufferObject"

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, v0, v0, p2, p3}, Lorg/andengine/entity/sprite/Sprite;-><init>(FFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/entity/sprite/vbo/ISpriteVertexBufferObject;)V

    .line 59
    iput p1, p0, Lorg/andengine/entity/scene/menu/item/SpriteMenuItem;->mID:I

    .line 60
    return-void
.end method

.method public constructor <init>(ILorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/entity/sprite/vbo/ISpriteVertexBufferObject;Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 6
    .parameter "pID"
    .parameter "pTextureRegion"
    .parameter "pVertexBufferObject"
    .parameter "pShaderProgram"

    .prologue
    const/4 v1, 0x0

    .line 63
    move-object v0, p0

    move v2, v1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/andengine/entity/sprite/Sprite;-><init>(FFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/entity/sprite/vbo/ISpriteVertexBufferObject;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 65
    iput p1, p0, Lorg/andengine/entity/scene/menu/item/SpriteMenuItem;->mID:I

    .line 66
    return-void
.end method

.method public constructor <init>(ILorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;)V
    .locals 1
    .parameter "pID"
    .parameter "pTextureRegion"
    .parameter "pVertexBufferObjectManager"

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, v0, v0, p2, p3}, Lorg/andengine/entity/sprite/Sprite;-><init>(FFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;)V

    .line 35
    iput p1, p0, Lorg/andengine/entity/scene/menu/item/SpriteMenuItem;->mID:I

    .line 36
    return-void
.end method

.method public constructor <init>(ILorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 6
    .parameter "pID"
    .parameter "pTextureRegion"
    .parameter "pVertexBufferObjectManager"
    .parameter "pShaderProgram"

    .prologue
    const/4 v1, 0x0

    .line 39
    move-object v0, p0

    move v2, v1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/andengine/entity/sprite/Sprite;-><init>(FFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 41
    iput p1, p0, Lorg/andengine/entity/scene/menu/item/SpriteMenuItem;->mID:I

    .line 42
    return-void
.end method

.method public constructor <init>(ILorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V
    .locals 6
    .parameter "pID"
    .parameter "pTextureRegion"
    .parameter "pVertexBufferObjectManager"
    .parameter "pDrawType"

    .prologue
    const/4 v1, 0x0

    .line 45
    move-object v0, p0

    move v2, v1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/andengine/entity/sprite/Sprite;-><init>(FFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V

    .line 47
    iput p1, p0, Lorg/andengine/entity/scene/menu/item/SpriteMenuItem;->mID:I

    .line 48
    return-void
.end method

.method public constructor <init>(ILorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 7
    .parameter "pID"
    .parameter "pTextureRegion"
    .parameter "pVertexBufferObjectManager"
    .parameter "pDrawType"
    .parameter "pShaderProgram"

    .prologue
    const/4 v1, 0x0

    .line 51
    move-object v0, p0

    move v2, v1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/andengine/entity/sprite/Sprite;-><init>(FFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 53
    iput p1, p0, Lorg/andengine/entity/scene/menu/item/SpriteMenuItem;->mID:I

    .line 54
    return-void
.end method


# virtual methods
.method public getID()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lorg/andengine/entity/scene/menu/item/SpriteMenuItem;->mID:I

    return v0
.end method

.method public onSelected()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public onUnselected()V
    .locals 0

    .prologue
    .line 129
    return-void
.end method
