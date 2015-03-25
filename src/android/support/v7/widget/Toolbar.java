// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.MarginLayoutParamsCompat;
import android.support.v4.view.MenuItemCompat;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ViewCompat;
import android.support.v7.internal.view.SupportMenuInflater;
import android.support.v7.internal.view.menu.MenuBuilder;
import android.support.v7.internal.view.menu.MenuItemImpl;
import android.support.v7.internal.view.menu.MenuPresenter;
import android.support.v7.internal.view.menu.MenuView;
import android.support.v7.internal.view.menu.SubMenuBuilder;
import android.support.v7.internal.widget.DecorToolbar;
import android.support.v7.internal.widget.RtlSpacingHelper;
import android.support.v7.internal.widget.TintManager;
import android.support.v7.internal.widget.TintTypedArray;
import android.support.v7.internal.widget.ToolbarWidgetWrapper;
import android.support.v7.internal.widget.ViewUtils;
import android.support.v7.view.CollapsibleActionView;
import android.text.Layout;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package android.support.v7.widget:
//            ActionMenuView, ActionMenuPresenter

public class Toolbar extends ViewGroup
{
    private class ExpandedActionViewMenuPresenter
        implements MenuPresenter
    {

        MenuItemImpl mCurrentExpandedItem;
        MenuBuilder mMenu;
        final Toolbar this$0;

        public boolean collapseItemActionView(MenuBuilder menubuilder, MenuItemImpl menuitemimpl)
        {
            if (mExpandedActionView instanceof CollapsibleActionView)
            {
                ((CollapsibleActionView)mExpandedActionView).onActionViewCollapsed();
            }
            removeView(mExpandedActionView);
            removeView(mCollapseButtonView);
            mExpandedActionView = null;
            setChildVisibilityForExpandedActionView(false);
            mCurrentExpandedItem = null;
            requestLayout();
            menuitemimpl.setActionViewExpanded(false);
            return true;
        }

        public boolean expandItemActionView(MenuBuilder menubuilder, MenuItemImpl menuitemimpl)
        {
            ensureCollapseButtonView();
            if (mCollapseButtonView.getParent() != Toolbar.this)
            {
                addView(mCollapseButtonView);
            }
            mExpandedActionView = menuitemimpl.getActionView();
            mCurrentExpandedItem = menuitemimpl;
            if (mExpandedActionView.getParent() != Toolbar.this)
            {
                LayoutParams layoutparams = generateDefaultLayoutParams();
                layoutparams.gravity = 0x800003 | 0x70 & mButtonGravity;
                layoutparams.mViewType = 2;
                mExpandedActionView.setLayoutParams(layoutparams);
                addView(mExpandedActionView);
            }
            setChildVisibilityForExpandedActionView(true);
            requestLayout();
            menuitemimpl.setActionViewExpanded(true);
            if (mExpandedActionView instanceof CollapsibleActionView)
            {
                ((CollapsibleActionView)mExpandedActionView).onActionViewExpanded();
            }
            return true;
        }

        public boolean flagActionItems()
        {
            return false;
        }

        public int getId()
        {
            return 0;
        }

        public MenuView getMenuView(ViewGroup viewgroup)
        {
            return null;
        }

        public void initForMenu(Context context, MenuBuilder menubuilder)
        {
            if (mMenu != null && mCurrentExpandedItem != null)
            {
                mMenu.collapseItemActionView(mCurrentExpandedItem);
            }
            mMenu = menubuilder;
        }

        public void onCloseMenu(MenuBuilder menubuilder, boolean flag)
        {
        }

        public void onRestoreInstanceState(Parcelable parcelable)
        {
        }

        public Parcelable onSaveInstanceState()
        {
            return null;
        }

        public boolean onSubMenuSelected(SubMenuBuilder submenubuilder)
        {
            return false;
        }

        public void setCallback(android.support.v7.internal.view.menu.MenuPresenter.Callback callback)
        {
        }

        public void updateMenuView(boolean flag)
        {
            if (mCurrentExpandedItem == null) goto _L2; else goto _L1
_L1:
            MenuBuilder menubuilder;
            boolean flag1;
            menubuilder = mMenu;
            flag1 = false;
            if (menubuilder == null) goto _L4; else goto _L3
_L3:
            int i;
            int j;
            i = mMenu.size();
            j = 0;
_L9:
            flag1 = false;
            if (j >= i) goto _L4; else goto _L5
_L5:
            if (mMenu.getItem(j) != mCurrentExpandedItem) goto _L7; else goto _L6
_L6:
            flag1 = true;
_L4:
            if (!flag1)
            {
                collapseItemActionView(mMenu, mCurrentExpandedItem);
            }
_L2:
            return;
_L7:
            j++;
            if (true) goto _L9; else goto _L8
_L8:
        }

        private ExpandedActionViewMenuPresenter()
        {
            this$0 = Toolbar.this;
            super();
        }

    }

    public static class LayoutParams extends android.support.v7.app.ActionBar.LayoutParams
    {

        static final int CUSTOM = 0;
        static final int EXPANDED = 2;
        static final int SYSTEM = 1;
        int mViewType;

        void copyMarginsFromCompat(android.view.ViewGroup.MarginLayoutParams marginlayoutparams)
        {
            leftMargin = marginlayoutparams.leftMargin;
            topMargin = marginlayoutparams.topMargin;
            rightMargin = marginlayoutparams.rightMargin;
            bottomMargin = marginlayoutparams.bottomMargin;
        }

        public LayoutParams(int i)
        {
            this(-2, -1, i);
        }

        public LayoutParams(int i, int j)
        {
            super(i, j);
            mViewType = 0;
            gravity = 0x800013;
        }

        public LayoutParams(int i, int j, int k)
        {
            super(i, j);
            mViewType = 0;
            gravity = k;
        }

        public LayoutParams(Context context, AttributeSet attributeset)
        {
            super(context, attributeset);
            mViewType = 0;
        }

        public LayoutParams(android.support.v7.app.ActionBar.LayoutParams layoutparams)
        {
            super(layoutparams);
            mViewType = 0;
        }

        public LayoutParams(LayoutParams layoutparams)
        {
            super(layoutparams);
            mViewType = 0;
            mViewType = layoutparams.mViewType;
        }

        public LayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
        {
            super(layoutparams);
            mViewType = 0;
        }

        public LayoutParams(android.view.ViewGroup.MarginLayoutParams marginlayoutparams)
        {
            super(marginlayoutparams);
            mViewType = 0;
            copyMarginsFromCompat(marginlayoutparams);
        }
    }

    public static interface OnMenuItemClickListener
    {

        public abstract boolean onMenuItemClick(MenuItem menuitem);
    }

    static class SavedState extends android.view.View.BaseSavedState
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
        public int expandedMenuItemId;
        public boolean isOverflowOpen;

        public void writeToParcel(Parcel parcel, int i)
        {
            super.writeToParcel(parcel, i);
            parcel.writeInt(expandedMenuItemId);
            int j;
            if (isOverflowOpen)
            {
                j = 1;
            } else
            {
                j = 0;
            }
            parcel.writeInt(j);
        }


        public SavedState(Parcel parcel)
        {
            super(parcel);
            expandedMenuItemId = parcel.readInt();
            boolean flag;
            if (parcel.readInt() != 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            isOverflowOpen = flag;
        }

        public SavedState(Parcelable parcelable)
        {
            super(parcelable);
        }
    }


