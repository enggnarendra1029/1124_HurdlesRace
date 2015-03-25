// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.scene;

import android.util.SparseArray;
import org.andengine.engine.camera.Camera;
import org.andengine.engine.handler.runnable.RunnableHandler;
import org.andengine.entity.Entity;
import org.andengine.entity.IEntity;
import org.andengine.entity.scene.background.Background;
import org.andengine.entity.scene.background.IBackground;
import org.andengine.input.touch.TouchEvent;
import org.andengine.opengl.util.GLState;
import org.andengine.util.adt.list.SmartList;
import org.andengine.util.color.Color;

// Referenced classes of package org.andengine.entity.scene:
//            ITouchArea, IOnAreaTouchListener, IOnSceneTouchListener

public class Scene extends Entity
{

    private static final int TOUCHAREAS_CAPACITY_DEFAULT = 4;
    private IBackground mBackground;
    private boolean mBackgroundEnabled;
    protected Scene mChildScene;
    private boolean mChildSceneModalDraw;
    private boolean mChildSceneModalTouch;
    private boolean mChildSceneModalUpdate;
    private IOnAreaTouchListener mOnAreaTouchListener;
    private boolean mOnAreaTouchTraversalBackToFront;
    private IOnSceneTouchListener mOnSceneTouchListener;
    private boolean mOnSceneTouchListenerBindingOnActionDownEnabled;
    private final SparseArray mOnSceneTouchListenerBindings;
    protected Scene mParentScene;
    private final RunnableHandler mRunnableHandler;
    private float mSecondsElapsedTotal;
    private boolean mTouchAreaBindingOnActionDownEnabled;
    private boolean mTouchAreaBindingOnActionMoveEnabled;
    private final SparseArray mTouchAreaBindings;
    protected SmartList mTouchAreas;

    public Scene()
    {
        mTouchAreas = new SmartList(4);
        mRunnableHandler = new RunnableHandler();
        mBackground = new Background(Color.BLACK);
        mBackgroundEnabled = true;
        mOnAreaTouchTraversalBackToFront = true;
        mTouchAreaBindingOnActionDownEnabled = false;
        mTouchAreaBindingOnActionMoveEnabled = false;
        mTouchAreaBindings = new SparseArray();
        mOnSceneTouchListenerBindingOnActionDownEnabled = false;
        mOnSceneTouchListenerBindings = new SparseArray();
    }

    public Scene(int i)
    {
        mTouchAreas = new SmartList(4);
        mRunnableHandler = new RunnableHandler();
        mBackground = new Background(Color.BLACK);
        mBackgroundEnabled = true;
        mOnAreaTouchTraversalBackToFront = true;
        mTouchAreaBindingOnActionDownEnabled = false;
        mTouchAreaBindingOnActionMoveEnabled = false;
        mTouchAreaBindings = new SparseArray();
        mOnSceneTouchListenerBindingOnActionDownEnabled = false;
        mOnSceneTouchListenerBindings = new SparseArray();
        int j = 0;
        do
        {
            if (j >= i)
            {
                return;
            }
            attachChild(new Entity());
            j++;
        } while (true);
    }

    private Boolean onAreaTouchEvent(TouchEvent touchevent, float f, float f1, ITouchArea itoucharea)
    {
        float af[] = itoucharea.convertSceneToLocalCoordinates(f, f1);
        float f2 = af[0];
        float f3 = af[1];
        if (itoucharea.onAreaTouched(touchevent, f2, f3))
        {
            return Boolean.TRUE;
        }
        if (mOnAreaTouchListener != null)
        {
            return Boolean.valueOf(mOnAreaTouchListener.onAreaTouched(touchevent, itoucharea, f2, f3));
        } else
        {
            return null;
        }
    }

    private void setParentScene(Scene scene)
    {
        mParentScene = scene;
    }

    public void back()
    {
        clearChildScene();
        if (mParentScene != null)
        {
            mParentScene.clearChildScene();
            mParentScene = null;
        }
    }

    public void clearChildScene()
    {
        mChildScene = null;
    }

    public void clearTouchAreas()
    {
        mTouchAreas.clear();
    }

    public IBackground getBackground()
    {
        return mBackground;
    }

    public Scene getChildScene()
    {
        return mChildScene;
    }

    public IOnAreaTouchListener getOnAreaTouchListener()
    {
        return mOnAreaTouchListener;
    }

    public IOnSceneTouchListener getOnSceneTouchListener()
    {
        return mOnSceneTouchListener;
    }

    public float getSecondsElapsedTotal()
    {
        return mSecondsElapsedTotal;
    }

    public SmartList getTouchAreas()
    {
        return mTouchAreas;
    }

    public boolean hasChildScene()
    {
        return mChildScene != null;
    }

    public boolean hasOnAreaTouchListener()
    {
        return mOnAreaTouchListener != null;
    }

    public boolean hasOnSceneTouchListener()
    {
        return mOnSceneTouchListener != null;
    }

