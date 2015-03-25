.class public abstract Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;
.super Ljava/lang/Object;
.source "BaseMenuItemDecorator.java"

# interfaces
.implements Lorg/andengine/entity/scene/menu/item/IMenuItem;


# instance fields
.field protected final mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;


# direct methods
.method public constructor <init>(Lorg/andengine/entity/scene/menu/item/IMenuItem;)V
    .locals 0
    .parameter "pMenuItem"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    .line 50
    return-void
.end method


# virtual methods
.method public attachChild(Lorg/andengine/entity/IEntity;)V
    .locals 1
    .parameter "pEntity"

    .prologue
    .line 579
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->attachChild(Lorg/andengine/entity/IEntity;)V

    .line 580
    return-void
.end method

.method public callOnChildren(Lorg/andengine/entity/IEntityParameterCallable;)V
    .locals 1
    .parameter "pEntityParameterCallable"

    .prologue
    .line 684
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->callOnChildren(Lorg/andengine/entity/IEntityParameterCallable;)V

    .line 685
    return-void
.end method

.method public callOnChildren(Lorg/andengine/entity/IEntityParameterCallable;Lorg/andengine/entity/IEntityMatcher;)V
    .locals 1
    .parameter "pEntityParameterCallable"
    .parameter "pEntityMatcher"

    .prologue
    .line 689
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1, p2}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->callOnChildren(Lorg/andengine/entity/IEntityParameterCallable;Lorg/andengine/entity/IEntityMatcher;)V

    .line 690
    return-void
.end method

.method public clearEntityModifiers()V
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->clearEntityModifiers()V

    .line 424
    return-void
.end method

.method public clearUpdateHandlers()V
    .locals 1

    .prologue
    .line 809
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->clearUpdateHandlers()V

    .line 810
    return-void
.end method

.method public collidesWith(Lorg/andengine/entity/shape/IShape;)Z
    .locals 1
    .parameter "pOtherShape"

    .prologue
    .line 383
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->collidesWith(Lorg/andengine/entity/shape/IShape;)Z

    move-result v0

    return v0
.end method

.method public contains(FF)Z
    .locals 1
    .parameter "pX"
    .parameter "pY"

    .prologue
    .line 524
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1, p2}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->contains(FF)Z

    move-result v0

    return v0
.end method

