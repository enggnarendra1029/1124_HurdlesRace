// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.app;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.app.NavUtils;
import android.support.v4.view.OnApplyWindowInsetsListener;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewConfigurationCompat;
import android.support.v4.view.WindowInsetsCompat;
import android.support.v7.internal.app.ToolbarActionBar;
import android.support.v7.internal.app.WindowCallback;
import android.support.v7.internal.app.WindowDecorActionBar;
import android.support.v7.internal.view.StandaloneActionMode;
import android.support.v7.internal.view.menu.ListMenuPresenter;
import android.support.v7.internal.view.menu.MenuBuilder;
import android.support.v7.internal.view.menu.MenuView;
import android.support.v7.internal.widget.ActionBarContextView;
import android.support.v7.internal.widget.DecorContentParent;
import android.support.v7.internal.widget.FitWindowsViewGroup;
import android.support.v7.internal.widget.TintCheckBox;
import android.support.v7.internal.widget.TintCheckedTextView;
import android.support.v7.internal.widget.TintEditText;
import android.support.v7.internal.widget.TintRadioButton;
import android.support.v7.internal.widget.TintSpinner;
import android.support.v7.internal.widget.ViewStubCompat;
import android.support.v7.internal.widget.ViewUtils;
import android.support.v7.view.ActionMode;
import android.support.v7.widget.Toolbar;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.PopupWindow;

// Referenced classes of package android.support.v7.app:
//            ActionBarActivityDelegate, ActionBarActivity, ActionBar

