// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.internal.widget;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v4.view.ViewPropertyAnimatorListener;
import android.support.v4.view.ViewPropertyAnimatorListenerAdapter;
import android.support.v4.widget.ScrollerCompat;
import android.support.v7.internal.VersionUtils;
import android.support.v7.internal.app.WindowCallback;
import android.support.v7.widget.Toolbar;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;

// Referenced classes of package android.support.v7.internal.widget:
//            DecorContentParent, DecorToolbar, ActionBarContainer, ViewUtils, 
//            ContentFrameLayout

public class ActionBarOverlayLayout extends ViewGroup
    implements DecorContentParent
{
    public static interface ActionBarVisibilityCallback
    {

        public abstract void enableContentAnimations(boolean flag);

        public abstract void hideForSystem();

        public abstract void onContentScrollStarted();

        public abstract void onContentScrollStopped();

        public abstract void onWindowVisibilityChanged(int i);

        public abstract void showForSystem();
    }

    public static class LayoutParams extends android.view.ViewGroup.MarginLayoutParams
    {

        public LayoutParams(int i, int j)
        {
            super(i, j);
        }

        public LayoutParams(Context context, AttributeSet attributeset)
        {
            super(context, attributeset);
        }

        public LayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
        {
            super(layoutparams);
        }

        public LayoutParams(android.view.ViewGroup.MarginLayoutParams marginlayoutparams)
        {
            super(marginlayoutparams);
        }
    }


    static final int ATTRS[];
    private static final String TAG = "ActionBarOverlayLayout";
    private final int ACTION_BAR_ANIMATE_DELAY;
    private ActionBarContainer mActionBarBottom;
    private int mActionBarHeight;
    private ActionBarContainer mActionBarTop;
    private ActionBarVisibilityCallback mActionBarVisibilityCallback;
    private final Runnable mAddActionBarHideOffset;
    private boolean mAnimatingForFling;
    private final Rect mBaseContentInsets;
    private final Rect mBaseInnerInsets;
    private final ViewPropertyAnimatorListener mBottomAnimatorListener;
    private ContentFrameLayout mContent;
    private final Rect mContentInsets;
    private ViewPropertyAnimatorCompat mCurrentActionBarBottomAnimator;
    private ViewPropertyAnimatorCompat mCurrentActionBarTopAnimator;
    private DecorToolbar mDecorToolbar;
    private ScrollerCompat mFlingEstimator;
    private boolean mHasNonEmbeddedTabs;
    private boolean mHideOnContentScroll;
    private int mHideOnContentScrollReference;
    private boolean mIgnoreWindowContentOverlay;
    private final Rect mInnerInsets;
    private final Rect mLastBaseContentInsets;
    private final Rect mLastInnerInsets;
    private int mLastSystemUiVisibility;
    private boolean mOverlayMode;
    private final Runnable mRemoveActionBarHideOffset;
    private final ViewPropertyAnimatorListener mTopAnimatorListener;
    private Drawable mWindowContentOverlay;
    private int mWindowVisibility;

    public ActionBarOverlayLayout(Context context)
    {
        super(context);
        mWindowVisibility = 0;
        mBaseContentInsets = new Rect();
        mLastBaseContentInsets = new Rect();
        mContentInsets = new Rect();
        mBaseInnerInsets = new Rect();
        mInnerInsets = new Rect();
        mLastInnerInsets = new Rect();
        ACTION_BAR_ANIMATE_DELAY = 600;
        mTopAnimatorListener = new ViewPropertyAnimatorListenerAdapter() {

            final ActionBarOverlayLayout this$0;

            public void onAnimationCancel(View view)
            {
                mCurrentActionBarTopAnimator = null;
                mAnimatingForFling = false;
            }

            public void onAnimationEnd(View view)
            {
                mCurrentActionBarTopAnimator = null;
                mAnimatingForFling = false;
            }

            
            {
                this$0 = ActionBarOverlayLayout.this;
                super();
            }
        };
        mBottomAnimatorListener = new ViewPropertyAnimatorListenerAdapter() {

            final ActionBarOverlayLayout this$0;

            public void onAnimationCancel(View view)
            {
                mCurrentActionBarBottomAnimator = null;
                mAnimatingForFling = false;
            }

            public void onAnimationEnd(View view)
            {
                mCurrentActionBarBottomAnimator = null;
                mAnimatingForFling = false;
            }

            
            {
                this$0 = ActionBarOverlayLayout.this;
                super();
            }
        };
        mRemoveActionBarHideOffset = new Runnable() {

            final ActionBarOverlayLayout this$0;

            public void run()
            {
                haltActionBarHideOffsetAnimations();
                mCurrentActionBarTopAnimator = ViewCompat.animate(mActionBarTop).translationY(0.0F).setListener(mTopAnimatorListener);
                if (mActionBarBottom != null && mActionBarBottom.getVisibility() != 8)
                {
                    mCurrentActionBarBottomAnimator = ViewCompat.animate(mActionBarBottom).translationY(0.0F).setListener(mBottomAnimatorListener);
                }
            }

            
            {
                this$0 = ActionBarOverlayLayout.this;
                super();
            }
        };
        mAddActionBarHideOffset = new Runnable() {

            final ActionBarOverlayLayout this$0;

            public void run()
            {
                haltActionBarHideOffsetAnimations();
                mCurrentActionBarTopAnimator = ViewCompat.animate(mActionBarTop).translationY(-mActionBarTop.getHeight()).setListener(mTopAnimatorListener);
                if (mActionBarBottom != null && mActionBarBottom.getVisibility() != 8)
                {
                    mCurrentActionBarBottomAnimator = ViewCompat.animate(mActionBarBottom).translationY(mActionBarBottom.getHeight()).setListener(mBottomAnimatorListener);
                }
            }

            
            {
                this$0 = ActionBarOverlayLayout.this;
                super();
            }
        };
        init(context);
    }

    public ActionBarOverlayLayout(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        mWindowVisibility = 0;
        mBaseContentInsets = new Rect();
        mLastBaseContentInsets = new Rect();
        mContentInsets = new Rect();
        mBaseInnerInsets = new Rect();
        mInnerInsets = new Rect();
        mLastInnerInsets = new Rect();
        ACTION_BAR_ANIMATE_DELAY = 600;
        mTopAnimatorListener = new _cls1();
        mBottomAnimatorListener = new _cls2();
        mRemoveActionBarHideOffset = new _cls3();
        mAddActionBarHideOffset = new _cls4();
        init(context);
    }

    private void addActionBarHideOffset()
    {
        haltActionBarHideOffsetAnimations();
        mAddActionBarHideOffset.run();
    }

    private boolean applyInsets(View view, Rect rect, boolean flag, boolean flag1, boolean flag2, boolean flag3)
    {
        LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
        boolean flag4 = false;
        if (flag)
        {
            int i = layoutparams.leftMargin;
            int j = rect.left;
            flag4 = false;
            if (i != j)
            {
                flag4 = true;
                layoutparams.leftMargin = rect.left;
            }
        }
        if (flag1 && layoutparams.topMargin != rect.top)
        {
            flag4 = true;
            layoutparams.topMargin = rect.top;
        }
        if (flag3 && layoutparams.rightMargin != rect.right)
        {
            flag4 = true;
            layoutparams.rightMargin = rect.right;
        }
        if (flag2 && layoutparams.bottomMargin != rect.bottom)
        {
            flag4 = true;
            layoutparams.bottomMargin = rect.bottom;
        }
        return flag4;
    }

    private DecorToolbar getDecorToolbar(View view)
    {
        if (view instanceof DecorToolbar)
        {
            return (DecorToolbar)view;
        }
        if (view instanceof Toolbar)
        {
            return ((Toolbar)view).getWrapper();
        } else
        {
            throw new IllegalStateException((new StringBuilder()).append("Can't make a decor toolbar out of ").append(view.getClass().getSimpleName()).toString());
        }
    }

    private void haltActionBarHideOffsetAnimations()
    {
        removeCallbacks(mRemoveActionBarHideOffset);
        removeCallbacks(mAddActionBarHideOffset);
        if (mCurrentActionBarTopAnimator != null)
        {
            mCurrentActionBarTopAnimator.cancel();
        }
        if (mCurrentActionBarBottomAnimator != null)
        {
            mCurrentActionBarBottomAnimator.cancel();
        }
    }

    private void init(Context context)
    {
        boolean flag = true;
        TypedArray typedarray = getContext().getTheme().obtainStyledAttributes(ATTRS);
        mActionBarHeight = typedarray.getDimensionPixelSize(0, 0);
        mWindowContentOverlay = typedarray.getDrawable(flag);
        boolean flag1;
        if (mWindowContentOverlay == null)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        setWillNotDraw(flag1);
        typedarray.recycle();
        if (context.getApplicationInfo().targetSdkVersion >= 19)
        {
            flag = false;
        }
        mIgnoreWindowContentOverlay = flag;
        mFlingEstimator = ScrollerCompat.create(context);
    }

    private void postAddActionBarHideOffset()
    {
        haltActionBarHideOffsetAnimations();
        postDelayed(mAddActionBarHideOffset, 600L);
    }

    private void postRemoveActionBarHideOffset()
    {
        haltActionBarHideOffsetAnimations();
        postDelayed(mRemoveActionBarHideOffset, 600L);
    }

    private void removeActionBarHideOffset()
    {
        haltActionBarHideOffsetAnimations();
        mRemoveActionBarHideOffset.run();
    }

    private boolean shouldHideActionBarOnFling(float f, float f1)
    {
        mFlingEstimator.fling(0, 0, 0, (int)f1, 0, 0, 0x80000000, 0x7fffffff);
        int i = mFlingEstimator.getFinalY();
        int j = mActionBarTop.getHeight();
        boolean flag = false;
        if (i > j)
        {
            flag = true;
        }
        return flag;
    }

    public boolean canShowOverflowMenu()
    {
        pullChildren();
        return mDecorToolbar.canShowOverflowMenu();
    }

    protected boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
    {
        return layoutparams instanceof LayoutParams;
    }

    public void dismissPopups()
    {
        pullChildren();
        mDecorToolbar.dismissPopupMenus();
    }

    public void draw(Canvas canvas)
    {
        super.draw(canvas);
        if (mWindowContentOverlay != null && !mIgnoreWindowContentOverlay)
        {
            int i;
            if (mActionBarTop.getVisibility() == 0)
            {
                i = (int)(0.5F + ((float)mActionBarTop.getBottom() + ViewCompat.getTranslationY(mActionBarTop)));
            } else
            {
                i = 0;
            }
            mWindowContentOverlay.setBounds(0, i, getWidth(), i + mWindowContentOverlay.getIntrinsicHeight());
            mWindowContentOverlay.draw(canvas);
        }
    }

    protected boolean fitSystemWindows(Rect rect)
    {
        pullChildren();
        if ((0x100 & ViewCompat.getWindowSystemUiVisibility(this)) == 0);
        boolean flag = applyInsets(mActionBarTop, rect, true, true, false, true);
        if (mActionBarBottom != null)
        {
            flag |= applyInsets(mActionBarBottom, rect, true, false, true, true);
        }
        mBaseInnerInsets.set(rect);
        ViewUtils.computeFitSystemWindows(this, mBaseInnerInsets, mBaseContentInsets);
        if (!mLastBaseContentInsets.equals(mBaseContentInsets))
        {
            flag = true;
            mLastBaseContentInsets.set(mBaseContentInsets);
        }
        if (flag)
        {
            requestLayout();
        }
        return true;
    }

    protected LayoutParams generateDefaultLayoutParams()
    {
        return new LayoutParams(-1, -1);
    }

    protected volatile android.view.ViewGroup.LayoutParams generateDefaultLayoutParams()
    {
        return generateDefaultLayoutParams();
    }

    public LayoutParams generateLayoutParams(AttributeSet attributeset)
    {
        return new LayoutParams(getContext(), attributeset);
    }

    public volatile android.view.ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeset)
    {
        return generateLayoutParams(attributeset);
    }

    protected android.view.ViewGroup.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
    {
        return new LayoutParams(layoutparams);
    }

    public int getActionBarHideOffset()
    {
        if (mActionBarTop != null)
        {
            return -(int)ViewCompat.getTranslationY(mActionBarTop);
        } else
        {
            return 0;
        }
    }

    public CharSequence getTitle()
    {
        pullChildren();
        return mDecorToolbar.getTitle();
    }

    public boolean hasIcon()
    {
        pullChildren();
        return mDecorToolbar.hasIcon();
    }

    public boolean hasLogo()
    {
        pullChildren();
        return mDecorToolbar.hasLogo();
    }

    public boolean hideOverflowMenu()
    {
        pullChildren();
        return mDecorToolbar.hideOverflowMenu();
    }

    public void initFeature(int i)
    {
        pullChildren();
        switch (i)
        {
        default:
            return;

        case 2: // '\002'
            mDecorToolbar.initProgress();
            return;

        case 5: // '\005'
            mDecorToolbar.initIndeterminateProgress();
            return;

        case 9: // '\t'
            setOverlayMode(true);
            break;
        }
    }

    public boolean isHideOnContentScrollEnabled()
    {
        return mHideOnContentScroll;
    }

    public boolean isInOverlayMode()
    {
        return mOverlayMode;
    }

    public boolean isOverflowMenuShowPending()
    {
        pullChildren();
        return mDecorToolbar.isOverflowMenuShowPending();
    }

    public boolean isOverflowMenuShowing()
    {
        pullChildren();
        return mDecorToolbar.isOverflowMenuShowing();
    }

    protected void onConfigurationChanged(Configuration configuration)
    {
        if (android.os.Build.VERSION.SDK_INT >= 8)
        {
            super.onConfigurationChanged(configuration);
        }
        init(getContext());
        ViewCompat.requestApplyInsets(this);
    }

    protected void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        haltActionBarHideOffsetAnimations();
    }

    protected void onLayout(boolean flag, int i, int j, int k, int l)
    {
        int i1 = getChildCount();
        int j1 = getPaddingLeft();
        int _tmp = k - i - getPaddingRight();
        int k1 = getPaddingTop();
        int l1 = l - j - getPaddingBottom();
        int i2 = 0;
        while (i2 < i1) 
        {
            View view = getChildAt(i2);
            if (view.getVisibility() != 8)
            {
                LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
                int j2 = view.getMeasuredWidth();
                int k2 = view.getMeasuredHeight();
                int l2 = j1 + layoutparams.leftMargin;
                int i3;
                if (view == mActionBarBottom)
                {
                    i3 = l1 - k2 - layoutparams.bottomMargin;
                } else
                {
                    i3 = k1 + layoutparams.topMargin;
                }
                view.layout(l2, i3, l2 + j2, i3 + k2);
            }
            i2++;
        }
    }

    protected void onMeasure(int i, int j)
    {
        pullChildren();
        measureChildWithMargins(mActionBarTop, i, 0, j, 0);
        LayoutParams layoutparams = (LayoutParams)mActionBarTop.getLayoutParams();
        int k = Math.max(0, mActionBarTop.getMeasuredWidth() + layoutparams.leftMargin + layoutparams.rightMargin);
        int l = Math.max(0, mActionBarTop.getMeasuredHeight() + layoutparams.topMargin + layoutparams.bottomMargin);
        int i1 = ViewUtils.combineMeasuredStates(0, ViewCompat.getMeasuredState(mActionBarTop));
        if (mActionBarBottom != null)
        {
            measureChildWithMargins(mActionBarBottom, i, 0, j, 0);
            LayoutParams layoutparams2 = (LayoutParams)mActionBarBottom.getLayoutParams();
            k = Math.max(k, mActionBarBottom.getMeasuredWidth() + layoutparams2.leftMargin + layoutparams2.rightMargin);
            l = Math.max(l, mActionBarBottom.getMeasuredHeight() + layoutparams2.topMargin + layoutparams2.bottomMargin);
            i1 = ViewUtils.combineMeasuredStates(i1, ViewCompat.getMeasuredState(mActionBarBottom));
        }
        boolean flag;
        int k1;
        boolean flag1;
        int l1;
        if ((0x100 & ViewCompat.getWindowSystemUiVisibility(this)) != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            k1 = mActionBarHeight;
            if (mHasNonEmbeddedTabs && mActionBarTop.getTabContainer() != null)
            {
                k1 += mActionBarHeight;
            }
        } else
        {
            int j1 = mActionBarTop.getVisibility();
            k1 = 0;
            if (j1 != 8)
            {
                k1 = mActionBarTop.getMeasuredHeight();
            }
        }
        flag1 = mDecorToolbar.isSplit();
        l1 = 0;
        if (flag1)
        {
            ActionBarContainer actionbarcontainer = mActionBarBottom;
            l1 = 0;
            LayoutParams layoutparams1;
            int i2;
            int j2;
            int k2;
            int l2;
            int i3;
            Rect rect2;
            Rect rect3;
            if (actionbarcontainer != null)
            {
                if (flag)
                {
                    l1 = mActionBarHeight;
                } else
                {
                    l1 = mActionBarBottom.getMeasuredHeight();
                }
            }
        }
        mContentInsets.set(mBaseContentInsets);
        mInnerInsets.set(mBaseInnerInsets);
        if (!mOverlayMode && !flag)
        {
            rect2 = mContentInsets;
            rect2.top = k1 + rect2.top;
            rect3 = mContentInsets;
            rect3.bottom = l1 + rect3.bottom;
        } else
        {
            Rect rect = mInnerInsets;
            rect.top = k1 + rect.top;
            Rect rect1 = mInnerInsets;
            rect1.bottom = l1 + rect1.bottom;
        }
        applyInsets(mContent, mContentInsets, true, true, true, true);
        if (!mLastInnerInsets.equals(mInnerInsets))
        {
            mLastInnerInsets.set(mInnerInsets);
            mContent.dispatchFitSystemWindows(mInnerInsets);
        }
        measureChildWithMargins(mContent, i, 0, j, 0);
        layoutparams1 = (LayoutParams)mContent.getLayoutParams();
        i2 = Math.max(k, mContent.getMeasuredWidth() + layoutparams1.leftMargin + layoutparams1.rightMargin);
        j2 = Math.max(l, mContent.getMeasuredHeight() + layoutparams1.topMargin + layoutparams1.bottomMargin);
        k2 = ViewUtils.combineMeasuredStates(i1, ViewCompat.getMeasuredState(mContent));
        l2 = i2 + (getPaddingLeft() + getPaddingRight());
        i3 = Math.max(j2 + (getPaddingTop() + getPaddingBottom()), getSuggestedMinimumHeight());
        setMeasuredDimension(ViewCompat.resolveSizeAndState(Math.max(l2, getSuggestedMinimumWidth()), i, k2), ViewCompat.resolveSizeAndState(i3, j, k2 << 16));
    }

    public boolean onNestedFling(View view, float f, float f1, boolean flag)
    {
        if (!mHideOnContentScroll || !flag)
        {
            return false;
        }
        if (shouldHideActionBarOnFling(f, f1))
        {
            addActionBarHideOffset();
        } else
        {
            removeActionBarHideOffset();
        }
        mAnimatingForFling = true;
        return true;
    }

    public void onNestedScroll(View view, int i, int j, int k, int l)
    {
        mHideOnContentScrollReference = j + mHideOnContentScrollReference;
        setActionBarHideOffset(mHideOnContentScrollReference);
    }

    public void onNestedScrollAccepted(View view, View view1, int i)
    {
        super.onNestedScrollAccepted(view, view1, i);
        mHideOnContentScrollReference = getActionBarHideOffset();
        haltActionBarHideOffsetAnimations();
        if (mActionBarVisibilityCallback != null)
        {
            mActionBarVisibilityCallback.onContentScrollStarted();
        }
    }

    public boolean onStartNestedScroll(View view, View view1, int i)
    {
        if ((i & 2) == 0 || mActionBarTop.getVisibility() != 0)
        {
            return false;
        } else
        {
            return mHideOnContentScroll;
        }
    }

    public void onStopNestedScroll(View view)
    {
        super.onStopNestedScroll(view);
        if (mHideOnContentScroll && !mAnimatingForFling)
        {
            if (mHideOnContentScrollReference <= mActionBarTop.getHeight())
            {
                postRemoveActionBarHideOffset();
            } else
            {
                postAddActionBarHideOffset();
            }
        }
        if (mActionBarVisibilityCallback != null)
        {
            mActionBarVisibilityCallback.onContentScrollStopped();
        }
    }

    public void onWindowSystemUiVisibilityChanged(int i)
    {
        boolean flag = true;
        if (android.os.Build.VERSION.SDK_INT >= 16)
        {
            super.onWindowSystemUiVisibilityChanged(i);
        }
        pullChildren();
        int j = i ^ mLastSystemUiVisibility;
        mLastSystemUiVisibility = i;
        boolean flag1;
        boolean flag2;
        if ((i & 4) == 0)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        if ((i & 0x100) != 0)
        {
            flag2 = flag;
        } else
        {
            flag2 = false;
        }
        if (mActionBarVisibilityCallback != null)
        {
            ActionBarVisibilityCallback actionbarvisibilitycallback = mActionBarVisibilityCallback;
            if (flag2)
            {
                flag = false;
            }
            actionbarvisibilitycallback.enableContentAnimations(flag);
            if (flag1 || !flag2)
            {
                mActionBarVisibilityCallback.showForSystem();
            } else
            {
                mActionBarVisibilityCallback.hideForSystem();
            }
        }
        if ((j & 0x100) != 0 && mActionBarVisibilityCallback != null)
        {
            ViewCompat.requestApplyInsets(this);
        }
    }

    protected void onWindowVisibilityChanged(int i)
    {
        super.onWindowVisibilityChanged(i);
        mWindowVisibility = i;
        if (mActionBarVisibilityCallback != null)
        {
            mActionBarVisibilityCallback.onWindowVisibilityChanged(i);
        }
    }

    void pullChildren()
    {
        if (mContent == null)
        {
            mContent = (ContentFrameLayout)findViewById(android.support.v7.appcompat.R.id.action_bar_activity_content);
            mActionBarTop = (ActionBarContainer)findViewById(android.support.v7.appcompat.R.id.action_bar_container);
            mDecorToolbar = getDecorToolbar(findViewById(android.support.v7.appcompat.R.id.action_bar));
            mActionBarBottom = (ActionBarContainer)findViewById(android.support.v7.appcompat.R.id.split_action_bar);
        }
    }

    public void restoreToolbarHierarchyState(SparseArray sparsearray)
    {
        pullChildren();
        mDecorToolbar.restoreHierarchyState(sparsearray);
    }

    public void saveToolbarHierarchyState(SparseArray sparsearray)
    {
        pullChildren();
        mDecorToolbar.saveHierarchyState(sparsearray);
    }

    public void setActionBarHideOffset(int i)
    {
        haltActionBarHideOffsetAnimations();
        int j = mActionBarTop.getHeight();
        int k = Math.max(0, Math.min(i, j));
        ViewCompat.setTranslationY(mActionBarTop, -k);
        if (mActionBarBottom != null && mActionBarBottom.getVisibility() != 8)
        {
            int l = (int)(((float)k / (float)j) * (float)mActionBarBottom.getHeight());
            ViewCompat.setTranslationY(mActionBarBottom, l);
        }
    }

    public void setActionBarVisibilityCallback(ActionBarVisibilityCallback actionbarvisibilitycallback)
    {
        mActionBarVisibilityCallback = actionbarvisibilitycallback;
        if (getWindowToken() != null)
        {
            mActionBarVisibilityCallback.onWindowVisibilityChanged(mWindowVisibility);
            if (mLastSystemUiVisibility != 0)
            {
                onWindowSystemUiVisibilityChanged(mLastSystemUiVisibility);
                ViewCompat.requestApplyInsets(this);
            }
        }
    }

    public void setHasNonEmbeddedTabs(boolean flag)
    {
        mHasNonEmbeddedTabs = flag;
    }

    public void setHideOnContentScrollEnabled(boolean flag)
    {
        if (flag != mHideOnContentScroll)
        {
            mHideOnContentScroll = flag;
            if (!flag)
            {
                if (VersionUtils.isAtLeastL())
                {
                    stopNestedScroll();
                }
                haltActionBarHideOffsetAnimations();
                setActionBarHideOffset(0);
            }
        }
    }

    public void setIcon(int i)
    {
        pullChildren();
        mDecorToolbar.setIcon(i);
    }

    public void setIcon(Drawable drawable)
    {
        pullChildren();
        mDecorToolbar.setIcon(drawable);
    }

    public void setLogo(int i)
    {
        pullChildren();
        mDecorToolbar.setLogo(i);
    }

    public void setMenu(Menu menu, android.support.v7.internal.view.menu.MenuPresenter.Callback callback)
    {
        pullChildren();
        mDecorToolbar.setMenu(menu, callback);
    }

    public void setMenuPrepared()
    {
        pullChildren();
        mDecorToolbar.setMenuPrepared();
    }

    public void setOverlayMode(boolean flag)
    {
        mOverlayMode = flag;
        boolean flag1;
        if (flag && getContext().getApplicationInfo().targetSdkVersion < 19)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        mIgnoreWindowContentOverlay = flag1;
    }

    public void setShowingForActionMode(boolean flag)
    {
    }

    public void setUiOptions(int i)
    {
    }

    public void setWindowCallback(WindowCallback windowcallback)
    {
        pullChildren();
        mDecorToolbar.setWindowCallback(windowcallback);
    }

    public void setWindowTitle(CharSequence charsequence)
    {
        pullChildren();
        mDecorToolbar.setWindowTitle(charsequence);
    }

    public boolean shouldDelayChildPressedState()
    {
        return false;
    }

    public boolean showOverflowMenu()
    {
        pullChildren();
        return mDecorToolbar.showOverflowMenu();
    }

    static 
    {
        int ai[] = new int[2];
        ai[0] = android.support.v7.appcompat.R.attr.actionBarSize;
        ai[1] = 0x1010059;
        ATTRS = ai;
    }


/*
    static ViewPropertyAnimatorCompat access$002(ActionBarOverlayLayout actionbaroverlaylayout, ViewPropertyAnimatorCompat viewpropertyanimatorcompat)
    {
        actionbaroverlaylayout.mCurrentActionBarTopAnimator = viewpropertyanimatorcompat;
        return viewpropertyanimatorcompat;
    }

*/


/*
    static boolean access$102(ActionBarOverlayLayout actionbaroverlaylayout, boolean flag)
    {
        actionbaroverlaylayout.mAnimatingForFling = flag;
        return flag;
    }

*/


/*
    static ViewPropertyAnimatorCompat access$202(ActionBarOverlayLayout actionbaroverlaylayout, ViewPropertyAnimatorCompat viewpropertyanimatorcompat)
    {
        actionbaroverlaylayout.mCurrentActionBarBottomAnimator = viewpropertyanimatorcompat;
        return viewpropertyanimatorcompat;
    }

*/





}
