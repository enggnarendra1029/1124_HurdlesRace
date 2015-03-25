// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.scene.menu.item.decorator;

import java.util.ArrayList;
import java.util.List;
import org.andengine.engine.camera.Camera;
import org.andengine.engine.handler.IUpdateHandler;
import org.andengine.entity.IEntity;
import org.andengine.entity.IEntityComparator;
import org.andengine.entity.IEntityMatcher;
import org.andengine.entity.IEntityParameterCallable;
import org.andengine.entity.modifier.IEntityModifier;
import org.andengine.entity.scene.menu.item.IMenuItem;
import org.andengine.entity.shape.IShape;
import org.andengine.input.touch.TouchEvent;
import org.andengine.opengl.shader.ShaderProgram;
import org.andengine.opengl.util.GLState;
import org.andengine.opengl.vbo.IVertexBufferObject;
import org.andengine.opengl.vbo.VertexBufferObjectManager;
import org.andengine.util.adt.transformation.Transformation;
import org.andengine.util.color.Color;

public abstract class BaseMenuItemDecorator
    implements IMenuItem
{

    protected final IMenuItem mMenuItem;

    public BaseMenuItemDecorator(IMenuItem imenuitem)
    {
        mMenuItem = imenuitem;
    }

    public void attachChild(IEntity ientity)
    {
        mMenuItem.attachChild(ientity);
    }

    public void callOnChildren(IEntityParameterCallable ientityparametercallable)
    {
        mMenuItem.callOnChildren(ientityparametercallable);
    }

    public void callOnChildren(IEntityParameterCallable ientityparametercallable, IEntityMatcher ientitymatcher)
    {
        mMenuItem.callOnChildren(ientityparametercallable, ientitymatcher);
    }

    public void clearEntityModifiers()
    {
        mMenuItem.clearEntityModifiers();
    }

    public void clearUpdateHandlers()
    {
        mMenuItem.clearUpdateHandlers();
    }

    public boolean collidesWith(IShape ishape)
    {
        return mMenuItem.collidesWith(ishape);
    }

    public boolean contains(float f, float f1)
    {
        return mMenuItem.contains(f, f1);
    }

    public float[] convertLocalToSceneCoordinates(float f, float f1)
    {
        return mMenuItem.convertLocalToSceneCoordinates(f, f1);
    }

    public float[] convertLocalToSceneCoordinates(float f, float f1, float af[])
    {
        return mMenuItem.convertLocalToSceneCoordinates(f, f1, af);
    }

    public float[] convertLocalToSceneCoordinates(float af[])
    {
        return mMenuItem.convertLocalToSceneCoordinates(af);
    }

    public float[] convertLocalToSceneCoordinates(float af[], float af1[])
    {
        return mMenuItem.convertLocalToSceneCoordinates(af, af1);
    }

    public float[] convertSceneToLocalCoordinates(float f, float f1)
    {
        return mMenuItem.convertSceneToLocalCoordinates(f, f1);
    }

    public float[] convertSceneToLocalCoordinates(float f, float f1, float af[])
    {
        return mMenuItem.convertSceneToLocalCoordinates(f, f1, af);
    }

    public float[] convertSceneToLocalCoordinates(float af[])
    {
        return mMenuItem.convertSceneToLocalCoordinates(af);
    }

    public float[] convertSceneToLocalCoordinates(float af[], float af1[])
    {
        return mMenuItem.convertSceneToLocalCoordinates(af, af1);
    }

    public IEntity detachChild(int i)
    {
        return mMenuItem.detachChild(i);
    }

    public IEntity detachChild(IEntityMatcher ientitymatcher)
    {
        return mMenuItem.detachChild(ientitymatcher);
    }

    public boolean detachChild(IEntity ientity)
    {
        return mMenuItem.detachChild(ientity);
    }

    public void detachChildren()
    {
        mMenuItem.detachChildren();
    }

    public boolean detachChildren(IEntityMatcher ientitymatcher)
    {
        return mMenuItem.detachChildren(ientitymatcher);
    }

    public boolean detachSelf()
    {
        return mMenuItem.detachSelf();
    }

    public void dispose()
    {
        mMenuItem.dispose();
    }

    public float getAlpha()
    {
        return mMenuItem.getAlpha();
    }

    public int getBlendFunctionDestination()
    {
        return mMenuItem.getBlendFunctionDestination();
    }

    public int getBlendFunctionSource()
    {
        return mMenuItem.getBlendFunctionSource();
    }

    public float getBlue()
    {
        return mMenuItem.getBlue();
    }

    public IEntity getChildByIndex(int i)
    {
        return mMenuItem.getChildByIndex(i);
    }

    public IEntity getChildByMatcher(IEntityMatcher ientitymatcher)
    {
        return mMenuItem.getChildByMatcher(ientitymatcher);
    }

    public IEntity getChildByTag(int i)
    {
        return mMenuItem.getChildByTag(i);
    }

    public int getChildCount()
    {
        return mMenuItem.getChildCount();
    }

    public Color getColor()
    {
        return mMenuItem.getColor();
    }

    public int getEntityModifierCount()
    {
        return mMenuItem.getEntityModifierCount();
    }

    public IEntity getFirstChild()
    {
        return mMenuItem.getFirstChild();
    }

    public float getGreen()
    {
        return mMenuItem.getGreen();
    }

    public float getHeight()
    {
        return mMenuItem.getHeight();
    }

    public float getHeightScaled()
    {
        return mMenuItem.getHeightScaled();
    }

    public int getID()
    {
        return mMenuItem.getID();
    }

    public IEntity getLastChild()
    {
        return mMenuItem.getLastChild();
    }

    public Transformation getLocalToParentTransformation()
    {
        return mMenuItem.getLocalToParentTransformation();
    }

    public Transformation getLocalToSceneTransformation()
    {
        return mMenuItem.getLocalToSceneTransformation();
    }

    public IEntity getParent()
    {
        return mMenuItem.getParent();
    }

    public Transformation getParentToLocalTransformation()
    {
        return mMenuItem.getParentToLocalTransformation();
    }

    public float getRed()
    {
        return mMenuItem.getRed();
    }

    public float getRotation()
    {
        return mMenuItem.getRotation();
    }

    public float getRotationCenterX()
    {
        return mMenuItem.getRotationCenterX();
    }

    public float getRotationCenterY()
    {
        return mMenuItem.getRotationCenterY();
    }

    public float getScaleCenterX()
    {
        return mMenuItem.getScaleCenterX();
    }

    public float getScaleCenterY()
    {
        return mMenuItem.getScaleCenterY();
    }

    public float getScaleX()
    {
        return mMenuItem.getScaleX();
    }

    public float getScaleY()
    {
        return mMenuItem.getScaleY();
    }

    public float[] getSceneCenterCoordinates()
    {
        return mMenuItem.getSceneCenterCoordinates();
    }

    public float[] getSceneCenterCoordinates(float af[])
    {
        return mMenuItem.getSceneCenterCoordinates(af);
    }

    public Transformation getSceneToLocalTransformation()
    {
        return mMenuItem.getSceneToLocalTransformation();
    }

    public ShaderProgram getShaderProgram()
    {
        return mMenuItem.getShaderProgram();
    }

    public float getSkewCenterX()
    {
        return mMenuItem.getSkewCenterX();
    }

    public float getSkewCenterY()
    {
        return mMenuItem.getSkewCenterY();
    }

    public float getSkewX()
    {
        return mMenuItem.getSkewX();
    }

    public float getSkewY()
    {
        return mMenuItem.getSkewY();
    }

    public int getTag()
    {
        return mMenuItem.getTag();
    }

    public int getUpdateHandlerCount()
    {
        return mMenuItem.getUpdateHandlerCount();
    }

    public Object getUserData()
    {
        return mMenuItem.getUserData();
    }

    public IVertexBufferObject getVertexBufferObject()
    {
        return mMenuItem.getVertexBufferObject();
    }

    public VertexBufferObjectManager getVertexBufferObjectManager()
    {
        return mMenuItem.getVertexBufferObjectManager();
    }

    public float getWidth()
    {
        return mMenuItem.getWidth();
    }

    public float getWidthScaled()
    {
        return mMenuItem.getWidthScaled();
    }

    public float getX()
    {
        return mMenuItem.getX();
    }

    public float getY()
    {
        return mMenuItem.getY();
    }

    public int getZIndex()
    {
        return mMenuItem.getZIndex();
    }

    public boolean hasParent()
    {
        return mMenuItem.hasParent();
    }

    public boolean isBlendingEnabled()
    {
        return mMenuItem.isBlendingEnabled();
    }

    public boolean isChildrenIgnoreUpdate()
    {
        return mMenuItem.isChildrenIgnoreUpdate();
    }

    public boolean isChildrenVisible()
    {
        return mMenuItem.isChildrenVisible();
    }

    public boolean isCulled(Camera camera)
    {
        return mMenuItem.isCulled(camera);
    }

    public boolean isCullingEnabled()
    {
        return mMenuItem.isCullingEnabled();
    }

    public boolean isDisposed()
    {
        return mMenuItem.isDisposed();
    }

    public boolean isIgnoreUpdate()
    {
        return mMenuItem.isIgnoreUpdate();
    }

    public boolean isRotated()
    {
        return mMenuItem.isRotated();
    }

    public boolean isRotatedOrScaledOrSkewed()
    {
        return mMenuItem.isRotatedOrScaledOrSkewed();
    }

    public boolean isScaled()
    {
        return mMenuItem.isScaled();
    }

    public boolean isSkewed()
    {
        return mMenuItem.isSkewed();
    }

    public boolean isVisible()
    {
        return mMenuItem.isVisible();
    }

    public boolean onAreaTouched(TouchEvent touchevent, float f, float f1)
    {
        return mMenuItem.onAreaTouched(touchevent, f, f1);
    }

    public void onAttached()
    {
        mMenuItem.onAttached();
    }

    public void onDetached()
    {
        mMenuItem.onDetached();
    }

    public void onDraw(GLState glstate, Camera camera)
    {
        mMenuItem.onDraw(glstate, camera);
    }

    protected abstract void onMenuItemReset(IMenuItem imenuitem);

    protected abstract void onMenuItemSelected(IMenuItem imenuitem);

    protected abstract void onMenuItemUnselected(IMenuItem imenuitem);

    public final void onSelected()
    {
        mMenuItem.onSelected();
        onMenuItemSelected(mMenuItem);
    }

    public final void onUnselected()
    {
        mMenuItem.onUnselected();
        onMenuItemUnselected(mMenuItem);
    }

    public void onUpdate(float f)
    {
        mMenuItem.onUpdate(f);
    }

    public ArrayList query(IEntityMatcher ientitymatcher)
    {
        return mMenuItem.query(ientitymatcher);
    }

    public List query(IEntityMatcher ientitymatcher, List list)
    {
        return mMenuItem.query(ientitymatcher, list);
    }

    public IEntity queryFirst(IEntityMatcher ientitymatcher)
    {
        return mMenuItem.queryFirst(ientitymatcher);
    }

    public IEntity queryFirstForSubclass(IEntityMatcher ientitymatcher)
    {
        return mMenuItem.queryFirstForSubclass(ientitymatcher);
    }

    public ArrayList queryForSubclass(IEntityMatcher ientitymatcher)
        throws ClassCastException
    {
        return mMenuItem.queryForSubclass(ientitymatcher);
    }

    public List queryForSubclass(IEntityMatcher ientitymatcher, List list)
        throws ClassCastException
    {
        return mMenuItem.queryForSubclass(ientitymatcher, list);
    }

    public void registerEntityModifier(IEntityModifier ientitymodifier)
    {
        mMenuItem.registerEntityModifier(ientitymodifier);
    }

    public void registerUpdateHandler(IUpdateHandler iupdatehandler)
    {
        mMenuItem.registerUpdateHandler(iupdatehandler);
    }

    public void reset()
    {
        mMenuItem.reset();
        onMenuItemReset(mMenuItem);
    }

    public void setAlpha(float f)
    {
        mMenuItem.setAlpha(f);
    }

    public void setBlendFunction(int i, int j)
    {
        mMenuItem.setBlendFunction(i, j);
    }

    public void setBlendFunctionDestination(int i)
    {
        mMenuItem.setBlendFunctionDestination(i);
    }

    public void setBlendFunctionSource(int i)
    {
        mMenuItem.setBlendFunctionSource(i);
    }

    public void setBlendingEnabled(boolean flag)
    {
        mMenuItem.setBlendingEnabled(flag);
    }

    public void setBlue(float f)
    {
        mMenuItem.setBlue(f);
    }

    public void setChildrenIgnoreUpdate(boolean flag)
    {
        mMenuItem.setChildrenIgnoreUpdate(flag);
    }

    public void setChildrenVisible(boolean flag)
    {
        mMenuItem.setChildrenVisible(flag);
    }

    public void setColor(float f, float f1, float f2)
    {
        mMenuItem.setColor(f, f1, f2);
    }

    public void setColor(float f, float f1, float f2, float f3)
    {
        mMenuItem.setColor(f, f1, f2, f3);
    }

    public void setColor(Color color)
    {
        mMenuItem.setColor(color);
    }

    public void setCullingEnabled(boolean flag)
    {
        mMenuItem.setCullingEnabled(flag);
    }

    public void setGreen(float f)
    {
        mMenuItem.setGreen(f);
    }

    public void setHeight(float f)
    {
        mMenuItem.setHeight(f);
    }

    public void setIgnoreUpdate(boolean flag)
    {
        mMenuItem.setIgnoreUpdate(flag);
    }

    public void setParent(IEntity ientity)
    {
        mMenuItem.setParent(ientity);
    }

    public void setPosition(float f, float f1)
    {
        mMenuItem.setPosition(f, f1);
    }

    public void setPosition(IEntity ientity)
    {
        mMenuItem.setPosition(ientity);
    }

    public void setRed(float f)
    {
        mMenuItem.setRed(f);
    }

    public void setRotation(float f)
    {
        mMenuItem.setRotation(f);
    }

    public void setRotationCenter(float f, float f1)
    {
        mMenuItem.setRotationCenter(f, f1);
    }

    public void setRotationCenterX(float f)
    {
        mMenuItem.setRotationCenterX(f);
    }

    public void setRotationCenterY(float f)
    {
        mMenuItem.setRotationCenterY(f);
    }

    public void setScale(float f)
    {
        mMenuItem.setScale(f);
    }

    public void setScale(float f, float f1)
    {
        mMenuItem.setScale(f, f1);
    }

    public void setScaleCenter(float f, float f1)
    {
        mMenuItem.setScaleCenter(f, f1);
    }

    public void setScaleCenterX(float f)
    {
        mMenuItem.setScaleCenterX(f);
    }

    public void setScaleCenterY(float f)
    {
        mMenuItem.setScaleCenterY(f);
    }

    public void setScaleX(float f)
    {
        mMenuItem.setScaleX(f);
    }

    public void setScaleY(float f)
    {
        mMenuItem.setScaleY(f);
    }

    public void setShaderProgram(ShaderProgram shaderprogram)
    {
        mMenuItem.setShaderProgram(shaderprogram);
    }

    public void setSize(float f, float f1)
    {
        mMenuItem.setSize(f, f1);
    }

    public void setSkew(float f)
    {
        mMenuItem.setSkew(f);
    }

    public void setSkew(float f, float f1)
    {
        mMenuItem.setSkew(f, f1);
    }

    public void setSkewCenter(float f, float f1)
    {
        mMenuItem.setSkewCenter(f, f1);
    }

    public void setSkewCenterX(float f)
    {
        mMenuItem.setSkewCenterX(f);
    }

    public void setSkewCenterY(float f)
    {
        mMenuItem.setSkewCenterY(f);
    }

    public void setSkewX(float f)
    {
        mMenuItem.setSkewX(f);
    }

    public void setSkewY(float f)
    {
        mMenuItem.setSkewY(f);
    }

    public void setTag(int i)
    {
        mMenuItem.setTag(i);
    }

    public void setUserData(Object obj)
    {
        mMenuItem.setUserData(obj);
    }

    public void setVisible(boolean flag)
    {
        mMenuItem.setVisible(flag);
    }

    public void setWidth(float f)
    {
        mMenuItem.setWidth(f);
    }

    public void setX(float f)
    {
        mMenuItem.setX(f);
    }

    public void setY(float f)
    {
        mMenuItem.setY(f);
    }

    public void setZIndex(int i)
    {
        mMenuItem.setZIndex(i);
    }

    public void sortChildren()
    {
        mMenuItem.sortChildren();
    }

    public void sortChildren(IEntityComparator ientitycomparator)
    {
        mMenuItem.sortChildren(ientitycomparator);
    }

    public void sortChildren(boolean flag)
    {
        mMenuItem.sortChildren(flag);
    }

    public void toString(StringBuilder stringbuilder)
    {
        mMenuItem.toString(stringbuilder);
    }

    public boolean unregisterEntityModifier(IEntityModifier ientitymodifier)
    {
        return mMenuItem.unregisterEntityModifier(ientitymodifier);
    }

    public boolean unregisterEntityModifiers(org.andengine.entity.modifier.IEntityModifier.IEntityModifierMatcher ientitymodifiermatcher)
    {
        return mMenuItem.unregisterEntityModifiers(ientitymodifiermatcher);
    }

    public boolean unregisterUpdateHandler(IUpdateHandler iupdatehandler)
    {
        return mMenuItem.unregisterUpdateHandler(iupdatehandler);
    }

    public boolean unregisterUpdateHandlers(org.andengine.engine.handler.IUpdateHandler.IUpdateHandlerMatcher iupdatehandlermatcher)
    {
        return mMenuItem.unregisterUpdateHandlers(iupdatehandlermatcher);
    }
}