class ActionBarActivityDelegateBase extends ActionBarActivityDelegate
    implements android.support.v7.internal.view.menu.MenuBuilder.Callback
{
    private final class ActionMenuPresenterCallback
        implements android.support.v7.internal.view.menu.MenuPresenter.Callback
    {

        final ActionBarActivityDelegateBase this$0;

        public void onCloseMenu(MenuBuilder menubuilder, boolean flag)
        {
            checkCloseActionMenu(menubuilder);
        }

        public boolean onOpenSubMenu(MenuBuilder menubuilder)
        {
            WindowCallback windowcallback = getWindowCallback();
            if (windowcallback != null)
            {
                windowcallback.onMenuOpened(8, menubuilder);
            }
            return true;
        }

        private ActionMenuPresenterCallback()
        {
            this$0 = ActionBarActivityDelegateBase.this;
            super();
        }

    }

    private class ActionModeCallbackWrapper
        implements android.support.v7.view.ActionMode.Callback
    {

        private android.support.v7.view.ActionMode.Callback mWrapped;
        final ActionBarActivityDelegateBase this$0;

        public boolean onActionItemClicked(ActionMode actionmode, MenuItem menuitem)
        {
            return mWrapped.onActionItemClicked(actionmode, menuitem);
        }

        public boolean onCreateActionMode(ActionMode actionmode, Menu menu)
        {
            return mWrapped.onCreateActionMode(actionmode, menu);
        }

        public void onDestroyActionMode(ActionMode actionmode)
        {
            mWrapped.onDestroyActionMode(actionmode);
            if (mActionModePopup != null)
            {
                mActivity.getWindow().getDecorView().removeCallbacks(mShowActionModePopup);
                mActionModePopup.dismiss();
            } else
            if (mActionModeView != null)
            {
                mActionModeView.setVisibility(8);
                if (mActionModeView.getParent() != null)
                {
                    ViewCompat.requestApplyInsets((View)mActionModeView.getParent());
                }
            }
            if (mActionModeView != null)
            {
                mActionModeView.removeAllViews();
            }
            if (mActivity != null)
            {
                try
                {
                    mActivity.onSupportActionModeFinished(mActionMode);
                }
                catch (AbstractMethodError abstractmethoderror) { }
            }
            mActionMode = null;
        }

        public boolean onPrepareActionMode(ActionMode actionmode, Menu menu)
        {
            return mWrapped.onPrepareActionMode(actionmode, menu);
        }

        public ActionModeCallbackWrapper(android.support.v7.view.ActionMode.Callback callback)
        {
            this$0 = ActionBarActivityDelegateBase.this;
            super();
            mWrapped = callback;
        }
    }

    private static final class PanelFeatureState
    {

        ViewGroup decorView;
        int featureId;
        Bundle frozenActionViewState;
        Bundle frozenMenuState;
        boolean isHandled;
        boolean isOpen;
        boolean isPrepared;
        ListMenuPresenter listMenuPresenter;
        Context listPresenterContext;
        MenuBuilder menu;
        public boolean qwertyMode;
        boolean refreshDecorView;
        boolean refreshMenuContent;
        View shownPanelView;
        boolean wasLastOpen;

        void applyFrozenState()
        {
            if (menu != null && frozenMenuState != null)
            {
                menu.restorePresenterStates(frozenMenuState);
                frozenMenuState = null;
            }
        }

        public void clearMenuPresenters()
        {
            if (menu != null)
            {
                menu.removeMenuPresenter(listMenuPresenter);
            }
            listMenuPresenter = null;
        }

        MenuView getListMenuView(android.support.v7.internal.view.menu.MenuPresenter.Callback callback)
        {
            if (menu == null)
            {
                return null;
            }
            if (listMenuPresenter == null)
            {
                listMenuPresenter = new ListMenuPresenter(listPresenterContext, android.support.v7.appcompat.R.layout.abc_list_menu_item_layout);
                listMenuPresenter.setCallback(callback);
                menu.addMenuPresenter(listMenuPresenter);
            }
            return listMenuPresenter.getMenuView(decorView);
        }

        public boolean hasPanelItems()
        {
            while (shownPanelView == null || listMenuPresenter.getAdapter().getCount() <= 0) 
            {
                return false;
            }
            return true;
        }

        void onRestoreInstanceState(Parcelable parcelable)
        {
            SavedState savedstate = (SavedState)parcelable;
            featureId = savedstate.featureId;
            wasLastOpen = savedstate.isOpen;
            frozenMenuState = savedstate.menuState;
            shownPanelView = null;
            decorView = null;
        }

        Parcelable onSaveInstanceState()
        {
            SavedState savedstate = new SavedState();
            savedstate.featureId = featureId;
            savedstate.isOpen = isOpen;
            if (menu != null)
            {
                savedstate.menuState = new Bundle();
                menu.savePresenterStates(savedstate.menuState);
            }
            return savedstate;
        }

        void setMenu(MenuBuilder menubuilder)
        {
            if (menubuilder != menu)
            {
                if (menu != null)
                {
                    menu.removeMenuPresenter(listMenuPresenter);
                }
                menu = menubuilder;
                if (menubuilder != null && listMenuPresenter != null)
                {
                    menubuilder.addMenuPresenter(listMenuPresenter);
                    return;
                }
            }
        }

        void setStyle(Context context)
        {
            TypedValue typedvalue = new TypedValue();
            android.content.res.Resources.Theme theme = context.getResources().newTheme();
            theme.setTo(context.getTheme());
            theme.resolveAttribute(android.support.v7.appcompat.R.attr.actionBarPopupTheme, typedvalue, true);
            if (typedvalue.resourceId != 0)
            {
                theme.applyStyle(typedvalue.resourceId, true);
            }
            theme.resolveAttribute(android.support.v7.appcompat.R.attr.panelMenuListTheme, typedvalue, true);
            ContextThemeWrapper contextthemewrapper;
            if (typedvalue.resourceId != 0)
            {
                theme.applyStyle(typedvalue.resourceId, true);
            } else
            {
                theme.applyStyle(android.support.v7.appcompat.R.style.Theme_AppCompat_CompactMenu, true);
            }
            contextthemewrapper = new ContextThemeWrapper(context, 0);
            contextthemewrapper.getTheme().setTo(theme);
            listPresenterContext = contextthemewrapper;
        }

        PanelFeatureState(int i)
        {
            featureId = i;
            refreshDecorView = false;
        }
    }

    private static class PanelFeatureState.SavedState
        implements Parcelable
    {

        public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

            public PanelFeatureState.SavedState createFromParcel(Parcel parcel)
            {
                return PanelFeatureState.SavedState.readFromParcel(parcel);
            }

            public volatile Object createFromParcel(Parcel parcel)
            {
                return createFromParcel(parcel);
            }

            public PanelFeatureState.SavedState[] newArray(int i)
            {
                return new PanelFeatureState.SavedState[i];
            }

            public volatile Object[] newArray(int i)
            {
                return newArray(i);
            }

        };
        int featureId;
        boolean isOpen;
        Bundle menuState;

        private static PanelFeatureState.SavedState readFromParcel(Parcel parcel)
        {
            boolean flag = true;
            PanelFeatureState.SavedState savedstate = new PanelFeatureState.SavedState();
            savedstate.featureId = parcel.readInt();
            if (parcel.readInt() != flag)
            {
                flag = false;
            }
            savedstate.isOpen = flag;
            if (savedstate.isOpen)
            {
                savedstate.menuState = parcel.readBundle();
            }
            return savedstate;
        }

        public int describeContents()
        {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i)
        {
            parcel.writeInt(featureId);
            int j;
            if (isOpen)
            {
                j = 1;
            } else
            {
                j = 0;
            }
            parcel.writeInt(j);
            if (isOpen)
            {
                parcel.writeBundle(menuState);
            }
        }



        private PanelFeatureState.SavedState()
        {
        }

    }

    private final class PanelMenuPresenterCallback
        implements android.support.v7.internal.view.menu.MenuPresenter.Callback
    {

        final ActionBarActivityDelegateBase this$0;

        public void onCloseMenu(MenuBuilder menubuilder, boolean flag)
        {
            PanelFeatureState panelfeaturestate;
label0:
            {
                MenuBuilder menubuilder1 = menubuilder.getRootMenu();
                boolean flag1;
                ActionBarActivityDelegateBase actionbaractivitydelegatebase;
                if (menubuilder1 != menubuilder)
                {
                    flag1 = true;
                } else
                {
                    flag1 = false;
                }
                actionbaractivitydelegatebase = ActionBarActivityDelegateBase.this;
                if (flag1)
                {
                    menubuilder = menubuilder1;
                }
                panelfeaturestate = actionbaractivitydelegatebase.findMenuPanel(menubuilder);
                if (panelfeaturestate != null)
                {
                    if (!flag1)
                    {
                        break label0;
                    }
                    callOnPanelClosed(panelfeaturestate.featureId, panelfeaturestate, menubuilder1);
                    closePanel(panelfeaturestate, true);
                }
                return;
            }
            mActivity.closeOptionsMenu();
            closePanel(panelfeaturestate, flag);
        }

        public boolean onOpenSubMenu(MenuBuilder menubuilder)
        {
            if (menubuilder == null && mHasActionBar)
            {
                WindowCallback windowcallback = getWindowCallback();
                if (windowcallback != null && !isDestroyed())
                {
                    windowcallback.onMenuOpened(8, menubuilder);
                }
            }
            return true;
        }

        private PanelMenuPresenterCallback()
        {
            this$0 = ActionBarActivityDelegateBase.this;
            super();
        }

    }


    private static final String TAG = "ActionBarActivityDelegateBase";
    private ActionMenuPresenterCallback mActionMenuPresenterCallback;
    ActionMode mActionMode;
    PopupWindow mActionModePopup;
    ActionBarContextView mActionModeView;
    private boolean mClosingActionMenu;
    private DecorContentParent mDecorContentParent;
    private boolean mEnableDefaultActionBarUp;
    private boolean mFeatureIndeterminateProgress;
    private boolean mFeatureProgress;
    private int mInvalidatePanelMenuFeatures;
    private boolean mInvalidatePanelMenuPosted;
    private final Runnable mInvalidatePanelMenuRunnable = new Runnable() {

        final ActionBarActivityDelegateBase this$0;

        public void run()
        {
            if ((1 & mInvalidatePanelMenuFeatures) != 0)
            {
                doInvalidatePanelMenu(0);
            }
            if ((0x100 & mInvalidatePanelMenuFeatures) != 0)
            {
                doInvalidatePanelMenu(8);
            }
            mInvalidatePanelMenuPosted = false;
            mInvalidatePanelMenuFeatures = 0;
        }

            
            {
                this$0 = ActionBarActivityDelegateBase.this;
                super();
            }
    };
    private PanelMenuPresenterCallback mPanelMenuPresenterCallback;
    private PanelFeatureState mPanels[];
    private PanelFeatureState mPreparedPanel;
    Runnable mShowActionModePopup;
    private View mStatusGuard;
    private ViewGroup mSubDecor;
    private boolean mSubDecorInstalled;
    private Rect mTempRect1;
    private Rect mTempRect2;
    private CharSequence mTitleToSet;
    private ListMenuPresenter mToolbarListMenuPresenter;
    private ViewGroup mWindowDecor;

    ActionBarActivityDelegateBase(ActionBarActivity actionbaractivity)
    {
        super(actionbaractivity);
    }

    private void applyFixedSizeWindow()
    {
        TypedArray typedarray = mActivity.obtainStyledAttributes(android.support.v7.appcompat.R.styleable.Theme);
        boolean flag = typedarray.hasValue(android.support.v7.appcompat.R.styleable.Theme_windowFixedWidthMajor);
        TypedValue typedvalue = null;
        if (flag)
        {
            typedvalue = null;
            if (true)
            {
                typedvalue = new TypedValue();
            }
            typedarray.getValue(android.support.v7.appcompat.R.styleable.Theme_windowFixedWidthMajor, typedvalue);
        }
        boolean flag1 = typedarray.hasValue(android.support.v7.appcompat.R.styleable.Theme_windowFixedWidthMinor);
        TypedValue typedvalue1 = null;
        if (flag1)
        {
            typedvalue1 = null;
            if (true)
            {
                typedvalue1 = new TypedValue();
            }
            typedarray.getValue(android.support.v7.appcompat.R.styleable.Theme_windowFixedWidthMinor, typedvalue1);
        }
        boolean flag2 = typedarray.hasValue(android.support.v7.appcompat.R.styleable.Theme_windowFixedHeightMajor);
        TypedValue typedvalue2 = null;
        if (flag2)
        {
            typedvalue2 = null;
            if (true)
            {
                typedvalue2 = new TypedValue();
            }
            typedarray.getValue(android.support.v7.appcompat.R.styleable.Theme_windowFixedHeightMajor, typedvalue2);
        }
        boolean flag3 = typedarray.hasValue(android.support.v7.appcompat.R.styleable.Theme_windowFixedHeightMinor);
        TypedValue typedvalue3 = null;
        if (flag3)
        {
            typedvalue3 = null;
            if (true)
            {
                typedvalue3 = new TypedValue();
            }
            typedarray.getValue(android.support.v7.appcompat.R.styleable.Theme_windowFixedHeightMinor, typedvalue3);
        }
        DisplayMetrics displaymetrics = mActivity.getResources().getDisplayMetrics();
        boolean flag4;
        int i;
        int j;
        TypedValue typedvalue4;
        TypedValue typedvalue5;
        if (displaymetrics.widthPixels < displaymetrics.heightPixels)
        {
            flag4 = true;
        } else
        {
            flag4 = false;
        }
        i = -1;
        j = -1;
        if (flag4)
        {
            typedvalue4 = typedvalue1;
        } else
        {
            typedvalue4 = typedvalue;
        }
        if (typedvalue4 != null && typedvalue4.type != 0)
        {
            if (typedvalue4.type == 5)
            {
                i = (int)typedvalue4.getDimension(displaymetrics);
            } else
            if (typedvalue4.type == 6)
            {
                i = (int)typedvalue4.getFraction(displaymetrics.widthPixels, displaymetrics.widthPixels);
            }
        }
        if (flag4)
        {
            typedvalue5 = typedvalue2;
        } else
        {
            typedvalue5 = typedvalue3;
        }
        if (typedvalue5 != null && typedvalue5.type != 0)
        {
            if (typedvalue5.type == 5)
            {
                j = (int)typedvalue5.getDimension(displaymetrics);
            } else
            if (typedvalue5.type == 6)
            {
                j = (int)typedvalue5.getFraction(displaymetrics.heightPixels, displaymetrics.heightPixels);
            }
        }
        if (i != -1 || j != -1)
        {
            mActivity.getWindow().setLayout(i, j);
        }
        typedarray.recycle();
    }

    private void callOnPanelClosed(int i, PanelFeatureState panelfeaturestate, Menu menu)
    {
        if (menu == null)
        {
            if (panelfeaturestate == null && i >= 0 && i < mPanels.length)
            {
                panelfeaturestate = mPanels[i];
            }
            if (panelfeaturestate != null)
            {
                menu = panelfeaturestate.menu;
            }
        }
        if (panelfeaturestate != null && !panelfeaturestate.isOpen)
        {
            return;
        } else
        {
            getWindowCallback().onPanelClosed(i, menu);
            return;
        }
    }

    private void checkCloseActionMenu(MenuBuilder menubuilder)
    {
        if (mClosingActionMenu)
        {
            return;
        }
        mClosingActionMenu = true;
        mDecorContentParent.dismissPopups();
        WindowCallback windowcallback = getWindowCallback();
        if (windowcallback != null && !isDestroyed())
        {
            windowcallback.onPanelClosed(8, menubuilder);
        }
        mClosingActionMenu = false;
    }

    private void closePanel(PanelFeatureState panelfeaturestate, boolean flag)
    {
        if (flag && panelfeaturestate.featureId == 0 && mDecorContentParent != null && mDecorContentParent.isOverflowMenuShowing())
        {
            checkCloseActionMenu(panelfeaturestate.menu);
        } else
        {
            if (panelfeaturestate.isOpen && flag)
            {
                callOnPanelClosed(panelfeaturestate.featureId, panelfeaturestate, null);
            }
            panelfeaturestate.isPrepared = false;
            panelfeaturestate.isHandled = false;
            panelfeaturestate.isOpen = false;
            panelfeaturestate.shownPanelView = null;
            panelfeaturestate.refreshDecorView = true;
            if (mPreparedPanel == panelfeaturestate)
            {
                mPreparedPanel = null;
                return;
            }
        }
    }

    private void doInvalidatePanelMenu(int i)
    {
        PanelFeatureState panelfeaturestate = getPanelState(i, true);
        if (panelfeaturestate.menu != null)
        {
            Bundle bundle = new Bundle();
            panelfeaturestate.menu.saveActionViewStates(bundle);
            if (bundle.size() > 0)
            {
                panelfeaturestate.frozenActionViewState = bundle;
            }
            panelfeaturestate.menu.stopDispatchingItemsChanged();
            panelfeaturestate.menu.clear();
        }
        panelfeaturestate.refreshMenuContent = true;
        panelfeaturestate.refreshDecorView = true;
        if ((i == 8 || i == 0) && mDecorContentParent != null)
        {
            PanelFeatureState panelfeaturestate1 = getPanelState(0, false);
            if (panelfeaturestate1 != null)
            {
                panelfeaturestate1.isPrepared = false;
                preparePanel(panelfeaturestate1, null);
            }
        }
    }

    private void ensureToolbarListMenuPresenter()
    {
        if (mToolbarListMenuPresenter == null)
        {
            TypedValue typedvalue = new TypedValue();
            mActivity.getTheme().resolveAttribute(android.support.v7.appcompat.R.attr.panelMenuListTheme, typedvalue, true);
            ActionBarActivity actionbaractivity = mActivity;
            int i;
            if (typedvalue.resourceId != 0)
            {
                i = typedvalue.resourceId;
            } else
            {
                i = android.support.v7.appcompat.R.style.Theme_AppCompat_CompactMenu;
            }
            mToolbarListMenuPresenter = new ListMenuPresenter(new ContextThemeWrapper(actionbaractivity, i), android.support.v7.appcompat.R.layout.abc_list_menu_item_layout);
        }
    }

    private PanelFeatureState findMenuPanel(Menu menu)
    {
        PanelFeatureState apanelfeaturestate[] = mPanels;
        int i;
        int j;
        if (apanelfeaturestate != null)
        {
            i = apanelfeaturestate.length;
        } else
        {
            i = 0;
        }
        for (j = 0; j < i; j++)
        {
            PanelFeatureState panelfeaturestate = apanelfeaturestate[j];
            if (panelfeaturestate != null && panelfeaturestate.menu == menu)
            {
                return panelfeaturestate;
            }
        }

        return null;
    }

    private PanelFeatureState getPanelState(int i, boolean flag)
    {
        PanelFeatureState apanelfeaturestate[] = mPanels;
        if (apanelfeaturestate == null || apanelfeaturestate.length <= i)
        {
            PanelFeatureState apanelfeaturestate1[] = new PanelFeatureState[i + 1];
            if (apanelfeaturestate != null)
            {
                System.arraycopy(apanelfeaturestate, 0, apanelfeaturestate1, 0, apanelfeaturestate.length);
            }
            apanelfeaturestate = apanelfeaturestate1;
            mPanels = apanelfeaturestate1;
        }
        PanelFeatureState panelfeaturestate = apanelfeaturestate[i];
        if (panelfeaturestate == null)
        {
            panelfeaturestate = new PanelFeatureState(i);
            apanelfeaturestate[i] = panelfeaturestate;
        }
        return panelfeaturestate;
    }

    private boolean initializePanelContent(PanelFeatureState panelfeaturestate)
    {
        if (panelfeaturestate.menu != null)
        {
            if (mPanelMenuPresenterCallback == null)
            {
                mPanelMenuPresenterCallback = new PanelMenuPresenterCallback();
            }
            panelfeaturestate.shownPanelView = (View)panelfeaturestate.getListMenuView(mPanelMenuPresenterCallback);
            if (panelfeaturestate.shownPanelView != null)
            {
                return true;
            }
        }
        return false;
    }

    private void initializePanelDecor(PanelFeatureState panelfeaturestate)
    {
        panelfeaturestate.decorView = mWindowDecor;
        panelfeaturestate.setStyle(getActionBarThemedContext());
    }

    private boolean initializePanelMenu(PanelFeatureState panelfeaturestate)
    {
        Object obj = mActivity;
        if ((panelfeaturestate.featureId == 0 || panelfeaturestate.featureId == 8) && mDecorContentParent != null)
        {
            TypedValue typedvalue = new TypedValue();
            android.content.res.Resources.Theme theme = ((Context) (obj)).getTheme();
            theme.resolveAttribute(android.support.v7.appcompat.R.attr.actionBarTheme, typedvalue, true);
            android.content.res.Resources.Theme theme1;
            MenuBuilder menubuilder;
            if (typedvalue.resourceId != 0)
            {
                theme1 = ((Context) (obj)).getResources().newTheme();
                theme1.setTo(theme);
                theme1.applyStyle(typedvalue.resourceId, true);
                theme1.resolveAttribute(android.support.v7.appcompat.R.attr.actionBarWidgetTheme, typedvalue, true);
            } else
            {
                theme.resolveAttribute(android.support.v7.appcompat.R.attr.actionBarWidgetTheme, typedvalue, true);
                theme1 = null;
            }
            if (typedvalue.resourceId != 0)
            {
                if (theme1 == null)
                {
                    theme1 = ((Context) (obj)).getResources().newTheme();
                    theme1.setTo(theme);
                }
                theme1.applyStyle(typedvalue.resourceId, true);
            }
            if (theme1 != null)
            {
                ContextThemeWrapper contextthemewrapper = new ContextThemeWrapper(((Context) (obj)), 0);
                contextthemewrapper.getTheme().setTo(theme1);
                obj = contextthemewrapper;
            }
        }
        menubuilder = new MenuBuilder(((Context) (obj)));
        menubuilder.setCallback(this);
        panelfeaturestate.setMenu(menubuilder);
        return true;
    }

    private void invalidatePanelMenu(int i)
    {
        mInvalidatePanelMenuFeatures = mInvalidatePanelMenuFeatures | 1 << i;
        if (!mInvalidatePanelMenuPosted && mWindowDecor != null)
        {
            ViewCompat.postOnAnimation(mWindowDecor, mInvalidatePanelMenuRunnable);
            mInvalidatePanelMenuPosted = true;
        }
    }

    private void openPanel(int i, KeyEvent keyevent)
    {
        if (i == 0 && mDecorContentParent != null && mDecorContentParent.canShowOverflowMenu() && !ViewConfigurationCompat.hasPermanentMenuKey(ViewConfiguration.get(mActivity)))
        {
            mDecorContentParent.showOverflowMenu();
            return;
        } else
        {
            openPanel(getPanelState(i, true), keyevent);
            return;
        }
    }

    private void openPanel(PanelFeatureState panelfeaturestate, KeyEvent keyevent)
    {
        if (!panelfeaturestate.isOpen && !isDestroyed()) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if (panelfeaturestate.featureId != 0)
        {
            break; /* Loop/switch isn't completed */
        }
        ActionBarActivity actionbaractivity = mActivity;
        WindowCallback windowcallback;
        boolean flag;
        boolean flag1;
        if ((0xf & actionbaractivity.getResources().getConfiguration().screenLayout) == 4)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (actionbaractivity.getApplicationInfo().targetSdkVersion >= 11)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (flag && flag1) goto _L1; else goto _L3
_L3:
        windowcallback = getWindowCallback();
        if (windowcallback != null && !windowcallback.onMenuOpened(panelfeaturestate.featureId, panelfeaturestate.menu))
        {
            closePanel(panelfeaturestate, true);
            return;
        }
        if (preparePanel(panelfeaturestate, keyevent))
        {
            if (panelfeaturestate.decorView == null || panelfeaturestate.refreshDecorView)
            {
                initializePanelDecor(panelfeaturestate);
            }
            if (initializePanelContent(panelfeaturestate) && panelfeaturestate.hasPanelItems())
            {
                panelfeaturestate.isHandled = false;
                panelfeaturestate.isOpen = true;
                return;
            }
        }
        if (true) goto _L1; else goto _L4
_L4:
    }

    private boolean preparePanel(PanelFeatureState panelfeaturestate, KeyEvent keyevent)
    {
        if (!isDestroyed()) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        boolean flag;
        if (panelfeaturestate.isPrepared)
        {
            return true;
        }
        if (mPreparedPanel != null && mPreparedPanel != panelfeaturestate)
        {
            closePanel(mPreparedPanel, false);
        }
        if (panelfeaturestate.featureId == 0 || panelfeaturestate.featureId == 8)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag && mDecorContentParent != null)
        {
            mDecorContentParent.setMenuPrepared();
        }
        if (panelfeaturestate.menu != null && !panelfeaturestate.refreshMenuContent)
        {
            break MISSING_BLOCK_LABEL_233;
        }
        if (panelfeaturestate.menu == null && (!initializePanelMenu(panelfeaturestate) || panelfeaturestate.menu == null))
        {
            continue; /* Loop/switch isn't completed */
        }
        if (flag && mDecorContentParent != null)
        {
            if (mActionMenuPresenterCallback == null)
            {
                mActionMenuPresenterCallback = new ActionMenuPresenterCallback();
            }
            mDecorContentParent.setMenu(panelfeaturestate.menu, mActionMenuPresenterCallback);
        }
        panelfeaturestate.menu.stopDispatchingItemsChanged();
        if (getWindowCallback().onCreatePanelMenu(panelfeaturestate.featureId, panelfeaturestate.menu))
        {
            break; /* Loop/switch isn't completed */
        }
        panelfeaturestate.setMenu(null);
        if (flag && mDecorContentParent != null)
        {
            mDecorContentParent.setMenu(null, mActionMenuPresenterCallback);
            return false;
        }
        if (true) goto _L1; else goto _L3
