// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.view.ActionProvider;
import android.support.v7.internal.transition.ActionBarTransition;
import android.support.v7.internal.view.ActionBarPolicy;
import android.support.v7.internal.view.menu.ActionMenuItemView;
import android.support.v7.internal.view.menu.BaseMenuPresenter;
import android.support.v7.internal.view.menu.MenuBuilder;
import android.support.v7.internal.view.menu.MenuItemImpl;
import android.support.v7.internal.view.menu.MenuPopupHelper;
import android.support.v7.internal.view.menu.MenuView;
import android.support.v7.internal.view.menu.SubMenuBuilder;
import android.support.v7.internal.widget.TintImageView;
import android.util.DisplayMetrics;
import android.util.SparseBooleanArray;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;

// Referenced classes of package android.support.v7.widget:
//            ActionMenuView, ListPopupWindow

public class ActionMenuPresenter extends BaseMenuPresenter
    implements android.support.v4.view.ActionProvider.SubUiVisibilityListener
{
    private class ActionButtonSubmenu extends MenuPopupHelper
    {

        private SubMenuBuilder mSubMenu;
        final ActionMenuPresenter this$0;

        public void onDismiss()
        {
            onDismiss();
            mActionButtonPopup = null;
            mOpenSubMenuId = 0;
        }

        public ActionButtonSubmenu(Context context, SubMenuBuilder submenubuilder)
        {
            this$0 = ActionMenuPresenter.this;
            super(context, submenubuilder, null, false, android.support.v7.appcompat.R.attr.actionOverflowMenuStyle);
            mSubMenu = submenubuilder;
            int j;
            if (!((MenuItemImpl)submenubuilder.getItem()).isActionButton())
            {
                int i;
                boolean flag;
                MenuItem menuitem;
                View view;
                if (mOverflowButton == null)
                {
                    view = (View)
// JavaClassFileOutputException: get_constant: invalid tag
    }

    private class ActionMenuPopupCallback extends android.support.v7.internal.view.menu.ActionMenuItemView.PopupCallback
    {

        final ActionMenuPresenter this$0;

        public ListPopupWindow getPopup()
        {
            if (mActionButtonPopup != null)
            {
                return mActionButtonPopup.getPopup();
            } else
            {
                return null;
            }
        }

        private ActionMenuPopupCallback()
        {
            this$0 = ActionMenuPresenter.this;
            PopupCallback();
        }

    }

    private class OverflowMenuButton extends TintImageView
        implements ActionMenuView.ActionMenuChildView
    {

        private final float mTempPts[] = new float[2];
        final ActionMenuPresenter this$0;

        public boolean needsDividerAfter()
        {
            return false;
        }

        public boolean needsDividerBefore()
        {
            return false;
        }

        public boolean performClick()
        {
            if (performClick())
            {
                return true;
            } else
            {
                playSoundEffect(0);
                showOverflowMenu();
                return true;
            }
        }

        protected boolean setFrame(int i, int j, int k, int l)
        {
            boolean flag = setFrame(i, j, k, l);
            Drawable drawable = getDrawable();
            Drawable drawable1 = getBackground();
            if (drawable != null && drawable1 != null)
            {
                float af[] = mTempPts;
                af[0] = drawable.getBounds().centerX();
                getImageMatrix().mapPoints(af);
                int i1 = (int)af[0] - getWidth() / 2;
                DrawableCompat.setHotspotBounds(drawable1, i1, 0, i1 + getWidth(), getHeight());
            }
            return flag;
        }

        public OverflowMenuButton(Context context)
        {
            this$0 = ActionMenuPresenter.this;
            TintImageView(context, null, android.support.v7.appcompat.R.attr.actionOverflowButtonStyle);
            setClickable(true);
            setFocusable(true);
            setVisibility(0);
            setEnabled(true);
            setOnTouchListener(new _cls1(ActionMenuPresenter.this));
        }
    }

    private class PopupPresenterCallback
        implements android.support.v7.internal.view.menu.MenuPresenter.Callback
    {

        final ActionMenuPresenter this$0;

        public void onCloseMenu(MenuBuilder menubuilder, boolean flag)
        {
            if (menubuilder instanceof SubMenuBuilder)
            {
                ((SubMenuBuilder)menubuilder).getRootMenu().close(false);
            }
            android.support.v7.internal.view.menu.MenuPresenter.Callback callback = getCallback();
            if (callback != null)
            {
                callback.onCloseMenu(menubuilder, flag);
            }
        }

        public boolean onOpenSubMenu(MenuBuilder menubuilder)
        {
            if (menubuilder == null)
            {
                return false;
            }
            mOpenSubMenuId = ((SubMenuBuilder)menubuilder).getItem().getItemId();
            android.support.v7.internal.view.menu.MenuPresenter.Callback callback = getCallback();
            boolean flag;
            if (callback != null)
            {
                flag = callback.onOpenSubMenu(menubuilder);
            } else
            {
                flag = false;
            }
            return flag;
        }

        private PopupPresenterCallback()
        {
            this$0 = ActionMenuPresenter.this;
            Object();
        }

    }

    private static class SavedState
        implements Parcelable
    {

        public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

            public SavedState createFromParcel(Parcel parcel)
            {
                return new SavedState(parcel);
            }

            public volatile Object createFromParcel(Parcel parcel)
            {
                return createFromParcel(parcel);
            }

            public SavedState[] newArray(int i)
            {
                return new SavedState[i];
            }

            public volatile Object[] newArray(int i)
            {
                return newArray(i);
            }

        };
        public int openSubMenuId;

        public int describeContents()
        {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i)
        {
            parcel.writeInt(openSubMenuId);
        }


        SavedState()
        {
        }

        SavedState(Parcel parcel)
        {
            openSubMenuId = parcel.readInt();
        }
    }


    private static final String TAG = "ActionMenuPresenter";
    private final SparseBooleanArray mActionButtonGroups = new SparseBooleanArray();
    private ActionButtonSubmenu mActionButtonPopup;
    private int mActionItemWidthLimit;
    private boolean mExpandedActionViewsExclusive;
    private int mMaxItems;
    private boolean mMaxItemsSet;
    private int mMinCellSize;
    int mOpenSubMenuId;
    private View mOverflowButton;
    private OverflowPopup mOverflowPopup;
    private ActionMenuPopupCallback mPopupCallback;
    final PopupPresenterCallback mPopupPresenterCallback = new PopupPresenterCallback();
    private OpenOverflowRunnable mPostedOpenRunnable;
    private boolean mReserveOverflow;
    private boolean mReserveOverflowSet;
    private View mScrapActionButtonView;
    private boolean mStrictWidthLimit;
    private int mWidthLimit;
    private boolean mWidthLimitSet;

    public ActionMenuPresenter(Context context)
    {
        BaseMenuPresenter(context, android.support.v7.appcompat.R.layout.abc_action_menu_layout, android.support.v7.appcompat.R.layout.abc_action_menu_item_layout);
    }

    private View findViewForItem(MenuItem menuitem)
    {
        ViewGroup viewgroup = (ViewGroup)mMenuView;
        if (viewgroup != null) goto _L2; else goto _L1
_L1:
        View view = null;
_L4:
        return view;
_L2:
        int i = viewgroup.getChildCount();
        int j = 0;
label0:
        do
        {
label1:
            {
                if (j >= i)
                {
                    break label1;
                }
                view = viewgroup.getChildAt(j);
                if ((view instanceof android.support.v7.internal.view.menu.MenuView.ItemView) && ((android.support.v7.internal.view.menu.MenuView.ItemView)view).getItemData() == menuitem)
                {
                    break label0;
                }
                j++;
            }
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
        return null;
    }

    public void bindItemView(MenuItemImpl menuitemimpl, android.support.v7.internal.view.menu.MenuView.ItemView itemview)
    {
        itemview.initialize(menuitemimpl, 0);
        ActionMenuView actionmenuview = (ActionMenuView)mMenuView;
        ActionMenuItemView actionmenuitemview = (ActionMenuItemView)itemview;
        actionmenuitemview.setItemInvoker(actionmenuview);
        if (mPopupCallback == null)
        {
            mPopupCallback = new ActionMenuPopupCallback();
        }
        actionmenuitemview.setPopupCallback(mPopupCallback);
    }

    public boolean dismissPopupMenus()
    {
        return hideOverflowMenu() | hideSubMenus();
    }

    public boolean filterLeftoverView(ViewGroup viewgroup, int i)
    {
        if (viewgroup.getChildAt(i) == mOverflowButton)
        {
            return false;
        } else
        {
            return filterLeftoverView(viewgroup, i);
        }
    }

    public boolean flagActionItems()
    {
        ArrayList arraylist = mMenu.getVisibleItems();
        int i = arraylist.size();
        int j = mMaxItems;
        int k = mActionItemWidthLimit;
        int l = android.view.View.MeasureSpec.makeMeasureSpec(0, 0);
        ViewGroup viewgroup = (ViewGroup)mMenuView;
        int i1 = 0;
        int j1 = 0;
        int k1 = 0;
        boolean flag = false;
        int l1 = 0;
        while (l1 < i) 
        {
            MenuItemImpl menuitemimpl2 = (MenuItemImpl)arraylist.get(l1);
            if (menuitemimpl2.requiresActionButton())
            {
                i1++;
            } else
            if (menuitemimpl2.requestsActionButton())
            {
                j1++;
            } else
            {
                flag = true;
            }
            if (mExpandedActionViewsExclusive && menuitemimpl2.isActionViewExpanded())
            {
                j = 0;
            }
            l1++;
        }
        if (mReserveOverflow && (flag || i1 + j1 > j))
        {
            j--;
        }
        int i2 = j - i1;
        SparseBooleanArray sparsebooleanarray = mActionButtonGroups;
        sparsebooleanarray.clear();
        boolean flag1 = mStrictWidthLimit;
        int j2 = 0;
        int k2 = 0;
        if (flag1)
        {
            k2 = k / mMinCellSize;
            int k4 = k % mMinCellSize;
            j2 = mMinCellSize + k4 / k2;
        }
        int l2 = 0;
        while (l2 < i) 
        {
            MenuItemImpl menuitemimpl = (MenuItemImpl)arraylist.get(l2);
            if (menuitemimpl.requiresActionButton())
            {
                View view1 = getItemView(menuitemimpl, mScrapActionButtonView, viewgroup);
                if (mScrapActionButtonView == null)
                {
                    mScrapActionButtonView = view1;
                }
                int i4;
                int j4;
                if (mStrictWidthLimit)
                {
                    k2 -= ActionMenuView.measureChildForCells(view1, j2, k2, l, 0);
                } else
                {
                    view1.measure(l, l);
                }
                i4 = view1.getMeasuredWidth();
                k -= i4;
                if (k1 == 0)
                {
                    k1 = i4;
                }
                j4 = menuitemimpl.getGroupId();
                if (j4 != 0)
                {
                    sparsebooleanarray.put(j4, true);
                }
                menuitemimpl.setIsActionButton(true);
            } else
            if (menuitemimpl.requestsActionButton())
            {
                int i3 = menuitemimpl.getGroupId();
                boolean flag2 = sparsebooleanarray.get(i3);
                boolean flag3;
                if ((i2 > 0 || flag2) && k > 0 && (!mStrictWidthLimit || k2 > 0))
                {
                    flag3 = true;
                } else
                {
                    flag3 = false;
                }
                if (flag3)
                {
                    View view = getItemView(menuitemimpl, mScrapActionButtonView, viewgroup);
                    if (mScrapActionButtonView == null)
                    {
                        mScrapActionButtonView = view;
                    }
                    int k3;
                    if (mStrictWidthLimit)
                    {
                        int l3 = ActionMenuView.measureChildForCells(view, j2, k2, l, 0);
                        k2 -= l3;
                        if (l3 == 0)
                        {
                            flag3 = false;
                        }
                    } else
                    {
                        view.measure(l, l);
                    }
                    k3 = view.getMeasuredWidth();
                    k -= k3;
                    if (k1 == 0)
                    {
                        k1 = k3;
                    }
                    if (mStrictWidthLimit)
                    {
                        boolean flag5;
                        if (k >= 0)
                        {
                            flag5 = true;
                        } else
                        {
                            flag5 = false;
                        }
                        flag3 &= flag5;
                    } else
                    {
                        boolean flag4;
                        if (k + k1 > 0)
                        {
                            flag4 = true;
                        } else
                        {
                            flag4 = false;
                        }
                        flag3 &= flag4;
                    }
                }
                if (flag3 && i3 != 0)
                {
                    sparsebooleanarray.put(i3, true);
                } else
                if (flag2)
                {
                    sparsebooleanarray.put(i3, false);
                    int j3 = 0;
                    while (j3 < l2) 
                    {
                        MenuItemImpl menuitemimpl1 = (MenuItemImpl)arraylist.get(j3);
                        if (menuitemimpl1.getGroupId() == i3)
                        {
                            if (menuitemimpl1.isActionButton())
                            {
                                i2++;
                            }
                            menuitemimpl1.setIsActionButton(false);
                        }
                        j3++;
                    }
                }
                if (flag3)
                {
                    i2--;
                }
                menuitemimpl.setIsActionButton(flag3);
            } else
            {
                menuitemimpl.setIsActionButton(false);
            }
            l2++;
        }
        return true;
    }

    public View getItemView(MenuItemImpl menuitemimpl, View view, ViewGroup viewgroup)
    {
        View view1 = menuitemimpl.getActionView();
        if (view1 == null || menuitemimpl.hasCollapsibleActionView())
        {
            view1 = getItemView(menuitemimpl, view, viewgroup);
        }
        byte byte0;
        ActionMenuView actionmenuview;
        android.view.ViewGroup.LayoutParams layoutparams;
        if (menuitemimpl.isActionViewExpanded())
        {
            byte0 = 8;
        } else
        {
            byte0 = 0;
        }
        view1.setVisibility(byte0);
        actionmenuview = (ActionMenuView)viewgroup;
        layoutparams = view1.getLayoutParams();
        if (!actionmenuview.checkLayoutParams(layoutparams))
        {
            view1.setLayoutParams(actionmenuview.generateLayoutParams(layoutparams));
        }
        return view1;
    }

    public MenuView getMenuView(ViewGroup viewgroup)
    {
        MenuView menuview = getMenuView(viewgroup);
        ((ActionMenuView)menuview).setPresenter(this);
        return menuview;
    }

    public boolean hideOverflowMenu()
    {
        if (mPostedOpenRunnable != null && mMenuView != null)
        {
            ((View)mMenuView).removeCallbacks(mPostedOpenRunnable);
            mPostedOpenRunnable = null;
            return true;
        }
        OverflowPopup overflowpopup = mOverflowPopup;
        if (overflowpopup != null)
        {
            overflowpopup.dismiss();
            return true;
        } else
        {
            return false;
        }
    }

    public boolean hideSubMenus()
    {
        if (mActionButtonPopup != null)
        {
            mActionButtonPopup.dismiss();
            return true;
        } else
        {
            return false;
        }
    }

    public void initForMenu(Context context, MenuBuilder menubuilder)
    {
        initForMenu(context, menubuilder);
        Resources resources = context.getResources();
        ActionBarPolicy actionbarpolicy = ActionBarPolicy.get(context);
        if (!mReserveOverflowSet)
        {
            mReserveOverflow = actionbarpolicy.showsOverflowMenuButton();
        }
        if (!mWidthLimitSet)
        {
            mWidthLimit = actionbarpolicy.getEmbeddedMenuWidthLimit();
        }
        if (!mMaxItemsSet)
        {
            mMaxItems = actionbarpolicy.getMaxActionButtons();
        }
        int i = mWidthLimit;
        if (mReserveOverflow)
        {
            if (mOverflowButton == null)
            {
                mOverflowButton = new OverflowMenuButton(mSystemContext);
                int j = android.view.View.MeasureSpec.makeMeasureSpec(0, 0);
                mOverflowButton.measure(j, j);
            }
            i -= mOverflowButton.getMeasuredWidth();
        } else
        {
            mOverflowButton = null;
        }
        mActionItemWidthLimit = i;
        mMinCellSize = (int)(56F * resources.getDisplayMetrics().density);
        mScrapActionButtonView = null;
    }

    public boolean isOverflowMenuShowPending()
    {
        return mPostedOpenRunnable != null || isOverflowMenuShowing();
    }

    public boolean isOverflowMenuShowing()
    {
        return mOverflowPopup != null && mOverflowPopup.isShowing();
    }

    public boolean isOverflowReserved()
    {
        return mReserveOverflow;
    }

    public void onCloseMenu(MenuBuilder menubuilder, boolean flag)
    {
        dismissPopupMenus();
        onCloseMenu(menubuilder, flag);
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        if (!mMaxItemsSet)
        {
            mMaxItems = mContext.getResources().getInteger(android.support.v7.appcompat.R.integer.abc_max_action_buttons);
        }
        if (mMenu != null)
        {
            mMenu.onItemsChanged(true);
        }
    }

    public void onRestoreInstanceState(Parcelable parcelable)
    {
        SavedState savedstate = (SavedState)parcelable;
        if (savedstate.openSubMenuId > 0)
        {
            MenuItem menuitem = mMenu.findItem(savedstate.openSubMenuId);
            if (menuitem != null)
            {
                onSubMenuSelected((SubMenuBuilder)menuitem.getSubMenu());
            }
        }
    }

    public Parcelable onSaveInstanceState()
    {
        SavedState savedstate = new SavedState();
        savedstate.openSubMenuId = mOpenSubMenuId;
        return savedstate;
    }

    public boolean onSubMenuSelected(SubMenuBuilder submenubuilder)
    {
        if (submenubuilder.hasVisibleItems()) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        View view;
        SubMenuBuilder submenubuilder1;
        for (submenubuilder1 = submenubuilder; submenubuilder1.getParentMenu() != mMenu; submenubuilder1 = (SubMenuBuilder)submenubuilder1.getParentMenu()) { }
        view = findViewForItem(submenubuilder1.getItem());
        if (view != null)
        {
            break; /* Loop/switch isn't completed */
        }
        if (mOverflowButton == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        view = mOverflowButton;
        break; /* Loop/switch isn't completed */
        if (true) goto _L1; else goto _L3
_L3:
        mOpenSubMenuId = submenubuilder.getItem().getItemId();
        mActionButtonPopup = new ActionButtonSubmenu(mContext, submenubuilder);
        mActionButtonPopup.setAnchorView(view);
        mActionButtonPopup.show();
        onSubMenuSelected(submenubuilder);
        return true;
    }

    public void onSubUiVisibilityChanged(boolean flag)
    {
        if (flag)
        {
            onSubMenuSelected(null);
            return;
        } else
        {
            mMenu.close(false);
            return;
        }
    }

    public void setExpandedActionViewsExclusive(boolean flag)
    {
        mExpandedActionViewsExclusive = flag;
    }

    public void setItemLimit(int i)
    {
        mMaxItems = i;
        mMaxItemsSet = true;
    }

    public void setMenuView(ActionMenuView actionmenuview)
    {
        mMenuView = actionmenuview;
        actionmenuview.initialize(mMenu);
    }

    public void setReserveOverflow(boolean flag)
    {
        mReserveOverflow = flag;
        mReserveOverflowSet = true;
    }

    public void setWidthLimit(int i, boolean flag)
    {
        mWidthLimit = i;
        mStrictWidthLimit = flag;
        mWidthLimitSet = true;
    }

    public boolean shouldIncludeItem(int i, MenuItemImpl menuitemimpl)
    {
        return menuitemimpl.isActionButton();
    }

    public boolean showOverflowMenu()
    {
        if (mReserveOverflow && !isOverflowMenuShowing() && mMenu != null && mMenuView != null && mPostedOpenRunnable == null && !mMenu.getNonActionItems().isEmpty())
        {
            mPostedOpenRunnable = new OpenOverflowRunnable(new OverflowPopup(mContext, mMenu, mOverflowButton, true));
            ((View)mMenuView).post(mPostedOpenRunnable);
            onSubMenuSelected(null);
            return true;
        } else
        {
            return false;
        }
    }

    public void updateMenuView(boolean flag)
    {
        ViewGroup viewgroup = (ViewGroup)((View)mMenuView).getParent();
        if (viewgroup != null)
        {
            ActionBarTransition.beginDelayedTransition(viewgroup);
        }
        updateMenuView(flag);
        ((View)mMenuView).requestLayout();
        if (mMenu != null)
        {
            ArrayList arraylist1 = mMenu.getActionItems();
            int j = arraylist1.size();
            for (int k = 0; k < j; k++)
            {
                ActionProvider actionprovider = ((MenuItemImpl)arraylist1.get(k)).getSupportActionProvider();
                if (actionprovider != null)
                {
                    actionprovider.setSubUiVisibilityListener(this);
                }
            }

        }
        ArrayList arraylist;
        boolean flag1;
        boolean flag2;
        if (mMenu != null)
        {
            arraylist = mMenu.getNonActionItems();
        } else
        {
            arraylist = null;
        }
        flag1 = mReserveOverflow;
        flag2 = false;
        if (flag1)
        {
            flag2 = false;
            if (arraylist != null)
            {
                int i = arraylist.size();
                ViewGroup viewgroup1;
                ActionMenuView actionmenuview;
                if (i == 1)
                {
                    if (!((MenuItemImpl)arraylist.get(0)).isActionViewExpanded())
                    {
                        flag2 = true;
                    } else
                    {
                        flag2 = false;
                    }
                } else
                if (i > 0)
                {
                    flag2 = true;
                } else
                {
                    flag2 = false;
                }
            }
        }
        if (!flag2) goto _L2; else goto _L1
_L1:
        if (mOverflowButton == null)
        {
            mOverflowButton = new OverflowMenuButton(mSystemContext);
        }
        viewgroup1 = (ViewGroup)mOverflowButton.getParent();
        if (viewgroup1 != mMenuView)
        {
            if (viewgroup1 != null)
            {
                viewgroup1.removeView(mOverflowButton);
            }
            actionmenuview = (ActionMenuView)mMenuView;
            actionmenuview.addView(mOverflowButton, actionmenuview.generateOverflowButtonLayoutParams());
        }
_L4:
        ((ActionMenuView)mMenuView).setOverflowReserved(mReserveOverflow);
        return;
_L2:
        if (mOverflowButton != null && mOverflowButton.getParent() == mMenuView)
        {
            ((ViewGroup)mMenuView).removeView(mOverflowButton);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }



/*
    static OverflowPopup access$202(ActionMenuPresenter actionmenupresenter, OverflowPopup overflowpopup)
    {
        actionmenupresenter.mOverflowPopup = overflowpopup;
        return overflowpopup;
    }

*/



/*
    static OpenOverflowRunnable access$302(ActionMenuPresenter actionmenupresenter, OpenOverflowRunnable openoverflowrunnable)
    {
        actionmenupresenter.mPostedOpenRunnable = openoverflowrunnable;
        return openoverflowrunnable;
    }

*/






/*
    static ActionButtonSubmenu access$702(ActionMenuPresenter actionmenupresenter, ActionButtonSubmenu actionbuttonsubmenu)
    {
        actionmenupresenter.mActionButtonPopup = actionbuttonsubmenu;
        return actionbuttonsubmenu;
    }

*/



    // Unreferenced inner class android/support/v7/widget/ActionMenuPresenter$OverflowMenuButton$1

/* anonymous class */
    class OverflowMenuButton._cls1 extends ListPopupWindow.ForwardingListener
    {

        final OverflowMenuButton this$1;
        final ActionMenuPresenter val$this$0;

        public ListPopupWindow getPopup()
        {
            if (mOverflowPopup == null)
            {
                return null;
            } else
            {
                return mOverflowPopup.getPopup();
            }
        }

        public boolean onForwardingStarted()
        {
            showOverflowMenu();
            return true;
        }

        public boolean onForwardingStopped()
        {
            if (mPostedOpenRunnable != null)
            {
                return false;
            } else
            {
                hideOverflowMenu();
                return true;
            }
        }

            
            {
                this$1 = final_overflowmenubutton;
                this$0 = actionmenupresenter;
                ForwardingListener(View.this);
            }
    }

}