    public boolean isBackgroundEnabled()
    {
        return mBackgroundEnabled;
    }

    public boolean isOnSceneTouchListenerBindingOnActionDownEnabled()
    {
        return mOnSceneTouchListenerBindingOnActionDownEnabled;
    }

    public boolean isTouchAreaBindingOnActionDownEnabled()
    {
        return mTouchAreaBindingOnActionDownEnabled;
    }

    public boolean isTouchAreaBindingOnActionMoveEnabled()
    {
        return mTouchAreaBindingOnActionMoveEnabled;
    }

    protected void onApplyMatrix(GLState glstate, Camera camera)
    {
        camera.onApplySceneMatrix(glstate);
    }

    protected boolean onChildSceneTouchEvent(TouchEvent touchevent)
    {
        return mChildScene.onSceneTouchEvent(touchevent);
    }

    protected void onManagedDraw(GLState glstate, Camera camera)
    {
        Scene scene = mChildScene;
        if (scene == null || !mChildSceneModalDraw)
        {
            if (mBackgroundEnabled)
            {
                glstate.pushProjectionGLMatrix();
                camera.onApplySceneBackgroundMatrix(glstate);
                glstate.loadModelViewGLMatrixIdentity();
                mBackground.onDraw(glstate, camera);
                glstate.popProjectionGLMatrix();
            }
            glstate.pushProjectionGLMatrix();
            onApplyMatrix(glstate, camera);
            glstate.loadModelViewGLMatrixIdentity();
            super.onManagedDraw(glstate, camera);
            glstate.popProjectionGLMatrix();
        }
        if (scene != null)
        {
            scene.onDraw(glstate, camera);
        }
    }

    protected void onManagedUpdate(float f)
    {
        mSecondsElapsedTotal = f + mSecondsElapsedTotal;
        mRunnableHandler.onUpdate(f);
        Scene scene = mChildScene;
        if (scene == null || !mChildSceneModalUpdate)
        {
            mBackground.onUpdate(f);
            super.onManagedUpdate(f);
        }
        if (scene != null)
        {
            scene.onUpdate(f);
        }
    }

    public boolean onSceneTouchEvent(TouchEvent touchevent)
    {
        int i;
        boolean flag;
        boolean flag1;
        i = touchevent.getAction();
        flag = touchevent.isActionDown();
        flag1 = touchevent.isActionMove();
        if (flag) goto _L2; else goto _L1
_L1:
        if (!mOnSceneTouchListenerBindingOnActionDownEnabled || (IOnSceneTouchListener)mOnSceneTouchListenerBindings.get(touchevent.getPointerID()) == null) goto _L4; else goto _L3
_L3:
        i;
        JVM INSTR tableswitch 1 3: default 72
    //                   1 103
    //                   2 72
    //                   3 103;
           goto _L5 _L6 _L5 _L6
_L5:
        Boolean boolean5 = Boolean.valueOf(mOnSceneTouchListener.onSceneTouchEvent(this, touchevent));
        if (boolean5 != null && boolean5.booleanValue())
        {
            return true;
        }
        break; /* Loop/switch isn't completed */
_L6:
        mOnSceneTouchListenerBindings.remove(touchevent.getPointerID());
        if (true) goto _L5; else goto _L4
_L4:
        if (!mTouchAreaBindingOnActionDownEnabled) goto _L2; else goto _L7
_L7:
        SparseArray sparsearray;
        ITouchArea itoucharea2;
        sparsearray = mTouchAreaBindings;
        itoucharea2 = (ITouchArea)sparsearray.get(touchevent.getPointerID());
        if (itoucharea2 == null) goto _L2; else goto _L8
_L8:
        float f2;
        float f3;
        f2 = touchevent.getX();
        f3 = touchevent.getY();
        i;
        JVM INSTR tableswitch 1 3: default 188
    //                   1 216
    //                   2 188
    //                   3 216;
           goto _L9 _L10 _L9 _L10
_L9:
        Boolean boolean4 = onAreaTouchEvent(touchevent, f2, f3, itoucharea2);
        if (boolean4 != null && boolean4.booleanValue())
        {
            return true;
        }
        break; /* Loop/switch isn't completed */
_L10:
        sparsearray.remove(touchevent.getPointerID());
        if (true) goto _L9; else goto _L2
_L2:
        float f;
        float f1;
        SmartList smartlist;
        if (mChildScene != null)
        {
            if (onChildSceneTouchEvent(touchevent))
            {
                return true;
            }
            if (mChildSceneModalTouch)
            {
                return false;
            }
        }
        f = touchevent.getX();
        f1 = touchevent.getY();
        smartlist = mTouchAreas;
        if (smartlist == null) goto _L12; else goto _L11
_L11:
        int j = smartlist.size();
        if (j <= 0) goto _L12; else goto _L13
_L13:
        int l;
        if (!mOnAreaTouchTraversalBackToFront)
        {
            break MISSING_BLOCK_LABEL_466;
        }
        l = 0;
_L15:
        if (l < j) goto _L14; else goto _L12
_L12:
        if (mOnSceneTouchListener != null)
        {
            Boolean boolean1 = Boolean.valueOf(mOnSceneTouchListener.onSceneTouchEvent(this, touchevent));
            int k;
            ITouchArea itoucharea;
            Boolean boolean2;
            ITouchArea itoucharea1;
            Boolean boolean3;
            if (boolean1 != null && boolean1.booleanValue())
            {
                if (mOnSceneTouchListenerBindingOnActionDownEnabled && flag)
                {
                    mOnSceneTouchListenerBindings.put(touchevent.getPointerID(), mOnSceneTouchListener);
                }
                return true;
            } else
            {
                return false;
            }
        } else
        {
            return false;
        }
_L14:
        itoucharea1 = (ITouchArea)smartlist.get(l);
        if (itoucharea1.contains(f, f1))
        {
            boolean3 = onAreaTouchEvent(touchevent, f, f1, itoucharea1);
            if (boolean3 != null && boolean3.booleanValue())
            {
                if (mTouchAreaBindingOnActionDownEnabled && flag || mTouchAreaBindingOnActionMoveEnabled && flag1)
                {
                    mTouchAreaBindings.put(touchevent.getPointerID(), itoucharea1);
                }
                return true;
            }
        }
        l++;
          goto _L15
        k = j - 1;
        while (k >= 0) 
        {
            itoucharea = (ITouchArea)smartlist.get(k);
            if (itoucharea.contains(f, f1))
            {
                boolean2 = onAreaTouchEvent(touchevent, f, f1, itoucharea);
                if (boolean2 != null && boolean2.booleanValue())
                {
                    if (mTouchAreaBindingOnActionDownEnabled && flag || mTouchAreaBindingOnActionMoveEnabled && flag1)
                    {
                        mTouchAreaBindings.put(touchevent.getPointerID(), itoucharea);
                    }
                    return true;
                }
            }
            k--;
        }
          goto _L12
    }

