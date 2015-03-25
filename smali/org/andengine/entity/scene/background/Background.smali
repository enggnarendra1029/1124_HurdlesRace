.class public Lorg/andengine/entity/scene/background/Background;
.super Ljava/lang/Object;
.source "Background.java"

# interfaces
.implements Lorg/andengine/entity/scene/background/IBackground;


# static fields
.field private static final BACKGROUNDMODIFIERS_CAPACITY_DEFAULT:I = 0x4


# instance fields
.field private mBackgroundModifiers:Lorg/andengine/util/modifier/ModifierList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/andengine/util/modifier/ModifierList",
            "<",
            "Lorg/andengine/entity/scene/background/IBackground;",
            ">;"
        }
    .end annotation
.end field

.field private final mColor:Lorg/andengine/util/color/Color;

.field private mColorEnabled:Z


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/andengine/entity/scene/background/Background;->mBackgroundModifiers:Lorg/andengine/util/modifier/ModifierList;

    .line 32
    new-instance v0, Lorg/andengine/util/color/Color;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v2, v2, v2, v1}, Lorg/andengine/util/color/Color;-><init>(FFFF)V

    iput-object v0, p0, Lorg/andengine/entity/scene/background/Background;->mColor:Lorg/andengine/util/color/Color;

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/andengine/entity/scene/background/Background;->mColorEnabled:Z

    .line 41
    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 3
    .parameter "pRed"
    .parameter "pGreen"
    .parameter "pBlue"

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/andengine/entity/scene/background/Background;->mBackgroundModifiers:Lorg/andengine/util/modifier/ModifierList;

    .line 32
    new-instance v0, Lorg/andengine/util/color/Color;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v2, v2, v2, v1}, Lorg/andengine/util/color/Color;-><init>(FFFF)V

    iput-object v0, p0, Lorg/andengine/entity/scene/background/Background;->mColor:Lorg/andengine/util/color/Color;

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/andengine/entity/scene/background/Background;->mColorEnabled:Z

    .line 44
    iget-object v0, p0, Lorg/andengine/entity/scene/background/Background;->mColor:Lorg/andengine/util/color/Color;

    invoke-virtual {v0, p1, p2, p3}, Lorg/andengine/util/color/Color;->set(FFF)V

    .line 45
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 3
    .parameter "pRed"
    .parameter "pGreen"
    .parameter "pBlue"
    .parameter "pAlpha"

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/andengine/entity/scene/background/Background;->mBackgroundModifiers:Lorg/andengine/util/modifier/ModifierList;

    .line 32
    new-instance v0, Lorg/andengine/util/color/Color;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v2, v2, v2, v1}, Lorg/andengine/util/color/Color;-><init>(FFFF)V

    iput-object v0, p0, Lorg/andengine/entity/scene/background/Background;->mColor:Lorg/andengine/util/color/Color;

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/andengine/entity/scene/background/Background;->mColorEnabled:Z

    .line 48
    iget-object v0, p0, Lorg/andengine/entity/scene/background/Background;->mColor:Lorg/andengine/util/color/Color;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/andengine/util/color/Color;->set(FFFF)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/andengine/util/color/Color;)V
    .locals 3
    .parameter "pColor"

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/andengine/entity/scene/background/Background;->mBackgroundModifiers:Lorg/andengine/util/modifier/ModifierList;

    .line 32
    new-instance v0, Lorg/andengine/util/color/Color;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v2, v2, v2, v1}, Lorg/andengine/util/color/Color;-><init>(FFFF)V

    iput-object v0, p0, Lorg/andengine/entity/scene/background/Background;->mColor:Lorg/andengine/util/color/Color;

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/andengine/entity/scene/background/Background;->mColorEnabled:Z

    .line 52
    iget-object v0, p0, Lorg/andengine/entity/scene/background/Background;->mColor:Lorg/andengine/util/color/Color;

    invoke-virtual {v0, p1}, Lorg/andengine/util/color/Color;->set(Lorg/andengine/util/color/Color;)V

    .line 53
    return-void
.end method

.method private allocateBackgroundModifiers()V
    .locals 2

    .prologue
    .line 150
    new-instance v0, Lorg/andengine/util/modifier/ModifierList;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lorg/andengine/util/modifier/ModifierList;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lorg/andengine/entity/scene/background/Background;->mBackgroundModifiers:Lorg/andengine/util/modifier/ModifierList;

    .line 151
    return-void
.end method


# virtual methods
.method public clearBackgroundModifiers()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lorg/andengine/entity/scene/background/Background;->mBackgroundModifiers:Lorg/andengine/util/modifier/ModifierList;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lorg/andengine/entity/scene/background/Background;->mBackgroundModifiers:Lorg/andengine/util/modifier/ModifierList;

    invoke-virtual {v0}, Lorg/andengine/util/modifier/ModifierList;->clear()V

    .line 123
    :cond_0
    return-void
.end method

.method public isColorEnabled()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lorg/andengine/entity/scene/background/Background;->mColorEnabled:Z

    return v0
.end method