    private static final String TAG = "Toolbar";
    private android.support.v7.internal.view.menu.MenuPresenter.Callback mActionMenuPresenterCallback;
    private int mButtonGravity;
    private ImageButton mCollapseButtonView;
    private CharSequence mCollapseDescription;
    private Drawable mCollapseIcon;
    private boolean mCollapsible;
    private final RtlSpacingHelper mContentInsets;
    private boolean mEatingTouch;
    View mExpandedActionView;
    private ExpandedActionViewMenuPresenter mExpandedMenuPresenter;
    private int mGravity;
    private ImageView mLogoView;
    private int mMaxButtonHeight;
    private android.support.v7.internal.view.menu.MenuBuilder.Callback mMenuBuilderCallback;
    private ActionMenuView mMenuView;
    private final ActionMenuView.OnMenuItemClickListener mMenuViewItemClickListener;
    private int mMinHeight;
    private ImageButton mNavButtonView;
    private OnMenuItemClickListener mOnMenuItemClickListener;
    private ActionMenuPresenter mOuterActionMenuPresenter;
    private Context mPopupContext;
    private int mPopupTheme;
    private final Runnable mShowOverflowMenuRunnable;
    private CharSequence mSubtitleText;
    private int mSubtitleTextAppearance;
    private int mSubtitleTextColor;
    private TextView mSubtitleTextView;
    private final int mTempMargins[];
    private final ArrayList mTempViews;
    private final TintManager mTintManager;
    private int mTitleMarginBottom;
    private int mTitleMarginEnd;
    private int mTitleMarginStart;
    private int mTitleMarginTop;
    private CharSequence mTitleText;
    private int mTitleTextAppearance;
    private int mTitleTextColor;
    private TextView mTitleTextView;
    private ToolbarWidgetWrapper mWrapper;

    public Toolbar(Context context)
    {
        this(context, null);
    }