    public void postRunnable(Runnable runnable)
    {
        mRunnableHandler.postRunnable(runnable);
    }

    public void registerTouchArea(ITouchArea itoucharea)
    {
        mTouchAreas.add(itoucharea);
    }

    public void reset()
    {
        super.reset();
        clearChildScene();
    }

    public void setBackground(IBackground ibackground)
    {
        mBackground = ibackground;
    }

    public void setBackgroundEnabled(boolean flag)
    {
        mBackgroundEnabled = flag;
    }

    public void setChildScene(Scene scene)
    {
        setChildScene(scene, false, false, false);
    }

    public void setChildScene(Scene scene, boolean flag, boolean flag1, boolean flag2)
    {
        scene.setParentScene(this);
        mChildScene = scene;
        mChildSceneModalDraw = flag;
        mChildSceneModalUpdate = flag1;
        mChildSceneModalTouch = flag2;
    }

    public void setChildSceneModal(Scene scene)
    {
        setChildScene(scene, true, true, true);
    }

    public void setOnAreaTouchListener(IOnAreaTouchListener ionareatouchlistener)
    {
        mOnAreaTouchListener = ionareatouchlistener;
    }

    public void setOnAreaTouchTraversalBackToFront()
    {
        mOnAreaTouchTraversalBackToFront = true;
    }

    public void setOnAreaTouchTraversalFrontToBack()
    {
        mOnAreaTouchTraversalBackToFront = false;
    }

    public void setOnSceneTouchListener(IOnSceneTouchListener ionscenetouchlistener)
    {
        mOnSceneTouchListener = ionscenetouchlistener;
    }

    public void setOnSceneTouchListenerBindingOnActionDownEnabled(boolean flag)
    {
        if (mOnSceneTouchListenerBindingOnActionDownEnabled && !flag)
        {
            mOnSceneTouchListenerBindings.clear();
        }
        mOnSceneTouchListenerBindingOnActionDownEnabled = flag;
    }

    public void setParent(IEntity ientity)
    {
    }

    public void setTouchAreaBindingOnActionDownEnabled(boolean flag)
    {
        if (mTouchAreaBindingOnActionDownEnabled && !flag)
        {
            mTouchAreaBindings.clear();
        }
        mTouchAreaBindingOnActionDownEnabled = flag;
    }

    public void setTouchAreaBindingOnActionMoveEnabled(boolean flag)
    {
        if (mTouchAreaBindingOnActionMoveEnabled && !flag)
        {
            mTouchAreaBindings.clear();
        }
        mTouchAreaBindingOnActionMoveEnabled = flag;
    }

    public boolean unregisterTouchArea(ITouchArea itoucharea)
    {
        return mTouchAreas.remove(itoucharea);
    }

    public boolean unregisterTouchAreas(ITouchArea.ITouchAreaMatcher itouchareamatcher)
    {
        return mTouchAreas.removeAll(itouchareamatcher);
    }
}
