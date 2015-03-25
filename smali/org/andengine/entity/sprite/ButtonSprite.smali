.class public Lorg/andengine/entity/sprite/ButtonSprite;
.super Lorg/andengine/entity/sprite/TiledSprite;
.source "ButtonSprite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/andengine/entity/sprite/ButtonSprite$OnClickListener;,
        Lorg/andengine/entity/sprite/ButtonSprite$State;
    }
.end annotation


# instance fields
.field private mEnabled:Z

.field private mOnClickListener:Lorg/andengine/entity/sprite/ButtonSprite$OnClickListener;

.field private mState:Lorg/andengine/entity/sprite/ButtonSprite$State;

.field private final mStateCount:I


# direct methods
.method public constructor <init>(FFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;)V
    .locals 8
    .parameter "pX"
    .parameter "pY"
    .parameter "pNormalTextureRegion"
    .parameter "pPressedTextureRegion"
    .parameter "pDisabledTextureRegion"
    .parameter "pVertexBufferObjectManager"

    .prologue
    .line 58
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/andengine/entity/sprite/ButtonSprite;-><init>(FFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/entity/sprite/ButtonSprite$OnClickListener;)V

    .line 59
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/entity/sprite/ButtonSprite$OnClickListener;)V
    .locals 6
    .parameter "pX"
    .parameter "pY"
    .parameter "pNormalTextureRegion"
    .parameter "pPressedTextureRegion"
    .parameter "pDisabledTextureRegion"
    .parameter "pVertexBufferObjectManager"
    .parameter "pOnClickListener"

    .prologue
    .line 62
    new-instance v3, Lorg/andengine/opengl/texture/region/TiledTextureRegion;

    invoke-interface {p3}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getTexture()Lorg/andengine/opengl/texture/ITexture;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Lorg/andengine/opengl/texture/region/ITextureRegion;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 v2, 0x1

    aput-object p4, v1, v2

    const/4 v2, 0x2

    aput-object p5, v1, v2

    invoke-direct {v3, v0, v1}, Lorg/andengine/opengl/texture/region/TiledTextureRegion;-><init>(Lorg/andengine/opengl/texture/ITexture;[Lorg/andengine/opengl/texture/region/ITextureRegion;)V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lorg/andengine/entity/sprite/ButtonSprite;-><init>(FFLorg/andengine/opengl/texture/region/ITiledTextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/entity/sprite/ButtonSprite$OnClickListener;)V

    .line 63
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;)V
    .locals 7
    .parameter "pX"
    .parameter "pY"
    .parameter "pNormalTextureRegion"
    .parameter "pPressedTextureRegion"
    .parameter "pVertexBufferObjectManager"

    .prologue
    .line 50
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/andengine/entity/sprite/ButtonSprite;-><init>(FFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/entity/sprite/ButtonSprite$OnClickListener;)V

    .line 51
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/entity/sprite/ButtonSprite$OnClickListener;)V
    .locals 6
    .parameter "pX"
    .parameter "pY"
    .parameter "pNormalTextureRegion"
    .parameter "pPressedTextureRegion"
    .parameter "pVertexBufferObjectManager"
    .parameter "pOnClickListener"

    .prologue
    .line 54
    new-instance v3, Lorg/andengine/opengl/texture/region/TiledTextureRegion;

    invoke-interface {p3}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getTexture()Lorg/andengine/opengl/texture/ITexture;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/andengine/opengl/texture/region/ITextureRegion;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 v2, 0x1

    aput-object p4, v1, v2

    invoke-direct {v3, v0, v1}, Lorg/andengine/opengl/texture/region/TiledTextureRegion;-><init>(Lorg/andengine/opengl/texture/ITexture;[Lorg/andengine/opengl/texture/region/ITextureRegion;)V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/andengine/entity/sprite/ButtonSprite;-><init>(FFLorg/andengine/opengl/texture/region/ITiledTextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/entity/sprite/ButtonSprite$OnClickListener;)V

    .line 55
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;)V
    .locals 6
    .parameter "pX"
    .parameter "pY"
    .parameter "pNormalTextureRegion"
    .parameter "pVertexBufferObjectManager"

    .prologue
    .line 42
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/andengine/entity/sprite/ButtonSprite;-><init>(FFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/entity/sprite/ButtonSprite$OnClickListener;)V

    .line 43
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/entity/sprite/ButtonSprite$OnClickListener;)V
    .locals 6
    .parameter "pX"
    .parameter "pY"
    .parameter "pNormalTextureRegion"
    .parameter "pVertexBufferObjectManager"
    .parameter "pOnClickListener"

    .prologue
    .line 46
    new-instance v3, Lorg/andengine/opengl/texture/region/TiledTextureRegion;

    invoke-interface {p3}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getTexture()Lorg/andengine/opengl/texture/ITexture;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/andengine/opengl/texture/region/ITextureRegion;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-direct {v3, v0, v1}, Lorg/andengine/opengl/texture/region/TiledTextureRegion;-><init>(Lorg/andengine/opengl/texture/ITexture;[Lorg/andengine/opengl/texture/region/ITextureRegion;)V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/andengine/entity/sprite/ButtonSprite;-><init>(FFLorg/andengine/opengl/texture/region/ITiledTextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/entity/sprite/ButtonSprite$OnClickListener;)V

    .line 47
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/texture/region/ITiledTextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;)V
    .locals 6
    .parameter "pX"
    .parameter "pY"
    .parameter "pTiledTextureRegion"
    .parameter "pVertexBufferObjectManager"

    .prologue
    .line 66
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/andengine/entity/sprite/ButtonSprite;-><init>(FFLorg/andengine/opengl/texture/region/ITiledTextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/entity/sprite/ButtonSprite$OnClickListener;)V

    .line 67
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/texture/region/ITiledTextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/entity/sprite/ButtonSprite$OnClickListener;)V
    .locals 3
    .parameter "pX"
    .parameter "pY"
    .parameter "pTiledTextureRegion"
    .parameter "pVertexBufferObjectManager"
    .parameter "pOnClickListener"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/andengine/entity/sprite/TiledSprite;-><init>(FFLorg/andengine/opengl/texture/region/ITiledTextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;)V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/andengine/entity/sprite/ButtonSprite;->mEnabled:Z

    .line 72
    iput-object p5, p0, Lorg/andengine/entity/sprite/ButtonSprite;->mOnClickListener:Lorg/andengine/entity/sprite/ButtonSprite$OnClickListener;

    .line 73
    invoke-interface {p3}, Lorg/andengine/opengl/texture/region/ITiledTextureRegion;->getTileCount()I

    move-result v0

    iput v0, p0, Lorg/andengine/entity/sprite/ButtonSprite;->mStateCount:I

    .line 75
    iget v0, p0, Lorg/andengine/entity/sprite/ButtonSprite;->mStateCount:I

    packed-switch v0, :pswitch_data_0

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The supplied "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lorg/andengine/opengl/texture/region/ITiledTextureRegion;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has an unexpected amount of states: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/andengine/entity/sprite/ButtonSprite;->mStateCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lorg/andengine/opengl/texture/region/ITextureRegion;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " supplied for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lorg/andengine/entity/sprite/ButtonSprite$State;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/andengine/entity/sprite/ButtonSprite$State;->PRESSED:Lorg/andengine/entity/sprite/ButtonSprite$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/andengine/util/debug/Debug;->w(Ljava/lang/String;)V

    .line 79
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lorg/andengine/opengl/texture/region/ITextureRegion;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " supplied for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lorg/andengine/entity/sprite/ButtonSprite$State;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/andengine/entity/sprite/ButtonSprite$State;->DISABLED:Lorg/andengine/entity/sprite/ButtonSprite$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/andengine/util/debug/Debug;->w(Ljava/lang/String;)V

    .line 87
    :pswitch_2
    sget-object v0, Lorg/andengine/entity/sprite/ButtonSprite$State;->NORMAL:Lorg/andengine/entity/sprite/ButtonSprite$State;

    invoke-direct {p0, v0}, Lorg/andengine/entity/sprite/ButtonSprite;->changeState(Lorg/andengine/entity/sprite/ButtonSprite$State;)V

    .line 88
    return-void

    .line 75
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private changeState(Lorg/andengine/entity/sprite/ButtonSprite$State;)V
    .locals 3
    .parameter "pState"

    .prologue
    .line 157
    iget-object v1, p0, Lorg/andengine/entity/sprite/ButtonSprite;->mState:Lorg/andengine/entity/sprite/ButtonSprite$State;

    if-ne p1, v1, :cond_0

    .line 170
    :goto_0
    return-void

    .line 161
    :cond_0
    iput-object p1, p0, Lorg/andengine/entity/sprite/ButtonSprite;->mState:Lorg/andengine/entity/sprite/ButtonSprite$State;

    .line 163
    iget-object v1, p0, Lorg/andengine/entity/sprite/ButtonSprite;->mState:Lorg/andengine/entity/sprite/ButtonSprite$State;

    invoke-virtual {v1}, Lorg/andengine/entity/sprite/ButtonSprite$State;->getTiledTextureRegionIndex()I

    move-result v0

    .line 164
    .local v0, stateTiledTextureRegionIndex:I
    iget v1, p0, Lorg/andengine/entity/sprite/ButtonSprite;->mStateCount:I

    if-lt v0, v1, :cond_1

    .line 165
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/andengine/entity/sprite/ButtonSprite;->setCurrentTileIndex(I)V

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " changed its "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lorg/andengine/entity/sprite/ButtonSprite$State;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/andengine/entity/sprite/ButtonSprite$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which doesn\'t have a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lorg/andengine/opengl/texture/region/ITextureRegion;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " supplied. Applying default "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lorg/andengine/opengl/texture/region/ITextureRegion;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/andengine/util/debug/Debug;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :cond_1
    invoke-virtual {p0, v0}, Lorg/andengine/entity/sprite/ButtonSprite;->setCurrentTileIndex(I)V

    goto :goto_0
