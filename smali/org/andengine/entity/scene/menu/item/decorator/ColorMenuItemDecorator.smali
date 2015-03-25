.class public Lorg/andengine/entity/scene/menu/item/decorator/ColorMenuItemDecorator;
.super Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;
.source "ColorMenuItemDecorator.java"


# instance fields
.field private final mSelectedColor:Lorg/andengine/util/color/Color;

.field private final mUnselectedColor:Lorg/andengine/util/color/Color;


# direct methods
.method public constructor <init>(Lorg/andengine/entity/scene/menu/item/IMenuItem;Lorg/andengine/util/color/Color;Lorg/andengine/util/color/Color;)V
    .locals 0
    .parameter "pMenuItem"
    .parameter "pSelectedColor"
    .parameter "pUnselectedColor"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;-><init>(Lorg/andengine/entity/scene/menu/item/IMenuItem;)V

    .line 32
    iput-object p2, p0, Lorg/andengine/entity/scene/menu/item/decorator/ColorMenuItemDecorator;->mSelectedColor:Lorg/andengine/util/color/Color;

    .line 33
    iput-object p3, p0, Lorg/andengine/entity/scene/menu/item/decorator/ColorMenuItemDecorator;->mUnselectedColor:Lorg/andengine/util/color/Color;

    .line 35
    invoke-interface {p1, p3}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->setColor(Lorg/andengine/util/color/Color;)V

    .line 36
    return-void
.end method


# virtual methods
.method public onMenuItemReset(Lorg/andengine/entity/scene/menu/item/IMenuItem;)V
    .locals 1
    .parameter "pMenuItem"

    .prologue
    .line 62
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/ColorMenuItemDecorator;->mUnselectedColor:Lorg/andengine/util/color/Color;

    invoke-interface {p1, v0}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->setColor(Lorg/andengine/util/color/Color;)V

    .line 63
    return-void
.end method

.method public onMenuItemSelected(Lorg/andengine/entity/scene/menu/item/IMenuItem;)V
    .locals 1
    .parameter "pMenuItem"

    .prologue
    .line 52
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/ColorMenuItemDecorator;->mSelectedColor:Lorg/andengine/util/color/Color;

    invoke-interface {p1, v0}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->setColor(Lorg/andengine/util/color/Color;)V

    .line 53
    return-void
.end method

.method public onMenuItemUnselected(Lorg/andengine/entity/scene/menu/item/IMenuItem;)V
    .locals 1
    .parameter "pMenuItem"

    .prologue
    .line 57
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/ColorMenuItemDecorator;->mUnselectedColor:Lorg/andengine/util/color/Color;

    invoke-interface {p1, v0}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->setColor(Lorg/andengine/util/color/Color;)V

    .line 58
    return-void
.end method
