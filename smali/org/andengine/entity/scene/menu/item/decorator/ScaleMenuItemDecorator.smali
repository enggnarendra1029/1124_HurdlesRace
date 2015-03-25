.class public Lorg/andengine/entity/scene/menu/item/decorator/ScaleMenuItemDecorator;
.super Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;
.source "ScaleMenuItemDecorator.java"


# instance fields
.field private final mSelectedScale:F

.field private final mUnselectedScale:F


# direct methods
.method public constructor <init>(Lorg/andengine/entity/scene/menu/item/IMenuItem;FF)V
    .locals 0
    .parameter "pMenuItem"
    .parameter "pSelectedScale"
    .parameter "pUnselectedScale"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;-><init>(Lorg/andengine/entity/scene/menu/item/IMenuItem;)V

    .line 31
    iput p2, p0, Lorg/andengine/entity/scene/menu/item/decorator/ScaleMenuItemDecorator;->mSelectedScale:F

    .line 32
    iput p3, p0, Lorg/andengine/entity/scene/menu/item/decorator/ScaleMenuItemDecorator;->mUnselectedScale:F

    .line 34
    invoke-interface {p1, p3}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->setScale(F)V

    .line 35
    return-void
.end method


# virtual methods
.method public onMenuItemReset(Lorg/andengine/entity/scene/menu/item/IMenuItem;)V
    .locals 1
    .parameter "pMenuItem"

    .prologue
    .line 61
    iget v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/ScaleMenuItemDecorator;->mUnselectedScale:F

    invoke-virtual {p0, v0}, Lorg/andengine/entity/scene/menu/item/decorator/ScaleMenuItemDecorator;->setScale(F)V

    .line 62
    return-void
.end method

.method public onMenuItemSelected(Lorg/andengine/entity/scene/menu/item/IMenuItem;)V
    .locals 1
    .parameter "pMenuItem"

    .prologue
    .line 51
    iget v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/ScaleMenuItemDecorator;->mSelectedScale:F

    invoke-virtual {p0, v0}, Lorg/andengine/entity/scene/menu/item/decorator/ScaleMenuItemDecorator;->setScale(F)V

    .line 52
    return-void
.end method

.method public onMenuItemUnselected(Lorg/andengine/entity/scene/menu/item/IMenuItem;)V
    .locals 1
    .parameter "pMenuItem"

    .prologue
    .line 56
    iget v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/ScaleMenuItemDecorator;->mUnselectedScale:F

    invoke-virtual {p0, v0}, Lorg/andengine/entity/scene/menu/item/decorator/ScaleMenuItemDecorator;->setScale(F)V

    .line 57
    return-void
.end method
