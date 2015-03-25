// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.scene.menu;

import java.util.ArrayList;
import org.andengine.engine.camera.Camera;
import org.andengine.entity.scene.CameraScene;
import org.andengine.entity.scene.IOnAreaTouchListener;
import org.andengine.entity.scene.IOnSceneTouchListener;
import org.andengine.entity.scene.ITouchArea;
import org.andengine.entity.scene.Scene;
import org.andengine.entity.scene.menu.animator.IMenuAnimator;
import org.andengine.entity.scene.menu.item.IMenuItem;
import org.andengine.input.touch.TouchEvent;

public class MenuScene extends CameraScene
    implements IOnAreaTouchListener, IOnSceneTouchListener
{
    public static interface IOnMenuItemClickListener
    {

        public abstract boolean onMenuItemClicked(MenuScene menuscene, IMenuItem imenuitem, float f, float f1);
    }


    private IMenuAnimator mMenuAnimator;
    protected final ArrayList mMenuItems;
    private IOnMenuItemClickListener mOnMenuItemClickListener;
    private IMenuItem mSelectedMenuItem;

    public MenuScene()
    {
        this(null, null);
    }

    public MenuScene(Camera camera)
    {
        this(camera, null);
    }

    public MenuScene(Camera camera, IOnMenuItemClickListener ionmenuitemclicklistener)
    {
        super(camera);
        mMenuItems = new ArrayList();
        mMenuAnimator = IMenuAnimator.DEFAULT;
        mOnMenuItemClickListener = ionmenuitemclicklistener;
        setOnSceneTouchListener(this);
        setOnAreaTouchListener(this);
    }

    public MenuScene(IOnMenuItemClickListener ionmenuitemclicklistener)
    {
        this(null, ionmenuitemclicklistener);
    }

    public void addMenuItem(IMenuItem imenuitem)
    {
        mMenuItems.add(imenuitem);
        attachChild(imenuitem);
        registerTouchArea(imenuitem);
    }

    public void back()
    {
        super.back();
        reset();
    }

    public void buildAnimations()
    {
        prepareAnimations();
        float f = mCamera.getWidthRaw();
        float f1 = mCamera.getHeightRaw();
        mMenuAnimator.buildAnimations(mMenuItems, f, f1);
    }

    public void clearChildScene()
    {
        if (getChildScene() != null)
        {
            getChildScene().reset();
            super.clearChildScene();
        }
    }

    public void clearMenuItems()
    {
        int i = -1 + mMenuItems.size();
        do
        {
            if (i < 0)
            {
                return;
            }
            IMenuItem imenuitem = (IMenuItem)mMenuItems.remove(i);
            detachChild(imenuitem);
            unregisterTouchArea(imenuitem);
            i--;
        } while (true);
    }

    public void closeMenuScene()
    {
        back();
    }

    public volatile Scene getChildScene()
    {
        return getChildScene();
    }

    public MenuScene getChildScene()
    {
        return (MenuScene)super.getChildScene();
    }

    public int getMenuItemCount()
    {
        return mMenuItems.size();
    }

    public IOnMenuItemClickListener getOnMenuItemClickListener()
    {
        return mOnMenuItemClickListener;
    }

    public boolean onAreaTouched(TouchEvent touchevent, ITouchArea itoucharea, float f, float f1)
    {
        IMenuItem imenuitem = (IMenuItem)itoucharea;
        touchevent.getAction();
        JVM INSTR tableswitch 0 3: default 40
    //                   0 42
    //                   1 85
    //                   2 42
    //                   3 124;
           goto _L1 _L2 _L3 _L2 _L4
_L1:
        return true;
_L2:
        if (mSelectedMenuItem != null && mSelectedMenuItem != imenuitem)
        {
            mSelectedMenuItem.onUnselected();
        }
        mSelectedMenuItem = imenuitem;
        mSelectedMenuItem.onSelected();
        continue; /* Loop/switch isn't completed */
_L3:
        if (mOnMenuItemClickListener != null)
        {
            boolean flag = mOnMenuItemClickListener.onMenuItemClicked(this, imenuitem, f, f1);
            imenuitem.onUnselected();
            mSelectedMenuItem = null;
            return flag;
        }
        continue; /* Loop/switch isn't completed */
_L4:
        imenuitem.onUnselected();
        mSelectedMenuItem = null;
        if (true) goto _L1; else goto _L5
_L5:
    }

    public boolean onSceneTouchEvent(Scene scene, TouchEvent touchevent)
    {
        if (mSelectedMenuItem != null)
        {
            mSelectedMenuItem.onUnselected();
            mSelectedMenuItem = null;
        }
        return false;
    }

    public void prepareAnimations()
    {
        float f = mCamera.getWidthRaw();
        float f1 = mCamera.getHeightRaw();
        mMenuAnimator.prepareAnimations(mMenuItems, f, f1);
    }

    public void reset()
    {
        super.reset();
        ArrayList arraylist = mMenuItems;
        int i = -1 + arraylist.size();
        do
        {
            if (i < 0)
            {
                prepareAnimations();
                return;
            }
            ((IMenuItem)arraylist.get(i)).reset();
            i--;
        } while (true);
    }

    public void setChildScene(Scene scene, boolean flag, boolean flag1, boolean flag2)
        throws IllegalArgumentException
    {
        if (scene instanceof MenuScene)
        {
            super.setChildScene(scene, flag, flag1, flag2);
            return;
        } else
        {
            throw new IllegalArgumentException("MenuScene accepts only MenuScenes as a ChildScene.");
        }
    }

    public void setMenuAnimator(IMenuAnimator imenuanimator)
    {
        mMenuAnimator = imenuanimator;
    }

    public void setOnMenuItemClickListener(IOnMenuItemClickListener ionmenuitemclicklistener)
    {
        mOnMenuItemClickListener = ionmenuitemclicklistener;
    }
}
