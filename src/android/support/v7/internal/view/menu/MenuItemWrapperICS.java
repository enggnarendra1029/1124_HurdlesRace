// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.internal.view.menu;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.support.v4.internal.view.SupportMenuItem;
import android.util.Log;
import android.view.ActionProvider;
import android.view.CollapsibleActionView;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.widget.FrameLayout;
import java.lang.reflect.Method;

// Referenced classes of package android.support.v7.internal.view.menu:
//            BaseMenuWrapper, BaseWrapper

public class MenuItemWrapperICS extends BaseMenuWrapper
    implements MenuItem
{
    class ActionProviderWrapper extends android.support.v4.view.ActionProvider
    {

        final ActionProvider mInner;
        final MenuItemWrapperICS this$0;

        public boolean hasSubMenu()
        {
            return mInner.hasSubMenu();
        }

        public View onCreateActionView()
        {
            return mInner.onCreateActionView();
        }

        public boolean onPerformDefaultAction()
        {
            return mInner.onPerformDefaultAction();
        }

        public void onPrepareSubMenu(SubMenu submenu)
        {
            mInner.onPrepareSubMenu(getSubMenuWrapper(submenu));
        }

        public ActionProviderWrapper(Context context, ActionProvider actionprovider)
        {
            this$0 = MenuItemWrapperICS.this;
            super(context);
            mInner = actionprovider;
        }
    }

    static class CollapsibleActionViewWrapper extends FrameLayout
        implements android.support.v7.view.CollapsibleActionView
    {

        final CollapsibleActionView mWrappedView;

        View getWrappedView()
        {
            return (View)mWrappedView;
        }

        public void onActionViewCollapsed()
        {
            mWrappedView.onActionViewCollapsed();
        }

        public void onActionViewExpanded()
        {
            mWrappedView.onActionViewExpanded();
        }

        CollapsibleActionViewWrapper(View view)
        {
            super(view.getContext());
            mWrappedView = (CollapsibleActionView)view;
            addView(view);
        }
    }

    private class OnActionExpandListenerWrapper extends BaseWrapper
        implements android.support.v4.view.MenuItemCompat.OnActionExpandListener
    {

        final MenuItemWrapperICS this$0;

        public boolean onMenuItemActionCollapse(MenuItem menuitem)
        {
            return ((android.view.MenuItem.OnActionExpandListener)mWrappedObject).onMenuItemActionCollapse(getMenuItemWrapper(menuitem));
        }

        public boolean onMenuItemActionExpand(MenuItem menuitem)
        {
            return ((android.view.MenuItem.OnActionExpandListener)mWrappedObject).onMenuItemActionExpand(getMenuItemWrapper(menuitem));
        }

        OnActionExpandListenerWrapper(android.view.MenuItem.OnActionExpandListener onactionexpandlistener)
        {
            this$0 = MenuItemWrapperICS.this;
            super(onactionexpandlistener);
        }
    }

    private class OnMenuItemClickListenerWrapper extends BaseWrapper
        implements android.view.MenuItem.OnMenuItemClickListener
    {

        final MenuItemWrapperICS this$0;

        public boolean onMenuItemClick(MenuItem menuitem)
        {
            return ((android.view.MenuItem.OnMenuItemClickListener)mWrappedObject).onMenuItemClick(getMenuItemWrapper(menuitem));
        }

        OnMenuItemClickListenerWrapper(android.view.MenuItem.OnMenuItemClickListener onmenuitemclicklistener)
        {
            this$0 = MenuItemWrapperICS.this;
            super(onmenuitemclicklistener);
        }
    }


    static final String LOG_TAG = "MenuItemWrapper";
    private Method mSetExclusiveCheckableMethod;

    MenuItemWrapperICS(Context context, SupportMenuItem supportmenuitem)
    {
        super(context, supportmenuitem);
    }

    public boolean collapseActionView()
    {
        return ((SupportMenuItem)mWrappedObject).collapseActionView();
    }

    ActionProviderWrapper createActionProviderWrapper(ActionProvider actionprovider)
    {
        return new ActionProviderWrapper(mContext, actionprovider);
    }

    public boolean expandActionView()
    {
        return ((SupportMenuItem)mWrappedObject).expandActionView();
    }

    public ActionProvider getActionProvider()
    {
        android.support.v4.view.ActionProvider actionprovider = ((SupportMenuItem)mWrappedObject).getSupportActionProvider();
        if (actionprovider instanceof ActionProviderWrapper)
        {
            return ((ActionProviderWrapper)actionprovider).mInner;
        } else
        {
            return null;
        }
    }

    public View getActionView()
    {
        View view = ((SupportMenuItem)mWrappedObject).getActionView();
        if (view instanceof CollapsibleActionViewWrapper)
        {
            view = ((CollapsibleActionViewWrapper)view).getWrappedView();
        }
        return view;
    }

    public char getAlphabeticShortcut()
    {
        return ((SupportMenuItem)mWrappedObject).getAlphabeticShortcut();
    }

    public int getGroupId()
    {
        return ((SupportMenuItem)mWrappedObject).getGroupId();
    }

    public Drawable getIcon()
    {
        return ((SupportMenuItem)mWrappedObject).getIcon();
    }

    public Intent getIntent()
    {
        return ((SupportMenuItem)mWrappedObject).getIntent();
    }

    public int getItemId()
    {
        return ((SupportMenuItem)mWrappedObject).getItemId();
    }

    public android.view.ContextMenu.ContextMenuInfo getMenuInfo()
    {
        return ((SupportMenuItem)mWrappedObject).getMenuInfo();
    }

    public char getNumericShortcut()
    {
        return ((SupportMenuItem)mWrappedObject).getNumericShortcut();
    }

    public int getOrder()
    {
        return ((SupportMenuItem)mWrappedObject).getOrder();
    }

    public SubMenu getSubMenu()
    {
        return getSubMenuWrapper(((SupportMenuItem)mWrappedObject).getSubMenu());
    }

    public CharSequence getTitle()
    {
        return ((SupportMenuItem)mWrappedObject).getTitle();
    }

    public CharSequence getTitleCondensed()
    {
        return ((SupportMenuItem)mWrappedObject).getTitleCondensed();
    }

    public boolean hasSubMenu()
    {
        return ((SupportMenuItem)mWrappedObject).hasSubMenu();
    }

    public boolean isActionViewExpanded()
    {
        return ((SupportMenuItem)mWrappedObject).isActionViewExpanded();
    }

    public boolean isCheckable()
    {
        return ((SupportMenuItem)mWrappedObject).isCheckable();
    }

    public boolean isChecked()
    {
        return ((SupportMenuItem)mWrappedObject).isChecked();
    }

    public boolean isEnabled()
    {
        return ((SupportMenuItem)mWrappedObject).isEnabled();
    }

    public boolean isVisible()
    {
        return ((SupportMenuItem)mWrappedObject).isVisible();
    }

    public MenuItem setActionProvider(ActionProvider actionprovider)
    {
        SupportMenuItem supportmenuitem = (SupportMenuItem)mWrappedObject;
        ActionProviderWrapper actionproviderwrapper;
        if (actionprovider != null)
        {
            actionproviderwrapper = createActionProviderWrapper(actionprovider);
        } else
        {
            actionproviderwrapper = null;
        }
        supportmenuitem.setSupportActionProvider(actionproviderwrapper);
        return this;
    }

    public MenuItem setActionView(int i)
    {
        ((SupportMenuItem)mWrappedObject).setActionView(i);
        View view = ((SupportMenuItem)mWrappedObject).getActionView();
        if (view instanceof CollapsibleActionView)
        {
            ((SupportMenuItem)mWrappedObject).setActionView(new CollapsibleActionViewWrapper(view));
        }
        return this;
    }

    public MenuItem setActionView(View view)
    {
        if (view instanceof CollapsibleActionView)
        {
            view = new CollapsibleActionViewWrapper(view);
        }
        ((SupportMenuItem)mWrappedObject).setActionView(view);
        return this;
    }

    public MenuItem setAlphabeticShortcut(char c)
    {
        ((SupportMenuItem)mWrappedObject).setAlphabeticShortcut(c);
        return this;
    }

    public MenuItem setCheckable(boolean flag)
    {
        ((SupportMenuItem)mWrappedObject).setCheckable(flag);
        return this;
    }

    public MenuItem setChecked(boolean flag)
    {
        ((SupportMenuItem)mWrappedObject).setChecked(flag);
        return this;
    }

    public MenuItem setEnabled(boolean flag)
    {
        ((SupportMenuItem)mWrappedObject).setEnabled(flag);
        return this;
    }

    public void setExclusiveCheckable(boolean flag)
    {
        try
        {
            if (mSetExclusiveCheckableMethod == null)
            {
                Class class1 = ((SupportMenuItem)mWrappedObject).getClass();
                Class aclass[] = new Class[1];
                aclass[0] = Boolean.TYPE;
                mSetExclusiveCheckableMethod = class1.getDeclaredMethod("setExclusiveCheckable", aclass);
            }
            Method method = mSetExclusiveCheckableMethod;
            Object obj = mWrappedObject;
            Object aobj[] = new Object[1];
            aobj[0] = Boolean.valueOf(flag);
            method.invoke(obj, aobj);
            return;
        }
        catch (Exception exception)
        {
            Log.w("MenuItemWrapper", "Error while calling setExclusiveCheckable", exception);
        }
    }

    public MenuItem setIcon(int i)
    {
        ((SupportMenuItem)mWrappedObject).setIcon(i);
        return this;
    }

    public MenuItem setIcon(Drawable drawable)
    {
        ((SupportMenuItem)mWrappedObject).setIcon(drawable);
        return this;
    }

    public MenuItem setIntent(Intent intent)
    {
        ((SupportMenuItem)mWrappedObject).setIntent(intent);
        return this;
    }

    public MenuItem setNumericShortcut(char c)
    {
        ((SupportMenuItem)mWrappedObject).setNumericShortcut(c);
        return this;
    }

    public MenuItem setOnActionExpandListener(android.view.MenuItem.OnActionExpandListener onactionexpandlistener)
    {
        SupportMenuItem supportmenuitem = (SupportMenuItem)mWrappedObject;
        OnActionExpandListenerWrapper onactionexpandlistenerwrapper;
        if (onactionexpandlistener != null)
        {
            onactionexpandlistenerwrapper = new OnActionExpandListenerWrapper(onactionexpandlistener);
        } else
        {
            onactionexpandlistenerwrapper = null;
        }
        supportmenuitem.setSupportOnActionExpandListener(onactionexpandlistenerwrapper);
        return this;
    }

    public MenuItem setOnMenuItemClickListener(android.view.MenuItem.OnMenuItemClickListener onmenuitemclicklistener)
    {
        SupportMenuItem supportmenuitem = (SupportMenuItem)mWrappedObject;
        OnMenuItemClickListenerWrapper onmenuitemclicklistenerwrapper;
        if (onmenuitemclicklistener != null)
        {
            onmenuitemclicklistenerwrapper = new OnMenuItemClickListenerWrapper(onmenuitemclicklistener);
        } else
        {
            onmenuitemclicklistenerwrapper = null;
        }
        supportmenuitem.setOnMenuItemClickListener(onmenuitemclicklistenerwrapper);
        return this;
    }

    public MenuItem setShortcut(char c, char c1)
    {
        ((SupportMenuItem)mWrappedObject).setShortcut(c, c1);
        return this;
    }

    public void setShowAsAction(int i)
    {
        ((SupportMenuItem)mWrappedObject).setShowAsAction(i);
    }

    public MenuItem setShowAsActionFlags(int i)
    {
        ((SupportMenuItem)mWrappedObject).setShowAsActionFlags(i);
        return this;
    }

    public MenuItem setTitle(int i)
    {
        ((SupportMenuItem)mWrappedObject).setTitle(i);
        return this;
    }

    public MenuItem setTitle(CharSequence charsequence)
    {
        ((SupportMenuItem)mWrappedObject).setTitle(charsequence);
        return this;
    }

    public MenuItem setTitleCondensed(CharSequence charsequence)
    {
        ((SupportMenuItem)mWrappedObject).setTitleCondensed(charsequence);
        return this;
    }

    public MenuItem setVisible(boolean flag)
    {
        return ((SupportMenuItem)mWrappedObject).setVisible(flag);
    }
}
