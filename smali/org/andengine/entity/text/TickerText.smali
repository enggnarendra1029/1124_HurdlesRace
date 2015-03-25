.class public Lorg/andengine/entity/text/TickerText;
.super Lorg/andengine/entity/text/Text;
.source "TickerText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/andengine/entity/text/TickerText$TickerTextOptions;
    }
.end annotation


# instance fields
.field private mCharactersVisible:I

.field private mDuration:F

.field private mSecondsElapsed:F

.field private final mTickerTextOptions:Lorg/andengine/entity/text/TickerText$TickerTextOptions;


# direct methods
.method public constructor <init>(FFLorg/andengine/opengl/font/IFont;Ljava/lang/String;Lorg/andengine/entity/text/TickerText$TickerTextOptions;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;)V
    .locals 2
    .parameter "pX"
    .parameter "pY"
    .parameter "pFont"
    .parameter "pText"
    .parameter "pTickerTextOptions"
    .parameter "pVertexBufferObjectManager"

    .prologue
    .line 40
    invoke-direct/range {p0 .. p6}, Lorg/andengine/entity/text/Text;-><init>(FFLorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;Lorg/andengine/entity/text/TextOptions;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;)V

    .line 42
    iput-object p5, p0, Lorg/andengine/entity/text/TickerText;->mTickerTextOptions:Lorg/andengine/entity/text/TickerText$TickerTextOptions;

    .line 44
    iget v0, p0, Lorg/andengine/entity/text/TickerText;->mCharactersToDraw:I

    int-to-float v0, v0

    iget-object v1, p0, Lorg/andengine/entity/text/TickerText;->mTickerTextOptions:Lorg/andengine/entity/text/TickerText$TickerTextOptions;

    iget v1, v1, Lorg/andengine/entity/text/TickerText$TickerTextOptions;->mCharactersPerSecond:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/andengine/entity/text/TickerText;->mDuration:F

    .line 45
    return-void
.end method


# virtual methods
.method protected draw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V
    .locals 3
    .parameter "pGLState"
    .parameter "pCamera"

    .prologue
    .line 110
    iget-object v0, p0, Lorg/andengine/entity/text/TickerText;->mTextVertexBufferObject:Lorg/andengine/entity/text/vbo/ITextVertexBufferObject;

    const/4 v1, 0x4

    iget v2, p0, Lorg/andengine/entity/text/TickerText;->mCharactersVisible:I

    mul-int/lit8 v2, v2, 0x6

    invoke-interface {v0, v1, v2}, Lorg/andengine/entity/text/vbo/ITextVertexBufferObject;->draw(II)V

    .line 111
    return-void
.end method

.method public getCharactersPerSecond()F
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/andengine/entity/text/TickerText;->mTickerTextOptions:Lorg/andengine/entity/text/TickerText$TickerTextOptions;

    iget v0, v0, Lorg/andengine/entity/text/TickerText$TickerTextOptions;->mCharactersPerSecond:F

    return v0
.end method

.method public getCharactersVisible()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lorg/andengine/entity/text/TickerText;->mCharactersVisible:I

    return v0
.end method

.method public bridge synthetic getTextOptions()Lorg/andengine/entity/text/TextOptions;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/entity/text/TickerText;->getTextOptions()Lorg/andengine/entity/text/TickerText$TickerTextOptions;

    move-result-object v0

    return-object v0
.end method

.method public getTextOptions()Lorg/andengine/entity/text/TickerText$TickerTextOptions;
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Lorg/andengine/entity/text/Text;->getTextOptions()Lorg/andengine/entity/text/TextOptions;

    move-result-object v0

    check-cast v0, Lorg/andengine/entity/text/TickerText$TickerTextOptions;

    return-object v0
.end method

.method public isReverse()Z
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lorg/andengine/entity/text/TickerText;->getTextOptions()Lorg/andengine/entity/text/TickerText$TickerTextOptions;

    move-result-object v0

    iget-boolean v0, v0, Lorg/andengine/entity/text/TickerText$TickerTextOptions;->mReverse:Z

    return v0
.end method

