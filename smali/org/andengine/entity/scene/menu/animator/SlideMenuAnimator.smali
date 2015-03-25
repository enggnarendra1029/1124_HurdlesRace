.class public Lorg/andengine/entity/scene/menu/animator/SlideMenuAnimator;
.super Lorg/andengine/entity/scene/menu/animator/BaseMenuAnimator;
.source "SlideMenuAnimator.java"


# static fields
.field private static synthetic $SWITCH_TABLE$org$andengine$util$HorizontalAlign:[I


# direct methods
.method static synthetic $SWITCH_TABLE$org$andengine$util$HorizontalAlign()[I
    .locals 3

    .prologue
    .line 17
    sget-object v0, Lorg/andengine/entity/scene/menu/animator/SlideMenuAnimator;->$SWITCH_TABLE$org$andengine$util$HorizontalAlign:[I

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
    sput-object v0, Lorg/andengine/entity/scene/menu/animator/SlideMenuAnimator;->$SWITCH_TABLE$org$andengine$util$HorizontalAlign:[I

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
    .line 31
    invoke-direct {p0}, Lorg/andengine/entity/scene/menu/animator/BaseMenuAnimator;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(F)V
    .locals 0
    .parameter "pMenuItemSpacing"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lorg/andengine/entity/scene/menu/animator/BaseMenuAnimator;-><init>(F)V

    .line 48
    return-void
.end method

.method public constructor <init>(FLorg/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 0
    .parameter "pMenuItemSpacing"
    .parameter "pEaseFunction"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lorg/andengine/entity/scene/menu/animator/BaseMenuAnimator;-><init>(FLorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/andengine/util/HorizontalAlign;)V
    .locals 0
    .parameter "pHorizontalAlign"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lorg/andengine/entity/scene/menu/animator/BaseMenuAnimator;-><init>(Lorg/andengine/util/HorizontalAlign;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/andengine/util/HorizontalAlign;F)V
    .locals 0
    .parameter "pHorizontalAlign"
    .parameter "pMenuItemSpacing"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lorg/andengine/entity/scene/menu/animator/BaseMenuAnimator;-><init>(Lorg/andengine/util/HorizontalAlign;F)V

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/andengine/util/HorizontalAlign;FLorg/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 0
    .parameter "pHorizontalAlign"
    .parameter "pMenuItemSpacing"
    .parameter "pEaseFunction"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lorg/andengine/entity/scene/menu/animator/BaseMenuAnimator;-><init>(Lorg/andengine/util/HorizontalAlign;FLorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lorg/andengine/util/HorizontalAlign;Lorg/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 0
    .parameter "pHorizontalAlign"
    .parameter "pEaseFunction"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lorg/andengine/entity/scene/menu/animator/BaseMenuAnimator;-><init>(Lorg/andengine/util/HorizontalAlign;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 0
    .parameter "pEaseFunction"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lorg/andengine/entity/scene/menu/animator/BaseMenuAnimator;-><init>(Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 36
    return-void
.end method


# virtual methods
.method public buildAnimations(Ljava/util/ArrayList;FF)V
    .locals 17
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
    .line 72
    .local p1, pMenuItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/andengine/entity/scene/menu/item/IMenuItem;>;"
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/andengine/entity/scene/menu/animator/SlideMenuAnimator;->mEaseFunction:Lorg/andengine/util/modifier/ease/IEaseFunction;

    .line 73
    .local v7, easeFunction:Lorg/andengine/util/modifier/ease/IEaseFunction;
    invoke-virtual/range {p0 .. p1}, Lorg/andengine/entity/scene/menu/animator/SlideMenuAnimator;->getMaximumWidth(Ljava/util/ArrayList;)F

    move-result v11

    .line 74
    .local v11, maximumWidth:F
    invoke-virtual/range {p0 .. p1}, Lorg/andengine/entity/scene/menu/animator/SlideMenuAnimator;->getOverallHeight(Ljava/util/ArrayList;)F

    move-result v16

    .line 76
    .local v16, overallHeight:F
    sub-float v2, p2, v11

    const/high16 v3, 0x3f00

    mul-float v8, v2, v3

    .line 77
    .local v8, baseX:F
    sub-float v2, p3, v16

    const/high16 v3, 0x3f00

    mul-float v9, v2, v3

    .line 79
    .local v9, baseY:F
    const/4 v15, 0x0

    .line 80
    .local v15, offsetY:F
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 81
    .local v13, menuItemCount:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    if-lt v10, v13, :cond_0

    .line 104
    return-void

    .line 82
    :cond_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/andengine/entity/scene/menu/item/IMenuItem;

    .line 85
    .local v12, menuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;
    invoke-static {}, Lorg/andengine/entity/scene/menu/animator/SlideMenuAnimator;->$SWITCH_TABLE$org$andengine$util$HorizontalAlign()[I

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/andengine/entity/scene/menu/animator/SlideMenuAnimator;->mHorizontalAlign:Lorg/andengine/util/HorizontalAlign;

    invoke-virtual {v3}, Lorg/andengine/util/HorizontalAlign;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 94
    :pswitch_0
    invoke-interface {v12}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->getWidthScaled()F

    move-result v2

    sub-float v2, v11, v2

    const/high16 v3, 0x3f00

    mul-float v14, v2, v3

    .line 98
    .local v14, offsetX:F
    :goto_1
    new-instance v1, Lorg/andengine/entity/modifier/MoveModifier;

    const/high16 v2, 0x3f80

    neg-float v3, v11

    add-float v4, v8, v14

    add-float v5, v9, v15

    add-float v6, v9, v15

    invoke-direct/range {v1 .. v7}, Lorg/andengine/entity/modifier/MoveModifier;-><init>(FFFFFLorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 99
    .local v1, moveModifier:Lorg/andengine/entity/modifier/MoveModifier;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/andengine/entity/modifier/MoveModifier;->setAutoUnregisterWhenFinished(Z)V

    .line 100
    invoke-interface {v12, v1}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->registerEntityModifier(Lorg/andengine/entity/modifier/IEntityModifier;)V

    .line 102
    invoke-interface {v12}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->getHeight()F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/andengine/entity/scene/menu/animator/SlideMenuAnimator;->mMenuItemSpacing:F

    add-float/2addr v2, v3

    add-float/2addr v15, v2

    .line 81
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 87
    .end local v1           #moveModifier:Lorg/andengine/entity/modifier/MoveModifier;
    .end local v14           #offsetX:F
    :pswitch_1
    const/4 v14, 0x0

    .line 88
    .restart local v14       #offsetX:F
    goto :goto_1

    .line 90
    .end local v14           #offsetX:F
    :pswitch_2
    invoke-interface {v12}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->getWidthScaled()F

    move-result v2

    sub-float v14, v11, v2

    .line 91
    .restart local v14       #offsetX:F
    goto :goto_1

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public prepareAnimations(Ljava/util/ArrayList;FF)V
    .locals 10
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
    .line 108
    .local p1, pMenuItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/andengine/entity/scene/menu/item/IMenuItem;>;"
    invoke-virtual {p0, p1}, Lorg/andengine/entity/scene/menu/animator/SlideMenuAnimator;->getMaximumWidth(Ljava/util/ArrayList;)F

    move-result v2

    .line 109
    .local v2, maximumWidth:F
    invoke-virtual {p0, p1}, Lorg/andengine/entity/scene/menu/animator/SlideMenuAnimator;->getOverallHeight(Ljava/util/ArrayList;)F

    move-result v7

    .line 111
    .local v7, overallHeight:F
    sub-float v8, p3, v7

    const/high16 v9, 0x3f00

    mul-float v0, v8, v9

    .line 113
    .local v0, baseY:F
    iget v5, p0, Lorg/andengine/entity/scene/menu/animator/SlideMenuAnimator;->mMenuItemSpacing:F

    .line 115
    .local v5, menuItemSpacing:F
    const/4 v6, 0x0

    .line 116
    .local v6, offsetY:F
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 117
    .local v4, menuItemCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v4, :cond_0

    .line 124
    return-void

    .line 118
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/andengine/entity/scene/menu/item/IMenuItem;

    .line 120
    .local v3, menuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;
    neg-float v8, v2

    add-float v9, v0, v6

    invoke-interface {v3, v8, v9}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->setPosition(FF)V

    .line 122
    invoke-interface {v3}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->getHeight()F

    move-result v8

    add-float/2addr v8, v5

    add-float/2addr v6, v8

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
