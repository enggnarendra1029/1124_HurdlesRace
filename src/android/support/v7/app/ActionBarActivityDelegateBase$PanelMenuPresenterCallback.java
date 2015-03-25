// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.app;

import android.support.v7.internal.app.WindowCallback;
import android.support.v7.internal.view.menu.MenuBuilder;

// Referenced classes of package android.support.v7.app:
//            ActionBarActivityDelegateBase, ActionBarActivity

private final class <init>
    implements android.support.v7.internal.view.menu.
{

    final ActionBarActivityDelegateBase this$0;

    public void onCloseMenu(MenuBuilder menubuilder, boolean flag)
    {
        <init> <init>1;
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
            <init>1 = ActionBarActivityDelegateBase.access$600(actionbaractivitydelegatebase, menubuilder);
            if (<init>1 != null)
            {
                if (!flag1)
                {
                    break label0;
                }
                ActionBarActivityDelegateBase.access$700(ActionBarActivityDelegateBase.this, <init>1., <init>1, menubuilder1);
                ActionBarActivityDelegateBase.access$800(ActionBarActivityDelegateBase.this, <init>1, true);
            }
            return;
        }
        mActivity.closeOptionsMenu();
        ActionBarActivityDelegateBase.access$800(ActionBarActivityDelegateBase.this, <init>1, flag);
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

    private ()
    {
        this$0 = ActionBarActivityDelegateBase.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