.method public convertLocalToSceneCoordinates(FF)[F
    .locals 1
    .parameter "pX"
    .parameter "pY"

    .prologue
    .line 529
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1, p2}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->convertLocalToSceneCoordinates(FF)[F

    move-result-object v0

    return-object v0
.end method

.method public convertLocalToSceneCoordinates(FF[F)[F
    .locals 1
    .parameter "pX"
    .parameter "pY"
    .parameter "pReuse"

    .prologue
    .line 534
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1, p2, p3}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->convertLocalToSceneCoordinates(FF[F)[F

    move-result-object v0

    return-object v0
.end method

.method public convertLocalToSceneCoordinates([F)[F
    .locals 1
    .parameter "pCoordinates"

    .prologue
    .line 539
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->convertLocalToSceneCoordinates([F)[F

    move-result-object v0

    return-object v0
.end method

.method public convertLocalToSceneCoordinates([F[F)[F
    .locals 1
    .parameter "pCoordinates"
    .parameter "pReuse"

    .prologue
    .line 544
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1, p2}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->convertLocalToSceneCoordinates([F[F)[F

    move-result-object v0

    return-object v0
.end method

.method public convertSceneToLocalCoordinates(FF)[F
    .locals 1
    .parameter "pX"
    .parameter "pY"

    .prologue
    .line 549
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1, p2}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->convertSceneToLocalCoordinates(FF)[F

    move-result-object v0

    return-object v0
.end method

.method public convertSceneToLocalCoordinates(FF[F)[F
    .locals 1
    .parameter "pX"
    .parameter "pY"
    .parameter "pReuse"

    .prologue
    .line 554
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1, p2, p3}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->convertSceneToLocalCoordinates(FF[F)[F

    move-result-object v0

    return-object v0
.end method

.method public convertSceneToLocalCoordinates([F)[F
    .locals 1
    .parameter "pCoordinates"

    .prologue
    .line 559
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->convertSceneToLocalCoordinates([F)[F

    move-result-object v0

    return-object v0
.end method

.method public convertSceneToLocalCoordinates([F[F)[F
    .locals 1
    .parameter "pCoordinates"
    .parameter "pReuse"

    .prologue
    .line 564
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1, p2}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->convertSceneToLocalCoordinates([F[F)[F

    move-result-object v0

    return-object v0
.end method

.method public detachChild(I)Lorg/andengine/entity/IEntity;
    .locals 1
    .parameter "pTag"

    .prologue
    .line 664
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->detachChild(I)Lorg/andengine/entity/IEntity;

    move-result-object v0

    return-object v0
.end method

.method public detachChild(Lorg/andengine/entity/IEntityMatcher;)Lorg/andengine/entity/IEntity;
    .locals 1
    .parameter "pEntityMatcher"

    .prologue
    .line 669
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->detachChild(Lorg/andengine/entity/IEntityMatcher;)Lorg/andengine/entity/IEntity;

    move-result-object v0

    return-object v0
.end method

.method public detachChild(Lorg/andengine/entity/IEntity;)Z
    .locals 1
    .parameter "pEntity"

    .prologue
    .line 659
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->detachChild(Lorg/andengine/entity/IEntity;)Z

    move-result v0

    return v0
.end method

.method public detachChildren()V
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->detachChildren()V

    .line 680
    return-void
.end method

.method public detachChildren(Lorg/andengine/entity/IEntityMatcher;)Z
    .locals 1
    .parameter "pEntityMatcher"

    .prologue
    .line 674
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->detachChildren(Lorg/andengine/entity/IEntityMatcher;)Z

    move-result v0

    return v0
.end method

.method public detachSelf()Z
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->detachSelf()Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->dispose()V

    .line 520
    return-void
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->getAlpha()F

    move-result v0

    return v0
.end method

.method public getBlendFunctionDestination()I
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->getBlendFunctionDestination()I

    move-result v0

    return v0
.end method

.method public getBlendFunctionSource()I
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->getBlendFunctionSource()I

    move-result v0

    return v0
.end method

.method public getBlue()F
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->getBlue()F

    move-result v0

    return v0
.end method

.method public getChildByIndex(I)Lorg/andengine/entity/IEntity;
    .locals 1
    .parameter "pIndex"

    .prologue
    .line 599
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->getChildByIndex(I)Lorg/andengine/entity/IEntity;

    move-result-object v0

    return-object v0
.end method

.method public getChildByMatcher(Lorg/andengine/entity/IEntityMatcher;)Lorg/andengine/entity/IEntity;
    .locals 1
    .parameter "pEntityMatcher"

    .prologue
    .line 604
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->getChildByMatcher(Lorg/andengine/entity/IEntityMatcher;)Lorg/andengine/entity/IEntity;

    move-result-object v0

    return-object v0
.end method

.method public getChildByTag(I)Lorg/andengine/entity/IEntity;
    .locals 1
    .parameter "pTag"

    .prologue
    .line 594
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->getChildByTag(I)Lorg/andengine/entity/IEntity;

    move-result-object v0

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getColor()Lorg/andengine/util/color/Color;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->getColor()Lorg/andengine/util/color/Color;

    move-result-object v0

    return-object v0
.end method

.method public getEntityModifierCount()I
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->getEntityModifierCount()I

    move-result v0

    return v0
.end method

.method public getFirstChild()Lorg/andengine/entity/IEntity;
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->getFirstChild()Lorg/andengine/entity/IEntity;

    move-result-object v0

    return-object v0
.end method

.method public getGreen()F
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->getGreen()F

    move-result v0

    return v0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->getHeight()F

    move-result v0

    return v0
.end method

.method public getHeightScaled()F
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->getHeightScaled()F

    move-result v0

    return v0
.end method

.method public getID()I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->getID()I

    move-result v0

    return v0
.end method

.method public getLastChild()Lorg/andengine/entity/IEntity;
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->getLastChild()Lorg/andengine/entity/IEntity;

    move-result-object v0

    return-object v0
.end method

.method public getLocalToParentTransformation()Lorg/andengine/util/adt/transformation/Transformation;
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->getLocalToParentTransformation()Lorg/andengine/util/adt/transformation/Transformation;

    move-result-object v0

    return-object v0
.end method

.method public getLocalToSceneTransformation()Lorg/andengine/util/adt/transformation/Transformation;
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->getLocalToSceneTransformation()Lorg/andengine/util/adt/transformation/Transformation;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lorg/andengine/entity/IEntity;
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->getParent()Lorg/andengine/entity/IEntity;

    move-result-object v0

    return-object v0
.end method

.method public getParentToLocalTransformation()Lorg/andengine/util/adt/transformation/Transformation;
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->getParentToLocalTransformation()Lorg/andengine/util/adt/transformation/Transformation;

    move-result-object v0

    return-object v0
.end method

.method public getRed()F
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->getRed()F

    move-result v0

    return v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->getRotation()F

    move-result v0

    return v0
.end method

.method public getRotationCenterX()F
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->getRotationCenterX()F

    move-result v0

    return v0
.end method

.method public getRotationCenterY()F
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->getRotationCenterY()F

    move-result v0

    return v0
.end method

.method public getScaleCenterX()F
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->getScaleCenterX()F

    move-result v0

    return v0
.end method

.method public getScaleCenterY()F
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->getScaleCenterY()F

    move-result v0

    return v0
.end method

.method public getScaleX()F
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->getScaleX()F

    move-result v0

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->getScaleY()F

    move-result v0

    return v0
.end method

.method public getSceneCenterCoordinates()[F
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->getSceneCenterCoordinates()[F

    move-result-object v0

    return-object v0
.end method

.method public getSceneCenterCoordinates([F)[F
    .locals 1
    .parameter "pReuse"

    .prologue
    .line 393
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->getSceneCenterCoordinates([F)[F

    move-result-object v0

    return-object v0
.end method

.method public getSceneToLocalTransformation()Lorg/andengine/util/adt/transformation/Transformation;
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->getSceneToLocalTransformation()Lorg/andengine/util/adt/transformation/Transformation;

    move-result-object v0

    return-object v0
.end method

.method public getShaderProgram()Lorg/andengine/opengl/shader/ShaderProgram;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->getShaderProgram()Lorg/andengine/opengl/shader/ShaderProgram;

    move-result-object v0

    return-object v0
.end method

.method public getSkewCenterX()F
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->getSkewCenterX()F

    move-result v0

    return v0
.end method

.method public getSkewCenterY()F
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->getSkewCenterY()F

    move-result v0

    return v0
.end method

.method public getSkewX()F
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->getSkewX()F

    move-result v0

    return v0
.end method

.method public getSkewY()F
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->getSkewY()F

    move-result v0

    return v0
.end method

.method public getTag()I
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->getTag()I

    move-result v0

    return v0
.end method

.method public getUpdateHandlerCount()I
    .locals 1

    .prologue
    .line 804
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->getUpdateHandlerCount()I

    move-result v0

    return v0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 779
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->getUserData()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getVertexBufferObject()Lorg/andengine/opengl/vbo/IVertexBufferObject;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->getVertexBufferObject()Lorg/andengine/opengl/vbo/IVertexBufferObject;

    move-result-object v0

    return-object v0
.end method

.method public getVertexBufferObjectManager()Lorg/andengine/opengl/vbo/VertexBufferObjectManager;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->getVertexBufferObjectManager()Lorg/andengine/opengl/vbo/VertexBufferObjectManager;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->getWidth()F

    move-result v0

    return v0
.end method

.method public getWidthScaled()F
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->getWidthScaled()F

    move-result v0

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->getX()F

    move-result v0

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->getY()F

    move-result v0

    return v0
.end method

.method public getZIndex()I
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->getZIndex()I

    move-result v0

    return v0
.end method

.method public hasParent()Z
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->hasParent()Z

    move-result v0

    return v0
.end method

.method public isBlendingEnabled()Z
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->isBlendingEnabled()Z

    move-result v0

    return v0
.end method

.method public isChildrenIgnoreUpdate()Z
    .locals 1

    .prologue
    .line 764
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->isChildrenIgnoreUpdate()Z

    move-result v0

    return v0
.end method

.method public isChildrenVisible()Z
    .locals 1

    .prologue
    .line 744
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->isChildrenVisible()Z

    move-result v0

    return v0
.end method

.method public isCulled(Lorg/andengine/engine/camera/Camera;)Z
    .locals 1
    .parameter "pCamera"

    .prologue
    .line 739
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->isCulled(Lorg/andengine/engine/camera/Camera;)Z

    move-result v0

    return v0
.end method

.method public isCullingEnabled()Z
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->isCullingEnabled()Z

    move-result v0

    return v0
.end method

.method public isDisposed()Z
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public isIgnoreUpdate()Z
    .locals 1

    .prologue
    .line 754
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->isIgnoreUpdate()Z

    move-result v0

    return v0
.end method

.method public isRotated()Z
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->isRotated()Z

    move-result v0

    return v0
.end method

.method public isRotatedOrScaledOrSkewed()Z
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->isRotatedOrScaledOrSkewed()Z

    move-result v0

    return v0
.end method

.method public isScaled()Z
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->isScaled()Z

    move-result v0

    return v0
.end method

.method public isSkewed()Z
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->isSkewed()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->isVisible()Z

    move-result v0

    return v0
.end method

.method public onAreaTouched(Lorg/andengine/input/touch/TouchEvent;FF)Z
    .locals 1
    .parameter "pSceneTouchEvent"
    .parameter "pTouchAreaLocalX"
    .parameter "pTouchAreaLocalY"

    .prologue
    .line 569
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1, p2, p3}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->onAreaTouched(Lorg/andengine/input/touch/TouchEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onAttached()V
    .locals 1

    .prologue
    .line 784
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->onAttached()V

    .line 785
    return-void
.end method

.method public onDetached()V
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->onDetached()V

    .line 790
    return-void
.end method

.method public onDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V
    .locals 1
    .parameter "pGLState"
    .parameter "pCamera"

    .prologue
    .line 498
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1, p2}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->onDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V

    .line 499
    return-void
.end method

.method protected abstract onMenuItemReset(Lorg/andengine/entity/scene/menu/item/IMenuItem;)V
.end method

.method protected abstract onMenuItemSelected(Lorg/andengine/entity/scene/menu/item/IMenuItem;)V
.end method

.method protected abstract onMenuItemUnselected(Lorg/andengine/entity/scene/menu/item/IMenuItem;)V
.end method

.method public final onSelected()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->onSelected()V

    .line 82
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-virtual {p0, v0}, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->onMenuItemSelected(Lorg/andengine/entity/scene/menu/item/IMenuItem;)V

    .line 83
    return-void
.end method

.method public final onUnselected()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->onUnselected()V

    .line 88
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-virtual {p0, v0}, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->onMenuItemUnselected(Lorg/andengine/entity/scene/menu/item/IMenuItem;)V

    .line 89
    return-void
.end method

.method public onUpdate(F)V
    .locals 1
    .parameter "pSecondsElapsed"

    .prologue
    .line 503
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->onUpdate(F)V

    .line 504
    return-void
.end method

.method public query(Lorg/andengine/entity/IEntityMatcher;)Ljava/util/ArrayList;
    .locals 1
    .parameter "pEntityMatcher"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/entity/IEntityMatcher;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/andengine/entity/IEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 609
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->query(Lorg/andengine/entity/IEntityMatcher;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public query(Lorg/andengine/entity/IEntityMatcher;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "pEntityMatcher"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L::Ljava/util/List",
            "<",
            "Lorg/andengine/entity/IEntity;",
            ">;>(",
            "Lorg/andengine/entity/IEntityMatcher;",
            "T",
            "L;",
            ")T",
            "L;"
        }
    .end annotation

    .prologue
    .line 619
    .local p2, pResult:Ljava/util/List;,"TL;"
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1, p2}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->query(Lorg/andengine/entity/IEntityMatcher;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryFirst(Lorg/andengine/entity/IEntityMatcher;)Lorg/andengine/entity/IEntity;
    .locals 1
    .parameter "pEntityMatcher"

    .prologue
    .line 614
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->queryFirst(Lorg/andengine/entity/IEntityMatcher;)Lorg/andengine/entity/IEntity;

    move-result-object v0

    return-object v0
.end method

.method public queryFirstForSubclass(Lorg/andengine/entity/IEntityMatcher;)Lorg/andengine/entity/IEntity;
    .locals 1
    .parameter "pEntityMatcher"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Lorg/andengine/entity/IEntity;",
            ">(",
            "Lorg/andengine/entity/IEntityMatcher;",
            ")TS;"
        }
    .end annotation

    .prologue
    .line 624
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->queryFirstForSubclass(Lorg/andengine/entity/IEntityMatcher;)Lorg/andengine/entity/IEntity;

    move-result-object v0

    return-object v0
.end method

.method public queryForSubclass(Lorg/andengine/entity/IEntityMatcher;)Ljava/util/ArrayList;
    .locals 1
    .parameter "pEntityMatcher"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Lorg/andengine/entity/IEntity;",
            ">(",
            "Lorg/andengine/entity/IEntityMatcher;",
            ")",
            "Ljava/util/ArrayList",
            "<TS;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .prologue
    .line 629
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->queryForSubclass(Lorg/andengine/entity/IEntityMatcher;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public queryForSubclass(Lorg/andengine/entity/IEntityMatcher;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "pEntityMatcher"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L::Ljava/util/List",
            "<TS;>;S::",
            "Lorg/andengine/entity/IEntity;",
            ">(",
            "Lorg/andengine/entity/IEntityMatcher;",
            "T",
            "L;",
            ")T",
            "L;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .prologue
    .line 634
    .local p2, pResult:Ljava/util/List;,"TL;"
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1, p2}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->queryForSubclass(Lorg/andengine/entity/IEntityMatcher;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public registerEntityModifier(Lorg/andengine/entity/modifier/IEntityModifier;)V
    .locals 1
    .parameter "pEntityModifier"

    .prologue
    .line 403
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->registerEntityModifier(Lorg/andengine/entity/modifier/IEntityModifier;)V

    .line 404
    return-void
.end method

.method public registerUpdateHandler(Lorg/andengine/engine/handler/IUpdateHandler;)V
    .locals 1
    .parameter "pUpdateHandler"

    .prologue
    .line 794
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->registerUpdateHandler(Lorg/andengine/engine/handler/IUpdateHandler;)V

    .line 795
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->reset()V

    .line 509
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-virtual {p0, v0}, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->onMenuItemReset(Lorg/andengine/entity/scene/menu/item/IMenuItem;)V

    .line 510
    return-void
.end method

.method public setAlpha(F)V
    .locals 1
    .parameter "pAlpha"

    .prologue
    .line 193
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->setAlpha(F)V

    .line 194
    return-void
.end method

.method public setBlendFunction(II)V
    .locals 1
    .parameter "pBlendFunctionSource"
    .parameter "pBlendFunctionDestination"

    .prologue
    .line 458
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1, p2}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->setBlendFunction(II)V

    .line 459
    return-void
.end method

.method public setBlendFunctionDestination(I)V
    .locals 1
    .parameter "pBlendFunctionDestination"

    .prologue
    .line 453
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->setBlendFunctionDestination(I)V

    .line 454
    return-void
.end method

.method public setBlendFunctionSource(I)V
    .locals 1
    .parameter "pBlendFunctionSource"

    .prologue
    .line 443
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->setBlendFunctionSource(I)V

    .line 444
    return-void
.end method

.method public setBlendingEnabled(Z)V
    .locals 1
    .parameter "pBlendingEnabled"

    .prologue
    .line 433
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->setBlendingEnabled(Z)V

    .line 434
    return-void
.end method

.method public setBlue(F)V
    .locals 1
    .parameter "pBlue"

    .prologue
    .line 188
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->setBlue(F)V

    .line 189
    return-void
.end method

.method public setChildrenIgnoreUpdate(Z)V
    .locals 1
    .parameter "pChildrenIgnoreUpdate"

    .prologue
    .line 769
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->setChildrenIgnoreUpdate(Z)V

    .line 770
    return-void
.end method

.method public setChildrenVisible(Z)V
    .locals 1
    .parameter "pChildrenVisible"

    .prologue
    .line 749
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->setChildrenVisible(Z)V

    .line 750
    return-void
.end method

.method public setColor(FFF)V
    .locals 1
    .parameter "pRed"
    .parameter "pGreen"
    .parameter "pBlue"

    .prologue
    .line 208
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1, p2, p3}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->setColor(FFF)V

    .line 209
    return-void
.end method

.method public setColor(FFFF)V
    .locals 1
    .parameter "pRed"
    .parameter "pGreen"
    .parameter "pBlue"
    .parameter "pAlpha"

    .prologue
    .line 213
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->setColor(FFFF)V

    .line 214
    return-void
.end method

.method public setColor(Lorg/andengine/util/color/Color;)V
    .locals 1
    .parameter "pColor"

    .prologue
    .line 203
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->setColor(Lorg/andengine/util/color/Color;)V

    .line 204
    return-void
.end method

.method public setCullingEnabled(Z)V
    .locals 1
    .parameter "pCullingEnabled"

    .prologue
    .line 463
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->setCullingEnabled(Z)V

    .line 464
    return-void
.end method

.method public setGreen(F)V
    .locals 1
    .parameter "pGreen"

    .prologue
    .line 183
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->setGreen(F)V

    .line 184
    return-void
.end method

.method public setHeight(F)V
    .locals 1
    .parameter "pHeight"

    .prologue
    .line 148
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->setHeight(F)V

    .line 149
    return-void
.end method

.method public setIgnoreUpdate(Z)V
    .locals 1
    .parameter "pIgnoreUpdate"

    .prologue
    .line 759
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->setIgnoreUpdate(Z)V

    .line 760
    return-void
.end method

.method public setParent(Lorg/andengine/entity/IEntity;)V
    .locals 1
    .parameter "pEntity"

    .prologue
    .line 724
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->setParent(Lorg/andengine/entity/IEntity;)V

    .line 725
    return-void
.end method

.method public setPosition(FF)V
    .locals 1
    .parameter "pX"
    .parameter "pY"

    .prologue
    .line 118
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1, p2}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->setPosition(FF)V

    .line 119
    return-void
.end method

.method public setPosition(Lorg/andengine/entity/IEntity;)V
    .locals 1
    .parameter "pOtherEntity"

    .prologue
    .line 113
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->setPosition(Lorg/andengine/entity/IEntity;)V

    .line 114
    return-void
.end method

.method public setRed(F)V
    .locals 1
    .parameter "pRed"

    .prologue
    .line 178
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->setRed(F)V

    .line 179
    return-void
.end method

.method public setRotation(F)V
    .locals 1
    .parameter "pRotation"

    .prologue
    .line 228
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->setRotation(F)V

    .line 229
    return-void
.end method

.method public setRotationCenter(FF)V
    .locals 1
    .parameter "pRotationCenterX"
    .parameter "pRotationCenterY"

    .prologue
    .line 253
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1, p2}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->setRotationCenter(FF)V

    .line 254
    return-void
.end method

.method public setRotationCenterX(F)V
    .locals 1
    .parameter "pRotationCenterX"

    .prologue
    .line 243
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->setRotationCenterX(F)V

    .line 244
    return-void
.end method

.method public setRotationCenterY(F)V
    .locals 1
    .parameter "pRotationCenterY"

    .prologue
    .line 248
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->setRotationCenterY(F)V

    .line 249
    return-void
.end method

.method public setScale(F)V
    .locals 1
    .parameter "pScale"

    .prologue
    .line 273
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->setScale(F)V

    .line 274
    return-void
.end method

.method public setScale(FF)V
    .locals 1
    .parameter "pScaleX"
    .parameter "pScaleY"

    .prologue
    .line 278
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1, p2}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->setScale(FF)V

    .line 279
    return-void
.end method

.method public setScaleCenter(FF)V
    .locals 1
    .parameter "pScaleCenterX"
    .parameter "pScaleCenterY"

    .prologue
    .line 313
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1, p2}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->setScaleCenter(FF)V

    .line 314
    return-void
.end method

.method public setScaleCenterX(F)V
    .locals 1
    .parameter "pScaleCenterX"

    .prologue
    .line 303
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->setScaleCenterX(F)V

    .line 304
    return-void
.end method

.method public setScaleCenterY(F)V
    .locals 1
    .parameter "pScaleCenterY"

    .prologue
    .line 308
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->setScaleCenterY(F)V

    .line 309
    return-void
.end method

.method public setScaleX(F)V
    .locals 1
    .parameter "pScaleX"

    .prologue
    .line 283
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->setScaleX(F)V

    .line 284
    return-void
.end method

.method public setScaleY(F)V
    .locals 1
    .parameter "pScaleY"

    .prologue
    .line 288
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->setScaleY(F)V

    .line 289
    return-void
.end method

.method public setShaderProgram(Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 1
    .parameter "pShaderProgram"

    .prologue
    .line 493
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->setShaderProgram(Lorg/andengine/opengl/shader/ShaderProgram;)V

    .line 494
    return-void
.end method

.method public setSize(FF)V
    .locals 1
    .parameter "pWidth"
    .parameter "pHeight"

    .prologue
    .line 153
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1, p2}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->setSize(FF)V

    .line 154
    return-void
.end method

.method public setSkew(F)V
    .locals 1
    .parameter "pSkew"

    .prologue
    .line 333
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->setSkew(F)V

    .line 334
    return-void
.end method

.method public setSkew(FF)V
    .locals 1
    .parameter "pSkewX"
    .parameter "pSkewY"

    .prologue
    .line 338
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1, p2}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->setSkew(FF)V

    .line 339
    return-void
.end method

.method public setSkewCenter(FF)V
    .locals 1
    .parameter "pSkewCenterX"
    .parameter "pSkewCenterY"

    .prologue
    .line 373
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1, p2}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->setSkewCenter(FF)V

    .line 374
    return-void
.end method

.method public setSkewCenterX(F)V
    .locals 1
    .parameter "pSkewCenterX"

    .prologue
    .line 363
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->setSkewCenterX(F)V

    .line 364
    return-void
.end method

.method public setSkewCenterY(F)V
    .locals 1
    .parameter "pSkewCenterY"

    .prologue
    .line 368
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->setSkewCenterY(F)V

    .line 369
    return-void
.end method

.method public setSkewX(F)V
    .locals 1
    .parameter "pSkewX"

    .prologue
    .line 343
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->setSkewX(F)V

    .line 344
    return-void
.end method

.method public setSkewY(F)V
    .locals 1
    .parameter "pSkewY"

    .prologue
    .line 348
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->setSkewY(F)V

    .line 349
    return-void
.end method

.method public setTag(I)V
    .locals 1
    .parameter "pTag"

    .prologue
    .line 473
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->setTag(I)V

    .line 474
    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 1
    .parameter "pUserData"

    .prologue
    .line 774
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->setUserData(Ljava/lang/Object;)V

    .line 775
    return-void
.end method

.method public setVisible(Z)V
    .locals 1
    .parameter "pVisible"

    .prologue
    .line 734
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->setVisible(Z)V

    .line 735
    return-void
.end method

.method public setWidth(F)V
    .locals 1
    .parameter "pWidth"

    .prologue
    .line 143
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->setWidth(F)V

    .line 144
    return-void
.end method

.method public setX(F)V
    .locals 1
    .parameter "pX"

    .prologue
    .line 103
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->setX(F)V

    .line 104
    return-void
.end method

.method public setY(F)V
    .locals 1
    .parameter "pY"

    .prologue
    .line 108
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->setY(F)V

    .line 109
    return-void
.end method

.method public setZIndex(I)V
    .locals 1
    .parameter "pZIndex"

    .prologue
    .line 483
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->setZIndex(I)V

    .line 484
    return-void
.end method

.method public sortChildren()V
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->sortChildren()V

    .line 640
    return-void
.end method

.method public sortChildren(Lorg/andengine/entity/IEntityComparator;)V
    .locals 1
    .parameter "pEntityComparator"

    .prologue
    .line 649
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->sortChildren(Lorg/andengine/entity/IEntityComparator;)V

    .line 650
    return-void
.end method

.method public sortChildren(Z)V
    .locals 1
    .parameter "pImmediate"

    .prologue
    .line 644
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->sortChildren(Z)V

    .line 645
    return-void
.end method

.method public toString(Ljava/lang/StringBuilder;)V
    .locals 1
    .parameter "pStringBuilder"

    .prologue
    .line 819
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->toString(Ljava/lang/StringBuilder;)V

    .line 820
    return-void
.end method

.method public unregisterEntityModifier(Lorg/andengine/entity/modifier/IEntityModifier;)Z
    .locals 1
    .parameter "pEntityModifier"

    .prologue
    .line 408
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->unregisterEntityModifier(Lorg/andengine/entity/modifier/IEntityModifier;)Z

    move-result v0

    return v0
.end method

.method public unregisterEntityModifiers(Lorg/andengine/entity/modifier/IEntityModifier$IEntityModifierMatcher;)Z
    .locals 1
    .parameter "pEntityModifierMatcher"

    .prologue
    .line 413
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->unregisterEntityModifiers(Lorg/andengine/entity/modifier/IEntityModifier$IEntityModifierMatcher;)Z

    move-result v0

    return v0
.end method

.method public unregisterUpdateHandler(Lorg/andengine/engine/handler/IUpdateHandler;)Z
    .locals 1
    .parameter "pUpdateHandler"

    .prologue
    .line 799
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->unregisterUpdateHandler(Lorg/andengine/engine/handler/IUpdateHandler;)Z

    move-result v0

    return v0
.end method

.method public unregisterUpdateHandlers(Lorg/andengine/engine/handler/IUpdateHandler$IUpdateHandlerMatcher;)Z
    .locals 1
    .parameter "pUpdateHandlerMatcher"

    .prologue
    .line 814
    iget-object v0, p0, Lorg/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/andengine/entity/scene/menu/item/IMenuItem;->unregisterUpdateHandlers(Lorg/andengine/engine/handler/IUpdateHandler$IUpdateHandlerMatcher;)Z

    move-result v0

    return v0
.end method
