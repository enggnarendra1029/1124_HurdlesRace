// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity;

import java.util.ArrayList;
import java.util.List;
import org.andengine.engine.camera.Camera;
import org.andengine.engine.handler.IDrawHandler;
import org.andengine.engine.handler.IUpdateHandler;
import org.andengine.entity.modifier.IEntityModifier;
import org.andengine.util.IDisposable;
import org.andengine.util.adt.transformation.Transformation;
import org.andengine.util.color.Color;

// Referenced classes of package org.andengine.entity:
//            IEntityParameterCallable, IEntityMatcher, IEntityComparator

public interface IEntity
    extends IDrawHandler, IUpdateHandler, IDisposable
{

    public static final int TAG_INVALID = 0x80000000;

    public abstract void attachChild(IEntity ientity);

    public abstract void callOnChildren(IEntityParameterCallable ientityparametercallable);

    public abstract void callOnChildren(IEntityParameterCallable ientityparametercallable, IEntityMatcher ientitymatcher);

    public abstract void clearEntityModifiers();

    public abstract void clearUpdateHandlers();

    public abstract float[] convertLocalToSceneCoordinates(float f, float f1);

    public abstract float[] convertLocalToSceneCoordinates(float f, float f1, float af[]);

    public abstract float[] convertLocalToSceneCoordinates(float af[]);

    public abstract float[] convertLocalToSceneCoordinates(float af[], float af1[]);

    public abstract float[] convertSceneToLocalCoordinates(float f, float f1);

    public abstract float[] convertSceneToLocalCoordinates(float f, float f1, float af[]);

    public abstract float[] convertSceneToLocalCoordinates(float af[]);

    public abstract float[] convertSceneToLocalCoordinates(float af[], float af1[]);

    public abstract IEntity detachChild(int i);

    public abstract IEntity detachChild(IEntityMatcher ientitymatcher);

    public abstract boolean detachChild(IEntity ientity);

    public abstract void detachChildren();

    public abstract boolean detachChildren(IEntityMatcher ientitymatcher);

    public abstract boolean detachSelf();

    public abstract float getAlpha();

    public abstract float getBlue();

    public abstract IEntity getChildByIndex(int i);

    public abstract IEntity getChildByMatcher(IEntityMatcher ientitymatcher);

    public abstract IEntity getChildByTag(int i);

    public abstract int getChildCount();

    public abstract Color getColor();

    public abstract int getEntityModifierCount();

    public abstract IEntity getFirstChild();

    public abstract float getGreen();

    public abstract IEntity getLastChild();

    public abstract Transformation getLocalToParentTransformation();

    public abstract Transformation getLocalToSceneTransformation();

    public abstract IEntity getParent();

    public abstract Transformation getParentToLocalTransformation();

    public abstract float getRed();

    public abstract float getRotation();

    public abstract float getRotationCenterX();

    public abstract float getRotationCenterY();

    public abstract float getScaleCenterX();

    public abstract float getScaleCenterY();

    public abstract float getScaleX();

    public abstract float getScaleY();

    public abstract float[] getSceneCenterCoordinates();

    public abstract float[] getSceneCenterCoordinates(float af[]);

    public abstract Transformation getSceneToLocalTransformation();

    public abstract float getSkewCenterX();

    public abstract float getSkewCenterY();

    public abstract float getSkewX();

    public abstract float getSkewY();

    public abstract int getTag();

    public abstract int getUpdateHandlerCount();

    public abstract Object getUserData();

    public abstract float getX();

    public abstract float getY();

    public abstract int getZIndex();

    public abstract boolean hasParent();

    public abstract boolean isChildrenIgnoreUpdate();

    public abstract boolean isChildrenVisible();

    public abstract boolean isCulled(Camera camera);

    public abstract boolean isCullingEnabled();

    public abstract boolean isIgnoreUpdate();

    public abstract boolean isRotated();

    public abstract boolean isRotatedOrScaledOrSkewed();

    public abstract boolean isScaled();

    public abstract boolean isSkewed();

    public abstract boolean isVisible();

    public abstract void onAttached();

    public abstract void onDetached();

    public abstract ArrayList query(IEntityMatcher ientitymatcher);

    public abstract List query(IEntityMatcher ientitymatcher, List list);

    public abstract IEntity queryFirst(IEntityMatcher ientitymatcher);

    public abstract IEntity queryFirstForSubclass(IEntityMatcher ientitymatcher);

    public abstract ArrayList queryForSubclass(IEntityMatcher ientitymatcher)
        throws ClassCastException;

    public abstract List queryForSubclass(IEntityMatcher ientitymatcher, List list)
        throws ClassCastException;

    public abstract void registerEntityModifier(IEntityModifier ientitymodifier);

    public abstract void registerUpdateHandler(IUpdateHandler iupdatehandler);

    public abstract void setAlpha(float f);

    public abstract void setBlue(float f);

    public abstract void setChildrenIgnoreUpdate(boolean flag);

    public abstract void setChildrenVisible(boolean flag);

    public abstract void setColor(float f, float f1, float f2);

    public abstract void setColor(float f, float f1, float f2, float f3);

    public abstract void setColor(Color color);

    public abstract void setCullingEnabled(boolean flag);

    public abstract void setGreen(float f);

    public abstract void setIgnoreUpdate(boolean flag);

    public abstract void setParent(IEntity ientity);

    public abstract void setPosition(float f, float f1);

    public abstract void setPosition(IEntity ientity);

    public abstract void setRed(float f);

    public abstract void setRotation(float f);

    public abstract void setRotationCenter(float f, float f1);

    public abstract void setRotationCenterX(float f);

    public abstract void setRotationCenterY(float f);

    public abstract void setScale(float f);

    public abstract void setScale(float f, float f1);

    public abstract void setScaleCenter(float f, float f1);

    public abstract void setScaleCenterX(float f);

    public abstract void setScaleCenterY(float f);

    public abstract void setScaleX(float f);

    public abstract void setScaleY(float f);

    public abstract void setSkew(float f);

    public abstract void setSkew(float f, float f1);

    public abstract void setSkewCenter(float f, float f1);

    public abstract void setSkewCenterX(float f);

    public abstract void setSkewCenterY(float f);

    public abstract void setSkewX(float f);

    public abstract void setSkewY(float f);

    public abstract void setTag(int i);

    public abstract void setUserData(Object obj);

    public abstract void setVisible(boolean flag);

    public abstract void setX(float f);

    public abstract void setY(float f);

    public abstract void setZIndex(int i);

    public abstract void sortChildren();

    public abstract void sortChildren(IEntityComparator ientitycomparator);

    public abstract void sortChildren(boolean flag);

    public abstract void toString(StringBuilder stringbuilder);

    public abstract boolean unregisterEntityModifier(IEntityModifier ientitymodifier);

    public abstract boolean unregisterEntityModifiers(org.andengine.entity.modifier.IEntityModifier.IEntityModifierMatcher ientitymodifiermatcher);

    public abstract boolean unregisterUpdateHandler(IUpdateHandler iupdatehandler);

    public abstract boolean unregisterUpdateHandlers(org.andengine.engine.handler.IUpdateHandler.IUpdateHandlerMatcher iupdatehandlermatcher);
}
