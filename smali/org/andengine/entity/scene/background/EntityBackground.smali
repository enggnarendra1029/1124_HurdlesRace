.class public Lorg/andengine/entity/scene/background/EntityBackground;
.super Lorg/andengine/entity/scene/background/Background;
.source "EntityBackground.java"


# instance fields
.field protected mEntity:Lorg/andengine/entity/IEntity;


# direct methods
.method public constructor <init>(FFFLorg/andengine/entity/IEntity;)V
    .locals 0
    .parameter "pRed"
    .parameter "pGreen"
    .parameter "pBlue"
    .parameter "pEntity"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lorg/andengine/entity/scene/background/Background;-><init>(FFF)V

    .line 35
    iput-object p4, p0, Lorg/andengine/entity/scene/background/EntityBackground;->mEntity:Lorg/andengine/entity/IEntity;

    .line 36
    return-void
.end method

.method public constructor <init>(Lorg/andengine/entity/IEntity;)V
    .locals 0
    .parameter "pEntity"

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/andengine/entity/scene/background/Background;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/andengine/entity/scene/background/EntityBackground;->mEntity:Lorg/andengine/entity/IEntity;

    .line 31
    return-void
.end method


# virtual methods
.method public onDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V
    .locals 1
    .parameter "pGLState"
    .parameter "pCamera"

    .prologue
    .line 48
    invoke-super {p0, p1, p2}, Lorg/andengine/entity/scene/background/Background;->onDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V

    .line 50
    iget-object v0, p0, Lorg/andengine/entity/scene/background/EntityBackground;->mEntity:Lorg/andengine/entity/IEntity;

    invoke-interface {v0, p1, p2}, Lorg/andengine/entity/IEntity;->onDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V

    .line 51
    return-void
.end method
