// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.internal.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v4.view.ViewPropertyAnimatorListener;
import android.support.v7.internal.view.ViewPropertyAnimatorCompatSet;
import android.support.v7.internal.view.menu.MenuBuilder;
import android.support.v7.view.ActionMode;
import android.support.v7.widget.ActionMenuPresenter;
import android.support.v7.widget.ActionMenuView;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.DecelerateInterpolator;
import android.widget.LinearLayout;
import android.widget.TextView;

// Referenced classes of package android.support.v7.internal.widget:
//            AbsActionBarView, TintTypedArray, ViewUtils

public class ActionBarContextView extends AbsActionBarView
    implements ViewPropertyAnimatorListener
{

    private static final int ANIMATE_IDLE = 0;
    private static final int ANIMATE_IN = 1;
    private static final int ANIMATE_OUT = 2;
    private static final String TAG = "ActionBarContextView";
    private boolean mAnimateInOnLayout;
    private int mAnimationMode;
    private View mClose;
    private int mCloseItemLayout;
    private ViewPropertyAnimatorCompatSet mCurrentAnimation;
    private View mCustomView;
    private Drawable mSplitBackground;
    private CharSequence mSubtitle;
    private int mSubtitleStyleRes;
    private TextView mSubtitleView;
    private CharSequence mTitle;
    private LinearLayout mTitleLayout;
    private boolean mTitleOptional;
    private int mTitleStyleRes;
    private TextView mTitleView;

    public ActionBarContextView(Context context)
    {
        this(context, null);
    }

    public ActionBarContextView(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, android.support.v7.appcompat.R.attr.actionModeStyle);
    }

    public ActionBarContextView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        TintTypedArray tinttypedarray = TintTypedArray.obtainStyledAttributes(context, attributeset, android.support.v7.appcompat.R.styleable.ActionMode, i, 0);
        setBackgroundDrawable(tinttypedarray.getDrawable(android.support.v7.appcompat.R.styleable.ActionMode_background));
        mTitleStyleRes = tinttypedarray.getResourceId(android.support.v7.appcompat.R.styleable.ActionMode_titleTextStyle, 0);
        mSubtitleStyleRes = tinttypedarray.getResourceId(android.support.v7.appcompat.R.styleable.ActionMode_subtitleTextStyle, 0);
        mContentHeight = tinttypedarray.getLayoutDimension(android.support.v7.appcompat.R.styleable.ActionMode_height, 0);
        mSplitBackground = tinttypedarray.getDrawable(android.support.v7.appcompat.R.styleable.ActionMode_backgroundSplit);
        mCloseItemLayout = tinttypedarray.getResourceId(android.support.v7.appcompat.R.styleable.ActionMode_closeItemLayout, android.support.v7.appcompat.R.layout.abc_action_mode_close_item_material);
        tinttypedarray.recycle();
    }

    private void finishAnimation()
    {
        ViewPropertyAnimatorCompatSet viewpropertyanimatorcompatset = mCurrentAnimation;
        if (viewpropertyanimatorcompatset != null)
        {
            mCurrentAnimation = null;
            viewpropertyanimatorcompatset.cancel();
        }
    }

    private void initTitle()
    {
        byte byte0 = 8;
        if (mTitleLayout == null)
        {
            LayoutInflater.from(getContext()).inflate(android.support.v7.appcompat.R.layout.abc_action_bar_title_item, this);
            mTitleLayout = (LinearLayout)getChildAt(-1 + getChildCount());
            mTitleView = (TextView)mTitleLayout.findViewById(android.support.v7.appcompat.R.id.action_bar_title);
            mSubtitleView = (TextView)mTitleLayout.findViewById(android.support.v7.appcompat.R.id.action_bar_subtitle);
            if (mTitleStyleRes != 0)
            {
                mTitleView.setTextAppearance(getContext(), mTitleStyleRes);
            }
            if (mSubtitleStyleRes != 0)
            {
                mSubtitleView.setTextAppearance(getContext(), mSubtitleStyleRes);
            }
        }
        mTitleView.setText(mTitle);
        mSubtitleView.setText(mSubtitle);
        boolean flag;
        boolean flag1;
        TextView textview;
        int i;
        LinearLayout linearlayout;
        if (!TextUtils.isEmpty(mTitle))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (!TextUtils.isEmpty(mSubtitle))
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        textview = mSubtitleView;
        if (flag1)
        {
            i = 0;
        } else
        {
            i = byte0;
        }
        textview.setVisibility(i);
        linearlayout = mTitleLayout;
        if (flag || flag1)
        {
            byte0 = 0;
        }
        linearlayout.setVisibility(byte0);
        if (mTitleLayout.getParent() == null)
        {
            addView(mTitleLayout);
        }
    }

    private ViewPropertyAnimatorCompatSet makeInAnimation()
    {
        ViewCompat.setTranslationX(mClose, -mClose.getWidth() - ((android.view.ViewGroup.MarginLayoutParams)mClose.getLayoutParams()).leftMargin);
        ViewPropertyAnimatorCompat viewpropertyanimatorcompat = ViewCompat.animate(mClose).translationX(0.0F);
        viewpropertyanimatorcompat.setDuration(200L);
        viewpropertyanimatorcompat.setListener(this);
        viewpropertyanimatorcompat.setInterpolator(new DecelerateInterpolator());
        ViewPropertyAnimatorCompatSet viewpropertyanimatorcompatset = new ViewPropertyAnimatorCompatSet();
        viewpropertyanimatorcompatset.play(viewpropertyanimatorcompat);
        if (mMenuView != null)
        {
            int i = mMenuView.getChildCount();
            if (i > 0)
            {
                int j = i - 1;
                for (int k = 0; j >= 0; k++)
                {
                    View view = mMenuView.getChildAt(j);
                    ViewCompat.setScaleY(view, 0.0F);
                    ViewPropertyAnimatorCompat viewpropertyanimatorcompat1 = ViewCompat.animate(view).scaleY(1.0F);
                    viewpropertyanimatorcompat1.setDuration(300L);
                    viewpropertyanimatorcompatset.play(viewpropertyanimatorcompat1);
                    j--;
                }

            }
        }
        return viewpropertyanimatorcompatset;
    }

    private ViewPropertyAnimatorCompatSet makeOutAnimation()
    {
        ViewPropertyAnimatorCompat viewpropertyanimatorcompat = ViewCompat.animate(mClose).translationX(-mClose.getWidth() - ((android.view.ViewGroup.MarginLayoutParams)mClose.getLayoutParams()).leftMargin);
        viewpropertyanimatorcompat.setDuration(200L);
        viewpropertyanimatorcompat.setListener(this);
        viewpropertyanimatorcompat.setInterpolator(new DecelerateInterpolator());
        ViewPropertyAnimatorCompatSet viewpropertyanimatorcompatset = new ViewPropertyAnimatorCompatSet();
        viewpropertyanimatorcompatset.play(viewpropertyanimatorcompat);
        if (mMenuView != null && mMenuView.getChildCount() > 0)
        {
            for (int i = 0; i < 0; i++)
            {
                View view = mMenuView.getChildAt(i);
                ViewCompat.setScaleY(view, 1.0F);
                ViewPropertyAnimatorCompat viewpropertyanimatorcompat1 = ViewCompat.animate(view).scaleY(0.0F);
                viewpropertyanimatorcompat1.setDuration(300L);
                viewpropertyanimatorcompatset.play(viewpropertyanimatorcompat1);
            }

        }
        return viewpropertyanimatorcompatset;
    }

    public volatile void animateToVisibility(int i)
    {
        super.animateToVisibility(i);
    }

    public volatile boolean canShowOverflowMenu()
    {
        return super.canShowOverflowMenu();
    }

    public void closeMode()
    {
        if (mAnimationMode == 2)
        {
            return;
        }
        if (mClose == null)
        {
            killMode();
            return;
        } else
        {
            finishAnimation();
            mAnimationMode = 2;
            mCurrentAnimation = makeOutAnimation();
            mCurrentAnimation.start();
            return;
        }
    }

    public volatile void dismissPopupMenus()
    {
        super.dismissPopupMenus();
    }

    protected android.view.ViewGroup.LayoutParams generateDefaultLayoutParams()
    {
        return new android.view.ViewGroup.MarginLayoutParams(-1, -2);
    }

    public android.view.ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeset)
    {
        return new android.view.ViewGroup.MarginLayoutParams(getContext(), attributeset);
    }

    public volatile int getAnimatedVisibility()
    {
        return super.getAnimatedVisibility();
    }

    public volatile int getContentHeight()
    {
        return super.getContentHeight();
    }

    public CharSequence getSubtitle()
    {
        return mSubtitle;
    }

    public CharSequence getTitle()
    {
        return mTitle;
    }

    public boolean hideOverflowMenu()
    {
        if (mActionMenuPresenter != null)
        {
            return mActionMenuPresenter.hideOverflowMenu();
        } else
        {
            return false;
        }
    }

    public void initForMode(final ActionMode mode)
    {
        MenuBuilder menubuilder;
        android.view.ViewGroup.LayoutParams layoutparams;
        if (mClose == null)
        {
            mClose = LayoutInflater.from(getContext()).inflate(mCloseItemLayout, this, false);
            addView(mClose);
        } else
        if (mClose.getParent() == null)
        {
            addView(mClose);
        }
        mClose.findViewById(android.support.v7.appcompat.R.id.action_mode_close_button).setOnClickListener(new android.view.View.OnClickListener() {

            final ActionBarContextView this$0;
            final ActionMode val$mode;

            public void onClick(View view)
            {
                mode.finish();
            }

            
            {
                this$0 = ActionBarContextView.this;
                mode = actionmode;
                super();
            }
        });
        menubuilder = (MenuBuilder)mode.getMenu();
        if (mActionMenuPresenter != null)
        {
            mActionMenuPresenter.dismissPopupMenus();
        }
        mActionMenuPresenter = new ActionMenuPresenter(getContext());
        mActionMenuPresenter.setReserveOverflow(true);
        layoutparams = new android.view.ViewGroup.LayoutParams(-2, -1);
        if (!mSplitActionBar)
        {
            menubuilder.addMenuPresenter(mActionMenuPresenter, mPopupContext);
            mMenuView = (ActionMenuView)mActionMenuPresenter.getMenuView(this);
            mMenuView.setBackgroundDrawable(null);
            addView(mMenuView, layoutparams);
        } else
        {
            mActionMenuPresenter.setWidthLimit(getContext().getResources().getDisplayMetrics().widthPixels, true);
            mActionMenuPresenter.setItemLimit(0x7fffffff);
            layoutparams.width = -1;
            layoutparams.height = mContentHeight;
            menubuilder.addMenuPresenter(mActionMenuPresenter, mPopupContext);
            mMenuView = (ActionMenuView)mActionMenuPresenter.getMenuView(this);
            mMenuView.setBackgroundDrawable(mSplitBackground);
            mSplitView.addView(mMenuView, layoutparams);
        }
        mAnimateInOnLayout = true;
    }

    public volatile boolean isOverflowMenuShowPending()
    {
        return super.isOverflowMenuShowPending();
    }

    public boolean isOverflowMenuShowing()
    {
        if (mActionMenuPresenter != null)
        {
            return mActionMenuPresenter.isOverflowMenuShowing();
        } else
        {
            return false;
        }
    }

    public volatile boolean isOverflowReserved()
    {
        return super.isOverflowReserved();
    }

    public boolean isTitleOptional()
    {
        return mTitleOptional;
    }

    public void killMode()
    {
        finishAnimation();
        removeAllViews();
        if (mSplitView != null)
        {
            mSplitView.removeView(mMenuView);
        }
        mCustomView = null;
        mMenuView = null;
        mAnimateInOnLayout = false;
    }

    public void onAnimationCancel(View view)
    {
    }

    public void onAnimationEnd(View view)
    {
        if (mAnimationMode == 2)
        {
            killMode();
        }
        mAnimationMode = 0;
    }

    public void onAnimationStart(View view)
    {
    }

    public void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        if (mActionMenuPresenter != null)
        {
            mActionMenuPresenter.hideOverflowMenu();
            mActionMenuPresenter.hideSubMenus();
        }
    }

    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityevent)
    {
label0:
        {
            if (android.os.Build.VERSION.SDK_INT >= 14)
            {
                if (accessibilityevent.getEventType() != 32)
                {
                    break label0;
                }
                accessibilityevent.setSource(this);
                accessibilityevent.setClassName(getClass().getName());
                accessibilityevent.setPackageName(getContext().getPackageName());
                accessibilityevent.setContentDescription(mTitle);
            }
            return;
        }
        super.onInitializeAccessibilityEvent(accessibilityevent);
    }

    protected void onLayout(boolean flag, int i, int j, int k, int l)
    {
        boolean flag1 = ViewUtils.isLayoutRtl(this);
        int i1;
        int j1;
        int k1;
        int l1;
        if (flag1)
        {
            i1 = k - i - getPaddingRight();
        } else
        {
            i1 = getPaddingLeft();
        }
        j1 = getPaddingTop();
        k1 = l - j - getPaddingTop() - getPaddingBottom();
        if (mClose != null && mClose.getVisibility() != 8)
        {
            android.view.ViewGroup.MarginLayoutParams marginlayoutparams = (android.view.ViewGroup.MarginLayoutParams)mClose.getLayoutParams();
            ActionMenuView actionmenuview;
            int i2;
            int j2;
            int k2;
            if (flag1)
            {
                i2 = marginlayoutparams.rightMargin;
            } else
            {
                i2 = marginlayoutparams.leftMargin;
            }
            if (flag1)
            {
                j2 = marginlayoutparams.leftMargin;
            } else
            {
                j2 = marginlayoutparams.rightMargin;
            }
            k2 = next(i1, i2, flag1);
            i1 = next(k2 + positionChild(mClose, k2, j1, k1, flag1), j2, flag1);
            if (mAnimateInOnLayout)
            {
                mAnimationMode = 1;
                mCurrentAnimation = makeInAnimation();
                mCurrentAnimation.start();
                mAnimateInOnLayout = false;
            }
        }
        if (mTitleLayout != null && mCustomView == null && mTitleLayout.getVisibility() != 8)
        {
            i1 += positionChild(mTitleLayout, i1, j1, k1, flag1);
        }
        if (mCustomView != null)
        {
            int _tmp = i1 + positionChild(mCustomView, i1, j1, k1, flag1);
        }
        if (flag1)
        {
            l1 = getPaddingLeft();
        } else
        {
            l1 = k - i - getPaddingRight();
        }
        if (mMenuView != null)
        {
            actionmenuview = mMenuView;
            boolean flag2;
            if (!flag1)
            {
                flag2 = true;
            } else
            {
                flag2 = false;
            }
            int _tmp1 = l1 + positionChild(actionmenuview, l1, j1, k1, flag2);
        }
    }

    protected void onMeasure(int i, int j)
    {
        if (android.view.View.MeasureSpec.getMode(i) != 0x40000000)
        {
            throw new IllegalStateException((new StringBuilder()).append(getClass().getSimpleName()).append(" can only be used ").append("with android:layout_width=\"match_parent\" (or fill_parent)").toString());
        }
        if (android.view.View.MeasureSpec.getMode(j) == 0)
        {
            throw new IllegalStateException((new StringBuilder()).append(getClass().getSimpleName()).append(" can only be used ").append("with android:layout_height=\"wrap_content\"").toString());
        }
        int k = android.view.View.MeasureSpec.getSize(i);
        int l;
        int i1;
        int j1;
        int k1;
        int l1;
        if (mContentHeight > 0)
        {
            l = mContentHeight;
        } else
        {
            l = android.view.View.MeasureSpec.getSize(j);
        }
        i1 = getPaddingTop() + getPaddingBottom();
        j1 = k - getPaddingLeft() - getPaddingRight();
        k1 = l - i1;
        l1 = android.view.View.MeasureSpec.makeMeasureSpec(k1, 0x80000000);
        if (mClose != null)
        {
            int l4 = measureChildView(mClose, j1, l1, 0);
            android.view.ViewGroup.MarginLayoutParams marginlayoutparams = (android.view.ViewGroup.MarginLayoutParams)mClose.getLayoutParams();
            j1 = l4 - (marginlayoutparams.leftMargin + marginlayoutparams.rightMargin);
        }
        if (mMenuView != null && mMenuView.getParent() == this)
        {
            j1 = measureChildView(mMenuView, j1, l1, 0);
        }
        if (mTitleLayout != null && mCustomView == null)
        {
            if (mTitleOptional)
            {
                int i4 = android.view.View.MeasureSpec.makeMeasureSpec(0, 0);
                mTitleLayout.measure(i4, l1);
                int j4 = mTitleLayout.getMeasuredWidth();
                int j2;
                int k2;
                int l2;
                android.view.ViewGroup.LayoutParams layoutparams;
                boolean flag;
                LinearLayout linearlayout;
                int k4;
                if (j4 <= j1)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                if (flag)
                {
                    j1 -= j4;
                }
                linearlayout = mTitleLayout;
                if (flag)
                {
                    k4 = 0;
                } else
                {
                    k4 = 8;
                }
                linearlayout.setVisibility(k4);
            } else
            {
                j1 = measureChildView(mTitleLayout, j1, l1, 0);
            }
        }
        if (mCustomView != null)
        {
            layoutparams = mCustomView.getLayoutParams();
            int i3;
            int j3;
            int k3;
            int l3;
            if (layoutparams.width != -2)
            {
                i3 = 0x40000000;
            } else
            {
                i3 = 0x80000000;
            }
            if (layoutparams.width >= 0)
            {
                j3 = Math.min(layoutparams.width, j1);
            } else
            {
                j3 = j1;
            }
            if (layoutparams.height != -2)
            {
                k3 = 0x40000000;
            } else
            {
                k3 = 0x80000000;
            }
            if (layoutparams.height >= 0)
            {
                l3 = Math.min(layoutparams.height, k1);
            } else
            {
                l3 = k1;
            }
            mCustomView.measure(android.view.View.MeasureSpec.makeMeasureSpec(j3, i3), android.view.View.MeasureSpec.makeMeasureSpec(l3, k3));
        }
        if (mContentHeight <= 0)
        {
            int i2 = 0;
            j2 = getChildCount();
            for (k2 = 0; k2 < j2; k2++)
            {
                l2 = i1 + getChildAt(k2).getMeasuredHeight();
                if (l2 > i2)
                {
                    i2 = l2;
                }
            }

            setMeasuredDimension(k, i2);
            return;
        } else
        {
            setMeasuredDimension(k, l);
            return;
        }
    }

    public volatile void postShowOverflowMenu()
    {
        super.postShowOverflowMenu();
    }

    public void setContentHeight(int i)
    {
        mContentHeight = i;
    }

    public void setCustomView(View view)
    {
        if (mCustomView != null)
        {
            removeView(mCustomView);
        }
        mCustomView = view;
        if (mTitleLayout != null)
        {
            removeView(mTitleLayout);
            mTitleLayout = null;
        }
        if (view != null)
        {
            addView(view);
        }
        requestLayout();
    }

    public void setSplitToolbar(boolean flag)
    {
        if (mSplitActionBar != flag)
        {
            if (mActionMenuPresenter != null)
            {
                android.view.ViewGroup.LayoutParams layoutparams = new android.view.ViewGroup.LayoutParams(-2, -1);
                if (!flag)
                {
                    mMenuView = (ActionMenuView)mActionMenuPresenter.getMenuView(this);
                    mMenuView.setBackgroundDrawable(null);
                    ViewGroup viewgroup1 = (ViewGroup)mMenuView.getParent();
                    if (viewgroup1 != null)
                    {
                        viewgroup1.removeView(mMenuView);
                    }
                    addView(mMenuView, layoutparams);
                } else
                {
                    mActionMenuPresenter.setWidthLimit(getContext().getResources().getDisplayMetrics().widthPixels, true);
                    mActionMenuPresenter.setItemLimit(0x7fffffff);
                    layoutparams.width = -1;
                    layoutparams.height = mContentHeight;
                    mMenuView = (ActionMenuView)mActionMenuPresenter.getMenuView(this);
                    mMenuView.setBackgroundDrawable(mSplitBackground);
                    ViewGroup viewgroup = (ViewGroup)mMenuView.getParent();
                    if (viewgroup != null)
                    {
                        viewgroup.removeView(mMenuView);
                    }
                    mSplitView.addView(mMenuView, layoutparams);
                }
            }
            super.setSplitToolbar(flag);
        }
    }

    public volatile void setSplitView(ViewGroup viewgroup)
    {
        super.setSplitView(viewgroup);
    }

    public volatile void setSplitWhenNarrow(boolean flag)
    {
        super.setSplitWhenNarrow(flag);
    }

    public void setSubtitle(CharSequence charsequence)
    {
        mSubtitle = charsequence;
        initTitle();
    }

    public void setTitle(CharSequence charsequence)
    {
        mTitle = charsequence;
        initTitle();
    }

    public void setTitleOptional(boolean flag)
    {
        if (flag != mTitleOptional)
        {
            requestLayout();
        }
        mTitleOptional = flag;
    }

    public boolean shouldDelayChildPressedState()
    {
        return false;
    }

    public boolean showOverflowMenu()
    {
        if (mActionMenuPresenter != null)
        {
            return mActionMenuPresenter.showOverflowMenu();
        } else
        {
            return false;
        }
    }
}