    public Toolbar(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, android.support.v7.appcompat.R.attr.toolbarStyle);
    }

    public Toolbar(Context context, AttributeSet attributeset, int i)
    {
        super(themifyContext(context, attributeset, i), attributeset, i);
        mContentInsets = new RtlSpacingHelper();
        mGravity = 0x800013;
        mTempViews = new ArrayList();
        mTempMargins = new int[2];
        ActionMenuView.OnMenuItemClickListener onmenuitemclicklistener = new ActionMenuView.OnMenuItemClickListener() {

            final Toolbar this$0;

            public boolean onMenuItemClick(MenuItem menuitem)
            {
                if (mOnMenuItemClickListener != null)
                {
                    return mOnMenuItemClickListener.onMenuItemClick(menuitem);
                } else
                {
                    return false;
                }
            }

            
            {
                this$0 = Toolbar.this;
                super();
            }
        };
        mMenuViewItemClickListener = onmenuitemclicklistener;
        Runnable runnable = new Runnable() {

            final Toolbar this$0;

            public void run()
            {
                showOverflowMenu();
            }

            
            {
                this$0 = Toolbar.this;
                super();
            }
        };
        mShowOverflowMenuRunnable = runnable;
        TintTypedArray tinttypedarray = TintTypedArray.obtainStyledAttributes(getContext(), attributeset, android.support.v7.appcompat.R.styleable.Toolbar, i, 0);
        mTitleTextAppearance = tinttypedarray.getResourceId(android.support.v7.appcompat.R.styleable.Toolbar_titleTextAppearance, 0);
        mSubtitleTextAppearance = tinttypedarray.getResourceId(android.support.v7.appcompat.R.styleable.Toolbar_subtitleTextAppearance, 0);
        mGravity = tinttypedarray.getInteger(android.support.v7.appcompat.R.styleable.Toolbar_android_gravity, mGravity);
        mButtonGravity = 48;
        int j = tinttypedarray.getDimensionPixelOffset(android.support.v7.appcompat.R.styleable.Toolbar_titleMargins, 0);
        mTitleMarginBottom = j;
        mTitleMarginTop = j;
        mTitleMarginEnd = j;
        mTitleMarginStart = j;
        int k = tinttypedarray.getDimensionPixelOffset(android.support.v7.appcompat.R.styleable.Toolbar_titleMarginStart, -1);
        if (k >= 0)
        {
            mTitleMarginStart = k;
        }
        int l = tinttypedarray.getDimensionPixelOffset(android.support.v7.appcompat.R.styleable.Toolbar_titleMarginEnd, -1);
        if (l >= 0)
        {
            mTitleMarginEnd = l;
        }
        int i1 = tinttypedarray.getDimensionPixelOffset(android.support.v7.appcompat.R.styleable.Toolbar_titleMarginTop, -1);
        if (i1 >= 0)
        {
            mTitleMarginTop = i1;
        }
        int j1 = tinttypedarray.getDimensionPixelOffset(android.support.v7.appcompat.R.styleable.Toolbar_titleMarginBottom, -1);
        if (j1 >= 0)
        {
            mTitleMarginBottom = j1;
        }
        mMaxButtonHeight = tinttypedarray.getDimensionPixelSize(android.support.v7.appcompat.R.styleable.Toolbar_maxButtonHeight, -1);
        int k1 = tinttypedarray.getDimensionPixelOffset(android.support.v7.appcompat.R.styleable.Toolbar_contentInsetStart, 0x80000000);
        int l1 = tinttypedarray.getDimensionPixelOffset(android.support.v7.appcompat.R.styleable.Toolbar_contentInsetEnd, 0x80000000);
        int i2 = tinttypedarray.getDimensionPixelSize(android.support.v7.appcompat.R.styleable.Toolbar_contentInsetLeft, 0);
        int j2 = tinttypedarray.getDimensionPixelSize(android.support.v7.appcompat.R.styleable.Toolbar_contentInsetRight, 0);
        mContentInsets.setAbsolute(i2, j2);
        if (k1 != 0x80000000 || l1 != 0x80000000)
        {
            mContentInsets.setRelative(k1, l1);
        }
        mCollapseIcon = tinttypedarray.getDrawable(android.support.v7.appcompat.R.styleable.Toolbar_collapseIcon);
        mCollapseDescription = tinttypedarray.getText(android.support.v7.appcompat.R.styleable.Toolbar_collapseContentDescription);
        CharSequence charsequence = tinttypedarray.getText(android.support.v7.appcompat.R.styleable.Toolbar_title);
        if (!TextUtils.isEmpty(charsequence))
        {
            setTitle(charsequence);
        }
        CharSequence charsequence1 = tinttypedarray.getText(android.support.v7.appcompat.R.styleable.Toolbar_subtitle);
        if (!TextUtils.isEmpty(charsequence1))
        {
            setSubtitle(charsequence1);
        }
        mPopupContext = getContext();
        setPopupTheme(tinttypedarray.getResourceId(android.support.v7.appcompat.R.styleable.Toolbar_popupTheme, 0));
        Drawable drawable = tinttypedarray.getDrawable(android.support.v7.appcompat.R.styleable.Toolbar_navigationIcon);
        if (drawable != null)
        {
            setNavigationIcon(drawable);
        }
        CharSequence charsequence2 = tinttypedarray.getText(android.support.v7.appcompat.R.styleable.Toolbar_navigationContentDescription);
        if (!TextUtils.isEmpty(charsequence2))
        {
            setNavigationContentDescription(charsequence2);
        }
        mMinHeight = tinttypedarray.getDimensionPixelSize(android.support.v7.appcompat.R.styleable.Toolbar_android_minHeight, 0);
        tinttypedarray.recycle();
        mTintManager = tinttypedarray.getTintManager();
    }

    private void addCustomViewsWithGravity(List list, int i)
    {
        int j = 1;
        int k;
        int l;
        if (ViewCompat.getLayoutDirection(this) != j)
        {
            j = 0;
        }
        k = getChildCount();
        l = GravityCompat.getAbsoluteGravity(i, ViewCompat.getLayoutDirection(this));
        list.clear();
        if (j != 0)
        {
            for (int j1 = k - 1; j1 >= 0; j1--)
            {
                View view1 = getChildAt(j1);
                LayoutParams layoutparams1 = (LayoutParams)view1.getLayoutParams();
                if (layoutparams1.mViewType == 0 && shouldLayout(view1) && getChildHorizontalGravity(layoutparams1.gravity) == l)
                {
                    list.add(view1);
                }
            }

        } else
        {
            for (int i1 = 0; i1 < k; i1++)
            {
                View view = getChildAt(i1);
                LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
                if (layoutparams.mViewType == 0 && shouldLayout(view) && getChildHorizontalGravity(layoutparams.gravity) == l)
                {
                    list.add(view);
                }
            }

        }
    }

    private void addSystemView(View view)
    {
        android.view.ViewGroup.LayoutParams layoutparams = view.getLayoutParams();
        LayoutParams layoutparams1;
        if (layoutparams == null)
        {
            layoutparams1 = generateDefaultLayoutParams();
        } else
        if (!checkLayoutParams(layoutparams))
        {
            layoutparams1 = generateLayoutParams(layoutparams);
        } else
        {
            layoutparams1 = (LayoutParams)layoutparams;
        }
        layoutparams1.mViewType = 1;
        addView(view, layoutparams1);
    }

    private void ensureCollapseButtonView()
    {
        if (mCollapseButtonView == null)
        {
            mCollapseButtonView = new ImageButton(getContext(), null, android.support.v7.appcompat.R.attr.toolbarNavigationButtonStyle);
            mCollapseButtonView.setImageDrawable(mCollapseIcon);
            mCollapseButtonView.setContentDescription(mCollapseDescription);
            LayoutParams layoutparams = generateDefaultLayoutParams();
            layoutparams.gravity = 0x800003 | 0x70 & mButtonGravity;
            layoutparams.mViewType = 2;
            mCollapseButtonView.setLayoutParams(layoutparams);
            mCollapseButtonView.setOnClickListener(new android.view.View.OnClickListener() {

                final Toolbar this$0;

                public void onClick(View view)
                {
                    collapseActionView();
                }

            
            {
                this$0 = Toolbar.this;
                super();
            }
            });
        }
    }

    private void ensureLogoView()
    {
        if (mLogoView == null)
        {
            mLogoView = new ImageView(getContext());
        }
    }

    private void ensureMenu()
    {
        ensureMenuView();
        if (mMenuView.peekMenu() == null)
        {
            MenuBuilder menubuilder = (MenuBuilder)mMenuView.getMenu();
            if (mExpandedMenuPresenter == null)
            {
                mExpandedMenuPresenter = new ExpandedActionViewMenuPresenter();
            }
            mMenuView.setExpandedActionViewsExclusive(true);
            menubuilder.addMenuPresenter(mExpandedMenuPresenter, mPopupContext);
        }
    }

    private void ensureMenuView()
    {
        if (mMenuView == null)
        {
            mMenuView = new ActionMenuView(getContext());
            mMenuView.setPopupTheme(mPopupTheme);
            mMenuView.setOnMenuItemClickListener(mMenuViewItemClickListener);
            mMenuView.setMenuCallbacks(mActionMenuPresenterCallback, mMenuBuilderCallback);
            LayoutParams layoutparams = generateDefaultLayoutParams();
            layoutparams.gravity = 0x800005 | 0x70 & mButtonGravity;
            mMenuView.setLayoutParams(layoutparams);
            addSystemView(mMenuView);
        }
    }

    private void ensureNavButtonView()
    {
        if (mNavButtonView == null)
        {
            mNavButtonView = new ImageButton(getContext(), null, android.support.v7.appcompat.R.attr.toolbarNavigationButtonStyle);
            LayoutParams layoutparams = generateDefaultLayoutParams();
            layoutparams.gravity = 0x800003 | 0x70 & mButtonGravity;
            mNavButtonView.setLayoutParams(layoutparams);
        }
    }

    private int getChildHorizontalGravity(int i)
    {
        int j = ViewCompat.getLayoutDirection(this);
        int k = 7 & GravityCompat.getAbsoluteGravity(i, j);
        switch (k)
        {
        case 2: // '\002'
        case 4: // '\004'
        default:
            byte byte0;
            if (j == 1)
            {
                byte0 = 5;
            } else
            {
                byte0 = 3;
            }
            k = byte0;
            // fall through

        case 1: // '\001'
        case 3: // '\003'
        case 5: // '\005'
            return k;
        }
    }

    private int getChildTop(View view, int i)
    {
        LayoutParams layoutparams;
        int j;
        int k;
        int l;
        int i1;
        int j1;
        int k1;
        layoutparams = (LayoutParams)view.getLayoutParams();
        j = view.getMeasuredHeight();
        if (i > 0)
        {
            k = (j - i) / 2;
        } else
        {
            k = 0;
        }
        getChildVerticalGravity(layoutparams.gravity);
        JVM INSTR lookupswitch 2: default 60
    //                   48: 120
    //                   80: 128;
           goto _L1 _L2 _L3
_L1:
        l = getPaddingTop();
        i1 = getPaddingBottom();
        j1 = getHeight();
        k1 = (j1 - l - i1 - j) / 2;
        if (k1 >= layoutparams.topMargin) goto _L5; else goto _L4
_L4:
        k1 = layoutparams.topMargin;
_L7:
        return l + k1;
_L2:
        return getPaddingTop() - k;
_L3:
        return getHeight() - getPaddingBottom() - j - layoutparams.bottomMargin - k;
_L5:
        int l1 = j1 - i1 - j - k1 - l;
        if (l1 < layoutparams.bottomMargin)
        {
            k1 = Math.max(0, k1 - (layoutparams.bottomMargin - l1));
        }
        if (true) goto _L7; else goto _L6
_L6:
    }

    private int getChildVerticalGravity(int i)
    {
        int j = i & 0x70;
        switch (j)
        {
        default:
            j = 0x70 & mGravity;
            // fall through

        case 16: // '\020'
        case 48: // '0'
        case 80: // 'P'
            return j;
        }
    }

    private int getHorizontalMargins(View view)
    {
        android.view.ViewGroup.MarginLayoutParams marginlayoutparams = (android.view.ViewGroup.MarginLayoutParams)view.getLayoutParams();
        return MarginLayoutParamsCompat.getMarginStart(marginlayoutparams) + MarginLayoutParamsCompat.getMarginEnd(marginlayoutparams);
    }

    private MenuInflater getMenuInflater()
    {
        return new SupportMenuInflater(getContext());
    }

    private int getMinimumHeightCompat()
    {
        if (android.os.Build.VERSION.SDK_INT >= 16)
        {
            return ViewCompat.getMinimumHeight(this);
        } else
        {
            return mMinHeight;
        }
    }

    private int getVerticalMargins(View view)
    {
        android.view.ViewGroup.MarginLayoutParams marginlayoutparams = (android.view.ViewGroup.MarginLayoutParams)view.getLayoutParams();
        return marginlayoutparams.topMargin + marginlayoutparams.bottomMargin;
    }

    private int getViewListMeasuredWidth(List list, int ai[])
    {
        int i = ai[0];
        int j = ai[1];
        int k = 0;
        int l = list.size();
        for (int i1 = 0; i1 < l; i1++)
        {
            View view = (View)list.get(i1);
            LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
            int j1 = layoutparams.leftMargin - i;
            int k1 = layoutparams.rightMargin - j;
            int l1 = Math.max(0, j1);
            int i2 = Math.max(0, k1);
            i = Math.max(0, -j1);
            j = Math.max(0, -k1);
            k += i2 + (l1 + view.getMeasuredWidth());
        }

        return k;
    }

    private static boolean isCustomView(View view)
    {
        return ((LayoutParams)view.getLayoutParams()).mViewType == 0;
    }

    private int layoutChildLeft(View view, int i, int ai[], int j)
    {
        LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
        int k = layoutparams.leftMargin - ai[0];
        int l = i + Math.max(0, k);
        ai[0] = Math.max(0, -k);
        int i1 = getChildTop(view, j);
        int j1 = view.getMeasuredWidth();
        view.layout(l, i1, l + j1, i1 + view.getMeasuredHeight());
        return l + (j1 + layoutparams.rightMargin);
    }

    private int layoutChildRight(View view, int i, int ai[], int j)
    {
        LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
        int k = layoutparams.rightMargin - ai[1];
        int l = i - Math.max(0, k);
        ai[1] = Math.max(0, -k);
        int i1 = getChildTop(view, j);
        int j1 = view.getMeasuredWidth();
        view.layout(l - j1, i1, l, i1 + view.getMeasuredHeight());
        return l - (j1 + layoutparams.leftMargin);
    }

    private int measureChildCollapseMargins(View view, int i, int j, int k, int l, int ai[])
    {
        android.view.ViewGroup.MarginLayoutParams marginlayoutparams = (android.view.ViewGroup.MarginLayoutParams)view.getLayoutParams();
        int i1 = marginlayoutparams.leftMargin - ai[0];
        int j1 = marginlayoutparams.rightMargin - ai[1];
        int k1 = Math.max(0, i1) + Math.max(0, j1);
        ai[0] = Math.max(0, -i1);
        ai[1] = Math.max(0, -j1);
        view.measure(getChildMeasureSpec(i, j + (k1 + (getPaddingLeft() + getPaddingRight())), marginlayoutparams.width), getChildMeasureSpec(k, l + (getPaddingTop() + getPaddingBottom() + marginlayoutparams.topMargin + marginlayoutparams.bottomMargin), marginlayoutparams.height));
        return k1 + view.getMeasuredWidth();
    }

    private void measureChildConstrained(View view, int i, int j, int k, int l, int i1)
    {
        android.view.ViewGroup.MarginLayoutParams marginlayoutparams = (android.view.ViewGroup.MarginLayoutParams)view.getLayoutParams();
        int j1 = getChildMeasureSpec(i, j + (getPaddingLeft() + getPaddingRight() + marginlayoutparams.leftMargin + marginlayoutparams.rightMargin), marginlayoutparams.width);
        int k1 = getChildMeasureSpec(k, l + (getPaddingTop() + getPaddingBottom() + marginlayoutparams.topMargin + marginlayoutparams.bottomMargin), marginlayoutparams.height);
        int l1 = android.view.View.MeasureSpec.getMode(k1);
        if (l1 != 0x40000000 && i1 >= 0)
        {
            int i2;
            if (l1 != 0)
            {
                i2 = Math.min(android.view.View.MeasureSpec.getSize(k1), i1);
            } else
            {
                i2 = i1;
            }
            k1 = android.view.View.MeasureSpec.makeMeasureSpec(i2, 0x40000000);
        }
        view.measure(j1, k1);
    }

    private void postShowOverflowMenu()
    {
        removeCallbacks(mShowOverflowMenuRunnable);
        post(mShowOverflowMenuRunnable);
    }

    private void setChildVisibilityForExpandedActionView(boolean flag)
    {
        int i = getChildCount();
        int j = 0;
        while (j < i) 
        {
            View view = getChildAt(j);
            if (((LayoutParams)view.getLayoutParams()).mViewType != 2 && view != mMenuView)
            {
                byte byte0;
                if (flag)
                {
                    byte0 = 8;
                } else
                {
                    byte0 = 0;
                }
                view.setVisibility(byte0);
            }
            j++;
        }
    }

    private boolean shouldCollapse()
    {
        if (mCollapsible) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        int i = getChildCount();
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
                View view = getChildAt(j);
                if (shouldLayout(view) && view.getMeasuredWidth() > 0 && view.getMeasuredHeight() > 0)
                {
                    break label0;
                }
                j++;
            }
        } while (true);
        if (true) goto _L1; else goto _L3
