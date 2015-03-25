// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.internal.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ListView;
import java.lang.reflect.Field;

// Referenced classes of package android.support.v7.internal.widget:
//            DrawableWrapper

public class ListViewCompat extends ListView
{
    private static class GateKeeperDrawable extends DrawableWrapper
    {

        private boolean mEnabled;

        public void draw(Canvas canvas)
        {
            if (mEnabled)
            {
                super.draw(canvas);
            }
        }

        void setEnabled(boolean flag)
        {
            mEnabled = flag;
        }

        public void setHotspot(float f, float f1)
        {
            if (mEnabled)
            {
                super.setHotspot(f, f1);
            }
        }

        public void setHotspotBounds(int i, int j, int k, int l)
        {
            if (mEnabled)
            {
                super.setHotspotBounds(i, j, k, l);
            }
        }

        public boolean setState(int ai[])
        {
            if (mEnabled)
            {
                return super.setState(ai);
            } else
            {
                return false;
            }
        }

        public boolean setVisible(boolean flag, boolean flag1)
        {
            if (mEnabled)
            {
                return super.setVisible(flag, flag1);
            } else
            {
                return false;
            }
        }

        public GateKeeperDrawable(Drawable drawable)
        {
            super(drawable);
            mEnabled = true;
        }
    }


    public static final int INVALID_POSITION = -1;
    public static final int NO_POSITION = -1;
    private static final int STATE_SET_NOTHING[] = {
        0
    };
    private Field mIsChildViewEnabled;
    int mSelectionBottomPadding;
    int mSelectionLeftPadding;
    int mSelectionRightPadding;
    int mSelectionTopPadding;
    private GateKeeperDrawable mSelector;
    final Rect mSelectorRect;

    public ListViewCompat(Context context)
    {
        this(context, null);
    }

