.class public abstract Lorg/andengine/entity/scene/menu/animator/BaseMenuAnimator;
.super Ljava/lang/Object;
.source "BaseMenuAnimator.java"

# interfaces
.implements Lorg/andengine/entity/scene/menu/animator/IMenuAnimator;


# static fields
.field protected static final DURATION:F = 1.0f

.field private static final HORIZONTALALIGN_DEFAULT:Lorg/andengine/util/HorizontalAlign; = null

.field private static final MENUITEMSPACING_DEFAULT:F = 1.0f


# instance fields
.field protected final mEaseFunction:Lorg/andengine/util/modifier/ease/IEaseFunction;

.field protected final mHorizontalAlign:Lorg/andengine/util/HorizontalAlign;

.field protected final mMenuItemSpacing:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lorg/andengine/util/HorizontalAlign;->CENTER:Lorg/andengine/util/HorizontalAlign;

    sput-object v0, Lorg/andengine/entity/scene/menu/animator/BaseMenuAnimator;->HORIZONTALALIGN_DEFAULT:Lorg/andengine/util/HorizontalAlign;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    const/high16 v0, 0x3f80

    invoke-direct {p0, v0}, Lorg/andengine/entity/scene/menu/animator/BaseMenuAnimator;-><init>(F)V

    .line 42
    return-void
.end method

.method public constructor <init>(F)V
    .locals 1
    .parameter "pMenuItemSpacing"

    .prologue
    .line 49
    sget-object v0, Lorg/andengine/entity/scene/menu/animator/BaseMenuAnimator;->HORIZONTALALIGN_DEFAULT:Lorg/andengine/util/HorizontalAlign;

    invoke-direct {p0, v0, p1}, Lorg/andengine/entity/scene/menu/animator/BaseMenuAnimator;-><init>(Lorg/andengine/util/HorizontalAlign;F)V

    .line 50
    return-void
.end method

.method public constructor <init>(FLorg/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 1
    .parameter "pMenuItemSpacing"
    .parameter "pEaseFunction"

    .prologue
    .line 53
    sget-object v0, Lorg/andengine/entity/scene/menu/animator/BaseMenuAnimator;->HORIZONTALALIGN_DEFAULT:Lorg/andengine/util/HorizontalAlign;

    invoke-direct {p0, v0, p1, p2}, Lorg/andengine/entity/scene/menu/animator/BaseMenuAnimator;-><init>(Lorg/andengine/util/HorizontalAlign;FLorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lorg/andengine/util/HorizontalAlign;)V
    .locals 1
    .parameter "pHorizontalAlign"

    .prologue
    .line 57
    const/high16 v0, 0x3f80

    invoke-direct {p0, p1, v0}, Lorg/andengine/entity/scene/menu/animator/BaseMenuAnimator;-><init>(Lorg/andengine/util/HorizontalAlign;F)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lorg/andengine/util/HorizontalAlign;F)V
    .locals 1
    .parameter "pHorizontalAlign"
    .parameter "pMenuItemSpacing"

    .prologue
    .line 65
    invoke-static {}, Lorg/andengine/util/modifier/ease/EaseLinear;->getInstance()Lorg/andengine/util/modifier/ease/EaseLinear;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/andengine/entity/scene/menu/animator/BaseMenuAnimator;-><init>(Lorg/andengine/util/HorizontalAlign;FLorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Lorg/andengine/util/HorizontalAlign;FLorg/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 0
    .parameter "pHorizontalAlign"
    .parameter "pMenuItemSpacing"
    .parameter "pEaseFunction"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lorg/andengine/entity/scene/menu/animator/BaseMenuAnimator;->mHorizontalAlign:Lorg/andengine/util/HorizontalAlign;

    .line 70
    iput p2, p0, Lorg/andengine/entity/scene/menu/animator/BaseMenuAnimator;->mMenuItemSpacing:F

    .line 71
    iput-object p3, p0, Lorg/andengine/entity/scene/menu/animator/BaseMenuAnimator;->mEaseFunction:Lorg/andengine/util/modifier/ease/IEaseFunction;

    .line 72
    return-void
.end method

.method public constructor <init>(Lorg/andengine/util/HorizontalAlign;Lorg/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 1
    .parameter "pHorizontalAlign"
    .parameter "pEaseFunction"

    .prologue
    .line 61
    const/high16 v0, 0x3f80

    invoke-direct {p0, p1, v0, p2}, Lorg/andengine/entity/scene/menu/animator/BaseMenuAnimator;-><init>(Lorg/andengine/util/HorizontalAlign;FLorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 1
    .parameter "pEaseFunction"

    .prologue
    .line 45
    const/high16 v0, 0x3f80

    invoke-direct {p0, v0, p1}, Lorg/andengine/entity/scene/menu/animator/BaseMenuAnimator;-><init>(FLorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 46
    return-void
.end method


# virtual methods
.method protected getMaximumWidth(Ljava/util/ArrayList;)F
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/andengine/entity/scene/menu/item/IMenuItem;",
            ">;)F"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, pMenuItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/andengine/entity/scene/menu/item/IMenuItem;>;"
    const/4 v1, 0x1

    .line 80
    .local v1, maximumWidth:F
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 84
    return v1

    .line 81
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/andengine/entity/scene/menu/item/IMenuItem;

    .line 82
    .local v2, menuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;
    invoke-interface {v2}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->getWidthScaled()F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 80
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method protected getOverallHeight(Ljava/util/ArrayList;)F
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/andengine/entity/scene/menu/item/IMenuItem;",
            ">;)F"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, pMenuItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/andengine/entity/scene/menu/item/IMenuItem;>;"
    const/4 v2, 0x0

    .line 89
    .local v2, overallHeight:F
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 94
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    iget v4, p0, Lorg/andengine/entity/scene/menu/animator/BaseMenuAnimator;->mMenuItemSpacing:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 95
    return v2

    .line 90
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/andengine/entity/scene/menu/item/IMenuItem;

    .line 91
    .local v1, menuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;
    invoke-interface {v1}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->getHeight()F

    move-result v3

    add-float/2addr v2, v3

    .line 89
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