_L3:
        return true;
    }

    private boolean shouldLayout(View view)
    {
        return view != null && view.getParent() == this && view.getVisibility() != 8;
    }

    private static Context themifyContext(Context context, AttributeSet attributeset, int i)
    {
        TypedArray typedarray = context.obtainStyledAttributes(attributeset, android.support.v7.appcompat.R.styleable.Toolbar, i, 0);
        int j = typedarray.getResourceId(android.support.v7.appcompat.R.styleable.Toolbar_theme, 0);
        if (j != 0)
        {
            context = new ContextThemeWrapper(context, j);
        }
        typedarray.recycle();
        return context;
    }

    private void updateChildVisibilityForExpandedActionView(View view)
    {
        if (((LayoutParams)view.getLayoutParams()).mViewType != 2 && view != mMenuView)
        {
            byte byte0;
            if (mExpandedActionView != null)
            {
                byte0 = 8;
            } else
            {
                byte0 = 0;
            }
            view.setVisibility(byte0);
        }
    }

    public boolean canShowOverflowMenu()
    {
        return getVisibility() == 0 && mMenuView != null && mMenuView.isOverflowReserved();
    }

    protected boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
    {
        return super.checkLayoutParams(layoutparams) && (layoutparams instanceof LayoutParams);
    }

    public void collapseActionView()
    {
        MenuItemImpl menuitemimpl;
        if (mExpandedMenuPresenter == null)
        {
            menuitemimpl = null;
        } else
        {
            menuitemimpl = mExpandedMenuPresenter.mCurrentExpandedItem;
        }
        if (menuitemimpl != null)
        {
            menuitemimpl.collapseActionView();
        }
    }

    public void dismissPopupMenus()
    {
        if (mMenuView != null)
        {
            mMenuView.dismissPopupMenus();
        }
    }

    protected LayoutParams generateDefaultLayoutParams()
    {
        return new LayoutParams(-2, -2);
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
        if (layoutparams instanceof LayoutParams)
        {
            return new LayoutParams((LayoutParams)layoutparams);
        }
        if (layoutparams instanceof android.support.v7.app.ActionBar.LayoutParams)
        {
            return new LayoutParams((android.support.v7.app.ActionBar.LayoutParams)layoutparams);
        }
        if (layoutparams instanceof android.view.ViewGroup.MarginLayoutParams)
        {
            return new LayoutParams((android.view.ViewGroup.MarginLayoutParams)layoutparams);
        } else
        {
            return new LayoutParams(layoutparams);
        }
    }

    public volatile android.view.ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeset)
    {
        return generateLayoutParams(attributeset);
    }

    protected volatile android.view.ViewGroup.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
    {
        return generateLayoutParams(layoutparams);
    }

    public int getContentInsetEnd()
    {
        return mContentInsets.getEnd();
    }

    public int getContentInsetLeft()
    {
        return mContentInsets.getLeft();
    }

    public int getContentInsetRight()
    {
        return mContentInsets.getRight();
    }

    public int getContentInsetStart()
    {
        return mContentInsets.getStart();
    }

    public Drawable getLogo()
    {
        if (mLogoView != null)
        {
            return mLogoView.getDrawable();
        } else
        {
            return null;
        }
    }

    public CharSequence getLogoDescription()
    {
        if (mLogoView != null)
        {
            return mLogoView.getContentDescription();
        } else
        {
            return null;
        }
    }

    public Menu getMenu()
    {
        ensureMenu();
        return mMenuView.getMenu();
    }

    public CharSequence getNavigationContentDescription()
    {
        if (mNavButtonView != null)
        {
            return mNavButtonView.getContentDescription();
        } else
        {
            return null;
        }
    }

    public Drawable getNavigationIcon()
    {
        if (mNavButtonView != null)
        {
            return mNavButtonView.getDrawable();
        } else
        {
            return null;
        }
    }

    public int getPopupTheme()
    {
        return mPopupTheme;
    }

    public CharSequence getSubtitle()
    {
        return mSubtitleText;
    }

    public CharSequence getTitle()
    {
        return mTitleText;
    }

    public DecorToolbar getWrapper()
    {
        if (mWrapper == null)
        {
            mWrapper = new ToolbarWidgetWrapper(this, true);
        }
        return mWrapper;
    }

    public boolean hasExpandedActionView()
    {
        return mExpandedMenuPresenter != null && mExpandedMenuPresenter.mCurrentExpandedItem != null;
    }

    public boolean hideOverflowMenu()
    {
        return mMenuView != null && mMenuView.hideOverflowMenu();
    }

    public void inflateMenu(int i)
    {
        getMenuInflater().inflate(i, getMenu());
    }

    public boolean isOverflowMenuShowPending()
    {
        return mMenuView != null && mMenuView.isOverflowMenuShowPending();
    }

    public boolean isOverflowMenuShowing()
    {
        return mMenuView != null && mMenuView.isOverflowMenuShowing();
    }

    public boolean isTitleTruncated()
    {
        if (mTitleTextView != null) goto _L2; else goto _L1
_L1:
        Layout layout;
        return false;
_L2:
        if ((layout = mTitleTextView.getLayout()) != null)
        {
            int i = layout.getLineCount();
            int j = 0;
            while (j < i) 
            {
                if (layout.getEllipsisCount(j) > 0)
                {
                    return true;
                }
                j++;
            }
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    protected void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        removeCallbacks(mShowOverflowMenuRunnable);
    }

    protected void onLayout(boolean flag, int i, int j, int k, int l)
    {
        int i1;
        int j1;
        int k1;
        int l1;
        int i2;
        int j2;
        int ai[];
        int i3;
        int k3;
        int i4;
        boolean flag2;
        boolean flag3;
        int j4;
        LayoutParams layoutparams;
        LayoutParams layoutparams1;
        boolean flag4;
        int k4;
        boolean flag1;
        int k2;
        int l2;
        int j3;
        int l3;
        int l5;
        int i6;
        int k9;
        int l9;
        int i10;
        LayoutParams layoutparams4;
        int j10;
        int k10;
        int l10;
        LayoutParams layoutparams5;
        int i11;
        int j11;
        int l11;
        if (ViewCompat.getLayoutDirection(this) == 1)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        i1 = getWidth();
        j1 = getHeight();
        k1 = getPaddingLeft();
        l1 = getPaddingRight();
        i2 = getPaddingTop();
        j2 = getPaddingBottom();
        k2 = k1;
        l2 = i1 - l1;
        ai = mTempMargins;
        ai[1] = 0;
        ai[0] = 0;
        i3 = getMinimumHeightCompat();
        if (shouldLayout(mNavButtonView))
        {
            if (flag1)
            {
                l2 = layoutChildRight(mNavButtonView, l2, ai, i3);
            } else
            {
                k2 = layoutChildLeft(mNavButtonView, k2, ai, i3);
            }
        }
        if (shouldLayout(mCollapseButtonView))
        {
            if (flag1)
            {
                l2 = layoutChildRight(mCollapseButtonView, l2, ai, i3);
            } else
            {
                k2 = layoutChildLeft(mCollapseButtonView, k2, ai, i3);
            }
        }
        if (shouldLayout(mMenuView))
        {
            if (flag1)
            {
                k2 = layoutChildLeft(mMenuView, k2, ai, i3);
            } else
            {
                l2 = layoutChildRight(mMenuView, l2, ai, i3);
            }
        }
        ai[0] = Math.max(0, getContentInsetLeft() - k2);
        ai[1] = Math.max(0, getContentInsetRight() - (i1 - l1 - l2));
        j3 = getContentInsetLeft();
        k3 = Math.max(k2, j3);
        l3 = i1 - l1 - getContentInsetRight();
        i4 = Math.min(l2, l3);
        if (shouldLayout(mExpandedActionView))
        {
            if (flag1)
            {
                i4 = layoutChildRight(mExpandedActionView, i4, ai, i3);
            } else
            {
                k3 = layoutChildLeft(mExpandedActionView, k3, ai, i3);
            }
        }
        if (shouldLayout(mLogoView))
        {
            if (flag1)
            {
                i4 = layoutChildRight(mLogoView, i4, ai, i3);
            } else
            {
                k3 = layoutChildLeft(mLogoView, k3, ai, i3);
            }
        }
        flag2 = shouldLayout(mTitleTextView);
        flag3 = shouldLayout(mSubtitleTextView);
        j4 = 0;
        if (flag2)
        {
            LayoutParams layoutparams7 = (LayoutParams)mTitleTextView.getLayoutParams();
            j4 = 0 + (layoutparams7.topMargin + mTitleTextView.getMeasuredHeight() + layoutparams7.bottomMargin);
        }
        if (flag3)
        {
            LayoutParams layoutparams6 = (LayoutParams)mSubtitleTextView.getLayoutParams();
            j4 += layoutparams6.topMargin + mSubtitleTextView.getMeasuredHeight() + layoutparams6.bottomMargin;
        }
        if (!flag2 && !flag3) goto _L2; else goto _L1
_L1:
        TextView textview;
        TextView textview1;
        if (flag2)
        {
            textview = mTitleTextView;
        } else
        {
            textview = mSubtitleTextView;
        }
        if (flag3)
        {
            textview1 = mSubtitleTextView;
        } else
        {
            textview1 = mTitleTextView;
        }
        layoutparams = (LayoutParams)textview.getLayoutParams();
        layoutparams1 = (LayoutParams)textview1.getLayoutParams();
        if (flag2 && mTitleTextView.getMeasuredWidth() > 0 || flag3 && mSubtitleTextView.getMeasuredWidth() > 0)
        {
            flag4 = true;
        } else
        {
            flag4 = false;
        }
        0x70 & mGravity;
        JVM INSTR lookupswitch 2: default 536
    //                   48: 1000
    //                   80: 1076;
           goto _L3 _L4 _L5
_L3:
        int k11 = (j1 - i2 - j2 - j4) / 2;
        l11 = layoutparams.topMargin + mTitleMarginTop;
        if (k11 < l11)
        {
            k11 = layoutparams.topMargin + mTitleMarginTop;
        } else
        {
            int i12 = j1 - j2 - j4 - k11 - i2;
            if (i12 < layoutparams.bottomMargin + mTitleMarginBottom)
            {
                k11 = Math.max(0, k11 - ((layoutparams1.bottomMargin + mTitleMarginBottom) - i12));
            }
        }
        k4 = i2 + k11;
_L12:
        if (flag1)
        {
            int j9;
            if (flag4)
            {
                j9 = mTitleMarginStart;
            } else
            {
                j9 = 0;
            }
            k9 = j9 - ai[1];
            i4 -= Math.max(0, k9);
            ai[1] = Math.max(0, -k9);
            l9 = i4;
            i10 = i4;
            if (flag2)
            {
                layoutparams5 = (LayoutParams)mTitleTextView.getLayoutParams();
                i11 = l9 - mTitleTextView.getMeasuredWidth();
                j11 = k4 + mTitleTextView.getMeasuredHeight();
                mTitleTextView.layout(i11, k4, l9, j11);
                l9 = i11 - mTitleMarginEnd;
                k4 = j11 + layoutparams5.bottomMargin;
            }
            if (flag3)
            {
                layoutparams4 = (LayoutParams)mSubtitleTextView.getLayoutParams();
                j10 = k4 + layoutparams4.topMargin;
                k10 = i10 - mSubtitleTextView.getMeasuredWidth();
                l10 = j10 + mSubtitleTextView.getMeasuredHeight();
                mSubtitleTextView.layout(k10, j10, i10, l10);
                i10 -= mTitleMarginEnd;
                l10 + layoutparams4.bottomMargin;
            }
            if (flag4)
            {
                i4 = Math.min(l9, i10);
            }
        } else
        {
            int l4;
            int i5;
            int j5;
            int k5;
            if (flag4)
            {
                l4 = mTitleMarginStart;
            } else
            {
                l4 = 0;
            }
            i5 = l4 - ai[0];
            k3 += Math.max(0, i5);
            ai[0] = Math.max(0, -i5);
            j5 = k3;
            k5 = k3;
            if (flag2)
            {
                LayoutParams layoutparams3 = (LayoutParams)mTitleTextView.getLayoutParams();
                int l8 = j5 + mTitleTextView.getMeasuredWidth();
                int i9 = k4 + mTitleTextView.getMeasuredHeight();
                mTitleTextView.layout(j5, k4, l8, i9);
                j5 = l8 + mTitleMarginEnd;
                k4 = i9 + layoutparams3.bottomMargin;
            }
            if (flag3)
            {
                LayoutParams layoutparams2 = (LayoutParams)mSubtitleTextView.getLayoutParams();
                int i8 = k4 + layoutparams2.topMargin;
                int j8 = k5 + mSubtitleTextView.getMeasuredWidth();
                int k8 = i8 + mSubtitleTextView.getMeasuredHeight();
                mSubtitleTextView.layout(k5, i8, j8, k8);
                k5 = j8 + mTitleMarginEnd;
                k8 + layoutparams2.bottomMargin;
            }
            if (flag4)
            {
                k3 = Math.max(j5, k5);
            }
        }
_L2:
        int i7;
        int j7;
        addCustomViewsWithGravity(mTempViews, 3);
        l5 = mTempViews.size();
        for (i6 = 0; i6 < l5; i6++)
        {
            k3 = layoutChildLeft((View)mTempViews.get(i6), k3, ai, i3);
        }

        addCustomViewsWithGravity(mTempViews, 5);
        int j6 = mTempViews.size();
        for (int k6 = 0; k6 < j6; k6++)
        {
            i4 = layoutChildRight((View)mTempViews.get(k6), i4, ai, i3);
        }

        addCustomViewsWithGravity(mTempViews, 1);
        int l6 = getViewListMeasuredWidth(mTempViews, ai);
        i7 = (k1 + (i1 - k1 - l1) / 2) - l6 / 2;
        j7 = i7 + l6;
          goto _L6
_L4:
        k4 = getPaddingTop() + layoutparams.topMargin + mTitleMarginTop;
        continue; /* Loop/switch isn't completed */
_L5:
        k4 = j1 - j2 - layoutparams1.bottomMargin - mTitleMarginBottom - j4;
        continue; /* Loop/switch isn't completed */
_L6:
        if (i7 >= k3) goto _L8; else goto _L7
_L7:
        i7 = k3;
_L10:
        int k7 = mTempViews.size();
        for (int l7 = 0; l7 < k7; l7++)
        {
            i7 = layoutChildLeft((View)mTempViews.get(l7), i7, ai, i3);
        }

        break; /* Loop/switch isn't completed */
_L8:
        if (j7 > i4)
        {
            i7 -= j7 - i4;
        }
        if (true) goto _L10; else goto _L9
_L9:
        mTempViews.clear();
        return;
        if (true) goto _L12; else goto _L11
_L11:
    }

    protected void onMeasure(int i, int j)
    {
        int ai[] = mTempMargins;
        int k;
        int l;
        boolean flag;
        int i1;
        int j1;
        int k1;
        int l1;
        int i2;
        boolean flag1;
        int j2;
        int k2;
        int l2;
        int i3;
        int j3;
        if (ViewUtils.isLayoutRtl(this))
        {
            l = 1;
            k = 0;
        } else
        {
            k = 1;
            l = 0;
        }
        flag = shouldLayout(mNavButtonView);
        i1 = 0;
        j1 = 0;
        k1 = 0;
        if (flag)
        {
            measureChildConstrained(mNavButtonView, i, 0, j, 0, mMaxButtonHeight);
            k1 = mNavButtonView.getMeasuredWidth() + getHorizontalMargins(mNavButtonView);
            j1 = Math.max(0, mNavButtonView.getMeasuredHeight() + getVerticalMargins(mNavButtonView));
            i1 = ViewUtils.combineMeasuredStates(0, ViewCompat.getMeasuredState(mNavButtonView));
        }
        if (shouldLayout(mCollapseButtonView))
        {
            measureChildConstrained(mCollapseButtonView, i, 0, j, 0, mMaxButtonHeight);
            k1 = mCollapseButtonView.getMeasuredWidth() + getHorizontalMargins(mCollapseButtonView);
            int l8 = mCollapseButtonView.getMeasuredHeight() + getVerticalMargins(mCollapseButtonView);
            j1 = Math.max(j1, l8);
            int i9 = ViewCompat.getMeasuredState(mCollapseButtonView);
            i1 = ViewUtils.combineMeasuredStates(i1, i9);
        }
        l1 = getContentInsetStart();
        i2 = 0 + Math.max(l1, k1);
        ai[l] = Math.max(0, l1 - k1);
        flag1 = shouldLayout(mMenuView);
        j2 = 0;
        if (flag1)
        {
            measureChildConstrained(mMenuView, i, i2, j, 0, mMaxButtonHeight);
            j2 = mMenuView.getMeasuredWidth() + getHorizontalMargins(mMenuView);
            int j8 = mMenuView.getMeasuredHeight() + getVerticalMargins(mMenuView);
            j1 = Math.max(j1, j8);
            int k8 = ViewCompat.getMeasuredState(mMenuView);
            i1 = ViewUtils.combineMeasuredStates(i1, k8);
        }
        k2 = getContentInsetEnd();
        l2 = i2 + Math.max(k2, j2);
        ai[k] = Math.max(0, k2 - j2);
        if (shouldLayout(mExpandedActionView))
        {
            l2 += measureChildCollapseMargins(mExpandedActionView, i, l2, j, 0, ai);
            int l7 = mExpandedActionView.getMeasuredHeight() + getVerticalMargins(mExpandedActionView);
            j1 = Math.max(j1, l7);
            int i8 = ViewCompat.getMeasuredState(mExpandedActionView);
            i1 = ViewUtils.combineMeasuredStates(i1, i8);
        }
        if (shouldLayout(mLogoView))
        {
            l2 += measureChildCollapseMargins(mLogoView, i, l2, j, 0, ai);
            int j7 = mLogoView.getMeasuredHeight() + getVerticalMargins(mLogoView);
            j1 = Math.max(j1, j7);
            int k7 = ViewCompat.getMeasuredState(mLogoView);
            i1 = ViewUtils.combineMeasuredStates(i1, k7);
        }
        i3 = getChildCount();
        j3 = 0;
        while (j3 < i3) 
        {
            View view = getChildAt(j3);
            if (((LayoutParams)view.getLayoutParams()).mViewType == 0 && shouldLayout(view))
            {
                l2 += measureChildCollapseMargins(view, i, l2, j, 0, ai);
                int l6 = view.getMeasuredHeight() + getVerticalMargins(view);
                j1 = Math.max(j1, l6);
                int i7 = ViewCompat.getMeasuredState(view);
                i1 = ViewUtils.combineMeasuredStates(i1, i7);
            }
            j3++;
        }
        int k3 = mTitleMarginTop + mTitleMarginBottom;
        int l3 = mTitleMarginStart + mTitleMarginEnd;
        boolean flag2 = shouldLayout(mTitleTextView);
        int i4 = 0;
        int j4 = 0;
        if (flag2)
        {
            measureChildCollapseMargins(mTitleTextView, i, l2 + l3, j, k3, ai);
            j4 = mTitleTextView.getMeasuredWidth() + getHorizontalMargins(mTitleTextView);
            i4 = mTitleTextView.getMeasuredHeight() + getVerticalMargins(mTitleTextView);
            int k6 = ViewCompat.getMeasuredState(mTitleTextView);
            i1 = ViewUtils.combineMeasuredStates(i1, k6);
        }
        if (shouldLayout(mSubtitleTextView))
        {
            int i6 = measureChildCollapseMargins(mSubtitleTextView, i, l2 + l3, j, i4 + k3, ai);
            j4 = Math.max(j4, i6);
            i4 += mSubtitleTextView.getMeasuredHeight() + getVerticalMargins(mSubtitleTextView);
            int j6 = ViewCompat.getMeasuredState(mSubtitleTextView);
            i1 = ViewUtils.combineMeasuredStates(i1, j6);
        }
        int k4 = l2 + j4;
        int l4 = Math.max(j1, i4);
        int i5 = k4 + (getPaddingLeft() + getPaddingRight());
        int j5 = l4 + (getPaddingTop() + getPaddingBottom());
        int k5 = ViewCompat.resolveSizeAndState(Math.max(i5, getSuggestedMinimumWidth()), i, 0xff000000 & i1);
        int l5 = ViewCompat.resolveSizeAndState(Math.max(j5, getSuggestedMinimumHeight()), j, i1 << 16);
        if (shouldCollapse())
        {
            l5 = 0;
        }
        setMeasuredDimension(k5, l5);
    }

    protected void onRestoreInstanceState(Parcelable parcelable)
    {
        SavedState savedstate = (SavedState)parcelable;
        super.onRestoreInstanceState(savedstate.getSuperState());
        MenuBuilder menubuilder;
        if (mMenuView != null)
        {
            menubuilder = mMenuView.peekMenu();
        } else
        {
            menubuilder = null;
        }
        if (savedstate.expandedMenuItemId != 0 && mExpandedMenuPresenter != null && menubuilder != null)
        {
            MenuItem menuitem = menubuilder.findItem(savedstate.expandedMenuItemId);
            if (menuitem != null)
            {
                MenuItemCompat.expandActionView(menuitem);
            }
        }
        if (savedstate.isOverflowOpen)
        {
            postShowOverflowMenu();
        }
    }

    public void onRtlPropertiesChanged(int i)
    {
        boolean flag = true;
        if (android.os.Build.VERSION.SDK_INT >= 17)
        {
            super.onRtlPropertiesChanged(i);
        }
        RtlSpacingHelper rtlspacinghelper = mContentInsets;
        if (i != flag)
        {
            flag = false;
        }
        rtlspacinghelper.setDirection(flag);
    }

    protected Parcelable onSaveInstanceState()
    {
        SavedState savedstate = new SavedState(super.onSaveInstanceState());
        if (mExpandedMenuPresenter != null && mExpandedMenuPresenter.mCurrentExpandedItem != null)
        {
            savedstate.expandedMenuItemId = mExpandedMenuPresenter.mCurrentExpandedItem.getItemId();
        }
        savedstate.isOverflowOpen = isOverflowMenuShowing();
        return savedstate;
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        int i = MotionEventCompat.getActionMasked(motionevent);
        if (i == 0)
        {
            mEatingTouch = false;
        }
        if (!mEatingTouch)
        {
            boolean flag = super.onTouchEvent(motionevent);
            if (i == 0 && !flag)
            {
                mEatingTouch = true;
            }
        }
        if (i == 1 || i == 3)
        {
            mEatingTouch = false;
        }
        return true;
    }

    public void setCollapsible(boolean flag)
    {
        mCollapsible = flag;
        requestLayout();
    }

    public void setContentInsetsAbsolute(int i, int j)
    {
        mContentInsets.setAbsolute(i, j);
    }

    public void setContentInsetsRelative(int i, int j)
    {
        mContentInsets.setRelative(i, j);
    }

    public void setLogo(int i)
    {
        setLogo(mTintManager.getDrawable(i));
    }

    public void setLogo(Drawable drawable)
    {
        if (drawable == null) goto _L2; else goto _L1
_L1:
        ensureLogoView();
        if (mLogoView.getParent() == null)
        {
            addSystemView(mLogoView);
            updateChildVisibilityForExpandedActionView(mLogoView);
        }
_L4:
        if (mLogoView != null)
        {
            mLogoView.setImageDrawable(drawable);
        }
        return;
_L2:
        if (mLogoView != null && mLogoView.getParent() != null)
        {
            removeView(mLogoView);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void setLogoDescription(int i)
    {
        setLogoDescription(getContext().getText(i));
    }

    public void setLogoDescription(CharSequence charsequence)
    {
        if (!TextUtils.isEmpty(charsequence))
        {
            ensureLogoView();
        }
        if (mLogoView != null)
        {
            mLogoView.setContentDescription(charsequence);
        }
    }

    public void setMenu(MenuBuilder menubuilder, ActionMenuPresenter actionmenupresenter)
    {
        if (menubuilder != null || mMenuView != null)
        {
            ensureMenuView();
            MenuBuilder menubuilder1 = mMenuView.peekMenu();
            if (menubuilder1 != menubuilder)
            {
                if (menubuilder1 != null)
                {
                    menubuilder1.removeMenuPresenter(mOuterActionMenuPresenter);
                    menubuilder1.removeMenuPresenter(mExpandedMenuPresenter);
                }
                if (mExpandedMenuPresenter == null)
                {
                    mExpandedMenuPresenter = new ExpandedActionViewMenuPresenter();
                }
                actionmenupresenter.setExpandedActionViewsExclusive(true);
                if (menubuilder != null)
                {
                    menubuilder.addMenuPresenter(actionmenupresenter, mPopupContext);
                    menubuilder.addMenuPresenter(mExpandedMenuPresenter, mPopupContext);
                } else
                {
                    actionmenupresenter.initForMenu(mPopupContext, null);
                    mExpandedMenuPresenter.initForMenu(mPopupContext, null);
                    actionmenupresenter.updateMenuView(true);
                    mExpandedMenuPresenter.updateMenuView(true);
                }
                mMenuView.setPopupTheme(mPopupTheme);
                mMenuView.setPresenter(actionmenupresenter);
                mOuterActionMenuPresenter = actionmenupresenter;
                return;
            }
        }
    }

    public void setMenuCallbacks(android.support.v7.internal.view.menu.MenuPresenter.Callback callback, android.support.v7.internal.view.menu.MenuBuilder.Callback callback1)
    {
        mActionMenuPresenterCallback = callback;
        mMenuBuilderCallback = callback1;
    }

    public void setMinimumHeight(int i)
    {
        mMinHeight = i;
        super.setMinimumHeight(i);
    }

    public void setNavigationContentDescription(int i)
    {
        CharSequence charsequence;
        if (i != 0)
        {
            charsequence = getContext().getText(i);
        } else
        {
            charsequence = null;
        }
        setNavigationContentDescription(charsequence);
    }

    public void setNavigationContentDescription(CharSequence charsequence)
    {
        if (!TextUtils.isEmpty(charsequence))
        {
            ensureNavButtonView();
        }
        if (mNavButtonView != null)
        {
            mNavButtonView.setContentDescription(charsequence);
        }
    }

    public void setNavigationIcon(int i)
    {
        setNavigationIcon(mTintManager.getDrawable(i));
    }

    public void setNavigationIcon(Drawable drawable)
    {
        if (drawable == null) goto _L2; else goto _L1
_L1:
        ensureNavButtonView();
        if (mNavButtonView.getParent() == null)
        {
            addSystemView(mNavButtonView);
            updateChildVisibilityForExpandedActionView(mNavButtonView);
        }
_L4:
        if (mNavButtonView != null)
        {
            mNavButtonView.setImageDrawable(drawable);
        }
        return;
_L2:
        if (mNavButtonView != null && mNavButtonView.getParent() != null)
        {
            removeView(mNavButtonView);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void setNavigationOnClickListener(android.view.View.OnClickListener onclicklistener)
    {
        ensureNavButtonView();
        mNavButtonView.setOnClickListener(onclicklistener);
    }

    public void setOnMenuItemClickListener(OnMenuItemClickListener onmenuitemclicklistener)
    {
        mOnMenuItemClickListener = onmenuitemclicklistener;
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
                mPopupContext = getContext();
            }
            return;
        }
        mPopupContext = new ContextThemeWrapper(getContext(), i);
    }

    public void setSubtitle(int i)
    {
        setSubtitle(getContext().getText(i));
    }

    public void setSubtitle(CharSequence charsequence)
    {
        if (TextUtils.isEmpty(charsequence)) goto _L2; else goto _L1
_L1:
        if (mSubtitleTextView == null)
        {
            Context context = getContext();
            mSubtitleTextView = new TextView(context);
            mSubtitleTextView.setSingleLine();
            mSubtitleTextView.setEllipsize(android.text.TextUtils.TruncateAt.END);
            if (mSubtitleTextAppearance != 0)
            {
                mSubtitleTextView.setTextAppearance(context, mSubtitleTextAppearance);
            }
            if (mSubtitleTextColor != 0)
            {
                mSubtitleTextView.setTextColor(mSubtitleTextColor);
            }
        }
        if (mSubtitleTextView.getParent() == null)
        {
            addSystemView(mSubtitleTextView);
            updateChildVisibilityForExpandedActionView(mSubtitleTextView);
        }
_L4:
        if (mSubtitleTextView != null)
        {
            mSubtitleTextView.setText(charsequence);
        }
        mSubtitleText = charsequence;
        return;
_L2:
        if (mSubtitleTextView != null && mSubtitleTextView.getParent() != null)
        {
            removeView(mSubtitleTextView);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void setSubtitleTextAppearance(Context context, int i)
    {
        mSubtitleTextAppearance = i;
        if (mSubtitleTextView != null)
        {
            mSubtitleTextView.setTextAppearance(context, i);
        }
    }

    public void setSubtitleTextColor(int i)
    {
        mSubtitleTextColor = i;
        if (mSubtitleTextView != null)
        {
            mSubtitleTextView.setTextColor(i);
        }
    }

    public void setTitle(int i)
    {
        setTitle(getContext().getText(i));
    }

    public void setTitle(CharSequence charsequence)
    {
        if (TextUtils.isEmpty(charsequence)) goto _L2; else goto _L1
_L1:
        if (mTitleTextView == null)
        {
            Context context = getContext();
            mTitleTextView = new TextView(context);
            mTitleTextView.setSingleLine();
            mTitleTextView.setEllipsize(android.text.TextUtils.TruncateAt.END);
            if (mTitleTextAppearance != 0)
            {
                mTitleTextView.setTextAppearance(context, mTitleTextAppearance);
            }
            if (mTitleTextColor != 0)
            {
                mTitleTextView.setTextColor(mTitleTextColor);
            }
        }
        if (mTitleTextView.getParent() == null)
        {
            addSystemView(mTitleTextView);
            updateChildVisibilityForExpandedActionView(mTitleTextView);
        }
_L4:
        if (mTitleTextView != null)
        {
            mTitleTextView.setText(charsequence);
        }
        mTitleText = charsequence;
        return;
_L2:
        if (mTitleTextView != null && mTitleTextView.getParent() != null)
        {
            removeView(mTitleTextView);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void setTitleTextAppearance(Context context, int i)
    {
        mTitleTextAppearance = i;
        if (mTitleTextView != null)
        {
            mTitleTextView.setTextAppearance(context, i);
        }
    }

    public void setTitleTextColor(int i)
    {
        mTitleTextColor = i;
        if (mTitleTextView != null)
        {
            mTitleTextView.setTextColor(i);
        }
    }

    public boolean showOverflowMenu()
    {
        return mMenuView != null && mMenuView.showOverflowMenu();
    }





}