    public ListViewCompat(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public ListViewCompat(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        mSelectorRect = new Rect();
        mSelectionLeftPadding = 0;
        mSelectionTopPadding = 0;
        mSelectionRightPadding = 0;
        mSelectionBottomPadding = 0;
        try
        {
            mIsChildViewEnabled = android/widget/AbsListView.getDeclaredField("mIsChildViewEnabled");
            mIsChildViewEnabled.setAccessible(true);
            return;
        }
        catch (NoSuchFieldException nosuchfieldexception)
        {
            nosuchfieldexception.printStackTrace();
        }
    }

    protected void dispatchDraw(Canvas canvas)
    {
        drawSelectorCompat(canvas);
        super.dispatchDraw(canvas);
    }

    protected void drawSelectorCompat(Canvas canvas)
    {
        if (!mSelectorRect.isEmpty())
        {
            Drawable drawable = getSelector();
            drawable.setBounds(mSelectorRect);
            drawable.draw(canvas);
        }
    }

    protected void drawableStateChanged()
    {
        super.drawableStateChanged();
        mSelector.setEnabled(true);
        updateSelectorStateCompat();
    }

    public int lookForSelectablePosition(int i, boolean flag)
    {
        ListAdapter listadapter = getAdapter();
        if (listadapter != null && !isInTouchMode()) goto _L2; else goto _L1
_L1:
        return -1;
_L2:
        int j;
        int k;
        j = listadapter.getCount();
        if (getAdapter().areAllItemsEnabled())
        {
            continue; /* Loop/switch isn't completed */
        }
        if (flag)
        {
            for (k = Math.max(0, i); k < j && !listadapter.isEnabled(k); k++) { }
        } else
        {
            for (k = Math.min(i, j - 1); k >= 0 && !listadapter.isEnabled(k); k--) { }
        }
        if (k < 0 || k >= j) goto _L1; else goto _L3
_L3:
        return k;
        if (i < 0 || i >= j) goto _L1; else goto _L4
_L4:
        return i;
    }

    public int measureHeightOfChildrenCompat(int i, int j, int k, int l, int i1)
    {
        int j1;
        int k1;
        int l1;
        Drawable drawable;
        ListAdapter listadapter;
        j1 = getListPaddingTop();
        k1 = getListPaddingBottom();
        getListPaddingLeft();
        getListPaddingRight();
        l1 = getDividerHeight();
        drawable = getDivider();
        listadapter = getAdapter();
        if (listadapter != null) goto _L2; else goto _L1
_L1:
        int k2 = j1 + k1;
_L4:
        return k2;
_L2:
        int i2 = j1 + k1;
        int j2;
        View view;
        int l2;
        int i3;
        if (l1 > 0 && drawable != null)
        {
            j2 = l1;
        } else
        {
            j2 = 0;
        }
        k2 = 0;
        view = null;
        l2 = 0;
        i3 = listadapter.getCount();
        for (int j3 = 0; j3 < i3; j3++)
        {
            int k3 = listadapter.getItemViewType(j3);
            if (k3 != l2)
            {
                view = null;
                l2 = k3;
            }
            view = listadapter.getView(j3, view, this);
            android.view.ViewGroup.LayoutParams layoutparams = view.getLayoutParams();
            int l3;
            if (layoutparams != null && layoutparams.height > 0)
            {
                l3 = android.view.View.MeasureSpec.makeMeasureSpec(layoutparams.height, 0x40000000);
            } else
            {
                l3 = android.view.View.MeasureSpec.makeMeasureSpec(0, 0);
            }
            view.measure(i, l3);
            if (j3 > 0)
            {
                i2 += j2;
            }
            i2 += view.getMeasuredHeight();
            if (i2 >= l)
            {
                if (i1 < 0 || j3 <= i1 || k2 <= 0 || i2 == l)
                {
                    return l;
                }
                continue; /* Loop/switch isn't completed */
            }
            if (i1 >= 0 && j3 >= i1)
            {
                k2 = i2;
            }
        }

        return i2;
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected void positionSelectorCompat(int i, View view)
    {
        Rect rect = mSelectorRect;
        rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        rect.left = rect.left - mSelectionLeftPadding;
        rect.top = rect.top - mSelectionTopPadding;
        rect.right = rect.right + mSelectionRightPadding;
        rect.bottom = rect.bottom + mSelectionBottomPadding;
        boolean flag;
        Field field;
        flag = mIsChildViewEnabled.getBoolean(this);
        if (view.isEnabled() == flag)
        {
            break MISSING_BLOCK_LABEL_130;
        }
        field = mIsChildViewEnabled;
        boolean flag1;
        if (!flag)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        try
        {
            field.set(this, Boolean.valueOf(flag1));
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            illegalaccessexception.printStackTrace();
            return;
        }
        if (i == -1)
        {
            break MISSING_BLOCK_LABEL_130;
        }
        refreshDrawableState();
    }

    protected void positionSelectorLikeFocusCompat(int i, View view)
    {
        boolean flag = true;
        Drawable drawable = getSelector();
        boolean flag1;
        if (drawable != null && i != -1)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        if (flag1)
        {
            drawable.setVisible(false, false);
        }
        positionSelectorCompat(i, view);
        if (flag1)
        {
            Rect rect = mSelectorRect;
            float f = rect.exactCenterX();
            float f1 = rect.exactCenterY();
            if (getVisibility() != 0)
            {
                flag = false;
            }
            drawable.setVisible(flag, false);
            DrawableCompat.setHotspot(drawable, f, f1);
        }
    }

    protected void positionSelectorLikeTouchCompat(int i, View view, float f, float f1)
    {
        positionSelectorLikeFocusCompat(i, view);
        Drawable drawable = getSelector();
        if (drawable != null && i != -1)
        {
            DrawableCompat.setHotspot(drawable, f, f1);
        }
    }

    public void setSelector(Drawable drawable)
    {
        mSelector = new GateKeeperDrawable(drawable);
        super.setSelector(mSelector);
        Rect rect = new Rect();
        drawable.getPadding(rect);
        mSelectionLeftPadding = rect.left;
        mSelectionTopPadding = rect.top;
        mSelectionRightPadding = rect.right;
        mSelectionBottomPadding = rect.bottom;
    }

    protected void setSelectorEnabled(boolean flag)
    {
        mSelector.setEnabled(flag);
    }

    protected boolean shouldShowSelectorCompat()
    {
        return touchModeDrawsInPressedStateCompat() && isPressed();
    }

    protected boolean touchModeDrawsInPressedStateCompat()
    {
        return false;
    }

    protected void updateSelectorStateCompat()
    {
        Drawable drawable = getSelector();
        if (drawable != null && shouldShowSelectorCompat())
        {
            drawable.setState(getDrawableState());
        }
    }

}
