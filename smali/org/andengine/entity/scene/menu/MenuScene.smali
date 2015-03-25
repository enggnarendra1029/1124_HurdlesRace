.class public Lorg/andengine/entity/scene/menu/MenuScene;
.super Lorg/andengine/entity/scene/CameraScene;
.source "MenuScene.java"

# interfaces
.implements Lorg/andengine/entity/scene/IOnAreaTouchListener;
.implements Lorg/andengine/entity/scene/IOnSceneTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/andengine/entity/scene/menu/MenuScene$IOnMenuItemClickListener;
    }
.end annotation


# instance fields
.field private mMenuAnimator:Lorg/andengine/entity/scene/menu/animator/IMenuAnimator;

.field protected final mMenuItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/andengine/entity/scene/menu/item/IMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mOnMenuItemClickListener:Lorg/andengine/entity/scene/menu/MenuScene$IOnMenuItemClickListener;

.field private mSelectedMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, v0, v0}, Lorg/andengine/entity/scene/menu/MenuScene;-><init>(Lorg/andengine/engine/camera/Camera;Lorg/andengine/entity/scene/menu/MenuScene$IOnMenuItemClickListener;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/andengine/engine/camera/Camera;)V
    .locals 1
    .parameter "pCamera"

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/andengine/entity/scene/menu/MenuScene;-><init>(Lorg/andengine/engine/camera/Camera;Lorg/andengine/entity/scene/menu/MenuScene$IOnMenuItemClickListener;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/andengine/engine/camera/Camera;Lorg/andengine/entity/scene/menu/MenuScene$IOnMenuItemClickListener;)V
    .locals 1
    .parameter "pCamera"
    .parameter "pOnMenuItemClickListener"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lorg/andengine/entity/scene/CameraScene;-><init>(Lorg/andengine/engine/camera/Camera;)V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/andengine/entity/scene/menu/MenuScene;->mMenuItems:Ljava/util/ArrayList;

    .line 37
    sget-object v0, Lorg/andengine/entity/scene/menu/animator/IMenuAnimator;->DEFAULT:Lorg/andengine/entity/scene/menu/animator/IMenuAnimator;

    iput-object v0, p0, Lorg/andengine/entity/scene/menu/MenuScene;->mMenuAnimator:Lorg/andengine/entity/scene/menu/animator/IMenuAnimator;

    .line 59
    iput-object p2, p0, Lorg/andengine/entity/scene/menu/MenuScene;->mOnMenuItemClickListener:Lorg/andengine/entity/scene/menu/MenuScene$IOnMenuItemClickListener;

    .line 60
    invoke-virtual {p0, p0}, Lorg/andengine/entity/scene/menu/MenuScene;->setOnSceneTouchListener(Lorg/andengine/entity/scene/IOnSceneTouchListener;)V

    .line 61
    invoke-virtual {p0, p0}, Lorg/andengine/entity/scene/menu/MenuScene;->setOnAreaTouchListener(Lorg/andengine/entity/scene/IOnAreaTouchListener;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/andengine/entity/scene/menu/MenuScene$IOnMenuItemClickListener;)V
    .locals 1
    .parameter "pOnMenuItemClickListener"

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/andengine/entity/scene/menu/MenuScene;-><init>(Lorg/andengine/engine/camera/Camera;Lorg/andengine/entity/scene/menu/MenuScene$IOnMenuItemClickListener;)V

    .line 51
    return-void
.end method


# virtual methods
.method public addMenuItem(Lorg/andengine/entity/scene/menu/item/IMenuItem;)V
    .locals 1
    .parameter "pMenuItem"

    .prologue
    .line 81
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/MenuScene;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-virtual {p0, p1}, Lorg/andengine/entity/scene/menu/MenuScene;->attachChild(Lorg/andengine/entity/IEntity;)V

    .line 83
    invoke-virtual {p0, p1}, Lorg/andengine/entity/scene/menu/MenuScene;->registerTouchArea(Lorg/andengine/entity/scene/ITouchArea;)V

    .line 84
    return-void
.end method

.method public back()V
    .locals 0

    .prologue
    .line 164
    invoke-super {p0}, Lorg/andengine/entity/scene/CameraScene;->back()V

    .line 166
    invoke-virtual {p0}, Lorg/andengine/entity/scene/menu/MenuScene;->reset()V

    .line 167
    return-void
.end method

