// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity;

import java.util.ArrayList;
import java.util.List;
import org.andengine.engine.camera.Camera;
import org.andengine.engine.handler.IUpdateHandler;
import org.andengine.engine.handler.UpdateHandlerList;
import org.andengine.entity.modifier.EntityModifierList;
import org.andengine.entity.modifier.IEntityModifier;
import org.andengine.opengl.util.GLState;
import org.andengine.util.adt.list.SmartList;
import org.andengine.util.adt.transformation.Transformation;
import org.andengine.util.call.ParameterCallable;
import org.andengine.util.color.Color;

// Referenced classes of package org.andengine.entity:
//            IEntity, ZIndexSorter, IEntityMatcher, IEntityParameterCallable, 
//            IEntityComparator

public class Entity
    implements IEntity
{

    private static final int CHILDREN_CAPACITY_DEFAULT = 4;
    private static final int ENTITYMODIFIERS_CAPACITY_DEFAULT = 4;
    private static final ParameterCallable PARAMETERCALLABLE_DETACHCHILD = new ParameterCallable() {

        public volatile void call(Object obj)
        {
            call((IEntity)obj);
        }

        public void call(IEntity ientity)
        {
            ientity.setParent(null);
            ientity.onDetached();
        }

    };
    private static final int UPDATEHANDLERS_CAPACITY_DEFAULT = 4;
    private static final float VERTICES_LOCAL_TO_SCENE_TMP[] = new float[2];
    private static final float VERTICES_SCENE_TO_LOCAL_TMP[] = new float[2];
    protected SmartList mChildren;
    protected boolean mChildrenIgnoreUpdate;
    protected boolean mChildrenSortPending;
    protected boolean mChildrenVisible;
    protected Color mColor;
    protected boolean mCullingEnabled;
    protected boolean mDisposed;
    private EntityModifierList mEntityModifiers;
    protected boolean mIgnoreUpdate;
    private Transformation mLocalToParentTransformation;
    private boolean mLocalToParentTransformationDirty;
    private Transformation mLocalToSceneTransformation;
    private IEntity mParent;
    private Transformation mParentToLocalTransformation;
    private boolean mParentToLocalTransformationDirty;
    protected float mRotation;
    protected float mRotationCenterX;
    protected float mRotationCenterY;
    protected float mScaleCenterX;
    protected float mScaleCenterY;
    protected float mScaleX;
    protected float mScaleY;
    private Transformation mSceneToLocalTransformation;
    protected float mSkewCenterX;
    protected float mSkewCenterY;
    protected float mSkewX;
    protected float mSkewY;
    protected int mTag;
    private UpdateHandlerList mUpdateHandlers;
    private Object mUserData;
    protected boolean mVisible;
    protected float mX;
    protected float mY;
    protected int mZIndex;

    public Entity()
    {
        this(0.0F, 0.0F);
    }

    public Entity(float f, float f1)
    {
        mVisible = true;
        mChildrenVisible = true;
        mTag = 0x80000000;
        mZIndex = 0;
        mColor = new Color(1.0F, 1.0F, 1.0F, 1.0F);
        mRotation = 0.0F;
        mRotationCenterX = 0.0F;
        mRotationCenterY = 0.0F;
        mScaleX = 1.0F;
        mScaleY = 1.0F;
        mScaleCenterX = 0.0F;
        mScaleCenterY = 0.0F;
        mSkewX = 0.0F;
        mSkewY = 0.0F;
        mSkewCenterX = 0.0F;
        mSkewCenterY = 0.0F;
        mLocalToParentTransformationDirty = true;
        mParentToLocalTransformationDirty = true;
        mX = f;
        mY = f1;
    }

    private void allocateChildren()
    {
        mChildren = new SmartList(4);
    }

    private void allocateEntityModifiers()
    {
        mEntityModifiers = new EntityModifierList(this, 4);
    }

    private void allocateUpdateHandlers()
    {
        mUpdateHandlers = new UpdateHandlerList(4);
    }

    private void assertEntityHasNoParent(IEntity ientity)
        throws IllegalStateException
    {
        if (ientity.hasParent())
        {
            String s = ientity.getClass().getSimpleName();
            String s1 = ientity.getParent().getClass().getSimpleName();
            String s2 = getClass().getSimpleName();
            throw new IllegalStateException((new StringBuilder("pEntity '")).append(s).append("' already has a parent: '").append(s1).append("'. New parent: '").append(s2).append("'!").toString());
        } else
        {
            return;
        }
    }

    protected void applyRotation(GLState glstate)
    {
        float f = mRotation;
        if (f != 0.0F)
        {
            float f1 = mRotationCenterX;
            float f2 = mRotationCenterY;
            glstate.translateModelViewGLMatrixf(f1, f2, 0.0F);
            glstate.rotateModelViewGLMatrixf(f, 0.0F, 0.0F, 1.0F);
            glstate.translateModelViewGLMatrixf(-f1, -f2, 0.0F);
        }
    }

    protected void applyScale(GLState glstate)
    {
        float f = mScaleX;
        float f1 = mScaleY;
        if (f != 1.0F || f1 != 1.0F)
        {
            float f2 = mScaleCenterX;
            float f3 = mScaleCenterY;
            glstate.translateModelViewGLMatrixf(f2, f3, 0.0F);
            glstate.scaleModelViewGLMatrixf(f, f1, 1);
            glstate.translateModelViewGLMatrixf(-f2, -f3, 0.0F);
        }
    }

    protected void applySkew(GLState glstate)
    {
        float f = mSkewX;
        float f1 = mSkewY;
        if (f != 0.0F || f1 != 0.0F)
        {
            float f2 = mSkewCenterX;
            float f3 = mSkewCenterY;
            glstate.translateModelViewGLMatrixf(f2, f3, 0.0F);
            glstate.skewModelViewGLMatrixf(f, f1);
            glstate.translateModelViewGLMatrixf(-f2, -f3, 0.0F);
        }
    }

    protected void applyTranslation(GLState glstate)
    {
        glstate.translateModelViewGLMatrixf(mX, mY, 0.0F);
    }

    public void attachChild(IEntity ientity)
        throws IllegalStateException
    {
        assertEntityHasNoParent(ientity);
        if (mChildren == null)
        {
            allocateChildren();
        }
        mChildren.add(ientity);
        ientity.setParent(this);
        ientity.onAttached();
    }

    public void callOnChildren(IEntityParameterCallable ientityparametercallable)
    {
        if (mChildren == null)
        {
            return;
        } else
        {
            mChildren.call(ientityparametercallable);
            return;
        }
    }

    public void callOnChildren(IEntityParameterCallable ientityparametercallable, IEntityMatcher ientitymatcher)
    {
        if (mChildren == null)
        {
            return;
        } else
        {
            mChildren.call(ientitymatcher, ientityparametercallable);
            return;
        }
    }

    public void clearEntityModifiers()
    {
        if (mEntityModifiers == null)
        {
            return;
        } else
        {
            mEntityModifiers.clear();
            return;
        }
    }

    public void clearUpdateHandlers()
    {
        if (mUpdateHandlers == null)
        {
            return;
        } else
        {
            mUpdateHandlers.clear();
            return;
        }
    }

    public float[] convertLocalToSceneCoordinates(float f, float f1)
    {
        return convertLocalToSceneCoordinates(f, f1, VERTICES_LOCAL_TO_SCENE_TMP);
    }

    public float[] convertLocalToSceneCoordinates(float f, float f1, float af[])
    {
        Transformation transformation = getLocalToSceneTransformation();
        af[0] = f;
        af[1] = f1;
        transformation.transform(af);
        return af;
    }

    public float[] convertLocalToSceneCoordinates(float af[])
    {
        return convertLocalToSceneCoordinates(af, VERTICES_LOCAL_TO_SCENE_TMP);
    }

    public float[] convertLocalToSceneCoordinates(float af[], float af1[])
    {
        Transformation transformation = getLocalToSceneTransformation();
        af1[0] = af[0];
        af1[1] = af[1];
        transformation.transform(af1);
        return af1;
    }

    public float[] convertSceneToLocalCoordinates(float f, float f1)
    {
        return convertSceneToLocalCoordinates(f, f1, VERTICES_SCENE_TO_LOCAL_TMP);
    }

    public float[] convertSceneToLocalCoordinates(float f, float f1, float af[])
    {
        af[0] = f;
        af[1] = f1;
        getSceneToLocalTransformation().transform(af);
        return af;
    }

    public float[] convertSceneToLocalCoordinates(float af[])
    {
        return convertSceneToLocalCoordinates(af, VERTICES_SCENE_TO_LOCAL_TMP);
    }

    public float[] convertSceneToLocalCoordinates(float af[], float af1[])
    {
        af1[0] = af[0];
        af1[1] = af[1];
        getSceneToLocalTransformation().transform(af1);
        return af1;
    }

    public IEntity detachChild(int i)
    {
        if (mChildren != null)
        {
            int j = -1 + mChildren.size();
            while (j >= 0) 
            {
                if (((IEntity)mChildren.get(j)).getTag() == i)
                {
                    IEntity ientity = (IEntity)mChildren.remove(j);
                    PARAMETERCALLABLE_DETACHCHILD.call(ientity);
                    return ientity;
                }
                j--;
            }
        }
        return null;
    }

    public IEntity detachChild(IEntityMatcher ientitymatcher)
    {
        if (mChildren == null)
        {
            return null;
        } else
        {
            return (IEntity)mChildren.remove(ientitymatcher, PARAMETERCALLABLE_DETACHCHILD);
        }
    }

    public boolean detachChild(IEntity ientity)
    {
        if (mChildren == null)
        {
            return false;
        } else
        {
            return mChildren.remove(ientity, PARAMETERCALLABLE_DETACHCHILD);
        }
    }

    public void detachChildren()
    {
        if (mChildren == null)
        {
            return;
        } else
        {
            mChildren.clear(PARAMETERCALLABLE_DETACHCHILD);
            return;
        }
    }

    public boolean detachChildren(IEntityMatcher ientitymatcher)
    {
        if (mChildren == null)
        {
            return false;
        } else
        {
            return mChildren.removeAll(ientitymatcher, PARAMETERCALLABLE_DETACHCHILD);
        }
    }

    public boolean detachSelf()
    {
        IEntity ientity = mParent;
        if (ientity != null)
        {
            return ientity.detachChild(this);
        } else
        {
            return false;
        }
    }

    public void dispose()
    {
        if (!mDisposed)
        {
            mDisposed = true;
            return;
        } else
        {
            throw new org.andengine.util.IDisposable.AlreadyDisposedException();
        }
    }

    protected void draw(GLState glstate, Camera camera)
    {
    }

    protected void finalize()
        throws Throwable
    {
        super.finalize();
        if (!mDisposed)
        {
            dispose();
        }
    }

    public float getAlpha()
    {
        return mColor.getAlpha();
    }

    public float getBlue()
    {
        return mColor.getBlue();
    }

    public IEntity getChildByIndex(int i)
    {
        if (mChildren == null)
        {
            return null;
        } else
        {
            return (IEntity)mChildren.get(i);
        }
    }

    public IEntity getChildByMatcher(IEntityMatcher ientitymatcher)
    {
        if (mChildren == null)
        {
            return null;
        } else
        {
            return (IEntity)mChildren.get(ientitymatcher);
        }
    }

    public IEntity getChildByTag(int i)
    {
        if (mChildren != null) goto _L2; else goto _L1
_L1:
        IEntity ientity = null;
_L4:
        return ientity;
_L2:
        int j = -1 + mChildren.size();
        do
        {
            if (j < 0)
            {
                return null;
            }
            ientity = (IEntity)mChildren.get(j);
            if (ientity.getTag() == i)
            {
                continue;
            }
            j--;
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }

    public int getChildCount()
    {
        if (mChildren == null)
        {
            return 0;
        } else
        {
            return mChildren.size();
        }
    }

    public Color getColor()
    {
        return mColor;
    }

    public int getEntityModifierCount()
    {
        if (mEntityModifiers == null)
        {
            return 0;
        } else
        {
            return mEntityModifiers.size();
        }
    }

    public IEntity getFirstChild()
    {
        if (mChildren == null)
        {
            return null;
        } else
        {
            return (IEntity)mChildren.get(0);
        }
    }

    public float getGreen()
    {
        return mColor.getGreen();
    }

    public IEntity getLastChild()
    {
        if (mChildren == null)
        {
            return null;
        } else
        {
            return (IEntity)mChildren.get(-1 + mChildren.size());
        }
    }

    public Transformation getLocalToParentTransformation()
    {
        if (mLocalToParentTransformation == null)
        {
            mLocalToParentTransformation = new Transformation();
        }
        Transformation transformation = mLocalToParentTransformation;
        if (mLocalToParentTransformationDirty)
        {
            transformation.setToIdentity();
            float f = mScaleX;
            float f1 = mScaleY;
            if (f != 1.0F || f1 != 1.0F)
            {
                float f2 = mScaleCenterX;
                float f3 = mScaleCenterY;
                transformation.postTranslate(-f2, -f3);
                transformation.postScale(f, f1);
                transformation.postTranslate(f2, f3);
            }
            float f4 = mSkewX;
            float f5 = mSkewY;
            if (f4 != 0.0F || f5 != 0.0F)
            {
                float f6 = mSkewCenterX;
                float f7 = mSkewCenterY;
                transformation.postTranslate(-f6, -f7);
                transformation.postSkew(f4, f5);
                transformation.postTranslate(f6, f7);
            }
            float f8 = mRotation;
            if (f8 != 0.0F)
            {
                float f9 = mRotationCenterX;
                float f10 = mRotationCenterY;
                transformation.postTranslate(-f9, -f10);
                transformation.postRotate(f8);
                transformation.postTranslate(f9, f10);
            }
            transformation.postTranslate(mX, mY);
            mLocalToParentTransformationDirty = false;
        }
        return transformation;
    }

    public Transformation getLocalToSceneTransformation()
    {
        if (mLocalToSceneTransformation == null)
        {
            mLocalToSceneTransformation = new Transformation();
        }
        Transformation transformation = mLocalToSceneTransformation;
        transformation.setTo(getLocalToParentTransformation());
        IEntity ientity = mParent;
        if (ientity != null)
        {
            transformation.postConcat(ientity.getLocalToSceneTransformation());
        }
        return transformation;
    }

    public IEntity getParent()
    {
        return mParent;
    }

    public Transformation getParentToLocalTransformation()
    {
        if (mParentToLocalTransformation == null)
        {
            mParentToLocalTransformation = new Transformation();
        }
        Transformation transformation = mParentToLocalTransformation;
        if (mParentToLocalTransformationDirty)
        {
            transformation.setToIdentity();
            transformation.postTranslate(-mX, -mY);
            float f = mRotation;
            if (f != 0.0F)
            {
                float f9 = mRotationCenterX;
                float f10 = mRotationCenterY;
                transformation.postTranslate(-f9, -f10);
                transformation.postRotate(-f);
                transformation.postTranslate(f9, f10);
            }
            float f1 = mSkewX;
            float f2 = mSkewY;
            if (f1 != 0.0F || f2 != 0.0F)
            {
                float f3 = mSkewCenterX;
                float f4 = mSkewCenterY;
                transformation.postTranslate(-f3, -f4);
                transformation.postSkew(-f1, -f2);
                transformation.postTranslate(f3, f4);
            }
            float f5 = mScaleX;
            float f6 = mScaleY;
            if (f5 != 1.0F || f6 != 1.0F)
            {
                float f7 = mScaleCenterX;
                float f8 = mScaleCenterY;
                transformation.postTranslate(-f7, -f8);
                transformation.postScale(1.0F / f5, 1.0F / f6);
                transformation.postTranslate(f7, f8);
            }
            mParentToLocalTransformationDirty = false;
        }
        return transformation;
    }

    public float getRed()
    {
        return mColor.getRed();
    }

    public float getRotation()
    {
        return mRotation;
    }

    public float getRotationCenterX()
    {
        return mRotationCenterX;
    }

    public float getRotationCenterY()
    {
        return mRotationCenterY;
    }

    public float getScaleCenterX()
    {
        return mScaleCenterX;
    }

    public float getScaleCenterY()
    {
        return mScaleCenterY;
    }

    public float getScaleX()
    {
        return mScaleX;
    }

    public float getScaleY()
    {
        return mScaleY;
    }

    public float[] getSceneCenterCoordinates()
    {
        return convertLocalToSceneCoordinates(0.0F, 0.0F);
    }

    public float[] getSceneCenterCoordinates(float af[])
    {
        return convertLocalToSceneCoordinates(0.0F, 0.0F, af);
    }

    public Transformation getSceneToLocalTransformation()
    {
        if (mSceneToLocalTransformation == null)
        {
            mSceneToLocalTransformation = new Transformation();
        }
        Transformation transformation = mSceneToLocalTransformation;
        transformation.setTo(getParentToLocalTransformation());
        IEntity ientity = mParent;
        if (ientity != null)
        {
            transformation.preConcat(ientity.getSceneToLocalTransformation());
        }
        return transformation;
    }

    public float getSkewCenterX()
    {
        return mSkewCenterX;
    }

    public float getSkewCenterY()
    {
        return mSkewCenterY;
    }

    public float getSkewX()
    {
        return mSkewX;
    }

    public float getSkewY()
    {
        return mSkewY;
    }

    public int getTag()
    {
        return mTag;
    }

    public int getUpdateHandlerCount()
    {
        if (mUpdateHandlers == null)
        {
            return 0;
        } else
        {
            return mUpdateHandlers.size();
        }
    }

    public Object getUserData()
    {
        return mUserData;
    }

    public float getX()
    {
        return mX;
    }

    public float getY()
    {
        return mY;
    }

    public int getZIndex()
    {
        return mZIndex;
    }

    public boolean hasParent()
    {
        return mParent != null;
    }

    public boolean isChildrenIgnoreUpdate()
    {
        return mChildrenIgnoreUpdate;
    }

    public boolean isChildrenVisible()
    {
        return mChildrenVisible;
    }

    public boolean isCulled(Camera camera)
    {
        return false;
    }

    public boolean isCullingEnabled()
    {
        return mCullingEnabled;
    }

    public boolean isDisposed()
    {
        return mDisposed;
    }

    public boolean isIgnoreUpdate()
    {
        return mIgnoreUpdate;
    }

    public boolean isRotated()
    {
        return mRotation != 0.0F;
    }

    public boolean isRotatedOrScaledOrSkewed()
    {
        return mRotation != 0.0F || mScaleX != 1.0F || mScaleY != 1.0F || mSkewX != 0.0F || mSkewY != 0.0F;
    }

    public boolean isScaled()
    {
        return mScaleX != 1.0F || mScaleY != 1.0F;
    }

    public boolean isSkewed()
    {
        return mSkewX != 0.0F || mSkewY != 0.0F;
    }

    public boolean isVisible()
    {
        return mVisible;
    }

    protected void onApplyTransformations(GLState glstate)
    {
        applyTranslation(glstate);
        applyRotation(glstate);
        applySkew(glstate);
        applyScale(glstate);
    }

    public void onAttached()
    {
    }

    public void onDetached()
    {
    }

    public final void onDraw(GLState glstate, Camera camera)
    {
        if (mVisible && (!mCullingEnabled || !isCulled(camera)))
        {
            onManagedDraw(glstate, camera);
        }
    }

    protected void onManagedDraw(GLState glstate, Camera camera)
    {
        SmartList smartlist;
        glstate.pushModelViewGLMatrix();
        onApplyTransformations(glstate);
        smartlist = mChildren;
        if (smartlist != null && mChildrenVisible) goto _L2; else goto _L1
_L1:
        preDraw(glstate, camera);
        draw(glstate, camera);
        postDraw(glstate, camera);
_L5:
        glstate.popModelViewGLMatrix();
        return;
_L2:
        int i;
        int j;
        if (mChildrenSortPending)
        {
            ZIndexSorter.getInstance().sort(mChildren);
            mChildrenSortPending = false;
        }
        i = smartlist.size();
        j = 0;
_L7:
        if (j < i) goto _L4; else goto _L3
_L3:
        IEntity ientity;
        preDraw(glstate, camera);
        draw(glstate, camera);
        postDraw(glstate, camera);
        while (j < i) 
        {
            ((IEntity)smartlist.get(j)).onDraw(glstate, camera);
            j++;
        }
          goto _L5
_L4:
        if ((ientity = (IEntity)smartlist.get(j)).getZIndex() >= 0) goto _L3; else goto _L6
_L6:
        ientity.onDraw(glstate, camera);
        j++;
          goto _L7
    }

    protected void onManagedUpdate(float f)
    {
        if (mEntityModifiers != null)
        {
            mEntityModifiers.onUpdate(f);
        }
        if (mUpdateHandlers != null)
        {
            mUpdateHandlers.onUpdate(f);
        }
        if (mChildren == null || mChildrenIgnoreUpdate) goto _L2; else goto _L1
_L1:
        SmartList smartlist;
        int i;
        int j;
        smartlist = mChildren;
        i = smartlist.size();
        j = 0;
_L5:
        if (j < i) goto _L3; else goto _L2
_L2:
        return;
_L3:
        ((IEntity)smartlist.get(j)).onUpdate(f);
        j++;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public final void onUpdate(float f)
    {
        if (!mIgnoreUpdate)
        {
            onManagedUpdate(f);
        }
    }

    protected void onUpdateColor()
    {
    }

    protected void postDraw(GLState glstate, Camera camera)
    {
    }

    protected void preDraw(GLState glstate, Camera camera)
    {
    }

    public ArrayList query(IEntityMatcher ientitymatcher)
    {
        return (ArrayList)query(ientitymatcher, ((List) (new ArrayList())));
    }

    public List query(IEntityMatcher ientitymatcher, List list)
    {
        int i = getChildCount();
        int j = 0;
        do
        {
            if (j >= i)
            {
                return list;
            }
            IEntity ientity = (IEntity)mChildren.get(j);
            if (ientitymatcher.matches(ientity))
            {
                list.add(ientity);
            }
            ientity.query(ientitymatcher, list);
            j++;
        } while (true);
    }

    public IEntity queryFirst(IEntityMatcher ientitymatcher)
    {
        return queryFirstForSubclass(ientitymatcher);
    }

    public IEntity queryFirstForSubclass(IEntityMatcher ientitymatcher)
    {
        int i;
        int j;
        i = getChildCount();
        j = 0;
_L6:
        if (j < i) goto _L2; else goto _L1
_L1:
        IEntity ientity = null;
_L4:
        return ientity;
_L2:
        ientity = (IEntity)mChildren.get(j);
        if (ientitymatcher.matches(ientity)) goto _L4; else goto _L3
_L3:
        IEntity ientity1 = ientity.queryFirstForSubclass(ientitymatcher);
        if (ientity1 != null)
        {
            return ientity1;
        }
        j++;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public ArrayList queryForSubclass(IEntityMatcher ientitymatcher)
        throws ClassCastException
    {
        return (ArrayList)queryForSubclass(ientitymatcher, ((List) (new ArrayList())));
    }

    public List queryForSubclass(IEntityMatcher ientitymatcher, List list)
        throws ClassCastException
    {
        int i = getChildCount();
        int j = 0;
        do
        {
            if (j >= i)
            {
                return list;
            }
            IEntity ientity = (IEntity)mChildren.get(j);
            if (ientitymatcher.matches(ientity))
            {
                list.add(ientity);
            }
            ientity.queryForSubclass(ientitymatcher, list);
            j++;
        } while (true);
    }

    public void registerEntityModifier(IEntityModifier ientitymodifier)
    {
        if (mEntityModifiers == null)
        {
            allocateEntityModifiers();
        }
        mEntityModifiers.add(ientitymodifier);
    }

    public void registerUpdateHandler(IUpdateHandler iupdatehandler)
    {
        if (mUpdateHandlers == null)
        {
            allocateUpdateHandlers();
        }
        mUpdateHandlers.add(iupdatehandler);
    }

    public void reset()
    {
        mVisible = true;
        mCullingEnabled = false;
        mIgnoreUpdate = false;
        mChildrenVisible = true;
        mChildrenIgnoreUpdate = false;
        mRotation = 0.0F;
        mScaleX = 1.0F;
        mScaleY = 1.0F;
        mSkewX = 0.0F;
        mSkewY = 0.0F;
        mColor.reset();
        if (mEntityModifiers != null)
        {
            mEntityModifiers.reset();
        }
        if (mChildren == null) goto _L2; else goto _L1
_L1:
        SmartList smartlist;
        int i;
        smartlist = mChildren;
        i = -1 + smartlist.size();
_L5:
        if (i >= 0) goto _L3; else goto _L2
_L2:
        return;
_L3:
        ((IEntity)smartlist.get(i)).reset();
        i--;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public void setAlpha(float f)
    {
        if (mColor.setAlphaChecking(f))
        {
            onUpdateColor();
        }
    }

    public void setBlue(float f)
    {
        if (mColor.setBlueChecking(f))
        {
            onUpdateColor();
        }
    }

    public void setChildrenIgnoreUpdate(boolean flag)
    {
        mChildrenIgnoreUpdate = flag;
    }

    public void setChildrenVisible(boolean flag)
    {
        mChildrenVisible = flag;
    }

    public void setColor(float f, float f1, float f2)
    {
        if (mColor.setChecking(f, f1, f2))
        {
            onUpdateColor();
        }
    }

    public void setColor(float f, float f1, float f2, float f3)
    {
        if (mColor.setChecking(f, f1, f2, f3))
        {
            onUpdateColor();
        }
    }

    public void setColor(Color color)
    {
        mColor.set(color);
        onUpdateColor();
    }

    public void setCullingEnabled(boolean flag)
    {
        mCullingEnabled = flag;
    }

    public void setGreen(float f)
    {
        if (mColor.setGreenChecking(f))
        {
            onUpdateColor();
        }
    }

    public void setIgnoreUpdate(boolean flag)
    {
        mIgnoreUpdate = flag;
    }

    public void setParent(IEntity ientity)
    {
        mParent = ientity;
    }

    public void setPosition(float f, float f1)
    {
        mX = f;
        mY = f1;
        mLocalToParentTransformationDirty = true;
        mParentToLocalTransformationDirty = true;
    }

    public void setPosition(IEntity ientity)
    {
        setPosition(ientity.getX(), ientity.getY());
    }

    public void setRed(float f)
    {
        if (mColor.setRedChecking(f))
        {
            onUpdateColor();
        }
    }

    public void setRotation(float f)
    {
        mRotation = f;
        mLocalToParentTransformationDirty = true;
        mParentToLocalTransformationDirty = true;
    }

    public void setRotationCenter(float f, float f1)
    {
        mRotationCenterX = f;
        mRotationCenterY = f1;
        mLocalToParentTransformationDirty = true;
        mParentToLocalTransformationDirty = true;
    }

    public void setRotationCenterX(float f)
    {
        mRotationCenterX = f;
        mLocalToParentTransformationDirty = true;
        mParentToLocalTransformationDirty = true;
    }

    public void setRotationCenterY(float f)
    {
        mRotationCenterY = f;
        mLocalToParentTransformationDirty = true;
        mParentToLocalTransformationDirty = true;
    }

    public void setScale(float f)
    {
        mScaleX = f;
        mScaleY = f;
        mLocalToParentTransformationDirty = true;
        mParentToLocalTransformationDirty = true;
    }

    public void setScale(float f, float f1)
    {
        mScaleX = f;
        mScaleY = f1;
        mLocalToParentTransformationDirty = true;
        mParentToLocalTransformationDirty = true;
    }

    public void setScaleCenter(float f, float f1)
    {
        mScaleCenterX = f;
        mScaleCenterY = f1;
        mLocalToParentTransformationDirty = true;
        mParentToLocalTransformationDirty = true;
    }

    public void setScaleCenterX(float f)
    {
        mScaleCenterX = f;
        mLocalToParentTransformationDirty = true;
        mParentToLocalTransformationDirty = true;
    }

    public void setScaleCenterY(float f)
    {
        mScaleCenterY = f;
        mLocalToParentTransformationDirty = true;
        mParentToLocalTransformationDirty = true;
    }

    public void setScaleX(float f)
    {
        mScaleX = f;
        mLocalToParentTransformationDirty = true;
        mParentToLocalTransformationDirty = true;
    }

    public void setScaleY(float f)
    {
        mScaleY = f;
        mLocalToParentTransformationDirty = true;
        mParentToLocalTransformationDirty = true;
    }

    public void setSkew(float f)
    {
        mSkewX = f;
        mSkewY = f;
        mLocalToParentTransformationDirty = true;
        mParentToLocalTransformationDirty = true;
    }

    public void setSkew(float f, float f1)
    {
        mSkewX = f;
        mSkewY = f1;
        mLocalToParentTransformationDirty = true;
        mParentToLocalTransformationDirty = true;
    }

    public void setSkewCenter(float f, float f1)
    {
        mSkewCenterX = f;
        mSkewCenterY = f1;
        mLocalToParentTransformationDirty = true;
        mParentToLocalTransformationDirty = true;
    }

    public void setSkewCenterX(float f)
    {
        mSkewCenterX = f;
        mLocalToParentTransformationDirty = true;
        mParentToLocalTransformationDirty = true;
    }

    public void setSkewCenterY(float f)
    {
        mSkewCenterY = f;
        mLocalToParentTransformationDirty = true;
        mParentToLocalTransformationDirty = true;
    }

    public void setSkewX(float f)
    {
        mSkewX = f;
        mLocalToParentTransformationDirty = true;
        mParentToLocalTransformationDirty = true;
    }

    public void setSkewY(float f)
    {
        mSkewY = f;
        mLocalToParentTransformationDirty = true;
        mParentToLocalTransformationDirty = true;
    }

    public void setTag(int i)
    {
        mTag = i;
    }

    public void setUserData(Object obj)
    {
        mUserData = obj;
    }

    public void setVisible(boolean flag)
    {
        mVisible = flag;
    }

    public void setX(float f)
    {
        mX = f;
        mLocalToParentTransformationDirty = true;
        mParentToLocalTransformationDirty = true;
    }

    public void setY(float f)
    {
        mY = f;
        mLocalToParentTransformationDirty = true;
        mParentToLocalTransformationDirty = true;
    }

    public void setZIndex(int i)
    {
        mZIndex = i;
    }

    public void sortChildren()
    {
        sortChildren(true);
    }

    public void sortChildren(IEntityComparator ientitycomparator)
    {
        if (mChildren == null)
        {
            return;
        } else
        {
            ZIndexSorter.getInstance().sort(mChildren, ientitycomparator);
            return;
        }
    }

    public void sortChildren(boolean flag)
    {
        if (mChildren == null)
        {
            return;
        }
        if (flag)
        {
            ZIndexSorter.getInstance().sort(mChildren);
            return;
        } else
        {
            mChildrenSortPending = true;
            return;
        }
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        toString(stringbuilder);
        return stringbuilder.toString();
    }

    public void toString(StringBuilder stringbuilder)
    {
        stringbuilder.append(getClass().getSimpleName());
        if (mChildren == null || mChildren.size() <= 0) goto _L2; else goto _L1
_L1:
        SmartList smartlist;
        int i;
        stringbuilder.append(" [");
        smartlist = mChildren;
        i = 0;
_L6:
        if (i < smartlist.size()) goto _L4; else goto _L3
_L3:
        stringbuilder.append("]");
_L2:
        return;
_L4:
        ((IEntity)smartlist.get(i)).toString(stringbuilder);
        if (i < -1 + smartlist.size())
        {
            stringbuilder.append(", ");
        }
        i++;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public boolean unregisterEntityModifier(IEntityModifier ientitymodifier)
    {
        if (mEntityModifiers == null)
        {
            return false;
        } else
        {
            return mEntityModifiers.remove(ientitymodifier);
        }
    }

    public boolean unregisterEntityModifiers(org.andengine.entity.modifier.IEntityModifier.IEntityModifierMatcher ientitymodifiermatcher)
    {
        if (mEntityModifiers == null)
        {
            return false;
        } else
        {
            return mEntityModifiers.removeAll(ientitymodifiermatcher);
        }
    }

    public boolean unregisterUpdateHandler(IUpdateHandler iupdatehandler)
    {
        if (mUpdateHandlers == null)
        {
            return false;
        } else
        {
            return mUpdateHandlers.remove(iupdatehandler);
        }
    }

    public boolean unregisterUpdateHandlers(org.andengine.engine.handler.IUpdateHandler.IUpdateHandlerMatcher iupdatehandlermatcher)
    {
        if (mUpdateHandlers == null)
        {
            return false;
        } else
        {
            return mUpdateHandlers.removeAll(iupdatehandlermatcher);
        }
    }

}
