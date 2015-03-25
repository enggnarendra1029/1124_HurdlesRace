.class public Lorg/andengine/entity/text/TickerText$TickerTextOptions;
.super Lorg/andengine/entity/text/TextOptions;
.source "TickerText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andengine/entity/text/TickerText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TickerTextOptions"
.end annotation


# instance fields
.field mCharactersPerSecond:F

.field mReverse:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Lorg/andengine/entity/text/TextOptions;-><init>()V

    .line 147
    return-void
.end method

.method public constructor <init>(F)V
    .locals 1
    .parameter "pCharactersPerSecond"

    .prologue
    .line 150
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/andengine/entity/text/TickerText$TickerTextOptions;-><init>(FZ)V

    .line 151
    return-void
.end method

.method public constructor <init>(FZ)V
    .locals 1
    .parameter "pCharactersPerSecond"
    .parameter "pReverse"

    .prologue
    .line 154
    sget-object v0, Lorg/andengine/util/HorizontalAlign;->LEFT:Lorg/andengine/util/HorizontalAlign;

    invoke-direct {p0, v0, p1, p2}, Lorg/andengine/entity/text/TickerText$TickerTextOptions;-><init>(Lorg/andengine/util/HorizontalAlign;FZ)V

    .line 155
    return-void
.end method

.method public constructor <init>(Lorg/andengine/entity/text/AutoWrap;FLorg/andengine/util/HorizontalAlign;F)V
    .locals 7
    .parameter "pAutoWrap"
    .parameter "pAutoWrapWidth"
    .parameter "pHorizontalAlign"
    .parameter "pCharactersPerSecond"

    .prologue
    .line 166
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/andengine/entity/text/TickerText$TickerTextOptions;-><init>(Lorg/andengine/entity/text/AutoWrap;FLorg/andengine/util/HorizontalAlign;FFZ)V

    .line 167
    return-void
.end method

.method public constructor <init>(Lorg/andengine/entity/text/AutoWrap;FLorg/andengine/util/HorizontalAlign;FF)V
    .locals 7
    .parameter "pAutoWrap"
    .parameter "pAutoWrapWidth"
    .parameter "pHorizontalAlign"
    .parameter "pLeading"
    .parameter "pCharactersPerSecond"

    .prologue
    .line 170
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/andengine/entity/text/TickerText$TickerTextOptions;-><init>(Lorg/andengine/entity/text/AutoWrap;FLorg/andengine/util/HorizontalAlign;FFZ)V

    .line 171
    return-void
.end method

.method public constructor <init>(Lorg/andengine/entity/text/AutoWrap;FLorg/andengine/util/HorizontalAlign;FFZ)V
    .locals 0
    .parameter "pAutoWrap"
    .parameter "pAutoWrapWidth"
    .parameter "pHorizontalAlign"
    .parameter "pLeading"
    .parameter "pCharactersPerSecond"
    .parameter "pReverse"

    .prologue
    .line 174
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/andengine/entity/text/TextOptions;-><init>(Lorg/andengine/entity/text/AutoWrap;FLorg/andengine/util/HorizontalAlign;F)V

    .line 176
    iput p5, p0, Lorg/andengine/entity/text/TickerText$TickerTextOptions;->mCharactersPerSecond:F

    .line 177
    iput-boolean p6, p0, Lorg/andengine/entity/text/TickerText$TickerTextOptions;->mReverse:Z

    .line 178
    return-void
.end method

.method public constructor <init>(Lorg/andengine/util/HorizontalAlign;F)V
    .locals 7
    .parameter "pHorizontalAlign"
    .parameter "pCharactersPerSecond"

    .prologue
    const/4 v2, 0x0

    .line 158
    sget-object v1, Lorg/andengine/entity/text/AutoWrap;->NONE:Lorg/andengine/entity/text/AutoWrap;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, v2

    move v5, p2

    invoke-direct/range {v0 .. v6}, Lorg/andengine/entity/text/TickerText$TickerTextOptions;-><init>(Lorg/andengine/entity/text/AutoWrap;FLorg/andengine/util/HorizontalAlign;FFZ)V

    .line 159
    return-void
.end method

.method public constructor <init>(Lorg/andengine/util/HorizontalAlign;FZ)V
    .locals 7
    .parameter "pHorizontalAlign"
    .parameter "pCharactersPerSecond"
    .parameter "pReverse"

    .prologue
    const/4 v2, 0x0

    .line 162
    sget-object v1, Lorg/andengine/entity/text/AutoWrap;->NONE:Lorg/andengine/entity/text/AutoWrap;

    move-object v0, p0

    move-object v3, p1

    move v4, v2

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/andengine/entity/text/TickerText$TickerTextOptions;-><init>(Lorg/andengine/entity/text/AutoWrap;FLorg/andengine/util/HorizontalAlign;FFZ)V

    .line 163
    return-void
.end method


# virtual methods
.method public getCharactersPerSecond()F
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lorg/andengine/entity/text/TickerText$TickerTextOptions;->mCharactersPerSecond:F

    return v0
.end method

.method public isReverse()Z
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lorg/andengine/entity/text/TickerText$TickerTextOptions;->mReverse:Z

    return v0
.end method

.method public setCharactersPerSecond(F)V
    .locals 0
    .parameter "pCharactersPerSecond"

    .prologue
    .line 189
    iput p1, p0, Lorg/andengine/entity/text/TickerText$TickerTextOptions;->mCharactersPerSecond:F

    .line 190
    return-void
.end method

.method public setReverse(Z)V
    .locals 0
    .parameter "pReverse"

    .prologue
    .line 197
    iput-boolean p1, p0, Lorg/andengine/entity/text/TickerText$TickerTextOptions;->mReverse:Z

    .line 198
    return-void
.end method