.method public buildAnimations()V
    .locals 4

    .prologue
    .line 190
    invoke-virtual {p0}, Lorg/andengine/entity/scene/menu/MenuScene;->prepareAnimations()V

    .line 192
    iget-object v2, p0, Lorg/andengine/entity/scene/menu/MenuScene;->mCamera:Lorg/andengine/engine/camera/Camera;

    invoke-virtual {v2}, Lorg/andengine/engine/camera/Camera;->getWidthRaw()F

    move-result v1

    .line 193
    .local v1, cameraWidthRaw:F
    iget-object v2, p0, Lorg/andengine/entity/scene/menu/MenuScene;->mCamera:Lorg/andengine/engine/camera/Camera;

    invoke-virtual {v2}, Lorg/andengine/engine/camera/Camera;->getHeightRaw()F

    move-result v0

    .line 194
    .local v0, cameraHeightRaw:F
    iget-object v2, p0, Lorg/andengine/entity/scene/menu/MenuScene;->mMenuAnimator:Lorg/andengine/entity/scene/menu/animator/IMenuAnimator;

    iget-object v3, p0, Lorg/andengine/entity/scene/menu/MenuScene;->mMenuItems:Ljava/util/ArrayList;

    invoke-interface {v2, v3, v1, v0}, Lorg/andengine/entity/scene/menu/animator/IMenuAnimator;->buildAnimations(Ljava/util/ArrayList;FF)V

    .line 195
    return-void
.end method

.method public clearChildScene()V
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0}, Lorg/andengine/entity/scene/menu/MenuScene;->getChildScene()Lorg/andengine/entity/scene/menu/MenuScene;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lorg/andengine/entity/scene/menu/MenuScene;->getChildScene()Lorg/andengine/entity/scene/menu/MenuScene;

    move-result-object v0

    invoke-virtual {v0}, Lorg/andengine/entity/scene/menu/MenuScene;->reset()V

    .line 112
    invoke-super {p0}, Lorg/andengine/entity/scene/CameraScene;->clearChildScene()V

    .line 114
    :cond_0
    return-void
.end method

.method public clearMenuItems()V
    .locals 3

    .prologue
    .line 87
    iget-object v2, p0, Lorg/andengine/entity/scene/menu/MenuScene;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 92
    return-void

    .line 88
    :cond_0
    iget-object v2, p0, Lorg/andengine/entity/scene/menu/MenuScene;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/andengine/entity/scene/menu/item/IMenuItem;

    .line 89
    .local v1, menuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;
    invoke-virtual {p0, v1}, Lorg/andengine/entity/scene/menu/MenuScene;->detachChild(Lorg/andengine/entity/IEntity;)Z

    .line 90
    invoke-virtual {p0, v1}, Lorg/andengine/entity/scene/menu/MenuScene;->unregisterTouchArea(Lorg/andengine/entity/scene/ITouchArea;)Z

    .line 87
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public closeMenuScene()V
    .locals 0

    .prologue
    .line 186
    invoke-virtual {p0}, Lorg/andengine/entity/scene/menu/MenuScene;->back()V

    .line 187
    return-void
.end method

.method public bridge synthetic getChildScene()Lorg/andengine/entity/scene/Scene;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/entity/scene/menu/MenuScene;->getChildScene()Lorg/andengine/entity/scene/menu/MenuScene;

    move-result-object v0

    return-object v0
.end method

.method public getChildScene()Lorg/andengine/entity/scene/menu/MenuScene;
    .locals 1

    .prologue
    .line 96
    invoke-super {p0}, Lorg/andengine/entity/scene/CameraScene;->getChildScene()Lorg/andengine/entity/scene/Scene;

    move-result-object v0

    check-cast v0, Lorg/andengine/entity/scene/menu/MenuScene;

    return-object v0
.end method

.method public getMenuItemCount()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/MenuScene;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getOnMenuItemClickListener()Lorg/andengine/entity/scene/menu/MenuScene$IOnMenuItemClickListener;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/MenuScene;->mOnMenuItemClickListener:Lorg/andengine/entity/scene/menu/MenuScene$IOnMenuItemClickListener;

    return-object v0
.end method

