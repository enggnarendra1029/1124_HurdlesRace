.class public Lorg/andengine/entity/scene/menu/animator/DirectMenuAnimator;
.super Lorg/andengine/entity/scene/menu/animator/BaseMenuAnimator;
.source "DirectMenuAnimator.java"


# static fields
.field private static synthetic $SWITCH_TABLE$org$andengine$util$HorizontalAlign:[I


# direct methods
.method static synthetic $SWITCH_TABLE$org$andengine$util$HorizontalAlign()[I
    .locals 3

    .prologue
    .line 15
    sget-object v0, Lorg/andengine/entity/scene/menu/animator/DirectMenuAnimator;->$SWITCH_TABLE$org$andengine$util$HorizontalAlign:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/andengine/util/HorizontalAlign;->values()[Lorg/andengine/util/HorizontalAlign;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/andengine/util/HorizontalAlign;->CENTER:Lorg/andengine/util/HorizontalAlign;

    invoke-virtual {v1}, Lorg/andengine/util/HorizontalAlign;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lorg/andengine/util/HorizontalAlign;->LEFT:Lorg/andengine/util/HorizontalAlign;

    invoke-virtual {v1}, Lorg/andengine/util/HorizontalAlign;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lorg/andengine/util/HorizontalAlign;->RIGHT:Lorg/andengine/util/HorizontalAlign;

    invoke-virtual {v1}, Lorg/andengine/util/HorizontalAlign;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lorg/andengine/entity/scene/menu/animator/DirectMenuAnimator;->$SWITCH_TABLE$org$andengine$util$HorizontalAlign:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/andengine/entity/scene/menu/animator/BaseMenuAnimator;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(F)V
    .locals 0
    .parameter "pMenuItemSpacing"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lorg/andengine/entity/scene/menu/animator/BaseMenuAnimator;-><init>(F)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/andengine/util/HorizontalAlign;)V
    .locals 0
    .parameter "pHorizontalAlign"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lorg/andengine/entity/scene/menu/animator/BaseMenuAnimator;-><init>(Lorg/andengine/util/HorizontalAlign;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lorg/andengine/util/HorizontalAlign;F)V
    .locals 0
    .parameter "pHorizontalAlign"
    .parameter "pMenuItemSpacing"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lorg/andengine/entity/scene/menu/animator/BaseMenuAnimator;-><init>(Lorg/andengine/util/HorizontalAlign;F)V

    .line 42
    return-void
.end method


# virtual methods
.method public buildAnimations(Ljava/util/ArrayList;FF)V
    .locals 0
    .parameter
    .parameter "pCameraWidth"
    .parameter "pCameraHeight"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/andengine/entity/scene/menu/item/IMenuItem;",
            ">;FF)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, pMenuItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/andengine/entity/scene/menu/item/IMenuItem;>;"
    return-void
.end method

.method public prepareAnimations(Ljava/util/ArrayList;FF)V
    .locals 12
    .parameter
    .parameter "pCameraWidth"
    .parameter "pCameraHeight"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/andengine/entity/scene/menu/item/IMenuItem;",
            ">;FF)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, pMenuItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/andengine/entity/scene/menu/item/IMenuItem;>;"
    invoke-virtual {p0, p1}, Lorg/andengine/entity/scene/menu/animator/DirectMenuAnimator;->getMaximumWidth(Ljava/util/ArrayList;)F

    move-result v3

    .line 60
    .local v3, maximumWidth:F
    invoke-virtual {p0, p1}, Lorg/andengine/entity/scene/menu/animator/DirectMenuAnimator;->getOverallHeight(Ljava/util/ArrayList;)F

    move-result v9

    .line 62
    .local v9, overallHeight:F
    sub-float v10, p2, v3

    const/high16 v11, 0x3f00

    mul-float v0, v10, v11

    .line 63
    .local v0, baseX:F
    sub-float v10, p3, v9

    const/high16 v11, 0x3f00

    mul-float v1, v10, v11

    .line 65
    .local v1, baseY:F
    iget v6, p0, Lorg/andengine/entity/scene/menu/animator/DirectMenuAnimator;->mMenuItemSpacing:F

    .line 67
    .local v6, menuItemSpacing:F
    const/4 v8, 0x0

    .line 68
    .local v8, offsetY:F
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 69
    .local v5, menuItemCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v5, :cond_0

    .line 89
    return-void

    .line 70
    :cond_0
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/andengine/entity/scene/menu/item/IMenuItem;

    .line 73
    .local v4, menuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;
    invoke-static {}, Lorg/andengine/entity/scene/menu/animator/DirectMenuAnimator;->$SWITCH_TABLE$org$andengine$util$HorizontalAlign()[I

    move-result-object v10

    iget-object v11, p0, Lorg/andengine/entity/scene/menu/animator/DirectMenuAnimator;->mHorizontalAlign:Lorg/andengine/util/HorizontalAlign;

    invoke-virtual {v11}, Lorg/andengine/util/HorizontalAlign;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 82
    :pswitch_0
    invoke-interface {v4}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->getWidthScaled()F

    move-result v10

    sub-float v10, v3, v10

    const/high16 v11, 0x3f00

    mul-float v7, v10, v11

    .line 85
    .local v7, offsetX:F
    :goto_1
    add-float v10, v0, v7

    add-float v11, v1, v8

    invoke-interface {v4, v10, v11}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->setPosition(FF)V

    .line 87
    invoke-interface {v4}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->getHeight()F

    move-result v10

    add-float/2addr v10, v6

    add-float/2addr v8, v10

    .line 69
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 75
    .end local v7           #offsetX:F
    :pswitch_1
    const/4 v7, 0x0

    .line 76
    .restart local v7       #offsetX:F
    goto :goto_1

    .line 78
    .end local v7           #offsetX:F
    :pswitch_2
    invoke-interface {v4}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->getWidthScaled()F

    move-result v10

    sub-float v7, v3, v10

    .line 79
    .restart local v7       #offsetX:F
    goto :goto_1

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