_L3:
        panelfeaturestate.refreshMenuContent = false;
        panelfeaturestate.menu.stopDispatchingItemsChanged();
        if (panelfeaturestate.frozenActionViewState != null)
        {
            panelfeaturestate.menu.restoreActionViewStates(panelfeaturestate.frozenActionViewState);
            panelfeaturestate.frozenActionViewState = null;
        }
        if (!getWindowCallback().onPreparePanel(0, null, panelfeaturestate.menu))
        {
            if (flag && mDecorContentParent != null)
            {
                mDecorContentParent.setMenu(null, mActionMenuPresenterCallback);
            }
            panelfeaturestate.menu.startDispatchingItemsChanged();
            return false;
        }
        int i;
        boolean flag1;
        if (keyevent != null)
        {
            i = keyevent.getDeviceId();
        } else
        {
            i = -1;
        }
        if (KeyCharacterMap.load(i).getKeyboardType() != 1)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        panelfeaturestate.qwertyMode = flag1;
        panelfeaturestate.menu.setQwertyMode(panelfeaturestate.qwertyMode);
        panelfeaturestate.menu.startDispatchingItemsChanged();
        panelfeaturestate.isPrepared = true;
        panelfeaturestate.isHandled = false;
        mPreparedPanel = panelfeaturestate;
        return true;
    }

    private void reopenMenu(MenuBuilder menubuilder, boolean flag)
    {
        WindowCallback windowcallback;
        if (mDecorContentParent == null || !mDecorContentParent.canShowOverflowMenu() || ViewConfigurationCompat.hasPermanentMenuKey(ViewConfiguration.get(mActivity)) && !mDecorContentParent.isOverflowMenuShowPending())
        {
            break MISSING_BLOCK_LABEL_222;
        }
        windowcallback = getWindowCallback();
        if (mDecorContentParent.isOverflowMenuShowing() && flag) goto _L2; else goto _L1
_L1:
        if (windowcallback != null && !isDestroyed())
        {
            if (mInvalidatePanelMenuPosted && (1 & mInvalidatePanelMenuFeatures) != 0)
            {
                mWindowDecor.removeCallbacks(mInvalidatePanelMenuRunnable);
                mInvalidatePanelMenuRunnable.run();
            }
            PanelFeatureState panelfeaturestate1 = getPanelState(0, true);
            if (panelfeaturestate1.menu != null && !panelfeaturestate1.refreshMenuContent && windowcallback.onPreparePanel(0, null, panelfeaturestate1.menu))
            {
                windowcallback.onMenuOpened(8, panelfeaturestate1.menu);
                mDecorContentParent.showOverflowMenu();
            }
        }
_L4:
        return;
_L2:
        mDecorContentParent.hideOverflowMenu();
        if (isDestroyed()) goto _L4; else goto _L3
_L3:
        PanelFeatureState panelfeaturestate2 = getPanelState(0, true);
        mActivity.onPanelClosed(8, panelfeaturestate2.menu);
        return;
        PanelFeatureState panelfeaturestate = getPanelState(0, true);
        panelfeaturestate.refreshDecorView = true;
        closePanel(panelfeaturestate, false);
        openPanel(panelfeaturestate, null);
        return;
    }

    private void throwFeatureRequestIfSubDecorInstalled()
    {
        if (mSubDecorInstalled)
        {
            throw new AndroidRuntimeException("supportRequestWindowFeature() must be called before adding content");
        } else
        {
            return;
        }
    }

    private int updateStatusGuard(int i)
    {
        ActionBarContextView actionbarcontextview = mActionModeView;
        boolean flag = false;
        if (actionbarcontextview != null)
        {
            boolean flag1 = mActionModeView.getLayoutParams() instanceof android.view.ViewGroup.MarginLayoutParams;
            flag = false;
            if (flag1)
            {
                android.view.ViewGroup.MarginLayoutParams marginlayoutparams = (android.view.ViewGroup.MarginLayoutParams)mActionModeView.getLayoutParams();
                boolean flag2;
                if (mActionModeView.isShown())
                {
                    if (mTempRect1 == null)
                    {
                        mTempRect1 = new Rect();
                        mTempRect2 = new Rect();
                    }
                    Rect rect = mTempRect1;
                    Rect rect1 = mTempRect2;
                    rect.set(0, i, 0, 0);
                    ViewUtils.computeFitSystemWindows(mSubDecor, rect, rect1);
                    int l;
                    int i1;
                    if (rect1.top == 0)
                    {
                        l = i;
                    } else
                    {
                        l = 0;
                    }
                    i1 = marginlayoutparams.topMargin;
                    flag2 = false;
                    if (i1 != l)
                    {
                        flag2 = true;
                        marginlayoutparams.topMargin = i;
                        View view;
                        if (mStatusGuard == null)
                        {
                            mStatusGuard = new View(mActivity);
                            mStatusGuard.setBackgroundColor(mActivity.getResources().getColor(android.support.v7.appcompat.R.color.abc_input_method_navigation_guard));
                            mSubDecor.addView(mStatusGuard, -1, new android.view.ViewGroup.LayoutParams(-1, i));
                        } else
                        {
                            android.view.ViewGroup.LayoutParams layoutparams = mStatusGuard.getLayoutParams();
                            if (layoutparams.height != i)
                            {
                                layoutparams.height = i;
                                mStatusGuard.setLayoutParams(layoutparams);
                            }
                        }
                    }
                    if (mStatusGuard != null)
                    {
                        flag = true;
                    } else
                    {
                        flag = false;
                    }
                    if (!mOverlayActionMode && flag)
                    {
                        i = 0;
                    }
                } else
                {
                    int k = marginlayoutparams.topMargin;
                    flag2 = false;
                    flag = false;
                    if (k != 0)
                    {
                        flag2 = true;
                        marginlayoutparams.topMargin = 0;
                        flag = false;
                    }
                }
                if (flag2)
                {
                    mActionModeView.setLayoutParams(marginlayoutparams);
                }
            }
        }
        if (mStatusGuard != null)
        {
            view = mStatusGuard;
            int j = 0;
            if (!flag)
            {
                j = 8;
            }
            view.setVisibility(j);
        }
        return i;
    }

    public void addContentView(View view, android.view.ViewGroup.LayoutParams layoutparams)
    {
        ensureSubDecor();
        ((ViewGroup)mActivity.findViewById(0x1020002)).addView(view, layoutparams);
        mActivity.onSupportContentChanged();
    }

    public ActionBar createSupportActionBar()
    {
        ensureSubDecor();
        WindowDecorActionBar windowdecoractionbar = new WindowDecorActionBar(mActivity, mOverlayActionBar);
        windowdecoractionbar.setDefaultDisplayHomeAsUpEnabled(mEnableDefaultActionBarUp);
        return windowdecoractionbar;
    }

    View createView(String s, Context context, AttributeSet attributeset)
    {
        if (android.os.Build.VERSION.SDK_INT >= 21) goto _L2; else goto _L1
_L1:
        byte byte0 = -1;
        s.hashCode();
        JVM INSTR lookupswitch 5: default 64
    //                   -1455429095: 166
    //                   -339785223: 118
    //                   776382189: 150
    //                   1601505219: 134
    //                   1666676343: 102;
           goto _L3 _L4 _L5 _L6 _L7 _L8
_L3:
        byte0;
        JVM INSTR tableswitch 0 4: default 100
    //                   0 182
    //                   1 192
    //                   2 202
    //                   3 212
    //                   4 222;
           goto _L2 _L9 _L10 _L11 _L12 _L13
_L2:
        return null;
_L8:
        if (s.equals("EditText"))
        {
            byte0 = 0;
        }
          goto _L3
_L5:
        if (s.equals("Spinner"))
        {
            byte0 = 1;
        }
          goto _L3
_L7:
        if (s.equals("CheckBox"))
        {
            byte0 = 2;
        }
          goto _L3
_L6:
        if (s.equals("RadioButton"))
        {
            byte0 = 3;
        }
          goto _L3
_L4:
        if (s.equals("CheckedTextView"))
        {
            byte0 = 4;
        }
          goto _L3
_L9:
        return new TintEditText(context, attributeset);
_L10:
        return new TintSpinner(context, attributeset);
_L11:
        return new TintCheckBox(context, attributeset);
_L12:
        return new TintRadioButton(context, attributeset);
_L13:
        return new TintCheckedTextView(context, attributeset);
    }

    final void ensureSubDecor()
    {
        if (!mSubDecorInstalled)
        {
            if (mHasActionBar)
            {
                TypedValue typedvalue = new TypedValue();
                mActivity.getTheme().resolveAttribute(android.support.v7.appcompat.R.attr.actionBarTheme, typedvalue, true);
                Object obj;
                View view;
                PanelFeatureState panelfeaturestate;
                if (typedvalue.resourceId != 0)
                {
                    obj = new ContextThemeWrapper(mActivity, typedvalue.resourceId);
                } else
                {
                    obj = mActivity;
                }
                mSubDecor = (ViewGroup)LayoutInflater.from(((Context) (obj))).inflate(android.support.v7.appcompat.R.layout.abc_screen_toolbar, null);
                mDecorContentParent = (DecorContentParent)mSubDecor.findViewById(android.support.v7.appcompat.R.id.decor_content_parent);
                mDecorContentParent.setWindowCallback(getWindowCallback());
                if (mOverlayActionBar)
                {
                    mDecorContentParent.initFeature(9);
                }
                if (mFeatureProgress)
                {
                    mDecorContentParent.initFeature(2);
                }
                if (mFeatureIndeterminateProgress)
                {
                    mDecorContentParent.initFeature(5);
                }
            } else
            {
                if (mOverlayActionMode)
                {
                    mSubDecor = (ViewGroup)LayoutInflater.from(mActivity).inflate(android.support.v7.appcompat.R.layout.abc_screen_simple_overlay_action_mode, null);
                } else
                {
                    mSubDecor = (ViewGroup)LayoutInflater.from(mActivity).inflate(android.support.v7.appcompat.R.layout.abc_screen_simple, null);
                }
                if (android.os.Build.VERSION.SDK_INT >= 21)
                {
                    ViewCompat.setOnApplyWindowInsetsListener(mSubDecor, new OnApplyWindowInsetsListener() {

                        final ActionBarActivityDelegateBase this$0;

                        public WindowInsetsCompat onApplyWindowInsets(View view1, WindowInsetsCompat windowinsetscompat)
                        {
                            int i = windowinsetscompat.getSystemWindowInsetTop();
                            int j = updateStatusGuard(i);
                            if (i != j)
                            {
                                windowinsetscompat = windowinsetscompat.replaceSystemWindowInsets(windowinsetscompat.getSystemWindowInsetLeft(), j, windowinsetscompat.getSystemWindowInsetRight(), windowinsetscompat.getSystemWindowInsetBottom());
                            }
                            return windowinsetscompat;
                        }

            
            {
                this$0 = ActionBarActivityDelegateBase.this;
                super();
            }
                    });
                } else
                {
                    ((FitWindowsViewGroup)mSubDecor).setOnFitSystemWindowsListener(new android.support.v7.internal.widget.FitWindowsViewGroup.OnFitSystemWindowsListener() {

                        final ActionBarActivityDelegateBase this$0;

                        public void onFitSystemWindows(Rect rect)
                        {
                            rect.top = updateStatusGuard(rect.top);
                        }

            
            {
                this$0 = ActionBarActivityDelegateBase.this;
                super();
            }
                    });
                }
            }
            ViewUtils.makeOptionalFitsSystemWindows(mSubDecor);
            mActivity.superSetContentView(mSubDecor);
            view = mActivity.findViewById(0x1020002);
            view.setId(-1);
            mActivity.findViewById(android.support.v7.appcompat.R.id.action_bar_activity_content).setId(0x1020002);
            if (view instanceof FrameLayout)
            {
                ((FrameLayout)view).setForeground(null);
            }
            if (mTitleToSet != null && mDecorContentParent != null)
            {
                mDecorContentParent.setWindowTitle(mTitleToSet);
                mTitleToSet = null;
            }
            applyFixedSizeWindow();
            onSubDecorInstalled();
            mSubDecorInstalled = true;
            panelfeaturestate = getPanelState(0, false);
            if (!isDestroyed() && (panelfeaturestate == null || panelfeaturestate.menu == null))
            {
                invalidatePanelMenu(8);
            }
        }
    }

    int getHomeAsUpIndicatorAttrId()
    {
        return android.support.v7.appcompat.R.attr.homeAsUpIndicator;
    }

    public boolean onBackPressed()
    {
        if (mActionMode != null)
        {
            mActionMode.finish();
        } else
        {
            ActionBar actionbar = getSupportActionBar();
            if (actionbar == null || !actionbar.collapseActionView())
            {
                return false;
            }
        }
        return true;
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        if (mHasActionBar && mSubDecorInstalled)
        {
            ActionBar actionbar = getSupportActionBar();
            if (actionbar != null)
            {
                actionbar.onConfigurationChanged(configuration);
            }
        }
    }

    public void onContentChanged()
    {
    }

    void onCreate(Bundle bundle)
    {
        ActionBar actionbar;
label0:
        {
            super.onCreate(bundle);
            mWindowDecor = (ViewGroup)mActivity.getWindow().getDecorView();
            if (NavUtils.getParentActivityName(mActivity) != null)
            {
                actionbar = peekSupportActionBar();
                if (actionbar != null)
                {
                    break label0;
                }
                mEnableDefaultActionBarUp = true;
            }
            return;
        }
        actionbar.setDefaultDisplayHomeAsUpEnabled(true);
    }

    public boolean onCreatePanelMenu(int i, Menu menu)
    {
        if (i != 0)
        {
            return getWindowCallback().onCreatePanelMenu(i, menu);
        } else
        {
            return false;
        }
    }

    public View onCreatePanelView(int i)
    {
        ActionMode actionmode = mActionMode;
        View view = null;
        if (actionmode == null)
        {
            WindowCallback windowcallback = getWindowCallback();
            view = null;
            if (windowcallback != null)
            {
                view = windowcallback.onCreatePanelView(i);
            }
            if (view == null && mToolbarListMenuPresenter == null)
            {
                PanelFeatureState panelfeaturestate = getPanelState(i, true);
                openPanel(panelfeaturestate, null);
                if (panelfeaturestate.isOpen)
                {
                    view = panelfeaturestate.shownPanelView;
                }
            }
        }
        return view;
    }

    boolean onKeyDown(int i, KeyEvent keyevent)
    {
        return onKeyShortcut(i, keyevent);
    }

    boolean onKeyShortcut(int i, KeyEvent keyevent)
    {
        if (mPreparedPanel == null || !performPanelShortcut(mPreparedPanel, keyevent.getKeyCode(), keyevent, 1)) goto _L2; else goto _L1
_L1:
        if (mPreparedPanel != null)
        {
            mPreparedPanel.isHandled = true;
        }
_L4:
        return true;
_L2:
        boolean flag;
        if (mPreparedPanel != null)
        {
            break; /* Loop/switch isn't completed */
        }
        PanelFeatureState panelfeaturestate = getPanelState(0, true);
        preparePanel(panelfeaturestate, keyevent);
        flag = performPanelShortcut(panelfeaturestate, keyevent.getKeyCode(), keyevent, 1);
        panelfeaturestate.isPrepared = false;
        if (flag) goto _L4; else goto _L3
_L3:
        return false;
    }

    public boolean onMenuItemSelected(MenuBuilder menubuilder, MenuItem menuitem)
    {
        WindowCallback windowcallback = getWindowCallback();
        if (windowcallback != null && !isDestroyed())
        {
            PanelFeatureState panelfeaturestate = findMenuPanel(menubuilder.getRootMenu());
            if (panelfeaturestate != null)
            {
                return windowcallback.onMenuItemSelected(panelfeaturestate.featureId, menuitem);
            }
        }
        return false;
    }

    public void onMenuModeChange(MenuBuilder menubuilder)
    {
        reopenMenu(menubuilder, true);
    }

    boolean onMenuOpened(int i, Menu menu)
    {
        if (i == 8)
        {
            ActionBar actionbar = getSupportActionBar();
            if (actionbar != null)
            {
                actionbar.dispatchMenuVisibilityChanged(true);
            }
            return true;
        } else
        {
            return mActivity.superOnMenuOpened(i, menu);
        }
    }

    public void onPanelClosed(int i, Menu menu)
    {
        PanelFeatureState panelfeaturestate = getPanelState(i, false);
        if (panelfeaturestate != null)
        {
            closePanel(panelfeaturestate, false);
        }
        if (i == 8)
        {
            ActionBar actionbar = getSupportActionBar();
            if (actionbar != null)
            {
                actionbar.dispatchMenuVisibilityChanged(false);
            }
        } else
        if (!isDestroyed())
        {
            mActivity.superOnPanelClosed(i, menu);
            return;
        }
    }

    public void onPostResume()
    {
        ActionBar actionbar = getSupportActionBar();
        if (actionbar != null)
        {
            actionbar.setShowHideAnimationEnabled(true);
        }
    }

    public boolean onPreparePanel(int i, View view, Menu menu)
    {
        if (i != 0)
        {
            return getWindowCallback().onPreparePanel(i, view, menu);
        } else
        {
            return false;
        }
    }

    public void onStop()
    {
        ActionBar actionbar = getSupportActionBar();
        if (actionbar != null)
        {
            actionbar.setShowHideAnimationEnabled(false);
        }
    }

    void onSubDecorInstalled()
    {
    }

    public void onTitleChanged(CharSequence charsequence)
    {
        if (mDecorContentParent != null)
        {
            mDecorContentParent.setWindowTitle(charsequence);
            return;
        }
        if (getSupportActionBar() != null)
        {
            getSupportActionBar().setWindowTitle(charsequence);
            return;
        } else
        {
            mTitleToSet = charsequence;
            return;
        }
    }

    final boolean performPanelShortcut(PanelFeatureState panelfeaturestate, int i, KeyEvent keyevent, int j)
    {
        if (!keyevent.isSystem()) goto _L2; else goto _L1
_L1:
        boolean flag = false;
_L4:
        return flag;
_L2:
        if (!panelfeaturestate.isPrepared)
        {
            boolean flag1 = preparePanel(panelfeaturestate, keyevent);
            flag = false;
            if (!flag1)
            {
                continue; /* Loop/switch isn't completed */
            }
        }
        MenuBuilder menubuilder = panelfeaturestate.menu;
        flag = false;
        if (menubuilder != null)
        {
            flag = panelfeaturestate.menu.performShortcut(i, keyevent, j);
        }
        if (!flag || (j & 1) != 0 || mDecorContentParent != null) goto _L4; else goto _L3
_L3:
        closePanel(panelfeaturestate, true);
        return flag;
    }

    public void setContentView(int i)
    {
        ensureSubDecor();
        ViewGroup viewgroup = (ViewGroup)mActivity.findViewById(0x1020002);
        viewgroup.removeAllViews();
        mActivity.getLayoutInflater().inflate(i, viewgroup);
        mActivity.onSupportContentChanged();
    }

    public void setContentView(View view)
    {
        ensureSubDecor();
        ViewGroup viewgroup = (ViewGroup)mActivity.findViewById(0x1020002);
        viewgroup.removeAllViews();
        viewgroup.addView(view);
        mActivity.onSupportContentChanged();
    }

    public void setContentView(View view, android.view.ViewGroup.LayoutParams layoutparams)
    {
        ensureSubDecor();
        ViewGroup viewgroup = (ViewGroup)mActivity.findViewById(0x1020002);
        viewgroup.removeAllViews();
        viewgroup.addView(view, layoutparams);
        mActivity.onSupportContentChanged();
    }

    void setSupportActionBar(Toolbar toolbar)
    {
        ActionBar actionbar = getSupportActionBar();
        if (actionbar instanceof WindowDecorActionBar)
        {
            throw new IllegalStateException("This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead.");
        }
        if (actionbar instanceof ToolbarActionBar)
        {
            ((ToolbarActionBar)actionbar).setListMenuPresenter(null);
        }
        ToolbarActionBar toolbaractionbar = new ToolbarActionBar(toolbar, mActivity.getTitle(), mActivity.getWindow(), mDefaultWindowCallback);
        ensureToolbarListMenuPresenter();
        toolbaractionbar.setListMenuPresenter(mToolbarListMenuPresenter);
        setSupportActionBar(((ActionBar) (toolbaractionbar)));
        setWindowCallback(toolbaractionbar.getWrappedWindowCallback());
        toolbaractionbar.invalidateOptionsMenu();
    }

    void setSupportProgress(int i)
    {
    }

    void setSupportProgressBarIndeterminate(boolean flag)
    {
    }

    void setSupportProgressBarIndeterminateVisibility(boolean flag)
    {
    }

    void setSupportProgressBarVisibility(boolean flag)
    {
    }

    public ActionMode startSupportActionMode(android.support.v7.view.ActionMode.Callback callback)
    {
        if (callback == null)
        {
            throw new IllegalArgumentException("ActionMode callback can not be null.");
        }
        if (mActionMode != null)
        {
            mActionMode.finish();
        }
        ActionModeCallbackWrapper actionmodecallbackwrapper = new ActionModeCallbackWrapper(callback);
        ActionBar actionbar = getSupportActionBar();
        if (actionbar != null)
        {
            mActionMode = actionbar.startActionMode(actionmodecallbackwrapper);
            if (mActionMode != null)
            {
                mActivity.onSupportActionModeStarted(mActionMode);
            }
        }
        if (mActionMode == null)
        {
            mActionMode = startSupportActionModeFromWindow(actionmodecallbackwrapper);
        }
        return mActionMode;
    }

    ActionMode startSupportActionModeFromWindow(android.support.v7.view.ActionMode.Callback callback)
    {
        if (mActionMode != null)
        {
            mActionMode.finish();
        }
        ActionModeCallbackWrapper actionmodecallbackwrapper = new ActionModeCallbackWrapper(callback);
        Context context = getActionBarThemedContext();
        if (mActionModeView == null)
        {
            if (mIsFloating)
            {
                mActionModeView = new ActionBarContextView(context);
                mActionModePopup = new PopupWindow(context, null, android.support.v7.appcompat.R.attr.actionModePopupWindowStyle);
                mActionModePopup.setContentView(mActionModeView);
                mActionModePopup.setWidth(-1);
                TypedValue typedvalue = new TypedValue();
                mActivity.getTheme().resolveAttribute(android.support.v7.appcompat.R.attr.actionBarSize, typedvalue, true);
                int i = TypedValue.complexToDimensionPixelSize(typedvalue.data, mActivity.getResources().getDisplayMetrics());
                mActionModeView.setContentHeight(i);
                mActionModePopup.setHeight(-2);
                mShowActionModePopup = new Runnable() {

                    final ActionBarActivityDelegateBase this$0;

                    public void run()
                    {
                        mActionModePopup.showAtLocation(mActionModeView, 55, 0, 0);
                    }

            
            {
                this$0 = ActionBarActivityDelegateBase.this;
                super();
            }
                };
            } else
            {
                ViewStubCompat viewstubcompat = (ViewStubCompat)mActivity.findViewById(android.support.v7.appcompat.R.id.action_mode_bar_stub);
                if (viewstubcompat != null)
                {
                    viewstubcompat.setLayoutInflater(LayoutInflater.from(context));
                    mActionModeView = (ActionBarContextView)viewstubcompat.inflate();
                }
            }
        }
        if (mActionModeView != null)
        {
            mActionModeView.killMode();
            ActionBarContextView actionbarcontextview = mActionModeView;
            boolean flag;
            StandaloneActionMode standaloneactionmode;
            if (mActionModePopup == null)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            standaloneactionmode = new StandaloneActionMode(context, actionbarcontextview, actionmodecallbackwrapper, flag);
            if (callback.onCreateActionMode(standaloneactionmode, standaloneactionmode.getMenu()))
            {
                standaloneactionmode.invalidate();
                mActionModeView.initForMode(standaloneactionmode);
                mActionModeView.setVisibility(0);
                mActionMode = standaloneactionmode;
                if (mActionModePopup != null)
                {
                    mActivity.getWindow().getDecorView().post(mShowActionModePopup);
                }
                mActionModeView.sendAccessibilityEvent(32);
                if (mActionModeView.getParent() != null)
                {
                    ViewCompat.requestApplyInsets((View)mActionModeView.getParent());
                }
            } else
            {
                mActionMode = null;
            }
        }
        if (mActionMode != null && mActivity != null)
        {
            mActivity.onSupportActionModeStarted(mActionMode);
        }
        return mActionMode;
    }

    public void supportInvalidateOptionsMenu()
    {
        ActionBar actionbar = getSupportActionBar();
        if (actionbar != null && actionbar.invalidateOptionsMenu())
        {
            return;
        } else
        {
            invalidatePanelMenu(0);
            return;
        }
    }

    public boolean supportRequestWindowFeature(int i)
    {
        switch (i)
        {
        case 3: // '\003'
        case 4: // '\004'
        case 6: // '\006'
        case 7: // '\007'
        default:
            return mActivity.requestWindowFeature(i);

        case 8: // '\b'
            throwFeatureRequestIfSubDecorInstalled();
            mHasActionBar = true;
            return true;

        case 9: // '\t'
            throwFeatureRequestIfSubDecorInstalled();
            mOverlayActionBar = true;
            return true;

        case 10: // '\n'
            throwFeatureRequestIfSubDecorInstalled();
            mOverlayActionMode = true;
            return true;

        case 2: // '\002'
            throwFeatureRequestIfSubDecorInstalled();
            mFeatureProgress = true;
            return true;

        case 5: // '\005'
            throwFeatureRequestIfSubDecorInstalled();
            mFeatureIndeterminateProgress = true;
            return true;
        }
    }



/*
    static int access$002(ActionBarActivityDelegateBase actionbaractivitydelegatebase, int i)
    {
        actionbaractivitydelegatebase.mInvalidatePanelMenuFeatures = i;
        return i;
    }

*/



/*
    static boolean access$202(ActionBarActivityDelegateBase actionbaractivitydelegatebase, boolean flag)
    {
        actionbaractivitydelegatebase.mInvalidatePanelMenuPosted = flag;
        return flag;
    }

*/





}