.method public onDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V
    .locals 4
    .parameter "pGLState"
    .parameter "pCamera"

    .prologue
    .line 134
    iget-boolean v0, p0, Lorg/andengine/entity/scene/background/Background;->mColorEnabled:Z

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lorg/andengine/entity/scene/background/Background;->mColor:Lorg/andengine/util/color/Color;

    invoke-virtual {v0}, Lorg/andengine/util/color/Color;->getRed()F

    move-result v0

    iget-object v1, p0, Lorg/andengine/entity/scene/background/Background;->mColor:Lorg/andengine/util/color/Color;

    invoke-virtual {v1}, Lorg/andengine/util/color/Color;->getGreen()F

    move-result v1

    iget-object v2, p0, Lorg/andengine/entity/scene/background/Background;->mColor:Lorg/andengine/util/color/Color;

    invoke-virtual {v2}, Lorg/andengine/util/color/Color;->getBlue()F

    move-result v2

    iget-object v3, p0, Lorg/andengine/entity/scene/background/Background;->mColor:Lorg/andengine/util/color/Color;

    invoke-virtual {v3}, Lorg/andengine/util/color/Color;->getAlpha()F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 136
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 138
    :cond_0
    return-void
.end method

.method public onUpdate(F)V
    .locals 1
    .parameter "pSecondsElapsed"

    .prologue
    .line 127
    iget-object v0, p0, Lorg/andengine/entity/scene/background/Background;->mBackgroundModifiers:Lorg/andengine/util/modifier/ModifierList;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lorg/andengine/entity/scene/background/Background;->mBackgroundModifiers:Lorg/andengine/util/modifier/ModifierList;

    invoke-virtual {v0, p1}, Lorg/andengine/util/modifier/ModifierList;->onUpdate(F)V

    .line 130
    :cond_0
    return-void
.end method

.method public registerBackgroundModifier(Lorg/andengine/util/modifier/IModifier;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/modifier/IModifier",
            "<",
            "Lorg/andengine/entity/scene/background/IBackground;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, pBackgroundModifier:Lorg/andengine/util/modifier/IModifier;,"Lorg/andengine/util/modifier/IModifier<Lorg/andengine/entity/scene/background/IBackground;>;"
    iget-object v0, p0, Lorg/andengine/entity/scene/background/Background;->mBackgroundModifiers:Lorg/andengine/util/modifier/ModifierList;

    if-nez v0, :cond_0

    .line 104
    invoke-direct {p0}, Lorg/andengine/entity/scene/background/Background;->allocateBackgroundModifiers()V

    .line 106
    :cond_0
    iget-object v0, p0, Lorg/andengine/entity/scene/background/Background;->mBackgroundModifiers:Lorg/andengine/util/modifier/ModifierList;

    invoke-virtual {v0, p1}, Lorg/andengine/util/modifier/ModifierList;->add(Lorg/andengine/util/modifier/IModifier;)Z

    .line 107
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lorg/andengine/entity/scene/background/Background;->mBackgroundModifiers:Lorg/andengine/util/modifier/ModifierList;

    invoke-virtual {v0}, Lorg/andengine/util/modifier/ModifierList;->reset()V

    .line 143
    return-void
.end method

.method public setColor(FFF)V
    .locals 1
    .parameter "pRed"
    .parameter "pGreen"
    .parameter "pBlue"

    .prologue
    .line 67
    iget-object v0, p0, Lorg/andengine/entity/scene/background/Background;->mColor:Lorg/andengine/util/color/Color;

    invoke-virtual {v0, p1, p2, p3}, Lorg/andengine/util/color/Color;->set(FFF)V

    .line 68
    return-void
.end method

.method public setColor(FFFF)V
    .locals 1
    .parameter "pRed"
    .parameter "pGreen"
    .parameter "pBlue"
    .parameter "pAlpha"

    .prologue
    .line 79
    iget-object v0, p0, Lorg/andengine/entity/scene/background/Background;->mColor:Lorg/andengine/util/color/Color;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/andengine/util/color/Color;->set(FFFF)V

    .line 80
    return-void
.end method

.method public setColor(Lorg/andengine/util/color/Color;)V
    .locals 1
    .parameter "pColor"

    .prologue
    .line 84
    iget-object v0, p0, Lorg/andengine/entity/scene/background/Background;->mColor:Lorg/andengine/util/color/Color;

    invoke-virtual {v0, p1}, Lorg/andengine/util/color/Color;->set(Lorg/andengine/util/color/Color;)V

    .line 85
    return-void
.end method

.method public setColorEnabled(Z)V
    .locals 0
    .parameter "pColorEnabled"

    .prologue
    .line 94
    iput-boolean p1, p0, Lorg/andengine/entity/scene/background/Background;->mColorEnabled:Z

    .line 95
    return-void
.end method

.method public unregisterBackgroundModifier(Lorg/andengine/util/modifier/IModifier;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/modifier/IModifier",
            "<",
            "Lorg/andengine/entity/scene/background/IBackground;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, pBackgroundModifier:Lorg/andengine/util/modifier/IModifier;,"Lorg/andengine/util/modifier/IModifier<Lorg/andengine/entity/scene/background/IBackground;>;"
    iget-object v0, p0, Lorg/andengine/entity/scene/background/Background;->mBackgroundModifiers:Lorg/andengine/util/modifier/ModifierList;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lorg/andengine/entity/scene/background/Background;->mBackgroundModifiers:Lorg/andengine/util/modifier/ModifierList;

    invoke-virtual {v0, p1}, Lorg/andengine/util/modifier/ModifierList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 114
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
