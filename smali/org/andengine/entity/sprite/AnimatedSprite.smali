.class public Lorg/andengine/entity/sprite/AnimatedSprite;
.super Lorg/andengine/entity/sprite/TiledSprite;
.source "AnimatedSprite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/andengine/entity/sprite/AnimatedSprite$IAnimationListener;
    }
.end annotation


# static fields
.field private static final FRAMEINDEX_INVALID:I = -0x1


# instance fields
.field private final mAnimationData:Lorg/andengine/entity/sprite/IAnimationData;

.field private mAnimationListener:Lorg/andengine/entity/sprite/AnimatedSprite$IAnimationListener;

.field private mAnimationProgress:J

.field private mAnimationRunning:Z

.field private mAnimationStartedFired:Z

.field private mCurrentFrameIndex:I

.field private mRemainingLoopCount:I


# direct methods
.method public constructor <init>(FFFFLorg/andengine/opengl/texture/region/ITiledTextureRegion;Lorg/andengine/entity/sprite/vbo/ITiledSpriteVertexBufferObject;)V
    .locals 8
    .parameter "pX"
    .parameter "pY"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pTiledTextureRegion"
    .parameter "pTiledSpriteVertexBufferObject"

    .prologue
    .line 85
    invoke-static {}, Lorg/andengine/opengl/shader/PositionColorTextureCoordinatesShaderProgram;->getInstance()Lorg/andengine/opengl/shader/PositionColorTextureCoordinatesShaderProgram;

    move-result-object v7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/andengine/entity/sprite/TiledSprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITiledTextureRegion;Lorg/andengine/entity/sprite/vbo/ITiledSpriteVertexBufferObject;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 37
    new-instance v0, Lorg/andengine/entity/sprite/AnimationData;

    invoke-direct {v0}, Lorg/andengine/entity/sprite/AnimationData;-><init>()V

    iput-object v0, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mAnimationData:Lorg/andengine/entity/sprite/IAnimationData;

    .line 86
    return-void
.end method

