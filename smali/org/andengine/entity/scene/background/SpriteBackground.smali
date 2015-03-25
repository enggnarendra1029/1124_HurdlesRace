.class public Lorg/andengine/entity/scene/background/SpriteBackground;
.super Lorg/andengine/entity/scene/background/EntityBackground;
.source "SpriteBackground.java"


# direct methods
.method public constructor <init>(FFFLorg/andengine/entity/sprite/Sprite;)V
    .locals 0
    .parameter "pRed"
    .parameter "pGreen"
    .parameter "pBlue"
    .parameter "pSprite"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/andengine/entity/scene/background/EntityBackground;-><init>(FFFLorg/andengine/entity/IEntity;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Lorg/andengine/entity/sprite/Sprite;)V
    .locals 0
    .parameter "pSprite"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lorg/andengine/entity/scene/background/EntityBackground;-><init>(Lorg/andengine/entity/IEntity;)V

    .line 27
    return-void
.end method


# virtual methods
.method public getSprite()Lorg/andengine/entity/sprite/Sprite;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lorg/andengine/entity/scene/background/SpriteBackground;->mEntity:Lorg/andengine/entity/IEntity;

    check-cast v0, Lorg/andengine/entity/sprite/Sprite;

    return-object v0
.end method
