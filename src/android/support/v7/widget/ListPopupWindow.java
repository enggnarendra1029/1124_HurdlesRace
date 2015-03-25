// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.SystemClock;
import android.support.v4.text.TextUtilsCompat;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v4.widget.ListViewAutoScrollHelper;
import android.support.v4.widget.PopupWindowCompat;
import android.support.v7.internal.widget.AppCompatPopupWindow;
import android.support.v7.internal.widget.ListViewCompat;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import java.lang.reflect.Method;

public class ListPopupWindow
{
    private static class DropDownListView extends ListViewCompat
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
        //                       1 105
        //                       2 107
        //                       3 97;
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
        static boolean access$502(DropDownListView dropdownlistview, boolean flag)
        {
            dropdownlistview.mListSelectionHidden = flag;
            return flag;
        }

*/

        public DropDownListView(Context context, boolean flag)
        {
            super(context, null, android.support.v7.appcompat.R.attr.dropDownListViewStyle);
            mHijackFocus = flag;
            setCacheColorHint(0);
        }
    }

    public static abstract class ForwardingListener
        implements android.view.View.OnTouchListener
    {

        private int mActivePointerId;
        private Runnable mDisallowIntercept;
        private boolean mForwarding;
        private final int mLongPressTimeout;
        private final float mScaledTouchSlop;
        private final View mSrc;
        private final int mTapTimeout = ViewConfiguration.getTapTimeout();
        private final int mTmpLocation[] = new int[2];
        private Runnable mTriggerLongPress;
        private boolean mWasLongPress;

        private void clearCallbacks()
        {
            if (mTriggerLongPress != null)
            {
                mSrc.removeCallbacks(mTriggerLongPress);
            }
            if (mDisallowIntercept != null)
            {
                mSrc.removeCallbacks(mDisallowIntercept);
            }
        }

        private void onLongPress()
        {
            clearCallbacks();
            while (!mSrc.isEnabled() || !onForwardingStarted()) 
            {
                return;
            }
            mSrc.getParent().requestDisallowInterceptTouchEvent(true);
            long l = SystemClock.uptimeMillis();
            MotionEvent motionevent = MotionEvent.obtain(l, l, 3, 0.0F, 0.0F, 0);
            mSrc.onTouchEvent(motionevent);
            motionevent.recycle();
            mForwarding = true;
            mWasLongPress = true;
        }

        private boolean onTouchForwarded(MotionEvent motionevent)
        {
            boolean flag = true;
            View view = mSrc;
            ListPopupWindow listpopupwindow = getPopup();
            DropDownListView dropdownlistview;
            if (listpopupwindow != null && listpopupwindow.isShowing())
            {
                if ((dropdownlistview = listpopupwindow.mDropDownList) != null && dropdownlistview.isShown())
                {
                    MotionEvent motionevent1 = MotionEvent.obtainNoHistory(motionevent);
                    toGlobalMotionEvent(view, motionevent1);
                    toLocalMotionEvent(dropdownlistview, motionevent1);
                    boolean flag1 = dropdownlistview.onForwardedEvent(motionevent1, mActivePointerId);
                    motionevent1.recycle();
                    int i = MotionEventCompat.getActionMasked(motionevent);
                    int j;
                    if (i != flag && i != 3)
                    {
                        j = ((flag) ? 1 : 0);
                    } else
                    {
                        j = 0;
                    }
                    if (!flag1 || j == 0)
                    {
                        flag = false;
                    }
                    return flag;
                }
            }
            return false;
        }

        private boolean onTouchObserved(MotionEvent motionevent)
        {
            View view = mSrc;
            if (view.isEnabled()) goto _L2; else goto _L1
_L1:
            return false;
_L2:
            switch (MotionEventCompat.getActionMasked(motionevent))
            {
            default:
                return false;

            case 0: // '\0'
                mActivePointerId = motionevent.getPointerId(0);
                mWasLongPress = false;
                if (mDisallowIntercept == null)
                {
                    mDisallowIntercept = new DisallowIntercept();
                }
                view.postDelayed(mDisallowIntercept, mTapTimeout);
                if (mTriggerLongPress == null)
                {
                    mTriggerLongPress = new TriggerLongPress();
                }
                view.postDelayed(mTriggerLongPress, mLongPressTimeout);
                return false;

            case 2: // '\002'
                int i = motionevent.findPointerIndex(mActivePointerId);
                if (i >= 0 && !pointInView(view, motionevent.getX(i), motionevent.getY(i), mScaledTouchSlop))
                {
                    clearCallbacks();
                    view.getParent().requestDisallowInterceptTouchEvent(true);
                    return true;
                }
                break;

            case 1: // '\001'
            case 3: // '\003'
                clearCallbacks();
                return false;
            }
            if (true) goto _L1; else goto _L3
_L3:
        }

        private static boolean pointInView(View view, float f, float f1, float f2)
        {
            return f >= -f2 && f1 >= -f2 && f < f2 + (float)(view.getRight() - view.getLeft()) && f1 < f2 + (float)(view.getBottom() - view.getTop());
        }

        private boolean toGlobalMotionEvent(View view, MotionEvent motionevent)
        {
            int ai[] = mTmpLocation;
            view.getLocationOnScreen(ai);
            motionevent.offsetLocation(ai[0], ai[1]);
            return true;
        }

        private boolean toLocalMotionEvent(View view, MotionEvent motionevent)
        {
            int ai[] = mTmpLocation;
            view.getLocationOnScreen(ai);
            motionevent.offsetLocation(-ai[0], -ai[1]);
            return true;
        }

        public abstract ListPopupWindow getPopup();

        protected boolean onForwardingStarted()
        {
            ListPopupWindow listpopupwindow = getPopup();
            if (listpopupwindow != null && !listpopupwindow.isShowing())
            {
                listpopupwindow.show();
            }
            return true;
        }

        protected boolean onForwardingStopped()
        {
            ListPopupWindow listpopupwindow = getPopup();
            if (listpopupwindow != null && listpopupwindow.isShowing())
            {
                listpopupwindow.dismiss();
            }
            return true;
        }

        public boolean onTouch(View view, MotionEvent motionevent)
        {
            boolean flag = mForwarding;
            if (!flag) goto _L2; else goto _L1
_L1:
            boolean flag1;
            boolean flag2;
            if (mWasLongPress)
            {
                flag1 = onTouchForwarded(motionevent);
            } else
            if (onTouchForwarded(motionevent) || !onForwardingStopped())
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
_L4:
label0:
            {
                mForwarding = flag1;
                if (!flag1)
                {
                    flag2 = false;
                    if (!flag)
                    {
                        break label0;
                    }
                }
                flag2 = true;
            }
            return flag2;
_L2:
            if (onTouchObserved(motionevent) && onForwardingStarted())
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            if (flag1)
            {
                long l = SystemClock.uptimeMillis();
                MotionEvent motionevent1 = MotionEvent.obtain(l, l, 3, 0.0F, 0.0F, 0);
                mSrc.onTouchEvent(motionevent1);
                motionevent1.recycle();
            }
            if (true) goto _L4; else goto _L3
_L3:
        }



        public ForwardingListener(View view)
        {
            mSrc = view;
            mScaledTouchSlop = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
            mLongPressTimeout = (mTapTimeout + ViewConfiguration.getLongPressTimeout()) / 2;
        }
    }

    private class ForwardingListener.DisallowIntercept
        implements Runnable
    {

        final ForwardingListener this$0;

        public void run()
        {
            mSrc.getParent().requestDisallowInterceptTouchEvent(true);
        }

        private ForwardingListener.DisallowIntercept()
        {
            this$0 = ForwardingListener.this;
            super();
        }

    }

    private class ForwardingListener.TriggerLongPress
        implements Runnable
    {

        final ForwardingListener this$0;

        public void run()
        {
            onLongPress();
        }

        private ForwardingListener.TriggerLongPress()
        {
            this$0 = ForwardingListener.this;
            super();
        }

    }

    private class ListSelectorHider
        implements Runnable
    {

        final ListPopupWindow this$0;

        public void run()
        {
            clearListSelection();
        }

        private ListSelectorHider()
        {
            this$0 = ListPopupWindow.this;
            super();
        }

    }

    private class PopupDataSetObserver extends DataSetObserver
    {

        final ListPopupWindow this$0;

        public void onChanged()
        {
            if (isShowing())
            {
                show();
            }
        }

        public void onInvalidated()
        {
            dismiss();
        }

        private PopupDataSetObserver()
        {
            this$0 = ListPopupWindow.this;
            super();
        }

    }

    private class PopupScrollListener
        implements android.widget.AbsListView.OnScrollListener
    {

        final ListPopupWindow this$0;

        public void onScroll(AbsListView abslistview, int i, int j, int k)
        {
        }

        public void onScrollStateChanged(AbsListView abslistview, int i)
        {
            if (i == 1 && !isInputMethodNotNeeded() && mPopup.getContentView() != null)
            {
                mHandler.removeCallbacks(mResizePopupRunnable);
                mResizePopupRunnable.run();
            }
        }

        private PopupScrollListener()
        {
            this$0 = ListPopupWindow.this;
            super();
        }

    }

    private class PopupTouchInterceptor
        implements android.view.View.OnTouchListener
    {

        final ListPopupWindow this$0;

        public boolean onTouch(View view, MotionEvent motionevent)
        {
            int i;
            int j;
            int k;
            i = motionevent.getAction();
            j = (int)motionevent.getX();
            k = (int)motionevent.getY();
            if (i != 0 || mPopup == null || !mPopup.isShowing() || j < 0 || j >= mPopup.getWidth() || k < 0 || k >= mPopup.getHeight()) goto _L2; else goto _L1
_L1:
            mHandler.postDelayed(mResizePopupRunnable, 250L);
_L4:
            return false;
_L2:
            if (i == 1)
            {
                mHandler.removeCallbacks(mResizePopupRunnable);
            }
            if (true) goto _L4; else goto _L3
_L3:
        }

        private PopupTouchInterceptor()
        {
            this$0 = ListPopupWindow.this;
            super();
        }

    }

    private class ResizePopupRunnable
        implements Runnable
    {

        final ListPopupWindow this$0;

        public void run()
        {
            if (mDropDownList != null && mDropDownList.getCount() > mDropDownList.getChildCount() && mDropDownList.getChildCount() <= mListItemExpandMaximum)
            {
                mPopup.setInputMethodMode(2);
                show();
            }
        }

        private ResizePopupRunnable()
        {
            this$0 = ListPopupWindow.this;
            super();
        }

    }


    private static final boolean DEBUG = false;
    private static final int EXPAND_LIST_TIMEOUT = 250;
    public static final int INPUT_METHOD_FROM_FOCUSABLE = 0;
    public static final int INPUT_METHOD_NEEDED = 1;
    public static final int INPUT_METHOD_NOT_NEEDED = 2;
    public static final int MATCH_PARENT = -1;
    public static final int POSITION_PROMPT_ABOVE = 0;
    public static final int POSITION_PROMPT_BELOW = 1;
    private static final String TAG = "ListPopupWindow";
    public static final int WRAP_CONTENT = -2;
    private static Method sClipToWindowEnabledMethod;
    private ListAdapter mAdapter;
    private Context mContext;
    private boolean mDropDownAlwaysVisible;
    private View mDropDownAnchorView;
    private int mDropDownGravity;
    private int mDropDownHeight;
    private int mDropDownHorizontalOffset;
    private DropDownListView mDropDownList;
    private Drawable mDropDownListHighlight;
    private int mDropDownVerticalOffset;
    private boolean mDropDownVerticalOffsetSet;
    private int mDropDownWidth;
    private boolean mForceIgnoreOutsideTouch;
    private Handler mHandler;
    private final ListSelectorHider mHideSelector;
    private android.widget.AdapterView.OnItemClickListener mItemClickListener;
    private android.widget.AdapterView.OnItemSelectedListener mItemSelectedListener;
    private int mLayoutDirection;
    int mListItemExpandMaximum;
    private boolean mModal;
    private DataSetObserver mObserver;
    private PopupWindow mPopup;
    private int mPromptPosition;
    private View mPromptView;
    private final ResizePopupRunnable mResizePopupRunnable;
    private final PopupScrollListener mScrollListener;
    private Runnable mShowDropDownRunnable;
    private Rect mTempRect;
    private final PopupTouchInterceptor mTouchInterceptor;

    public ListPopupWindow(Context context)
    {
        this(context, null, android.support.v7.appcompat.R.attr.listPopupWindowStyle);
    }

    public ListPopupWindow(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, android.support.v7.appcompat.R.attr.listPopupWindowStyle);
    }

    public ListPopupWindow(Context context, AttributeSet attributeset, int i)
    {
        this(context, attributeset, i, 0);
    }

    public ListPopupWindow(Context context, AttributeSet attributeset, int i, int j)
    {
        mDropDownHeight = -2;
        mDropDownWidth = -2;
        mDropDownGravity = 0;
        mDropDownAlwaysVisible = false;
        mForceIgnoreOutsideTouch = false;
        mListItemExpandMaximum = 0x7fffffff;
        mPromptPosition = 0;
        mResizePopupRunnable = new ResizePopupRunnable();
        mTouchInterceptor = new PopupTouchInterceptor();
        mScrollListener = new PopupScrollListener();
        mHideSelector = new ListSelectorHider();
        mHandler = new Handler();
        mTempRect = new Rect();
        mContext = context;
        TypedArray typedarray = context.obtainStyledAttributes(attributeset, android.support.v7.appcompat.R.styleable.ListPopupWindow, i, j);
        mDropDownHorizontalOffset = typedarray.getDimensionPixelOffset(android.support.v7.appcompat.R.styleable.ListPopupWindow_android_dropDownHorizontalOffset, 0);
        mDropDownVerticalOffset = typedarray.getDimensionPixelOffset(android.support.v7.appcompat.R.styleable.ListPopupWindow_android_dropDownVerticalOffset, 0);
        if (mDropDownVerticalOffset != 0)
        {
            mDropDownVerticalOffsetSet = true;
        }
        typedarray.recycle();
        mPopup = new AppCompatPopupWindow(context, attributeset, i);
        mPopup.setInputMethodMode(1);
        mLayoutDirection = TextUtilsCompat.getLayoutDirectionFromLocale(mContext.getResources().getConfiguration().locale);
    }

    private int buildDropDown()
    {
        if (mDropDownList != null) goto _L2; else goto _L1
_L1:
        int i;
        int j;
        int k;
        Object obj;
        View view1;
        LinearLayout linearlayout;
        android.widget.LinearLayout.LayoutParams layoutparams1;
        Context context = mContext;
        mShowDropDownRunnable = new Runnable() {

            final ListPopupWindow this$0;

            public void run()
            {
                View view2 = getAnchorView();
                if (view2 != null && view2.getWindowToken() != null)
                {
                    show();
                }
            }

            
            {
                this$0 = ListPopupWindow.this;
                super();
            }
        };
        Drawable drawable;
        boolean flag;
        android.widget.LinearLayout.LayoutParams layoutparams2;
        if (!mModal)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        mDropDownList = new DropDownListView(context, flag);
        if (mDropDownListHighlight != null)
        {
            mDropDownList.setSelector(mDropDownListHighlight);
        }
        mDropDownList.setAdapter(mAdapter);
        mDropDownList.setOnItemClickListener(mItemClickListener);
        mDropDownList.setFocusable(true);
        mDropDownList.setFocusableInTouchMode(true);
        mDropDownList.setOnItemSelectedListener(new android.widget.AdapterView.OnItemSelectedListener() {

            final ListPopupWindow this$0;

            public void onItemSelected(AdapterView adapterview, View view2, int j1, long l1)
            {
                if (j1 != -1)
                {
                    DropDownListView dropdownlistview = mDropDownList;
                    if (dropdownlistview != null)
                    {
                        dropdownlistview.mListSelectionHidden = false;
                    }
                }
            }

            public void onNothingSelected(AdapterView adapterview)
            {
            }

            
            {
                this$0 = ListPopupWindow.this;
                super();
            }
        });
        mDropDownList.setOnScrollListener(mScrollListener);
        if (mItemSelectedListener != null)
        {
            mDropDownList.setOnItemSelectedListener(mItemSelectedListener);
        }
        obj = mDropDownList;
        view1 = mPromptView;
        i = 0;
        if (view1 == null) goto _L4; else goto _L3
_L3:
        linearlayout = new LinearLayout(context);
        linearlayout.setOrientation(1);
        layoutparams1 = new android.widget.LinearLayout.LayoutParams(-1, 0, 1.0F);
        mPromptPosition;
        JVM INSTR tableswitch 0 1: default 224
    //                   0 444
    //                   1 425;
           goto _L5 _L6 _L7
_L5:
        Log.e("ListPopupWindow", (new StringBuilder()).append("Invalid hint position ").append(mPromptPosition).toString());
_L16:
        view1.measure(android.view.View.MeasureSpec.makeMeasureSpec(mDropDownWidth, 0x80000000), 0);
        layoutparams2 = (android.widget.LinearLayout.LayoutParams)view1.getLayoutParams();
        i = view1.getMeasuredHeight() + layoutparams2.topMargin + layoutparams2.bottomMargin;
        obj = linearlayout;
_L4:
        mPopup.setContentView(((View) (obj)));
_L9:
        drawable = mPopup.getBackground();
        View view;
        android.widget.LinearLayout.LayoutParams layoutparams;
        if (drawable != null)
        {
            drawable.getPadding(mTempRect);
            j = mTempRect.top + mTempRect.bottom;
            if (!mDropDownVerticalOffsetSet)
            {
                mDropDownVerticalOffset = -mTempRect.top;
            }
        } else
        {
            mTempRect.setEmpty();
            j = 0;
        }
        if (mPopup.getInputMethodMode() != 2);
        k = mPopup.getMaxAvailableHeight(getAnchorView(), mDropDownVerticalOffset);
        if (mDropDownAlwaysVisible || mDropDownHeight == -1)
        {
            return k + j;
        }
          goto _L8
_L7:
        linearlayout.addView(((View) (obj)), layoutparams1);
        linearlayout.addView(view1);
        continue; /* Loop/switch isn't completed */
_L6:
        linearlayout.addView(view1);
        linearlayout.addView(((View) (obj)), layoutparams1);
        continue; /* Loop/switch isn't completed */
_L2:
        (ViewGroup)mPopup.getContentView();
        view = mPromptView;
        i = 0;
        if (view != null)
        {
            layoutparams = (android.widget.LinearLayout.LayoutParams)view.getLayoutParams();
            i = view.getMeasuredHeight() + layoutparams.topMargin + layoutparams.bottomMargin;
        }
          goto _L9
_L8:
        mDropDownWidth;
        JVM INSTR tableswitch -2 -1: default 556
    //                   -2 601
    //                   -1 641;
           goto _L10 _L11 _L12
_L10:
        int l = android.view.View.MeasureSpec.makeMeasureSpec(mDropDownWidth, 0x40000000);
_L14:
        int i1 = mDropDownList.measureHeightOfChildrenCompat(l, 0, -1, k - i, -1);
        if (i1 > 0)
        {
            i += j;
        }
        return i1 + i;
_L11:
        l = android.view.View.MeasureSpec.makeMeasureSpec(mContext.getResources().getDisplayMetrics().widthPixels - (mTempRect.left + mTempRect.right), 0x80000000);
        continue; /* Loop/switch isn't completed */
_L12:
        l = android.view.View.MeasureSpec.makeMeasureSpec(mContext.getResources().getDisplayMetrics().widthPixels - (mTempRect.left + mTempRect.right), 0x40000000);
        if (true) goto _L14; else goto _L13
_L13:
        if (true) goto _L16; else goto _L15
_L15:
    }

    private static boolean isConfirmKey(int i)
    {
        return i == 66 || i == 23;
    }

    private void removePromptView()
    {
        if (mPromptView != null)
        {
            ViewParent viewparent = mPromptView.getParent();
            if (viewparent instanceof ViewGroup)
            {
                ((ViewGroup)viewparent).removeView(mPromptView);
            }
        }
    }

    private void setPopupClipToScreenEnabled(boolean flag)
    {
        if (sClipToWindowEnabledMethod == null)
        {
            break MISSING_BLOCK_LABEL_41;
        }
        Method method = sClipToWindowEnabledMethod;
        PopupWindow popupwindow = mPopup;
        Object aobj[] = new Object[1];
        aobj[0] = Boolean.valueOf(flag);
        method.invoke(popupwindow, aobj);
        return;
        Exception exception;
        exception;
        Log.i("ListPopupWindow", "Could not call setClipToScreenEnabled() on PopupWindow. Oh well.");
        return;
    }

    public void clearListSelection()
    {
        DropDownListView dropdownlistview = mDropDownList;
        if (dropdownlistview != null)
        {
            dropdownlistview.mListSelectionHidden = true;
            dropdownlistview.requestLayout();
        }
    }

    public android.view.View.OnTouchListener createDragToOpenListener(View view)
    {
        return new ForwardingListener(view) {

            final ListPopupWindow this$0;

            public ListPopupWindow getPopup()
            {
                return ListPopupWindow.this;
            }

            
            {
                this$0 = ListPopupWindow.this;
                super(view);
            }
        };
    }

    public void dismiss()
    {
        mPopup.dismiss();
        removePromptView();
        mPopup.setContentView(null);
        mDropDownList = null;
        mHandler.removeCallbacks(mResizePopupRunnable);
    }

    public View getAnchorView()
    {
        return mDropDownAnchorView;
    }

    public int getAnimationStyle()
    {
        return mPopup.getAnimationStyle();
    }

    public Drawable getBackground()
    {
        return mPopup.getBackground();
    }

    public int getHeight()
    {
        return mDropDownHeight;
    }

    public int getHorizontalOffset()
    {
        return mDropDownHorizontalOffset;
    }

    public int getInputMethodMode()
    {
        return mPopup.getInputMethodMode();
    }

    public ListView getListView()
    {
        return mDropDownList;
    }

    public int getPromptPosition()
    {
        return mPromptPosition;
    }

    public Object getSelectedItem()
    {
        if (!isShowing())
        {
            return null;
        } else
        {
            return mDropDownList.getSelectedItem();
        }
    }

    public long getSelectedItemId()
    {
        if (!isShowing())
        {
            return 0x8000000000000000L;
        } else
        {
            return mDropDownList.getSelectedItemId();
        }
    }

    public int getSelectedItemPosition()
    {
        if (!isShowing())
        {
            return -1;
        } else
        {
            return mDropDownList.getSelectedItemPosition();
        }
    }

    public View getSelectedView()
    {
        if (!isShowing())
        {
            return null;
        } else
        {
            return mDropDownList.getSelectedView();
        }
    }

    public int getSoftInputMode()
    {
        return mPopup.getSoftInputMode();
    }

    public int getVerticalOffset()
    {
        if (!mDropDownVerticalOffsetSet)
        {
            return 0;
        } else
        {
            return mDropDownVerticalOffset;
        }
    }

    public int getWidth()
    {
        return mDropDownWidth;
    }

    public boolean isDropDownAlwaysVisible()
    {
        return mDropDownAlwaysVisible;
    }

    public boolean isInputMethodNotNeeded()
    {
        return mPopup.getInputMethodMode() == 2;
    }

    public boolean isModal()
    {
        return mModal;
    }

    public boolean isShowing()
    {
        return mPopup.isShowing();
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        if (!isShowing() || i == 62 || mDropDownList.getSelectedItemPosition() < 0 && isConfirmKey(i)) goto _L2; else goto _L1
_L1:
        int j;
        boolean flag;
        int k;
        int l;
        j = mDropDownList.getSelectedItemPosition();
        ListAdapter listadapter;
        if (!mPopup.isAboveAnchor())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        listadapter = mAdapter;
        k = 0x7fffffff;
        l = 0x80000000;
        if (listadapter != null)
        {
            boolean flag1 = listadapter.areAllItemsEnabled();
            if (flag1)
            {
                k = 0;
            } else
            {
                k = mDropDownList.lookForSelectablePosition(0, true);
            }
            if (flag1)
            {
                l = -1 + listadapter.getCount();
            } else
            {
                l = mDropDownList.lookForSelectablePosition(-1 + listadapter.getCount(), false);
            }
        }
        if ((!flag || i != 19 || j > k) && (flag || i != 20 || j < l)) goto _L4; else goto _L3
_L3:
        clearListSelection();
        mPopup.setInputMethodMode(1);
        show();
_L7:
        return true;
_L4:
        mDropDownList.mListSelectionHidden = false;
        if (!mDropDownList.onKeyDown(i, keyevent))
        {
            break; /* Loop/switch isn't completed */
        }
        mPopup.setInputMethodMode(2);
        mDropDownList.requestFocusFromTouch();
        show();
        i;
        JVM INSTR lookupswitch 4: default 284
    //                   19: 154
    //                   20: 154
    //                   23: 154
    //                   66: 154;
           goto _L2 _L5 _L5 _L5 _L5
_L5:
        if (true) goto _L7; else goto _L6
_L2:
        return false;
_L6:
        if (!flag || i != 20)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (j != l) goto _L2; else goto _L8
_L8:
        return true;
        if (flag || i != 19 || j != k) goto _L2; else goto _L9
_L9:
        return true;
    }

    public boolean onKeyPreIme(int i, KeyEvent keyevent)
    {
        if (i == 4 && isShowing())
        {
            View view = mDropDownAnchorView;
            if (keyevent.getAction() == 0 && keyevent.getRepeatCount() == 0)
            {
                android.view.KeyEvent.DispatcherState dispatcherstate1 = view.getKeyDispatcherState();
                if (dispatcherstate1 != null)
                {
                    dispatcherstate1.startTracking(keyevent, this);
                }
                return true;
            }
            if (keyevent.getAction() == 1)
            {
                android.view.KeyEvent.DispatcherState dispatcherstate = view.getKeyDispatcherState();
                if (dispatcherstate != null)
                {
                    dispatcherstate.handleUpEvent(keyevent);
                }
                if (keyevent.isTracking() && !keyevent.isCanceled())
                {
                    dismiss();
                    return true;
                }
            }
        }
        return false;
    }

    public boolean onKeyUp(int i, KeyEvent keyevent)
    {
        if (isShowing() && mDropDownList.getSelectedItemPosition() >= 0)
        {
            boolean flag = mDropDownList.onKeyUp(i, keyevent);
            if (flag && isConfirmKey(i))
            {
                dismiss();
            }
            return flag;
        } else
        {
            return false;
        }
    }

    public boolean performItemClick(int i)
    {
        if (isShowing())
        {
            if (mItemClickListener != null)
            {
                DropDownListView dropdownlistview = mDropDownList;
                View view = dropdownlistview.getChildAt(i - dropdownlistview.getFirstVisiblePosition());
                ListAdapter listadapter = dropdownlistview.getAdapter();
                mItemClickListener.onItemClick(dropdownlistview, view, i, listadapter.getItemId(i));
            }
            return true;
        } else
        {
            return false;
        }
    }

    public void postShow()
    {
        mHandler.post(mShowDropDownRunnable);
    }

    public void setAdapter(ListAdapter listadapter)
    {
        if (mObserver != null) goto _L2; else goto _L1
_L1:
        mObserver = new PopupDataSetObserver();
_L4:
        mAdapter = listadapter;
        if (mAdapter != null)
        {
            listadapter.registerDataSetObserver(mObserver);
        }
        if (mDropDownList != null)
        {
            mDropDownList.setAdapter(mAdapter);
        }
        return;
_L2:
        if (mAdapter != null)
        {
            mAdapter.unregisterDataSetObserver(mObserver);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void setAnchorView(View view)
    {
        mDropDownAnchorView = view;
    }

    public void setAnimationStyle(int i)
    {
        mPopup.setAnimationStyle(i);
    }

    public void setBackgroundDrawable(Drawable drawable)
    {
        mPopup.setBackgroundDrawable(drawable);
    }

    public void setContentWidth(int i)
    {
        Drawable drawable = mPopup.getBackground();
        if (drawable != null)
        {
            drawable.getPadding(mTempRect);
            mDropDownWidth = i + (mTempRect.left + mTempRect.right);
            return;
        } else
        {
            setWidth(i);
            return;
        }
    }

    public void setDropDownAlwaysVisible(boolean flag)
    {
        mDropDownAlwaysVisible = flag;
    }

    public void setDropDownGravity(int i)
    {
        mDropDownGravity = i;
    }

    public void setForceIgnoreOutsideTouch(boolean flag)
    {
        mForceIgnoreOutsideTouch = flag;
    }

    public void setHeight(int i)
    {
        mDropDownHeight = i;
    }

    public void setHorizontalOffset(int i)
    {
        mDropDownHorizontalOffset = i;
    }

    public void setInputMethodMode(int i)
    {
        mPopup.setInputMethodMode(i);
    }

    void setListItemExpandMax(int i)
    {
        mListItemExpandMaximum = i;
    }

    public void setListSelector(Drawable drawable)
    {
        mDropDownListHighlight = drawable;
    }

    public void setModal(boolean flag)
    {
        mModal = flag;
        mPopup.setFocusable(flag);
    }

    public void setOnDismissListener(android.widget.PopupWindow.OnDismissListener ondismisslistener)
    {
        mPopup.setOnDismissListener(ondismisslistener);
    }

    public void setOnItemClickListener(android.widget.AdapterView.OnItemClickListener onitemclicklistener)
    {
        mItemClickListener = onitemclicklistener;
    }

    public void setOnItemSelectedListener(android.widget.AdapterView.OnItemSelectedListener onitemselectedlistener)
    {
        mItemSelectedListener = onitemselectedlistener;
    }

    public void setPromptPosition(int i)
    {
        mPromptPosition = i;
    }

    public void setPromptView(View view)
    {
        boolean flag = isShowing();
        if (flag)
        {
            removePromptView();
        }
        mPromptView = view;
        if (flag)
        {
            show();
        }
    }

    public void setSelection(int i)
    {
        DropDownListView dropdownlistview = mDropDownList;
        if (isShowing() && dropdownlistview != null)
        {
            dropdownlistview.mListSelectionHidden = false;
            dropdownlistview.setSelection(i);
            if (android.os.Build.VERSION.SDK_INT >= 11 && dropdownlistview.getChoiceMode() != 0)
            {
                dropdownlistview.setItemChecked(i, true);
            }
        }
    }

    public void setSoftInputMode(int i)
    {
        mPopup.setSoftInputMode(i);
    }

    public void setVerticalOffset(int i)
    {
        mDropDownVerticalOffset = i;
        mDropDownVerticalOffsetSet = true;
    }

    public void setWidth(int i)
    {
        mDropDownWidth = i;
    }

    public void show()
    {
        boolean flag = true;
        byte byte0 = -1;
        int i = buildDropDown();
        boolean flag1 = isInputMethodNotNeeded();
        if (mPopup.isShowing())
        {
            int j;
            int k;
            if (mDropDownWidth == byte0)
            {
                j = -1;
            } else
            if (mDropDownWidth == -2)
            {
                j = getAnchorView().getWidth();
            } else
            {
                j = mDropDownWidth;
            }
            if (mDropDownHeight == byte0)
            {
                if (flag1)
                {
                    k = i;
                } else
                {
                    k = byte0;
                }
                if (flag1)
                {
                    PopupWindow popupwindow3 = mPopup;
                    PopupWindow popupwindow1;
                    boolean flag2;
                    boolean flag3;
                    boolean flag4;
                    if (mDropDownWidth != byte0)
                    {
                        byte0 = 0;
                    }
                    popupwindow3.setWindowLayoutMode(byte0, 0);
                } else
                {
                    PopupWindow popupwindow2 = mPopup;
                    byte byte3;
                    if (mDropDownWidth == byte0)
                    {
                        byte3 = byte0;
                    } else
                    {
                        byte3 = 0;
                    }
                    popupwindow2.setWindowLayoutMode(byte3, byte0);
                }
            } else
            if (mDropDownHeight == -2)
            {
                k = i;
            } else
            {
                k = mDropDownHeight;
            }
            popupwindow1 = mPopup;
            flag2 = mForceIgnoreOutsideTouch;
            flag3 = false;
            if (!flag2)
            {
                flag4 = mDropDownAlwaysVisible;
                flag3 = false;
                if (!flag4)
                {
                    flag3 = flag;
                }
            }
            popupwindow1.setOutsideTouchable(flag3);
            mPopup.update(getAnchorView(), mDropDownHorizontalOffset, mDropDownVerticalOffset, j, k);
        } else
        {
            byte byte1;
            byte byte2;
            PopupWindow popupwindow;
            if (mDropDownWidth == byte0)
            {
                byte1 = -1;
            } else
            if (mDropDownWidth == -2)
            {
                mPopup.setWidth(getAnchorView().getWidth());
                byte1 = 0;
            } else
            {
                mPopup.setWidth(mDropDownWidth);
                byte1 = 0;
            }
            if (mDropDownHeight == byte0)
            {
                byte2 = -1;
            } else
            if (mDropDownHeight == -2)
            {
                mPopup.setHeight(i);
                byte2 = 0;
            } else
            {
                mPopup.setHeight(mDropDownHeight);
                byte2 = 0;
            }
            mPopup.setWindowLayoutMode(byte1, byte2);
            setPopupClipToScreenEnabled(flag);
            popupwindow = mPopup;
            if (mForceIgnoreOutsideTouch || mDropDownAlwaysVisible)
            {
                flag = false;
            }
            popupwindow.setOutsideTouchable(flag);
            mPopup.setTouchInterceptor(mTouchInterceptor);
            PopupWindowCompat.showAsDropDown(mPopup, getAnchorView(), mDropDownHorizontalOffset, mDropDownVerticalOffset, mDropDownGravity);
            mDropDownList.setSelection(byte0);
            if (!mModal || mDropDownList.isInTouchMode())
            {
                clearListSelection();
            }
            if (!mModal)
            {
                mHandler.post(mHideSelector);
                return;
            }
        }
    }

    static 
    {
        try
        {
            Class aclass[] = new Class[1];
            aclass[0] = Boolean.TYPE;
            sClipToWindowEnabledMethod = android/widget/PopupWindow.getDeclaredMethod("setClipToScreenEnabled", aclass);
        }
        catch (NoSuchMethodException nosuchmethodexception)
        {
            Log.i("ListPopupWindow", "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well.");
        }
    }




}