.method public constructor <init>(FFFFLorg/andengine/opengl/texture/region/ITiledTextureRegion;Lorg/andengine/entity/sprite/vbo/ITiledSpriteVertexBufferObject;Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 1
    .parameter "pX"
    .parameter "pY"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pTiledTextureRegion"
    .parameter "pTiledSpriteVertexBufferObject"
    .parameter "pShaderProgram"

    .prologue
    .line 89
    invoke-direct/range {p0 .. p7}, Lorg/andengine/entity/sprite/TiledSprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITiledTextureRegion;Lorg/andengine/entity/sprite/vbo/ITiledSpriteVertexBufferObject;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 37
    new-instance v0, Lorg/andengine/entity/sprite/AnimationData;

    invoke-direct {v0}, Lorg/andengine/entity/sprite/AnimationData;-><init>()V

    iput-object v0, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mAnimationData:Lorg/andengine/entity/sprite/IAnimationData;

    .line 90
    return-void
.end method

.method public constructor <init>(FFFFLorg/andengine/opengl/texture/region/ITiledTextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;)V
    .locals 8
    .parameter "pX"
    .parameter "pY"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pTiledTextureRegion"
    .parameter "pVertexBufferObjectManager"

    .prologue
    .line 69
    sget-object v7, Lorg/andengine/opengl/vbo/DrawType;->DYNAMIC:Lorg/andengine/opengl/vbo/DrawType;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/andengine/entity/sprite/TiledSprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITiledTextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V

    .line 37
    new-instance v0, Lorg/andengine/entity/sprite/AnimationData;

    invoke-direct {v0}, Lorg/andengine/entity/sprite/AnimationData;-><init>()V

    iput-object v0, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mAnimationData:Lorg/andengine/entity/sprite/IAnimationData;

    .line 70
    return-void
.end method

.method public constructor <init>(FFFFLorg/andengine/opengl/texture/region/ITiledTextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 9
    .parameter "pX"
    .parameter "pY"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pTiledTextureRegion"
    .parameter "pVertexBufferObjectManager"
    .parameter "pShaderProgram"

    .prologue
    .line 73
    sget-object v7, Lorg/andengine/opengl/vbo/DrawType;->DYNAMIC:Lorg/andengine/opengl/vbo/DrawType;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/andengine/entity/sprite/TiledSprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITiledTextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 37
    new-instance v0, Lorg/andengine/entity/sprite/AnimationData;

    invoke-direct {v0}, Lorg/andengine/entity/sprite/AnimationData;-><init>()V

    iput-object v0, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mAnimationData:Lorg/andengine/entity/sprite/IAnimationData;

    .line 74
    return-void
.end method

.method public constructor <init>(FFFFLorg/andengine/opengl/texture/region/ITiledTextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V
    .locals 1
    .parameter "pX"
    .parameter "pY"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pTiledTextureRegion"
    .parameter "pVertexBufferObjectManager"
    .parameter "pDrawType"

    .prologue
    .line 77
    invoke-direct/range {p0 .. p7}, Lorg/andengine/entity/sprite/TiledSprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITiledTextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V

    .line 37
    new-instance v0, Lorg/andengine/entity/sprite/AnimationData;

    invoke-direct {v0}, Lorg/andengine/entity/sprite/AnimationData;-><init>()V

    iput-object v0, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mAnimationData:Lorg/andengine/entity/sprite/IAnimationData;

    .line 78
    return-void
.end method

.method public constructor <init>(FFFFLorg/andengine/opengl/texture/region/ITiledTextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 1
    .parameter "pX"
    .parameter "pY"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pTiledTextureRegion"
    .parameter "pVertexBufferObjectManager"
    .parameter "pDrawType"
    .parameter "pShaderProgram"

    .prologue
    .line 81
    invoke-direct/range {p0 .. p8}, Lorg/andengine/entity/sprite/TiledSprite;-><init>(FFFFLorg/andengine/opengl/texture/region/ITiledTextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 37
    new-instance v0, Lorg/andengine/entity/sprite/AnimationData;

    invoke-direct {v0}, Lorg/andengine/entity/sprite/AnimationData;-><init>()V

    iput-object v0, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mAnimationData:Lorg/andengine/entity/sprite/IAnimationData;

    .line 82
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/texture/region/ITiledTextureRegion;Lorg/andengine/entity/sprite/vbo/ITiledSpriteVertexBufferObject;)V
    .locals 1
    .parameter "pX"
    .parameter "pY"
    .parameter "pTiledTextureRegion"
    .parameter "pTiledSpriteVertexBufferObject"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/andengine/entity/sprite/TiledSprite;-><init>(FFLorg/andengine/opengl/texture/region/ITiledTextureRegion;Lorg/andengine/entity/sprite/vbo/ITiledSpriteVertexBufferObject;)V

    .line 37
    new-instance v0, Lorg/andengine/entity/sprite/AnimationData;

    invoke-direct {v0}, Lorg/andengine/entity/sprite/AnimationData;-><init>()V

    iput-object v0, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mAnimationData:Lorg/andengine/entity/sprite/IAnimationData;

    .line 62
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/texture/region/ITiledTextureRegion;Lorg/andengine/entity/sprite/vbo/ITiledSpriteVertexBufferObject;Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 1
    .parameter "pX"
    .parameter "pY"
    .parameter "pTiledTextureRegion"
    .parameter "pTiledSpriteVertexBufferObject"
    .parameter "pShaderProgram"

    .prologue
    .line 65
    invoke-direct/range {p0 .. p5}, Lorg/andengine/entity/sprite/TiledSprite;-><init>(FFLorg/andengine/opengl/texture/region/ITiledTextureRegion;Lorg/andengine/entity/sprite/vbo/ITiledSpriteVertexBufferObject;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 37
    new-instance v0, Lorg/andengine/entity/sprite/AnimationData;

    invoke-direct {v0}, Lorg/andengine/entity/sprite/AnimationData;-><init>()V

    iput-object v0, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mAnimationData:Lorg/andengine/entity/sprite/IAnimationData;

    .line 66
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/texture/region/ITiledTextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;)V
    .locals 6
    .parameter "pX"
    .parameter "pY"
    .parameter "pTiledTextureRegion"
    .parameter "pVertexBufferObjectManager"

    .prologue
    .line 45
    sget-object v5, Lorg/andengine/opengl/vbo/DrawType;->DYNAMIC:Lorg/andengine/opengl/vbo/DrawType;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/andengine/entity/sprite/TiledSprite;-><init>(FFLorg/andengine/opengl/texture/region/ITiledTextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V

    .line 37
    new-instance v0, Lorg/andengine/entity/sprite/AnimationData;

    invoke-direct {v0}, Lorg/andengine/entity/sprite/AnimationData;-><init>()V

    iput-object v0, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mAnimationData:Lorg/andengine/entity/sprite/IAnimationData;

    .line 46
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/texture/region/ITiledTextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 7
    .parameter "pX"
    .parameter "pY"
    .parameter "pTiledTextureRegion"
    .parameter "pVertexBufferObjectManager"
    .parameter "pShaderProgram"

    .prologue
    .line 49
    sget-object v5, Lorg/andengine/opengl/vbo/DrawType;->DYNAMIC:Lorg/andengine/opengl/vbo/DrawType;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/andengine/entity/sprite/TiledSprite;-><init>(FFLorg/andengine/opengl/texture/region/ITiledTextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 37
    new-instance v0, Lorg/andengine/entity/sprite/AnimationData;

    invoke-direct {v0}, Lorg/andengine/entity/sprite/AnimationData;-><init>()V

    iput-object v0, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mAnimationData:Lorg/andengine/entity/sprite/IAnimationData;

    .line 50
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/texture/region/ITiledTextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V
    .locals 1
    .parameter "pX"
    .parameter "pY"
    .parameter "pTiledTextureRegion"
    .parameter "pVertexBufferObjectManager"
    .parameter "pDrawType"

    .prologue
    .line 53
    invoke-direct/range {p0 .. p5}, Lorg/andengine/entity/sprite/TiledSprite;-><init>(FFLorg/andengine/opengl/texture/region/ITiledTextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;)V

    .line 37
    new-instance v0, Lorg/andengine/entity/sprite/AnimationData;

    invoke-direct {v0}, Lorg/andengine/entity/sprite/AnimationData;-><init>()V

    iput-object v0, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mAnimationData:Lorg/andengine/entity/sprite/IAnimationData;

    .line 54
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/texture/region/ITiledTextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 1
    .parameter "pX"
    .parameter "pY"
    .parameter "pTiledTextureRegion"
    .parameter "pVertexBufferObjectManager"
    .parameter "pDrawType"
    .parameter "pShaderProgram"

    .prologue
    .line 57
    invoke-direct/range {p0 .. p6}, Lorg/andengine/entity/sprite/TiledSprite;-><init>(FFLorg/andengine/opengl/texture/region/ITiledTextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/opengl/vbo/DrawType;Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 37
    new-instance v0, Lorg/andengine/entity/sprite/AnimationData;

    invoke-direct {v0}, Lorg/andengine/entity/sprite/AnimationData;-><init>()V

    iput-object v0, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mAnimationData:Lorg/andengine/entity/sprite/IAnimationData;

    .line 58
    return-void
.end method

.method private initAnimation(Lorg/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)V
    .locals 2
    .parameter "pAnimationListener"

    .prologue
    .line 348
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mAnimationStartedFired:Z

    .line 349
    iput-object p1, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mAnimationListener:Lorg/andengine/entity/sprite/AnimatedSprite$IAnimationListener;

    .line 350
    iget-object v0, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mAnimationData:Lorg/andengine/entity/sprite/IAnimationData;

    invoke-interface {v0}, Lorg/andengine/entity/sprite/IAnimationData;->getLoopCount()I

    move-result v0

    iput v0, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mRemainingLoopCount:I

    .line 352
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mAnimationProgress:J

    .line 353
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mAnimationRunning:Z

    .line 354
    return-void
.end method


# virtual methods
.method public animate(J)V
    .locals 1
    .parameter "pFrameDurationEach"

    .prologue
    .line 185
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/andengine/entity/sprite/AnimatedSprite;->animate(JLorg/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)V

    .line 186
    return-void
.end method

.method public animate(JI)V
    .locals 1
    .parameter "pFrameDurationEach"
    .parameter "pLoopCount"

    .prologue
    .line 205
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/andengine/entity/sprite/AnimatedSprite;->animate(JILorg/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)V

    .line 206
    return-void
.end method

.method public animate(JILorg/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)V
    .locals 2
    .parameter "pFrameDurationEach"
    .parameter "pLoopCount"
    .parameter "pAnimationListener"

    .prologue
    .line 209
    iget-object v0, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mAnimationData:Lorg/andengine/entity/sprite/IAnimationData;

    invoke-virtual {p0}, Lorg/andengine/entity/sprite/AnimatedSprite;->getTileCount()I

    move-result v1

    invoke-interface {v0, p1, p2, v1, p3}, Lorg/andengine/entity/sprite/IAnimationData;->set(JII)V

    .line 211
    invoke-direct {p0, p4}, Lorg/andengine/entity/sprite/AnimatedSprite;->initAnimation(Lorg/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)V

    .line 212
    return-void
.end method

.method public animate(JLorg/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)V
    .locals 2
    .parameter "pFrameDurationEach"
    .parameter "pAnimationListener"

    .prologue
    .line 189
    iget-object v0, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mAnimationData:Lorg/andengine/entity/sprite/IAnimationData;

    invoke-virtual {p0}, Lorg/andengine/entity/sprite/AnimatedSprite;->getTileCount()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Lorg/andengine/entity/sprite/IAnimationData;->set(JI)V

    .line 191
    invoke-direct {p0, p3}, Lorg/andengine/entity/sprite/AnimatedSprite;->initAnimation(Lorg/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)V

    .line 192
    return-void
.end method

.method public animate(JZ)V
    .locals 1
    .parameter "pFrameDurationEach"
    .parameter "pLoop"

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/andengine/entity/sprite/AnimatedSprite;->animate(JZLorg/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)V

    .line 196
    return-void
.end method

.method public animate(JZLorg/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)V
    .locals 2
    .parameter "pFrameDurationEach"
    .parameter "pLoop"
    .parameter "pAnimationListener"

    .prologue
    .line 199
    iget-object v0, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mAnimationData:Lorg/andengine/entity/sprite/IAnimationData;

    invoke-virtual {p0}, Lorg/andengine/entity/sprite/AnimatedSprite;->getTileCount()I

    move-result v1

    invoke-interface {v0, p1, p2, v1, p3}, Lorg/andengine/entity/sprite/IAnimationData;->set(JIZ)V

    .line 201
    invoke-direct {p0, p4}, Lorg/andengine/entity/sprite/AnimatedSprite;->initAnimation(Lorg/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)V

    .line 202
    return-void
.end method

.method public animate(Lorg/andengine/entity/sprite/IAnimationData;)V
    .locals 1
    .parameter "pAnimationData"

    .prologue
    .line 338
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/andengine/entity/sprite/AnimatedSprite;->animate(Lorg/andengine/entity/sprite/IAnimationData;Lorg/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)V

    .line 339
    return-void
.end method

.method public animate(Lorg/andengine/entity/sprite/IAnimationData;Lorg/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)V
    .locals 1
    .parameter "pAnimationData"
    .parameter "pAnimationListener"

    .prologue
    .line 342
    iget-object v0, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mAnimationData:Lorg/andengine/entity/sprite/IAnimationData;

    invoke-interface {v0, p1}, Lorg/andengine/entity/sprite/IAnimationData;->set(Lorg/andengine/entity/sprite/IAnimationData;)V

    .line 344
    invoke-direct {p0, p2}, Lorg/andengine/entity/sprite/AnimatedSprite;->initAnimation(Lorg/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)V

    .line 345
    return-void
.end method

.method public animate([J)V
    .locals 1
    .parameter "pFrameDurations"

    .prologue
    .line 215
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/andengine/entity/sprite/AnimatedSprite;->animate([JLorg/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)V

    .line 216
    return-void
.end method

.method public animate([JI)V
    .locals 1
    .parameter "pFrameDurations"
    .parameter "pLoopCount"

    .prologue
    .line 235
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/andengine/entity/sprite/AnimatedSprite;->animate([JILorg/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)V

    .line 236
    return-void
.end method

.method public animate([JIII)V
    .locals 6
    .parameter "pFrameDurations"
    .parameter "pFirstTileIndex"
    .parameter "pLastTileIndex"
    .parameter "pLoopCount"

    .prologue
    .line 255
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/andengine/entity/sprite/AnimatedSprite;->animate([JIIILorg/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)V

    .line 256
    return-void
.end method

.method public animate([JIIILorg/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)V
    .locals 1
    .parameter "pFrameDurations"
    .parameter "pFirstTileIndex"
    .parameter "pLastTileIndex"
    .parameter "pLoopCount"
    .parameter "pAnimationListener"

    .prologue
    .line 259
    iget-object v0, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mAnimationData:Lorg/andengine/entity/sprite/IAnimationData;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/andengine/entity/sprite/IAnimationData;->set([JIII)V

    .line 261
    invoke-direct {p0, p5}, Lorg/andengine/entity/sprite/AnimatedSprite;->initAnimation(Lorg/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)V

    .line 262
    return-void
.end method

.method public animate([JIIZ)V
    .locals 6
    .parameter "pFrameDurations"
    .parameter "pFirstTileIndex"
    .parameter "pLastTileIndex"
    .parameter "pLoop"

    .prologue
    .line 245
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/andengine/entity/sprite/AnimatedSprite;->animate([JIIZLorg/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)V

    .line 246
    return-void
.end method

.method public animate([JIIZLorg/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)V
    .locals 1
    .parameter "pFrameDurations"
    .parameter "pFirstTileIndex"
    .parameter "pLastTileIndex"
    .parameter "pLoop"
    .parameter "pAnimationListener"

    .prologue
    .line 249
    iget-object v0, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mAnimationData:Lorg/andengine/entity/sprite/IAnimationData;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/andengine/entity/sprite/IAnimationData;->set([JIIZ)V

    .line 251
    invoke-direct {p0, p5}, Lorg/andengine/entity/sprite/AnimatedSprite;->initAnimation(Lorg/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)V

    .line 252
    return-void
.end method

.method public animate([JILorg/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)V
    .locals 1
    .parameter "pFrameDurations"
    .parameter "pLoopCount"
    .parameter "pAnimationListener"

    .prologue
    .line 239
    iget-object v0, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mAnimationData:Lorg/andengine/entity/sprite/IAnimationData;

    invoke-interface {v0, p1, p2}, Lorg/andengine/entity/sprite/IAnimationData;->set([JI)V

    .line 241
    invoke-direct {p0, p3}, Lorg/andengine/entity/sprite/AnimatedSprite;->initAnimation(Lorg/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)V

    .line 242
    return-void
.end method

.method public animate([JLorg/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)V
    .locals 1
    .parameter "pFrameDurations"
    .parameter "pAnimationListener"

    .prologue
    .line 219
    iget-object v0, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mAnimationData:Lorg/andengine/entity/sprite/IAnimationData;

    invoke-interface {v0, p1}, Lorg/andengine/entity/sprite/IAnimationData;->set([J)V

    .line 221
    invoke-direct {p0, p2}, Lorg/andengine/entity/sprite/AnimatedSprite;->initAnimation(Lorg/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)V

    .line 222
    return-void
.end method

.method public animate([JZ)V
    .locals 1
    .parameter "pFrameDurations"
    .parameter "pLoop"

    .prologue
    .line 225
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/andengine/entity/sprite/AnimatedSprite;->animate([JZLorg/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)V

    .line 226
    return-void
.end method

.method public animate([JZLorg/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)V
    .locals 1
    .parameter "pFrameDurations"
    .parameter "pLoop"
    .parameter "pAnimationListener"

    .prologue
    .line 229
    iget-object v0, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mAnimationData:Lorg/andengine/entity/sprite/IAnimationData;

    invoke-interface {v0, p1, p2}, Lorg/andengine/entity/sprite/IAnimationData;->set([JZ)V

    .line 231
    invoke-direct {p0, p3}, Lorg/andengine/entity/sprite/AnimatedSprite;->initAnimation(Lorg/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)V

    .line 232
    return-void
.end method

.method public animate([J[I)V
    .locals 1
    .parameter "pFrameDurations"
    .parameter "pFrames"

    .prologue
    .line 271
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/andengine/entity/sprite/AnimatedSprite;->animate([J[ILorg/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)V

    .line 272
    return-void
.end method

.method public animate([J[II)V
    .locals 1
    .parameter "pFrameDurations"
    .parameter "pFrames"
    .parameter "pLoopCount"

    .prologue
    .line 320
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/andengine/entity/sprite/AnimatedSprite;->animate([J[IILorg/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)V

    .line 321
    return-void
.end method

.method public animate([J[IILorg/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)V
    .locals 1
    .parameter "pFrameDurations"
    .parameter "pFrames"
    .parameter "pLoopCount"
    .parameter "pAnimationListener"

    .prologue
    .line 332
    iget-object v0, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mAnimationData:Lorg/andengine/entity/sprite/IAnimationData;

    invoke-interface {v0, p1, p2, p3}, Lorg/andengine/entity/sprite/IAnimationData;->set([J[II)V

    .line 334
    invoke-direct {p0, p4}, Lorg/andengine/entity/sprite/AnimatedSprite;->initAnimation(Lorg/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)V

    .line 335
    return-void
.end method

.method public animate([J[ILorg/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)V
    .locals 1
    .parameter "pFrameDurations"
    .parameter "pFrames"
    .parameter "pAnimationListener"

    .prologue
    .line 282
    iget-object v0, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mAnimationData:Lorg/andengine/entity/sprite/IAnimationData;

    invoke-interface {v0, p1, p2}, Lorg/andengine/entity/sprite/IAnimationData;->set([J[I)V

    .line 284
    invoke-direct {p0, p3}, Lorg/andengine/entity/sprite/AnimatedSprite;->initAnimation(Lorg/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)V

    .line 285
    return-void
.end method

.method public animate([J[IZ)V
    .locals 1
    .parameter "pFrameDurations"
    .parameter "pFrames"
    .parameter "pLoop"

    .prologue
    .line 295
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/andengine/entity/sprite/AnimatedSprite;->animate([J[IZLorg/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)V

    .line 296
    return-void
.end method

.method public animate([J[IZLorg/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)V
    .locals 1
    .parameter "pFrameDurations"
    .parameter "pFrames"
    .parameter "pLoop"
    .parameter "pAnimationListener"

    .prologue
    .line 307
    iget-object v0, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mAnimationData:Lorg/andengine/entity/sprite/IAnimationData;

    invoke-interface {v0, p1, p2, p3}, Lorg/andengine/entity/sprite/IAnimationData;->set([J[IZ)V

    .line 309
    invoke-direct {p0, p4}, Lorg/andengine/entity/sprite/AnimatedSprite;->initAnimation(Lorg/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)V

    .line 310
    return-void
.end method

.method public isAnimationRunning()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mAnimationRunning:Z

    return v0
.end method

.method protected onManagedUpdate(F)V
    .locals 13
    .parameter "pSecondsElapsed"

    .prologue
    const/4 v12, -0x1

    const/4 v11, 0x0

    .line 106
    invoke-super {p0, p1}, Lorg/andengine/entity/sprite/TiledSprite;->onManagedUpdate(F)V

    .line 108
    iget-boolean v7, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mAnimationRunning:Z

    if-eqz v7, :cond_5

    .line 109
    iget-object v7, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mAnimationData:Lorg/andengine/entity/sprite/IAnimationData;

    invoke-interface {v7}, Lorg/andengine/entity/sprite/IAnimationData;->getLoopCount()I

    move-result v3

    .line 110
    .local v3, loopCount:I
    iget-object v7, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mAnimationData:Lorg/andengine/entity/sprite/IAnimationData;

    invoke-interface {v7}, Lorg/andengine/entity/sprite/IAnimationData;->getFrames()[I

    move-result-object v2

    .line 111
    .local v2, frames:[I
    iget-object v7, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mAnimationData:Lorg/andengine/entity/sprite/IAnimationData;

    invoke-interface {v7}, Lorg/andengine/entity/sprite/IAnimationData;->getAnimationDuration()J

    move-result-wide v0

    .line 113
    .local v0, animationDuration:J
    iget-boolean v7, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mAnimationStartedFired:Z

    if-nez v7, :cond_0

    iget-wide v7, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mAnimationProgress:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_0

    .line 114
    const/4 v7, 0x1

    iput-boolean v7, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mAnimationStartedFired:Z

    .line 115
    if-nez v2, :cond_6

    .line 116
    iget-object v7, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mAnimationData:Lorg/andengine/entity/sprite/IAnimationData;

    invoke-interface {v7}, Lorg/andengine/entity/sprite/IAnimationData;->getFirstFrameIndex()I

    move-result v7

    invoke-virtual {p0, v7}, Lorg/andengine/entity/sprite/AnimatedSprite;->setCurrentTileIndex(I)V

    .line 120
    :goto_0
    iput v11, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mCurrentFrameIndex:I

    .line 121
    iget-object v7, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mAnimationListener:Lorg/andengine/entity/sprite/AnimatedSprite$IAnimationListener;

    if-eqz v7, :cond_0

    .line 122
    iget-object v7, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mAnimationListener:Lorg/andengine/entity/sprite/AnimatedSprite$IAnimationListener;

    invoke-interface {v7, p0, v3}, Lorg/andengine/entity/sprite/AnimatedSprite$IAnimationListener;->onAnimationStarted(Lorg/andengine/entity/sprite/AnimatedSprite;I)V

    .line 123
    iget-object v7, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mAnimationListener:Lorg/andengine/entity/sprite/AnimatedSprite$IAnimationListener;

    invoke-interface {v7, p0, v12, v11}, Lorg/andengine/entity/sprite/AnimatedSprite$IAnimationListener;->onAnimationFrameChanged(Lorg/andengine/entity/sprite/AnimatedSprite;II)V

    .line 126
    :cond_0
    const v7, 0x4e6e6b28

    mul-float/2addr v7, p1

    float-to-long v4, v7

    .line 127
    .local v4, nanoSecondsElapsed:J
    iget-wide v7, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mAnimationProgress:J

    add-long/2addr v7, v4

    iput-wide v7, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mAnimationProgress:J

    .line 129
    if-ne v3, v12, :cond_9

    .line 130
    :cond_1
    :goto_1
    iget-wide v7, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mAnimationProgress:J

    cmp-long v7, v7, v0

    if-gtz v7, :cond_7

    .line 148
    :cond_2
    :goto_2
    if-eq v3, v12, :cond_3

    iget v7, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mRemainingLoopCount:I

    if-ltz v7, :cond_b

    .line 149
    :cond_3
    iget-object v7, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mAnimationData:Lorg/andengine/entity/sprite/IAnimationData;

    iget-wide v8, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mAnimationProgress:J

    invoke-interface {v7, v8, v9}, Lorg/andengine/entity/sprite/IAnimationData;->calculateCurrentFrameIndex(J)I

    move-result v6

    .line 151
    .local v6, newFrameIndex:I
    iget v7, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mCurrentFrameIndex:I

    if-eq v7, v6, :cond_4

    .line 152
    if-nez v2, :cond_a

    .line 153
    iget-object v7, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mAnimationData:Lorg/andengine/entity/sprite/IAnimationData;

    invoke-interface {v7}, Lorg/andengine/entity/sprite/IAnimationData;->getFirstFrameIndex()I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {p0, v7}, Lorg/andengine/entity/sprite/AnimatedSprite;->setCurrentTileIndex(I)V

    .line 157
    :goto_3
    iget-object v7, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mAnimationListener:Lorg/andengine/entity/sprite/AnimatedSprite$IAnimationListener;

    if-eqz v7, :cond_4

    .line 158
    iget-object v7, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mAnimationListener:Lorg/andengine/entity/sprite/AnimatedSprite$IAnimationListener;

    iget v8, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mCurrentFrameIndex:I

    invoke-interface {v7, p0, v8, v6}, Lorg/andengine/entity/sprite/AnimatedSprite$IAnimationListener;->onAnimationFrameChanged(Lorg/andengine/entity/sprite/AnimatedSprite;II)V

    .line 161
    :cond_4
    iput v6, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mCurrentFrameIndex:I

    .line 169
    .end local v0           #animationDuration:J
    .end local v2           #frames:[I
    .end local v3           #loopCount:I
    .end local v4           #nanoSecondsElapsed:J
    .end local v6           #newFrameIndex:I
    :cond_5
    :goto_4
    return-void

    .line 118
    .restart local v0       #animationDuration:J
    .restart local v2       #frames:[I
    .restart local v3       #loopCount:I
    :cond_6
    aget v7, v2, v11

    invoke-virtual {p0, v7}, Lorg/andengine/entity/sprite/AnimatedSprite;->setCurrentTileIndex(I)V

    goto :goto_0

    .line 131
    .restart local v4       #nanoSecondsElapsed:J
    :cond_7
    iget-wide v7, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mAnimationProgress:J

    sub-long/2addr v7, v0

    iput-wide v7, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mAnimationProgress:J

    .line 132
    iget-object v7, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mAnimationListener:Lorg/andengine/entity/sprite/AnimatedSprite$IAnimationListener;

    if-eqz v7, :cond_1

    .line 133
    iget-object v7, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mAnimationListener:Lorg/andengine/entity/sprite/AnimatedSprite$IAnimationListener;

    iget v8, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mRemainingLoopCount:I

    invoke-interface {v7, p0, v8, v3}, Lorg/andengine/entity/sprite/AnimatedSprite$IAnimationListener;->onAnimationLoopFinished(Lorg/andengine/entity/sprite/AnimatedSprite;II)V

    goto :goto_1

    .line 138
    :cond_8
    iget-wide v7, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mAnimationProgress:J

    sub-long/2addr v7, v0

    iput-wide v7, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mAnimationProgress:J

    .line 139
    iget v7, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mRemainingLoopCount:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mRemainingLoopCount:I

    .line 140
    iget v7, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mRemainingLoopCount:I

    if-ltz v7, :cond_2

    .line 142
    iget-object v7, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mAnimationListener:Lorg/andengine/entity/sprite/AnimatedSprite$IAnimationListener;

    if-eqz v7, :cond_9

    .line 143
    iget-object v7, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mAnimationListener:Lorg/andengine/entity/sprite/AnimatedSprite$IAnimationListener;

    iget v8, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mRemainingLoopCount:I

    invoke-interface {v7, p0, v8, v3}, Lorg/andengine/entity/sprite/AnimatedSprite$IAnimationListener;->onAnimationLoopFinished(Lorg/andengine/entity/sprite/AnimatedSprite;II)V

    .line 137
    :cond_9
    iget-wide v7, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mAnimationProgress:J

    cmp-long v7, v7, v0

    if-gtz v7, :cond_8

    goto :goto_2

    .line 155
    .restart local v6       #newFrameIndex:I
    :cond_a
    aget v7, v2, v6

    invoke-virtual {p0, v7}, Lorg/andengine/entity/sprite/AnimatedSprite;->setCurrentTileIndex(I)V

    goto :goto_3

    .line 163
    .end local v6           #newFrameIndex:I
    :cond_b
    iput-boolean v11, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mAnimationRunning:Z

    .line 164
    iget-object v7, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mAnimationListener:Lorg/andengine/entity/sprite/AnimatedSprite$IAnimationListener;

    if-eqz v7, :cond_5

    .line 165
    iget-object v7, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mAnimationListener:Lorg/andengine/entity/sprite/AnimatedSprite$IAnimationListener;

    invoke-interface {v7, p0}, Lorg/andengine/entity/sprite/AnimatedSprite$IAnimationListener;->onAnimationFinished(Lorg/andengine/entity/sprite/AnimatedSprite;)V

    goto :goto_4
.end method

.method public stopAnimation()V
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mAnimationRunning:Z

    .line 177
    return-void
.end method

.method public stopAnimation(I)V
    .locals 1
    .parameter "pTileIndex"

    .prologue
    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/andengine/entity/sprite/AnimatedSprite;->mAnimationRunning:Z

    .line 181
    invoke-virtual {p0, p1}, Lorg/andengine/entity/sprite/AnimatedSprite;->setCurrentTileIndex(I)V

    .line 182
    return-void
.end method
