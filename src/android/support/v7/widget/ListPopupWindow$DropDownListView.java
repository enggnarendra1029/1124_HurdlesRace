// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.Context;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v4.widget.ListViewAutoScrollHelper;
import android.support.v7.internal.widget.ListViewCompat;
import android.view.MotionEvent;
import android.view.View;

// Referenced classes of package android.support.v7.widget:
//            ListPopupWindow

private static class setCacheColorHint extends ListViewCompat
{

    private ViewPropertyAnimatorCompat mClickAnimation;
    private boolean mDrawsInPressedState;
    private boolean mHijackFocus;
    private boolean mListSelectionHidden;
    private ListViewAutoScrollHelper mScrollHelper;

    private void clearPressedItem()
    {
        mDrawsInPressedState = false;
        setPressed(false);
        drawableStateChanged();
        if (mClickAnimation != null)
        {
            mClickAnimation.cancel();
            mClickAnimation = null;
        }
    }

    private void clickPressedItem(View view, int i)
    {
        performItemClick(view, i, getItemIdAtPosition(i));
    }

    private void setPressedItem(View view, int i, float f, float f1)
    {
        mDrawsInPressedState = true;
        setPressed(true);
        layoutChildren();
        setSelection(i);
        positionSelectorLikeTouchCompat(i, view, f, f1);
        setSelectorEnabled(false);
        refreshDrawableState();
    }

    public boolean hasFocus()
    {
        return mHijackFocus || super.hasFocus();
    }

    public boolean hasWindowFocus()
    {
        return mHijackFocus || super.hasWindowFocus();
    }

    public boolean isFocused()
    {
        return mHijackFocus || super.isFocused();
    }

    public boolean isInTouchMode()
    {
        return mHijackFocus && mListSelectionHidden || super.isInTouchMode();
    }

    public boolean onForwardedEvent(MotionEvent motionevent, int i)
    {
        boolean flag;
        int j;
        boolean flag1;
        flag = true;
        j = MotionEventCompat.getActionMasked(motionevent);
        flag1 = false;
        j;
        JVM INSTR tableswitch 1 3: default 40
    //                   1 105
    //                   2 107
    //                   3 97;
           goto _L1 _L2 _L3 _L4
_L1:
        if (!flag || flag1)
        {
            clearPressedItem();
        }
        if (!flag) goto _L6; else goto _L5
_L5:
        if (mScrollHelper == null)
        {
            mScrollHelper = new ListViewAutoScrollHelper(this);
        }
        mScrollHelper.setEnabled(true);
        mScrollHelper.onTouch(this, motionevent);
_L8:
        return flag;
_L4:
        flag1 = false;
        flag = false;
        continue; /* Loop/switch isn't completed */
_L2:
        flag = false;
_L3:
        int k = motionevent.findPointerIndex(i);
        if (k < 0)
        {
            flag1 = false;
            flag = false;
        } else
        {
            int l = (int)motionevent.getX(k);
            int i1 = (int)motionevent.getY(k);
            int j1 = pointToPosition(l, i1);
            if (j1 == -1)
            {
                flag1 = true;
            } else
            {
                View view = getChildAt(j1 - getFirstVisiblePosition());
                setPressedItem(view, j1, l, i1);
                flag = true;
                flag1 = false;
                if (j == 1)
                {
                    clickPressedItem(view, j1);
                    flag1 = false;
                }
            }
        }
        continue; /* Loop/switch isn't completed */
_L6:
        if (mScrollHelper == null) goto _L8; else goto _L7
_L7:
        mScrollHelper.setEnabled(false);
        return flag;
        if (true) goto _L1; else goto _L9
_L9:
    }

    protected boolean touchModeDrawsInPressedStateCompat()
    {
        return mDrawsInPressedState || super.touchModeDrawsInPressedStateCompat();
    }


/*
    static boolean access$502( , boolean flag)
    {
        .mListSelectionHidden = flag;
        return flag;
    }

*/

    public mListSelectionHidden(Context context, boolean flag)
    {
        super(context, null, android.support.v7.appcompat.stSelectionHidden);
        mHijackFocus = flag;
        setCacheColorHint(0);
    }
}