.method public onAreaTouched(Lorg/andengine/input/touch/TouchEvent;Lorg/andengine/entity/scene/ITouchArea;FF)Z
    .locals 4
    .parameter "pSceneTouchEvent"
    .parameter "pTouchArea"
    .parameter "pTouchAreaLocalX"
    .parameter "pTouchAreaLocalY"

    .prologue
    const/4 v3, 0x0

    .line 126
    move-object v1, p2

    check-cast v1, Lorg/andengine/entity/scene/menu/item/IMenuItem;

    .line 128
    .local v1, menuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;
    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 150
    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 131
    :pswitch_0
    iget-object v2, p0, Lorg/andengine/entity/scene/menu/MenuScene;->mSelectedMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/andengine/entity/scene/menu/MenuScene;->mSelectedMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    if-eq v2, v1, :cond_1

    .line 132
    iget-object v2, p0, Lorg/andengine/entity/scene/menu/MenuScene;->mSelectedMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v2}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->onUnselected()V

    .line 134
    :cond_1
    iput-object v1, p0, Lorg/andengine/entity/scene/menu/MenuScene;->mSelectedMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    .line 135
    iget-object v2, p0, Lorg/andengine/entity/scene/menu/MenuScene;->mSelectedMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v2}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->onSelected()V

    goto :goto_0

    .line 138
    :pswitch_1
    iget-object v2, p0, Lorg/andengine/entity/scene/menu/MenuScene;->mOnMenuItemClickListener:Lorg/andengine/entity/scene/menu/MenuScene$IOnMenuItemClickListener;

    if-eqz v2, :cond_0

    .line 139
    iget-object v2, p0, Lorg/andengine/entity/scene/menu/MenuScene;->mOnMenuItemClickListener:Lorg/andengine/entity/scene/menu/MenuScene$IOnMenuItemClickListener;

    invoke-interface {v2, p0, v1, p3, p4}, Lorg/andengine/entity/scene/menu/MenuScene$IOnMenuItemClickListener;->onMenuItemClicked(Lorg/andengine/entity/scene/menu/MenuScene;Lorg/andengine/entity/scene/menu/item/IMenuItem;FF)Z

    move-result v0

    .line 140
    .local v0, handled:Z
    invoke-interface {v1}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->onUnselected()V

    .line 141
    iput-object v3, p0, Lorg/andengine/entity/scene/menu/MenuScene;->mSelectedMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    goto :goto_1

    .line 146
    .end local v0           #handled:Z
    :pswitch_2
    invoke-interface {v1}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->onUnselected()V

    .line 147
    iput-object v3, p0, Lorg/andengine/entity/scene/menu/MenuScene;->mSelectedMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    goto :goto_0

    .line 128
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onSceneTouchEvent(Lorg/andengine/entity/scene/Scene;Lorg/andengine/input/touch/TouchEvent;)Z
    .locals 1
    .parameter "pScene"
    .parameter "pSceneTouchEvent"

    .prologue
    .line 155
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/MenuScene;->mSelectedMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/MenuScene;->mSelectedMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->onUnselected()V

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/andengine/entity/scene/menu/MenuScene;->mSelectedMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    .line 159
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public prepareAnimations()V
    .locals 4

    .prologue
    .line 198
    iget-object v2, p0, Lorg/andengine/entity/scene/menu/MenuScene;->mCamera:Lorg/andengine/engine/camera/Camera;

    invoke-virtual {v2}, Lorg/andengine/engine/camera/Camera;->getWidthRaw()F

    move-result v1

    .line 199
    .local v1, cameraWidthRaw:F
    iget-object v2, p0, Lorg/andengine/entity/scene/menu/MenuScene;->mCamera:Lorg/andengine/engine/camera/Camera;

    invoke-virtual {v2}, Lorg/andengine/engine/camera/Camera;->getHeightRaw()F

    move-result v0

    .line 200
    .local v0, cameraHeightRaw:F
    iget-object v2, p0, Lorg/andengine/entity/scene/menu/MenuScene;->mMenuAnimator:Lorg/andengine/entity/scene/menu/animator/IMenuAnimator;

    iget-object v3, p0, Lorg/andengine/entity/scene/menu/MenuScene;->mMenuItems:Ljava/util/ArrayList;

    invoke-interface {v2, v3, v1, v0}, Lorg/andengine/entity/scene/menu/animator/IMenuAnimator;->prepareAnimations(Ljava/util/ArrayList;FF)V

    .line 201
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 171
    invoke-super {p0}, Lorg/andengine/entity/scene/CameraScene;->reset()V

    .line 173
    iget-object v1, p0, Lorg/andengine/entity/scene/menu/MenuScene;->mMenuItems:Ljava/util/ArrayList;

    .line 174
    .local v1, menuItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/andengine/entity/scene/menu/item/IMenuItem;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 178
    invoke-virtual {p0}, Lorg/andengine/entity/scene/menu/MenuScene;->prepareAnimations()V

    .line 179
    return-void

    .line 175
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v2}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->reset()V

    .line 174
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public setChildScene(Lorg/andengine/entity/scene/Scene;ZZZ)V
    .locals 2
    .parameter "pChildScene"
    .parameter "pModalDraw"
    .parameter "pModalUpdate"
    .parameter "pModalTouch"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 101
    instance-of v0, p1, Lorg/andengine/entity/scene/menu/MenuScene;

    if-eqz v0, :cond_0

    .line 102
    invoke-super {p0, p1, p2, p3, p4}, Lorg/andengine/entity/scene/CameraScene;->setChildScene(Lorg/andengine/entity/scene/Scene;ZZZ)V

    .line 106
    return-void

    .line 104
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MenuScene accepts only MenuScenes as a ChildScene."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMenuAnimator(Lorg/andengine/entity/scene/menu/animator/IMenuAnimator;)V
    .locals 0
    .parameter "pMenuAnimator"

    .prologue
    .line 117
    iput-object p1, p0, Lorg/andengine/entity/scene/menu/MenuScene;->mMenuAnimator:Lorg/andengine/entity/scene/menu/animator/IMenuAnimator;

    .line 118
    return-void
.end method

.method public setOnMenuItemClickListener(Lorg/andengine/entity/scene/menu/MenuScene$IOnMenuItemClickListener;)V
    .locals 0
    .parameter "pOnMenuItemClickListener"

    .prologue
    .line 73
    iput-object p1, p0, Lorg/andengine/entity/scene/menu/MenuScene;->mOnMenuItemClickListener:Lorg/andengine/entity/scene/menu/MenuScene$IOnMenuItemClickListener;

    .line 74
    return-void
.end method
