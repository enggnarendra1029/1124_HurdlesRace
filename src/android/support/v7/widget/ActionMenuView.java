// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.support.v7.internal.view.menu.ActionMenuItemView;
import android.support.v7.internal.view.menu.MenuBuilder;
import android.support.v7.internal.view.menu.MenuItemImpl;
import android.support.v7.internal.view.menu.MenuView;
import android.support.v7.internal.widget.ViewUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.ContextThemeWrapper;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;

// Referenced classes of package android.support.v7.widget:
//            LinearLayoutCompat, ActionMenuPresenter

public class ActionMenuView extends LinearLayoutCompat
    implements android.support.v7.internal.view.menu.MenuBuilder.ItemInvoker, MenuView
{
    public static interface ActionMenuChildView
    {

        public abstract boolean needsDividerAfter();

        public abstract boolean needsDividerBefore();
    }

    private class ActionMenuPresenterCallback
        implements android.support.v7.internal.view.menu.MenuPresenter.Callback
    {

        final ActionMenuView this$0;

        public void onCloseMenu(MenuBuilder menubuilder, boolean flag)
        {
        }

        public boolean onOpenSubMenu(MenuBuilder menubuilder)
        {
            return false;
        }

        private ActionMenuPresenterCallback()
        {
            this$0 = ActionMenuView.this;
            super();
        }

    }

    public static class LayoutParams extends LinearLayoutCompat.LayoutParams
    {

        public int cellsUsed;
        public boolean expandable;
        boolean expanded;
        public int extraPixels;
        public boolean isOverflowButton;
        public boolean preventEdgeOffset;

        public LayoutParams(int i, int j)
        {
            super(i, j);
            isOverflowButton = false;
        }

        LayoutParams(int i, int j, boolean flag)
        {
            super(i, j);
            isOverflowButton = flag;
        }

        public LayoutParams(Context context, AttributeSet attributeset)
        {
            super(context, attributeset);
        }

        public LayoutParams(LayoutParams layoutparams)
        {
            super(layoutparams);
            isOverflowButton = layoutparams.isOverflowButton;
        }

        public LayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
        {
            super(layoutparams);
        }
    }

    private class MenuBuilderCallback
        implements android.support.v7.internal.view.menu.MenuBuilder.Callback
    {

        final ActionMenuView this$0;

        public boolean onMenuItemSelected(MenuBuilder menubuilder, MenuItem menuitem)
        {
            return mOnMenuItemClickListener != null && mOnMenuItemClickListener.onMenuItemClick(menuitem);
        }

        public void onMenuModeChange(MenuBuilder menubuilder)
        {
            if (mMenuBuilderCallback != null)
            {
                mMenuBuilderCallback.onMenuModeChange(menubuilder);
            }
        }

        private MenuBuilderCallback()
        {
            this$0 = ActionMenuView.this;
            super();
        }

    }

    public static interface OnMenuItemClickListener
    {

        public abstract boolean onMenuItemClick(MenuItem menuitem);
    }


    static final int GENERATED_ITEM_PADDING = 4;
    static final int MIN_CELL_SIZE = 56;
    private static final String TAG = "ActionMenuView";
    private android.support.v7.internal.view.menu.MenuPresenter.Callback mActionMenuPresenterCallback;
    private Context mContext;
    private boolean mFormatItems;
    private int mFormatItemsWidth;
    private int mGeneratedItemPadding;
    private MenuBuilder mMenu;
    private android.support.v7.internal.view.menu.MenuBuilder.Callback mMenuBuilderCallback;
    private int mMinCellSize;
    private OnMenuItemClickListener mOnMenuItemClickListener;
    private Context mPopupContext;
    private int mPopupTheme;
    private ActionMenuPresenter mPresenter;
    private boolean mReserveOverflow;

    public ActionMenuView(Context context)
    {
        this(context, null);
    }

    public ActionMenuView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        mContext = context;
        setBaselineAligned(false);
        float f = context.getResources().getDisplayMetrics().density;
        mMinCellSize = (int)(56F * f);
        mGeneratedItemPadding = (int)(4F * f);
        mPopupContext = context;
        mPopupTheme = 0;
    }

    static int measureChildForCells(View view, int i, int j, int k, int l)
    {
        boolean flag1;
label0:
        {
            LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
            int i1 = android.view.View.MeasureSpec.makeMeasureSpec(android.view.View.MeasureSpec.getSize(k) - l, android.view.View.MeasureSpec.getMode(k));
            ActionMenuItemView actionmenuitemview;
            boolean flag;
            int j1;
            int k1;
            if (view instanceof ActionMenuItemView)
            {
                actionmenuitemview = (ActionMenuItemView)view;
            } else
            {
                actionmenuitemview = null;
            }
            if (actionmenuitemview != null && actionmenuitemview.hasText())
            {
                flag = true;
            } else
            {
                flag = false;
            }
            j1 = 0;
            if (j <= 0)
            {
                break label0;
            }
            if (flag)
            {
                j1 = 0;
                if (j < 2)
                {
                    break label0;
                }
            }
            view.measure(android.view.View.MeasureSpec.makeMeasureSpec(i * j, 0x80000000), i1);
            k1 = view.getMeasuredWidth();
            j1 = k1 / i;
            if (k1 % i != 0)
            {
                j1++;
            }
            if (flag && j1 < 2)
            {
                j1 = 2;
            }
        }
        if (!layoutparams.isOverflowButton && flag)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        layoutparams.expandable = flag1;
        layoutparams.cellsUsed = j1;
        view.measure(android.view.View.MeasureSpec.makeMeasureSpec(j1 * i, 0x40000000), i1);
        return j1;
    }

    private void onMeasureExactFormat(int i, int j)
    {
        int k = android.view.View.MeasureSpec.getMode(j);
        int l = android.view.View.MeasureSpec.getSize(i);
        int i1 = android.view.View.MeasureSpec.getSize(j);
        int j1 = getPaddingLeft() + getPaddingRight();
        int k1 = getPaddingTop() + getPaddingBottom();
        int l1 = getChildMeasureSpec(j, k1, -2);
        int i2 = l - j1;
        int j2 = i2 / mMinCellSize;
        int k2 = i2 % mMinCellSize;
        if (j2 == 0)
        {
            setMeasuredDimension(i2, 0);
            return;
        }
        int l2 = mMinCellSize + k2 / j2;
        int i3 = j2;
        int j3 = 0;
        int k3 = 0;
        int l3 = 0;
        int i4 = 0;
        boolean flag = false;
        long l4 = 0L;
        int j4 = getChildCount();
        int k4 = 0;
        while (k4 < j4) 
        {
            View view3 = getChildAt(k4);
            if (view3.getVisibility() != 8)
            {
                boolean flag4 = view3 instanceof ActionMenuItemView;
                i4++;
                if (flag4)
                {
                    view3.setPadding(mGeneratedItemPadding, 0, mGeneratedItemPadding, 0);
                }
                LayoutParams layoutparams4 = (LayoutParams)view3.getLayoutParams();
                layoutparams4.expanded = false;
                layoutparams4.extraPixels = 0;
                layoutparams4.cellsUsed = 0;
                layoutparams4.expandable = false;
                layoutparams4.leftMargin = 0;
                layoutparams4.rightMargin = 0;
                boolean flag5;
                int k7;
                int l7;
                int i8;
                if (flag4 && ((ActionMenuItemView)view3).hasText())
                {
                    flag5 = true;
                } else
                {
                    flag5 = false;
                }
                layoutparams4.preventEdgeOffset = flag5;
                if (layoutparams4.isOverflowButton)
                {
                    k7 = 1;
                } else
                {
                    k7 = i3;
                }
                l7 = measureChildForCells(view3, l2, k7, l1, k1);
                k3 = Math.max(k3, l7);
                if (layoutparams4.expandable)
                {
                    l3++;
                }
                if (layoutparams4.isOverflowButton)
                {
                    flag = true;
                }
                i3 -= l7;
                i8 = view3.getMeasuredHeight();
                j3 = Math.max(j3, i8);
                if (l7 == 1)
                {
                    l4 |= 1 << k4;
                }
            }
            k4++;
        }
        boolean flag1;
        boolean flag2;
        if (flag && i4 == 2)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        flag2 = false;
        do
        {
label0:
            {
label1:
                {
                    int i6;
                    long l6;
                    if (l3 > 0 && i3 > 0)
                    {
                        i6 = 0x7fffffff;
                        l6 = 0L;
                        int j6 = 0;
                        int k6 = 0;
                        while (k6 < j4) 
                        {
                            LayoutParams layoutparams3 = (LayoutParams)getChildAt(k6).getLayoutParams();
                            if (layoutparams3.expandable)
                            {
                                if (layoutparams3.cellsUsed < i6)
                                {
                                    i6 = layoutparams3.cellsUsed;
                                    l6 = 1 << k6;
                                    j6 = 1;
                                } else
                                if (layoutparams3.cellsUsed == i6)
                                {
                                    l6 |= 1 << k6;
                                    j6++;
                                }
                            }
                            k6++;
                        }
                        l4 |= l6;
                        if (j6 <= i3)
                        {
                            break label1;
                        }
                    }
                    boolean flag3;
                    if (!flag && i4 == 1)
                    {
                        flag3 = true;
                    } else
                    {
                        flag3 = false;
                    }
                    if (i3 > 0 && l4 != 0L && (i3 < i4 - 1 || flag3 || k3 > 1))
                    {
                        float f = Long.bitCount(l4);
                        if (!flag3)
                        {
                            if ((1L & l4) != 0L && !((LayoutParams)getChildAt(0).getLayoutParams()).preventEdgeOffset)
                            {
                                f -= 0.5F;
                            }
                            if ((l4 & (long)(1 << j4 - 1)) != 0L && !((LayoutParams)getChildAt(j4 - 1).getLayoutParams()).preventEdgeOffset)
                            {
                                f -= 0.5F;
                            }
                        }
                        int j5;
                        int k5;
                        if (f > 0.0F)
                        {
                            j5 = (int)((float)(i3 * l2) / f);
                        } else
                        {
                            j5 = 0;
                        }
                        k5 = 0;
                        while (k5 < j4) 
                        {
                            int i7;
                            int j7;
                            View view2;
                            LayoutParams layoutparams2;
                            if ((l4 & (long)(1 << k5)) != 0L)
                            {
                                View view1 = getChildAt(k5);
                                LayoutParams layoutparams1 = (LayoutParams)view1.getLayoutParams();
                                if (view1 instanceof ActionMenuItemView)
                                {
                                    layoutparams1.extraPixels = j5;
                                    layoutparams1.expanded = true;
                                    if (k5 == 0 && !layoutparams1.preventEdgeOffset)
                                    {
                                        layoutparams1.leftMargin = -j5 / 2;
                                    }
                                    flag2 = true;
                                } else
                                if (layoutparams1.isOverflowButton)
                                {
                                    layoutparams1.extraPixels = j5;
                                    layoutparams1.expanded = true;
                                    layoutparams1.rightMargin = -j5 / 2;
                                    flag2 = true;
                                } else
                                {
                                    if (k5 != 0)
                                    {
                                        layoutparams1.leftMargin = j5 / 2;
                                    }
                                    int l5 = j4 - 1;
                                    if (k5 != l5)
                                    {
                                        layoutparams1.rightMargin = j5 / 2;
                                    }
                                }
                            }
                            k5++;
                        }
                    }
                    break label0;
                }
                i7 = i6 + 1;
                j7 = 0;
                while (j7 < j4) 
                {
                    view2 = getChildAt(j7);
                    layoutparams2 = (LayoutParams)view2.getLayoutParams();
                    if ((l6 & (long)(1 << j7)) == 0L)
                    {
                        if (layoutparams2.cellsUsed == i7)
                        {
                            l4 |= 1 << j7;
                        }
                    } else
                    {
                        if (flag1 && layoutparams2.preventEdgeOffset && i3 == 1)
                        {
                            view2.setPadding(l2 + mGeneratedItemPadding, 0, mGeneratedItemPadding, 0);
                        }
                        layoutparams2.cellsUsed = 1 + layoutparams2.cellsUsed;
                        layoutparams2.expanded = true;
                        i3--;
                    }
                    j7++;
                }
                flag2 = true;
                continue;
            }
            if (flag2)
            {
                int i5 = 0;
                while (i5 < j4) 
                {
                    View view = getChildAt(i5);
                    LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
                    if (layoutparams.expanded)
                    {
                        view.measure(android.view.View.MeasureSpec.makeMeasureSpec(l2 * layoutparams.cellsUsed + layoutparams.extraPixels, 0x40000000), l1);
                    }
                    i5++;
                }
            }
            if (k != 0x40000000)
            {
                i1 = j3;
            }
            setMeasuredDimension(i2, i1);
            return;
        } while (true);
    }

    protected boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
    {
        return layoutparams != null && (layoutparams instanceof LayoutParams);
    }

    public void dismissPopupMenus()
    {
        if (mPresenter != null)
        {
            mPresenter.dismissPopupMenus();
        }
    }

    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityevent)
    {
        return false;
    }

    protected LayoutParams generateDefaultLayoutParams()
    {
        LayoutParams layoutparams = new LayoutParams(-2, -2);
        layoutparams.gravity = 16;
        return layoutparams;
    }

    protected volatile LinearLayoutCompat.LayoutParams generateDefaultLayoutParams()
    {
        return generateDefaultLayoutParams();
    }

    protected volatile android.view.ViewGroup.LayoutParams generateDefaultLayoutParams()
    {
        return generateDefaultLayoutParams();
    }

    public LayoutParams generateLayoutParams(AttributeSet attributeset)
    {
        return new LayoutParams(getContext(), attributeset);
    }

    protected LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
    {
        if (layoutparams != null)
        {
            LayoutParams layoutparams1;
            if (layoutparams instanceof LayoutParams)
            {
                layoutparams1 = new LayoutParams((LayoutParams)layoutparams);
            } else
            {
                layoutparams1 = new LayoutParams(layoutparams);
            }
            if (layoutparams1.gravity <= 0)
            {
                layoutparams1.gravity = 16;
            }
            return layoutparams1;
        } else
        {
            return generateDefaultLayoutParams();
        }
    }

    public volatile LinearLayoutCompat.LayoutParams generateLayoutParams(AttributeSet attributeset)
    {
        return generateLayoutParams(attributeset);
    }

    protected volatile LinearLayoutCompat.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
    {
        return generateLayoutParams(layoutparams);
    }

    public volatile android.view.ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeset)
    {
        return generateLayoutParams(attributeset);
    }

    protected volatile android.view.ViewGroup.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
    {
        return generateLayoutParams(layoutparams);
    }

    public LayoutParams generateOverflowButtonLayoutParams()
    {
        LayoutParams layoutparams = generateDefaultLayoutParams();
        layoutparams.isOverflowButton = true;
        return layoutparams;
    }

    public Menu getMenu()
    {
        if (mMenu == null)
        {
            Context context = getContext();
            mMenu = new MenuBuilder(context);
            mMenu.setCallback(new MenuBuilderCallback());
            mPresenter = new ActionMenuPresenter(context);
            mPresenter.setReserveOverflow(true);
            ActionMenuPresenter actionmenupresenter = mPresenter;
            Object obj;
            if (mActionMenuPresenterCallback != null)
            {
                obj = mActionMenuPresenterCallback;
            } else
            {
                obj = new ActionMenuPresenterCallback();
            }
            actionmenupresenter.setCallback(((android.support.v7.internal.view.menu.MenuPresenter.Callback) (obj)));
            mMenu.addMenuPresenter(mPresenter, mPopupContext);
            mPresenter.setMenuView(this);
        }
        return mMenu;
    }

    public int getPopupTheme()
    {
        return mPopupTheme;
    }

    public int getWindowAnimations()
    {
        return 0;
    }

    protected boolean hasSupportDividerBeforeChildAt(int i)
    {
        boolean flag;
        if (i == 0)
        {
            flag = false;
        } else
        {
            View view = getChildAt(i - 1);
            View view1 = getChildAt(i);
            int j = getChildCount();
            flag = false;
            if (i < j)
            {
                boolean flag1 = view instanceof ActionMenuChildView;
                flag = false;
                if (flag1)
                {
                    flag = false | ((ActionMenuChildView)view).needsDividerAfter();
                }
            }
            if (i > 0 && (view1 instanceof ActionMenuChildView))
            {
                return flag | ((ActionMenuChildView)view1).needsDividerBefore();
            }
        }
        return flag;
    }

    public boolean hideOverflowMenu()
    {
        return mPresenter != null && mPresenter.hideOverflowMenu();
    }

    public void initialize(MenuBuilder menubuilder)
    {
        mMenu = menubuilder;
    }

    public boolean invokeItem(MenuItemImpl menuitemimpl)
    {
        return mMenu.performItemAction(menuitemimpl, 0);
    }

    public boolean isOverflowMenuShowPending()
    {
        return mPresenter != null && mPresenter.isOverflowMenuShowPending();
    }

    public boolean isOverflowMenuShowing()
    {
        return mPresenter != null && mPresenter.isOverflowMenuShowing();
    }

    public boolean isOverflowReserved()
    {
        return mReserveOverflow;
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        if (android.os.Build.VERSION.SDK_INT >= 8)
        {
            super.onConfigurationChanged(configuration);
        }
        mPresenter.updateMenuView(false);
        if (mPresenter != null && mPresenter.isOverflowMenuShowing())
        {
            mPresenter.hideOverflowMenu();
            mPresenter.showOverflowMenu();
        }
    }

    public void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        dismissPopupMenus();
    }

    protected void onLayout(boolean flag, int i, int j, int k, int l)
    {
        if (mFormatItems) goto _L2; else goto _L1
_L1:
        super.onLayout(flag, i, j, k, l);
_L4:
        return;
_L2:
        int i1;
        int j1;
        int k3;
        i1 = getChildCount();
        j1 = (l - j) / 2;
        int k1 = getDividerWidth();
        int l1 = 0;
        int i2 = 0;
        int j2 = k - i - getPaddingRight() - getPaddingLeft();
        boolean flag1 = false;
        boolean flag2 = ViewUtils.isLayoutRtl(this);
        int k2 = 0;
        while (k2 < i1) 
        {
            View view3 = getChildAt(k2);
            if (view3.getVisibility() != 8)
            {
                LayoutParams layoutparams2 = (LayoutParams)view3.getLayoutParams();
                if (layoutparams2.isOverflowButton)
                {
                    int i8 = view3.getMeasuredWidth();
                    if (hasSupportDividerBeforeChildAt(k2))
                    {
                        i8 += k1;
                    }
                    int j8 = view3.getMeasuredHeight();
                    int k8;
                    int l8;
                    int i9;
                    int j9;
                    if (flag2)
                    {
                        l8 = getPaddingLeft() + layoutparams2.leftMargin;
                        k8 = l8 + i8;
                    } else
                    {
                        k8 = getWidth() - getPaddingRight() - layoutparams2.rightMargin;
                        l8 = k8 - i8;
                    }
                    i9 = j1 - j8 / 2;
                    j9 = i9 + j8;
                    view3.layout(l8, i9, k8, j9);
                    j2 -= i8;
                    flag1 = true;
                } else
                {
                    int l7 = view3.getMeasuredWidth() + layoutparams2.leftMargin + layoutparams2.rightMargin;
                    l1 += l7;
                    j2 -= l7;
                    if (hasSupportDividerBeforeChildAt(k2))
                    {
                        l1 += k1;
                    }
                    i2++;
                }
            }
            k2++;
        }
        if (i1 == 1 && !flag1)
        {
            View view2 = getChildAt(0);
            int l6 = view2.getMeasuredWidth();
            int i7 = view2.getMeasuredHeight();
            int j7 = (k - i) / 2 - l6 / 2;
            int k7 = j1 - i7 / 2;
            view2.layout(j7, k7, j7 + l6, k7 + i7);
            return;
        }
        int l2;
        int i3;
        int j3;
        int j5;
        int k5;
        if (flag1)
        {
            l2 = 0;
        } else
        {
            l2 = 1;
        }
        i3 = i2 - l2;
        if (i3 > 0)
        {
            j3 = j2 / i3;
        } else
        {
            j3 = 0;
        }
        k3 = Math.max(0, j3);
        if (!flag2)
        {
            break; /* Loop/switch isn't completed */
        }
        j5 = getWidth() - getPaddingRight();
        k5 = 0;
        while (k5 < i1) 
        {
            View view1 = getChildAt(k5);
            LayoutParams layoutparams1 = (LayoutParams)view1.getLayoutParams();
            if (view1.getVisibility() != 8 && !layoutparams1.isOverflowButton)
            {
                int l5 = j5 - layoutparams1.rightMargin;
                int i6 = view1.getMeasuredWidth();
                int j6 = view1.getMeasuredHeight();
                int k6 = j1 - j6 / 2;
                view1.layout(l5 - i6, k6, l5, k6 + j6);
                j5 = l5 - (k3 + (i6 + layoutparams1.leftMargin));
            }
            k5++;
        }
        if (true) goto _L4; else goto _L3
_L3:
        int l3 = getPaddingLeft();
        int i4 = 0;
        while (i4 < i1) 
        {
            View view = getChildAt(i4);
            LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
            if (view.getVisibility() != 8 && !layoutparams.isOverflowButton)
            {
                int j4 = l3 + layoutparams.leftMargin;
                int k4 = view.getMeasuredWidth();
                int l4 = view.getMeasuredHeight();
                int i5 = j1 - l4 / 2;
                view.layout(j4, i5, j4 + k4, i5 + l4);
                l3 = j4 + (k3 + (k4 + layoutparams.rightMargin));
            }
            i4++;
        }
        if (true) goto _L4; else goto _L5
_L5:
    }

    protected void onMeasure(int i, int j)
    {
        boolean flag = mFormatItems;
        boolean flag1;
        int k;
        int l;
        if (android.view.View.MeasureSpec.getMode(i) == 0x40000000)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        mFormatItems = flag1;
        if (flag != mFormatItems)
        {
            mFormatItemsWidth = 0;
        }
        k = android.view.View.MeasureSpec.getSize(i);
        if (mFormatItems && mMenu != null && k != mFormatItemsWidth)
        {
            mFormatItemsWidth = k;
            mMenu.onItemsChanged(true);
        }
        l = getChildCount();
        if (mFormatItems && l > 0)
        {
            onMeasureExactFormat(i, j);
            return;
        }
        for (int i1 = 0; i1 < l; i1++)
        {
            LayoutParams layoutparams = (LayoutParams)getChildAt(i1).getLayoutParams();
            layoutparams.rightMargin = 0;
            layoutparams.leftMargin = 0;
        }

        super.onMeasure(i, j);
    }

    public MenuBuilder peekMenu()
    {
        return mMenu;
    }

    public void setExpandedActionViewsExclusive(boolean flag)
    {
        mPresenter.setExpandedActionViewsExclusive(flag);
    }

    public void setMenuCallbacks(android.support.v7.internal.view.menu.MenuPresenter.Callback callback, android.support.v7.internal.view.menu.MenuBuilder.Callback callback1)
    {
        mActionMenuPresenterCallback = callback;
        mMenuBuilderCallback = callback1;
    }

    public void setOnMenuItemClickListener(OnMenuItemClickListener onmenuitemclicklistener)
    {
        mOnMenuItemClickListener = onmenuitemclicklistener;
    }

    public void setOverflowReserved(boolean flag)
    {
        mReserveOverflow = flag;
    }

    public void setPopupTheme(int i)
    {
label0:
        {
            if (mPopupTheme != i)
            {
                mPopupTheme = i;
                if (i != 0)
                {
                    break label0;
                }
                mPopupContext = mContext;
            }
            return;
        }
        mPopupContext = new ContextThemeWrapper(mContext, i);
    }

    public void setPresenter(ActionMenuPresenter actionmenupresenter)
    {
        mPresenter = actionmenupresenter;
        mPresenter.setMenuView(this);
    }

    public boolean showOverflowMenu()
    {
        return mPresenter != null && mPresenter.showOverflowMenu();
    }


}
