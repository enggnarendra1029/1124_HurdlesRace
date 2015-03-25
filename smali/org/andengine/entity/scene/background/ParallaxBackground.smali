.class public Lorg/andengine/entity/scene/background/ParallaxBackground;
.super Lorg/andengine/entity/scene/background/Background;
.source "ParallaxBackground.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/andengine/entity/scene/background/ParallaxBackground$ParallaxEntity;
    }
.end annotation


# instance fields
.field private final mParallaxEntities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/andengine/entity/scene/background/ParallaxBackground$ParallaxEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mParallaxEntityCount:I

.field protected mParallaxValue:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 1
    .parameter "pRed"
    .parameter "pGreen"
    .parameter "pBlue"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lorg/andengine/entity/scene/background/Background;-><init>(FFF)V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/andengine/entity/scene/background/ParallaxBackground;->mParallaxEntities:Ljava/util/ArrayList;

    .line 36
    return-void
.end method


# virtual methods
.method public attachParallaxEntity(Lorg/andengine/entity/scene/background/ParallaxBackground$ParallaxEntity;)V
    .locals 1
    .parameter "pParallaxEntity"

    .prologue
    .line 67
    iget-object v0, p0, Lorg/andengine/entity/scene/background/ParallaxBackground;->mParallaxEntities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    iget v0, p0, Lorg/andengine/entity/scene/background/ParallaxBackground;->mParallaxEntityCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/andengine/entity/scene/background/ParallaxBackground;->mParallaxEntityCount:I

    .line 69
    return-void
.end method

.method public detachParallaxEntity(Lorg/andengine/entity/scene/background/ParallaxBackground$ParallaxEntity;)Z
    .locals 2
    .parameter "pParallaxEntity"

    .prologue
    .line 72
    iget v1, p0, Lorg/andengine/entity/scene/background/ParallaxBackground;->mParallaxEntityCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/andengine/entity/scene/background/ParallaxBackground;->mParallaxEntityCount:I

    .line 73
    iget-object v1, p0, Lorg/andengine/entity/scene/background/ParallaxBackground;->mParallaxEntities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 74
    .local v0, success:Z
    if-nez v0, :cond_0

    .line 75
    iget v1, p0, Lorg/andengine/entity/scene/background/ParallaxBackground;->mParallaxEntityCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/andengine/entity/scene/background/ParallaxBackground;->mParallaxEntityCount:I

    .line 77
    :cond_0
    return v0
.end method

.method public onDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V
    .locals 4
    .parameter "pGLState"
    .parameter "pCamera"

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Lorg/andengine/entity/scene/background/Background;->onDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V

    .line 54
    iget v2, p0, Lorg/andengine/entity/scene/background/ParallaxBackground;->mParallaxValue:F

    .line 55
    .local v2, parallaxValue:F
    iget-object v1, p0, Lorg/andengine/entity/scene/background/ParallaxBackground;->mParallaxEntities:Ljava/util/ArrayList;

    .line 57
    .local v1, parallaxEntities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/andengine/entity/scene/background/ParallaxBackground$ParallaxEntity;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v3, p0, Lorg/andengine/entity/scene/background/ParallaxBackground;->mParallaxEntityCount:I

    if-lt v0, v3, :cond_0

    .line 60
    return-void

    .line 58
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/andengine/entity/scene/background/ParallaxBackground$ParallaxEntity;

    invoke-virtual {v3, p1, p2, v2}, Lorg/andengine/entity/scene/background/ParallaxBackground$ParallaxEntity;->onDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;F)V

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setParallaxValue(F)V
    .locals 0
    .parameter "pParallaxValue"

    .prologue
    .line 43
    iput p1, p0, Lorg/andengine/entity/scene/background/ParallaxBackground;->mParallaxValue:F

    .line 44
    return-void
.end method
