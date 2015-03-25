.class public interface abstract Lorg/andengine/entity/IEntity;
.super Ljava/lang/Object;
.source "IEntity.java"

# interfaces
.implements Lorg/andengine/engine/handler/IDrawHandler;
.implements Lorg/andengine/engine/handler/IUpdateHandler;
.implements Lorg/andengine/util/IDisposable;


# static fields
.field public static final TAG_INVALID:I = -0x80000000


# virtual methods
.method public abstract attachChild(Lorg/andengine/entity/IEntity;)V
.end method

.method public abstract callOnChildren(Lorg/andengine/entity/IEntityParameterCallable;)V
.end method

.method public abstract callOnChildren(Lorg/andengine/entity/IEntityParameterCallable;Lorg/andengine/entity/IEntityMatcher;)V
.end method

.method public abstract clearEntityModifiers()V
.end method

.method public abstract clearUpdateHandlers()V
.end method

.method public abstract convertLocalToSceneCoordinates(FF)[F
.end method

.method public abstract convertLocalToSceneCoordinates(FF[F)[F
.end method

.method public abstract convertLocalToSceneCoordinates([F)[F
.end method

.method public abstract convertLocalToSceneCoordinates([F[F)[F
.end method

.method public abstract convertSceneToLocalCoordinates(FF)[F
.end method

.method public abstract convertSceneToLocalCoordinates(FF[F)[F
.end method

.method public abstract convertSceneToLocalCoordinates([F)[F
.end method

.method public abstract convertSceneToLocalCoordinates([F[F)[F
.end method

.method public abstract detachChild(I)Lorg/andengine/entity/IEntity;
.end method

.method public abstract detachChild(Lorg/andengine/entity/IEntityMatcher;)Lorg/andengine/entity/IEntity;
.end method

.method public abstract detachChild(Lorg/andengine/entity/IEntity;)Z
.end method

.method public abstract detachChildren()V
.end method

.method public abstract detachChildren(Lorg/andengine/entity/IEntityMatcher;)Z
.end method

.method public abstract detachSelf()Z
.end method

.method public abstract getAlpha()F
.end method

.method public abstract getBlue()F
.end method

.method public abstract getChildByIndex(I)Lorg/andengine/entity/IEntity;
.end method

.method public abstract getChildByMatcher(Lorg/andengine/entity/IEntityMatcher;)Lorg/andengine/entity/IEntity;
.end method

.method public abstract getChildByTag(I)Lorg/andengine/entity/IEntity;
.end method

.method public abstract getChildCount()I
.end method

.method public abstract getColor()Lorg/andengine/util/color/Color;
.end method

.method public abstract getEntityModifierCount()I
.end method

.method public abstract getFirstChild()Lorg/andengine/entity/IEntity;
.end method

.method public abstract getGreen()F
.end method

.method public abstract getLastChild()Lorg/andengine/entity/IEntity;
.end method

.method public abstract getLocalToParentTransformation()Lorg/andengine/util/adt/transformation/Transformation;
.end method

.method public abstract getLocalToSceneTransformation()Lorg/andengine/util/adt/transformation/Transformation;
.end method

.method public abstract getParent()Lorg/andengine/entity/IEntity;
.end method

.method public abstract getParentToLocalTransformation()Lorg/andengine/util/adt/transformation/Transformation;
.end method

.method public abstract getRed()F
.end method

.method public abstract getRotation()F
.end method

.method public abstract getRotationCenterX()F
.end method

.method public abstract getRotationCenterY()F
.end method

.method public abstract getScaleCenterX()F
.end method

.method public abstract getScaleCenterY()F
.end method

.method public abstract getScaleX()F
.end method

.method public abstract getScaleY()F
.end method

.method public abstract getSceneCenterCoordinates()[F
.end method

.method public abstract getSceneCenterCoordinates([F)[F
.end method

.method public abstract getSceneToLocalTransformation()Lorg/andengine/util/adt/transformation/Transformation;
.end method

.method public abstract getSkewCenterX()F
.end method

.method public abstract getSkewCenterY()F
.end method

.method public abstract getSkewX()F
.end method

.method public abstract getSkewY()F
.end method

.method public abstract getTag()I
.end method

.method public abstract getUpdateHandlerCount()I
.end method

.method public abstract getUserData()Ljava/lang/Object;
.end method

.method public abstract getX()F
.end method

.method public abstract getY()F
.end method

.method public abstract getZIndex()I
.end method

.method public abstract hasParent()Z
.end method

.method public abstract isChildrenIgnoreUpdate()Z
.end method

.method public abstract isChildrenVisible()Z
.end method

.method public abstract isCulled(Lorg/andengine/engine/camera/Camera;)Z
.end method

.method public abstract isCullingEnabled()Z
.end method

.method public abstract isIgnoreUpdate()Z
.end method

.method public abstract isRotated()Z
.end method

.method public abstract isRotatedOrScaledOrSkewed()Z
.end method

.method public abstract isScaled()Z
.end method

.method public abstract isSkewed()Z
.end method

.method public abstract isVisible()Z
.end method

.method public abstract onAttached()V
.end method

.method public abstract onDetached()V
.end method

.method public abstract query(Lorg/andengine/entity/IEntityMatcher;)Ljava/util/ArrayList;
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
.end method

.method public abstract query(Lorg/andengine/entity/IEntityMatcher;Ljava/util/List;)Ljava/util/List;
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
.end method

.method public abstract queryFirst(Lorg/andengine/entity/IEntityMatcher;)Lorg/andengine/entity/IEntity;
.end method

.method public abstract queryFirstForSubclass(Lorg/andengine/entity/IEntityMatcher;)Lorg/andengine/entity/IEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Lorg/andengine/entity/IEntity;",
            ">(",
            "Lorg/andengine/entity/IEntityMatcher;",
            ")TS;"
        }
    .end annotation
.end method

.method public abstract queryForSubclass(Lorg/andengine/entity/IEntityMatcher;)Ljava/util/ArrayList;
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
.end method

.method public abstract queryForSubclass(Lorg/andengine/entity/IEntityMatcher;Ljava/util/List;)Ljava/util/List;
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
.end method

.method public abstract registerEntityModifier(Lorg/andengine/entity/modifier/IEntityModifier;)V
.end method

.method public abstract registerUpdateHandler(Lorg/andengine/engine/handler/IUpdateHandler;)V
.end method

.method public abstract setAlpha(F)V
.end method

.method public abstract setBlue(F)V
.end method

.method public abstract setChildrenIgnoreUpdate(Z)V
.end method

.method public abstract setChildrenVisible(Z)V
.end method

.method public abstract setColor(FFF)V
.end method

.method public abstract setColor(FFFF)V
.end method

.method public abstract setColor(Lorg/andengine/util/color/Color;)V
.end method

.method public abstract setCullingEnabled(Z)V
.end method

.method public abstract setGreen(F)V
.end method

.method public abstract setIgnoreUpdate(Z)V
.end method

.method public abstract setParent(Lorg/andengine/entity/IEntity;)V
.end method

.method public abstract setPosition(FF)V
.end method

.method public abstract setPosition(Lorg/andengine/entity/IEntity;)V
.end method

.method public abstract setRed(F)V
.end method

.method public abstract setRotation(F)V
.end method

.method public abstract setRotationCenter(FF)V
.end method

.method public abstract setRotationCenterX(F)V
.end method

.method public abstract setRotationCenterY(F)V
.end method

.method public abstract setScale(F)V
.end method

.method public abstract setScale(FF)V
.end method

.method public abstract setScaleCenter(FF)V
.end method

.method public abstract setScaleCenterX(F)V
.end method

.method public abstract setScaleCenterY(F)V
.end method

.method public abstract setScaleX(F)V
.end method

.method public abstract setScaleY(F)V
.end method

.method public abstract setSkew(F)V
.end method

.method public abstract setSkew(FF)V
.end method

.method public abstract setSkewCenter(FF)V
.end method

.method public abstract setSkewCenterX(F)V
.end method

.method public abstract setSkewCenterY(F)V
.end method

.method public abstract setSkewX(F)V
.end method

.method public abstract setSkewY(F)V
.end method

.method public abstract setTag(I)V
.end method

.method public abstract setUserData(Ljava/lang/Object;)V
.end method

.method public abstract setVisible(Z)V
.end method

.method public abstract setX(F)V
.end method

.method public abstract setY(F)V
.end method

.method public abstract setZIndex(I)V
.end method

.method public abstract sortChildren()V
.end method

.method public abstract sortChildren(Lorg/andengine/entity/IEntityComparator;)V
.end method

.method public abstract sortChildren(Z)V
.end method

.method public abstract toString(Ljava/lang/StringBuilder;)V
.end method

.method public abstract unregisterEntityModifier(Lorg/andengine/entity/modifier/IEntityModifier;)Z
.end method

.method public abstract unregisterEntityModifiers(Lorg/andengine/entity/modifier/IEntityModifier$IEntityModifierMatcher;)Z
.end method

.method public abstract unregisterUpdateHandler(Lorg/andengine/engine/handler/IUpdateHandler;)Z
.end method

.method public abstract unregisterUpdateHandlers(Lorg/andengine/engine/handler/IUpdateHandler$IUpdateHandlerMatcher;)Z
.end method