.method protected onManagedUpdate(F)V
    .locals 2
    .parameter "pSecondsElapsed"

    .prologue
    .line 93
    invoke-super {p0, p1}, Lorg/andengine/entity/text/Text;->onManagedUpdate(F)V

    .line 95
    iget-object v0, p0, Lorg/andengine/entity/text/TickerText;->mTickerTextOptions:Lorg/andengine/entity/text/TickerText$TickerTextOptions;

    iget-boolean v0, v0, Lorg/andengine/entity/text/TickerText$TickerTextOptions;->mReverse:Z

    if-eqz v0, :cond_1

    .line 96
    iget v0, p0, Lorg/andengine/entity/text/TickerText;->mCharactersVisible:I

    iget v1, p0, Lorg/andengine/entity/text/TickerText;->mCharactersToDraw:I

    if-ge v0, v1, :cond_0

    .line 97
    const/4 v0, 0x0

    iget v1, p0, Lorg/andengine/entity/text/TickerText;->mSecondsElapsed:F

    sub-float/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lorg/andengine/entity/text/TickerText;->mSecondsElapsed:F

    .line 98
    iget v0, p0, Lorg/andengine/entity/text/TickerText;->mSecondsElapsed:F

    iget-object v1, p0, Lorg/andengine/entity/text/TickerText;->mTickerTextOptions:Lorg/andengine/entity/text/TickerText$TickerTextOptions;

    iget v1, v1, Lorg/andengine/entity/text/TickerText$TickerTextOptions;->mCharactersPerSecond:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/andengine/entity/text/TickerText;->mCharactersVisible:I

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iget v0, p0, Lorg/andengine/entity/text/TickerText;->mCharactersVisible:I

    iget v1, p0, Lorg/andengine/entity/text/TickerText;->mCharactersToDraw:I

    if-ge v0, v1, :cond_0

    .line 102
    iget v0, p0, Lorg/andengine/entity/text/TickerText;->mDuration:F

    iget v1, p0, Lorg/andengine/entity/text/TickerText;->mSecondsElapsed:F

    add-float/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lorg/andengine/entity/text/TickerText;->mSecondsElapsed:F

    .line 103
    iget v0, p0, Lorg/andengine/entity/text/TickerText;->mSecondsElapsed:F

    iget-object v1, p0, Lorg/andengine/entity/text/TickerText;->mTickerTextOptions:Lorg/andengine/entity/text/TickerText$TickerTextOptions;

    iget v1, v1, Lorg/andengine/entity/text/TickerText$TickerTextOptions;->mCharactersPerSecond:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/andengine/entity/text/TickerText;->mCharactersVisible:I

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 115
    invoke-super {p0}, Lorg/andengine/entity/text/Text;->reset()V

    .line 117
    const/4 v0, 0x0

    iput v0, p0, Lorg/andengine/entity/text/TickerText;->mCharactersVisible:I

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lorg/andengine/entity/text/TickerText;->mSecondsElapsed:F

    .line 119
    return-void
.end method

.method public setCharactersPerSecond(F)V
    .locals 1
    .parameter "pCharactersPerSecond"

    .prologue
    .line 69
    iget-object v0, p0, Lorg/andengine/entity/text/TickerText;->mTickerTextOptions:Lorg/andengine/entity/text/TickerText$TickerTextOptions;

    iput p1, v0, Lorg/andengine/entity/text/TickerText$TickerTextOptions;->mCharactersPerSecond:F

    .line 71
    iget v0, p0, Lorg/andengine/entity/text/TickerText;->mCharactersToDraw:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    iput v0, p0, Lorg/andengine/entity/text/TickerText;->mDuration:F

    .line 72
    return-void
.end method

.method public setReverse(Z)V
    .locals 1
    .parameter "pReverse"

    .prologue
    .line 61
    iget-object v0, p0, Lorg/andengine/entity/text/TickerText;->mTickerTextOptions:Lorg/andengine/entity/text/TickerText$TickerTextOptions;

    iput-boolean p1, v0, Lorg/andengine/entity/text/TickerText$TickerTextOptions;->mReverse:Z

    .line 62
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "pText"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/entity/text/exception/OutOfCharactersException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-super {p0, p1}, Lorg/andengine/entity/text/Text;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p0, Lorg/andengine/entity/text/TickerText;->mTickerTextOptions:Lorg/andengine/entity/text/TickerText$TickerTextOptions;

    if-eqz v0, :cond_0

    .line 83
    iget v0, p0, Lorg/andengine/entity/text/TickerText;->mCharactersToDraw:I

    int-to-float v0, v0

    iget-object v1, p0, Lorg/andengine/entity/text/TickerText;->mTickerTextOptions:Lorg/andengine/entity/text/TickerText$TickerTextOptions;

    iget v1, v1, Lorg/andengine/entity/text/TickerText$TickerTextOptions;->mCharactersPerSecond:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/andengine/entity/text/TickerText;->mDuration:F

    .line 85
    :cond_0
    return-void
.end method