.end method


# virtual methods
.method public contains(FF)Z
    .locals 1
    .parameter "pX"
    .parameter "pY"

    .prologue
    .line 145
    invoke-virtual {p0}, Lorg/andengine/entity/sprite/ButtonSprite;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    const/4 v0, 0x0

    .line 148
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/andengine/entity/sprite/TiledSprite;->contains(FF)Z

    move-result v0

    goto :goto_0
.end method

.method public getState()Lorg/andengine/entity/sprite/ButtonSprite$State;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/andengine/entity/sprite/ButtonSprite;->mState:Lorg/andengine/entity/sprite/ButtonSprite$State;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lorg/andengine/entity/sprite/ButtonSprite;->mEnabled:Z

    return v0
.end method

.method public isPressed()Z
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lorg/andengine/entity/sprite/ButtonSprite;->mState:Lorg/andengine/entity/sprite/ButtonSprite$State;

    sget-object v1, Lorg/andengine/entity/sprite/ButtonSprite$State;->PRESSED:Lorg/andengine/entity/sprite/ButtonSprite$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAreaTouched(Lorg/andengine/input/touch/TouchEvent;FF)Z
    .locals 2
    .parameter "pSceneTouchEvent"
    .parameter "pTouchAreaLocalX"
    .parameter "pTouchAreaLocalY"

    .prologue
    .line 126
    invoke-virtual {p0}, Lorg/andengine/entity/sprite/ButtonSprite;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 127
    sget-object v0, Lorg/andengine/entity/sprite/ButtonSprite$State;->DISABLED:Lorg/andengine/entity/sprite/ButtonSprite$State;

    invoke-direct {p0, v0}, Lorg/andengine/entity/sprite/ButtonSprite;->changeState(Lorg/andengine/entity/sprite/ButtonSprite$State;)V

    .line 140
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 128
    :cond_1
    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->isActionDown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    sget-object v0, Lorg/andengine/entity/sprite/ButtonSprite$State;->PRESSED:Lorg/andengine/entity/sprite/ButtonSprite$State;

    invoke-direct {p0, v0}, Lorg/andengine/entity/sprite/ButtonSprite;->changeState(Lorg/andengine/entity/sprite/ButtonSprite$State;)V

    goto :goto_0

    .line 130
    :cond_2
    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->isActionCancel()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/andengine/entity/sprite/ButtonSprite;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_4

    .line 131
    :cond_3
    sget-object v0, Lorg/andengine/entity/sprite/ButtonSprite$State;->NORMAL:Lorg/andengine/entity/sprite/ButtonSprite$State;

    invoke-direct {p0, v0}, Lorg/andengine/entity/sprite/ButtonSprite;->changeState(Lorg/andengine/entity/sprite/ButtonSprite$State;)V

    goto :goto_0

    .line 132
    :cond_4
    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->isActionUp()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/andengine/entity/sprite/ButtonSprite;->mState:Lorg/andengine/entity/sprite/ButtonSprite$State;

    sget-object v1, Lorg/andengine/entity/sprite/ButtonSprite$State;->PRESSED:Lorg/andengine/entity/sprite/ButtonSprite$State;

    if-ne v0, v1, :cond_0

    .line 133
    sget-object v0, Lorg/andengine/entity/sprite/ButtonSprite$State;->NORMAL:Lorg/andengine/entity/sprite/ButtonSprite$State;

    invoke-direct {p0, v0}, Lorg/andengine/entity/sprite/ButtonSprite;->changeState(Lorg/andengine/entity/sprite/ButtonSprite$State;)V

    .line 135
    iget-object v0, p0, Lorg/andengine/entity/sprite/ButtonSprite;->mOnClickListener:Lorg/andengine/entity/sprite/ButtonSprite$OnClickListener;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lorg/andengine/entity/sprite/ButtonSprite;->mOnClickListener:Lorg/andengine/entity/sprite/ButtonSprite$OnClickListener;

    invoke-interface {v0, p0, p2, p3}, Lorg/andengine/entity/sprite/ButtonSprite$OnClickListener;->onClick(Lorg/andengine/entity/sprite/ButtonSprite;FF)V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 2
    .parameter "pEnabled"

    .prologue
    .line 99
    iput-boolean p1, p0, Lorg/andengine/entity/sprite/ButtonSprite;->mEnabled:Z

    .line 101
    iget-boolean v0, p0, Lorg/andengine/entity/sprite/ButtonSprite;->mEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/andengine/entity/sprite/ButtonSprite;->mState:Lorg/andengine/entity/sprite/ButtonSprite$State;

    sget-object v1, Lorg/andengine/entity/sprite/ButtonSprite$State;->DISABLED:Lorg/andengine/entity/sprite/ButtonSprite$State;

    if-ne v0, v1, :cond_1

    .line 102
    sget-object v0, Lorg/andengine/entity/sprite/ButtonSprite$State;->NORMAL:Lorg/andengine/entity/sprite/ButtonSprite$State;

    invoke-direct {p0, v0}, Lorg/andengine/entity/sprite/ButtonSprite;->changeState(Lorg/andengine/entity/sprite/ButtonSprite$State;)V

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    iget-boolean v0, p0, Lorg/andengine/entity/sprite/ButtonSprite;->mEnabled:Z

    if-nez v0, :cond_0

    .line 104
    sget-object v0, Lorg/andengine/entity/sprite/ButtonSprite$State;->DISABLED:Lorg/andengine/entity/sprite/ButtonSprite$State;

    invoke-direct {p0, v0}, Lorg/andengine/entity/sprite/ButtonSprite;->changeState(Lorg/andengine/entity/sprite/ButtonSprite$State;)V

    goto :goto_0
.end method

.method public setOnClickListener(Lorg/andengine/entity/sprite/ButtonSprite$OnClickListener;)V
    .locals 0
    .parameter "pOnClickListener"

    .prologue
    .line 117
    iput-object p1, p0, Lorg/andengine/entity/sprite/ButtonSprite;->mOnClickListener:Lorg/andengine/entity/sprite/ButtonSprite$OnClickListener;

    .line 118
    return-void
.end method
