.class public Lorg/andengine/entity/text/TextOptions;
.super Ljava/lang/Object;
.source "TextOptions.java"


# instance fields
.field mAutoWrap:Lorg/andengine/entity/text/AutoWrap;

.field mAutoWrapWidth:F

.field mHorizontalAlign:Lorg/andengine/util/HorizontalAlign;

.field mLeading:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 30
    sget-object v0, Lorg/andengine/entity/text/AutoWrap;->NONE:Lorg/andengine/entity/text/AutoWrap;

    sget-object v1, Lorg/andengine/util/HorizontalAlign;->LEFT:Lorg/andengine/util/HorizontalAlign;

    invoke-direct {p0, v0, v2, v1, v2}, Lorg/andengine/entity/text/TextOptions;-><init>(Lorg/andengine/entity/text/AutoWrap;FLorg/andengine/util/HorizontalAlign;F)V

    .line 31
    return-void
.end method

.method public constructor <init>(Lorg/andengine/entity/text/AutoWrap;F)V
    .locals 2
    .parameter "pAutoWrap"
    .parameter "pAutoWrapWidth"

    .prologue
    .line 38
    sget-object v0, Lorg/andengine/util/HorizontalAlign;->LEFT:Lorg/andengine/util/HorizontalAlign;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/andengine/entity/text/TextOptions;-><init>(Lorg/andengine/entity/text/AutoWrap;FLorg/andengine/util/HorizontalAlign;F)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/andengine/entity/text/AutoWrap;FLorg/andengine/util/HorizontalAlign;)V
    .locals 1
    .parameter "pAutoWrap"
    .parameter "pAutoWrapWidth"
    .parameter "pHorizontalAlign"

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/andengine/entity/text/TextOptions;-><init>(Lorg/andengine/entity/text/AutoWrap;FLorg/andengine/util/HorizontalAlign;F)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/andengine/entity/text/AutoWrap;FLorg/andengine/util/HorizontalAlign;F)V
    .locals 0
    .parameter "pAutoWrap"
    .parameter "pAutoWrapWidth"
    .parameter "pHorizontalAlign"
    .parameter "pLeading"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/andengine/entity/text/TextOptions;->mAutoWrap:Lorg/andengine/entity/text/AutoWrap;

    .line 47
    iput p2, p0, Lorg/andengine/entity/text/TextOptions;->mAutoWrapWidth:F

    .line 48
    iput-object p3, p0, Lorg/andengine/entity/text/TextOptions;->mHorizontalAlign:Lorg/andengine/util/HorizontalAlign;

    .line 49
    iput p4, p0, Lorg/andengine/entity/text/TextOptions;->mLeading:F

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/andengine/util/HorizontalAlign;)V
    .locals 2
    .parameter "pHorizontalAlign"

    .prologue
    const/4 v1, 0x0

    .line 34
    sget-object v0, Lorg/andengine/entity/text/AutoWrap;->NONE:Lorg/andengine/entity/text/AutoWrap;

    invoke-direct {p0, v0, v1, p1, v1}, Lorg/andengine/entity/text/TextOptions;-><init>(Lorg/andengine/entity/text/AutoWrap;FLorg/andengine/util/HorizontalAlign;F)V

    .line 35
    return-void
.end method


# virtual methods
.method public getAutoWrap()Lorg/andengine/entity/text/AutoWrap;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/andengine/entity/text/TextOptions;->mAutoWrap:Lorg/andengine/entity/text/AutoWrap;

    return-object v0
.end method

.method public getAutoWrapWidth()F
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lorg/andengine/entity/text/TextOptions;->mAutoWrapWidth:F

    return v0
.end method

.method public getHorizontalAlign()Lorg/andengine/util/HorizontalAlign;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/andengine/entity/text/TextOptions;->mHorizontalAlign:Lorg/andengine/util/HorizontalAlign;

    return-object v0
.end method

.method public getLeading()F
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lorg/andengine/entity/text/TextOptions;->mLeading:F

    return v0
.end method

.method public setAutoWrap(Lorg/andengine/entity/text/AutoWrap;)V
    .locals 0
    .parameter "pAutoWrap"

    .prologue
    .line 61
    iput-object p1, p0, Lorg/andengine/entity/text/TextOptions;->mAutoWrap:Lorg/andengine/entity/text/AutoWrap;

    .line 62
    return-void
.end method

.method public setAutoWrapWidth(F)V
    .locals 0
    .parameter "pAutoWrapWidth"

    .prologue
    .line 69
    iput p1, p0, Lorg/andengine/entity/text/TextOptions;->mAutoWrapWidth:F

    .line 70
    return-void
.end method

.method public setHorizontalAlign(Lorg/andengine/util/HorizontalAlign;)V
    .locals 0
    .parameter "pHorizontalAlign"

    .prologue
    .line 85
    iput-object p1, p0, Lorg/andengine/entity/text/TextOptions;->mHorizontalAlign:Lorg/andengine/util/HorizontalAlign;

    .line 86
    return-void
.end method

.method public setLeading(F)V
    .locals 0
    .parameter "pLeading"

    .prologue
    .line 77
    iput p1, p0, Lorg/andengine/entity/text/TextOptions;->mLeading:F

    .line 78
    return-void
.end method
