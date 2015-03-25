// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.ViewCompat;
import android.support.v7.internal.widget.TintTypedArray;
import android.support.v7.internal.widget.ViewUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import java.lang.annotation.Annotation;

public class LinearLayoutCompat extends ViewGroup
{
    public static interface DividerMode
        extends Annotation
    {
    }

    public static class LayoutParams extends android.view.ViewGroup.MarginLayoutParams
    {

        public int gravity;
        public float weight;

        public LayoutParams(int i, int j)
        {
            super(i, j);
            gravity = -1;
            weight = 0.0F;
        }

        public LayoutParams(int i, int j, float f)
        {
            super(i, j);
            gravity = -1;
            weight = f;
        }

        public LayoutParams(Context context, AttributeSet attributeset)
        {
            super(context, attributeset);
            gravity = -1;
            TypedArray typedarray = context.obtainStyledAttributes(attributeset, android.support.v7.appcompat.R.styleable.LinearLayoutCompat_Layout);
            weight = typedarray.getFloat(android.support.v7.appcompat.R.styleable.LinearLayoutCompat_Layout_android_layout_weight, 0.0F);
            gravity = typedarray.getInt(android.support.v7.appcompat.R.styleable.LinearLayoutCompat_Layout_android_layout_gravity, -1);
            typedarray.recycle();
        }

        public LayoutParams(LayoutParams layoutparams)
        {
            super(layoutparams);
            gravity = -1;
            weight = layoutparams.weight;
            gravity = layoutparams.gravity;
        }

        public LayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
        {
            super(layoutparams);
            gravity = -1;
        }

        public LayoutParams(android.view.ViewGroup.MarginLayoutParams marginlayoutparams)
        {
            super(marginlayoutparams);
            gravity = -1;
        }
    }

    public static interface OrientationMode
        extends Annotation
    {
    }


    public static final int HORIZONTAL = 0;
    private static final int INDEX_BOTTOM = 2;
    private static final int INDEX_CENTER_VERTICAL = 0;
    private static final int INDEX_FILL = 3;
    private static final int INDEX_TOP = 1;
    public static final int SHOW_DIVIDER_BEGINNING = 1;
    public static final int SHOW_DIVIDER_END = 4;
    public static final int SHOW_DIVIDER_MIDDLE = 2;
    public static final int SHOW_DIVIDER_NONE = 0;
    public static final int VERTICAL = 1;
    private static final int VERTICAL_GRAVITY_COUNT = 4;
    private boolean mBaselineAligned;
    private int mBaselineAlignedChildIndex;
    private int mBaselineChildTop;
    private Drawable mDivider;
    private int mDividerHeight;
    private int mDividerPadding;
    private int mDividerWidth;
    private int mGravity;
    private int mMaxAscent[];
    private int mMaxDescent[];
    private int mOrientation;
    private int mShowDividers;
    private int mTotalLength;
    private boolean mUseLargestChild;
    private float mWeightSum;

    public LinearLayoutCompat(Context context)
    {
        this(context, null);
    }

    public LinearLayoutCompat(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public LinearLayoutCompat(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        mBaselineAligned = true;
        mBaselineAlignedChildIndex = -1;
        mBaselineChildTop = 0;
        mGravity = 0x800033;
        TintTypedArray tinttypedarray = TintTypedArray.obtainStyledAttributes(context, attributeset, android.support.v7.appcompat.R.styleable.LinearLayoutCompat, i, 0);
        int j = tinttypedarray.getInt(android.support.v7.appcompat.R.styleable.LinearLayoutCompat_android_orientation, -1);
        if (j >= 0)
        {
            setOrientation(j);
        }
        int k = tinttypedarray.getInt(android.support.v7.appcompat.R.styleable.LinearLayoutCompat_android_gravity, -1);
        if (k >= 0)
        {
            setGravity(k);
        }
        boolean flag = tinttypedarray.getBoolean(android.support.v7.appcompat.R.styleable.LinearLayoutCompat_android_baselineAligned, true);
        if (!flag)
        {
            setBaselineAligned(flag);
        }
        mWeightSum = tinttypedarray.getFloat(android.support.v7.appcompat.R.styleable.LinearLayoutCompat_android_weightSum, -1F);
        mBaselineAlignedChildIndex = tinttypedarray.getInt(android.support.v7.appcompat.R.styleable.LinearLayoutCompat_android_baselineAlignedChildIndex, -1);
        mUseLargestChild = tinttypedarray.getBoolean(android.support.v7.appcompat.R.styleable.LinearLayoutCompat_measureWithLargestChild, false);
        setDividerDrawable(tinttypedarray.getDrawable(android.support.v7.appcompat.R.styleable.LinearLayoutCompat_divider));
        mShowDividers = tinttypedarray.getInt(android.support.v7.appcompat.R.styleable.LinearLayoutCompat_showDividers, 0);
        mDividerPadding = tinttypedarray.getDimensionPixelSize(android.support.v7.appcompat.R.styleable.LinearLayoutCompat_dividerPadding, 0);
        tinttypedarray.recycle();
    }

    private void forceUniformHeight(int i, int j)
    {
        int k = android.view.View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0x40000000);
        for (int l = 0; l < i; l++)
        {
            View view = getVirtualChildAt(l);
            if (view.getVisibility() == 8)
            {
                continue;
            }
            LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
            if (layoutparams.height == -1)
            {
                int i1 = layoutparams.width;
                layoutparams.width = view.getMeasuredWidth();
                measureChildWithMargins(view, j, 0, k, 0);
                layoutparams.width = i1;
            }
        }

    }

    private void forceUniformWidth(int i, int j)
    {
        int k = android.view.View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0x40000000);
        for (int l = 0; l < i; l++)
        {
            View view = getVirtualChildAt(l);
            if (view.getVisibility() == 8)
            {
                continue;
            }
            LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
            if (layoutparams.width == -1)
            {
                int i1 = layoutparams.height;
                layoutparams.height = view.getMeasuredHeight();
                measureChildWithMargins(view, k, 0, j, 0);
                layoutparams.height = i1;
            }
        }

    }

    private void setChildFrame(View view, int i, int j, int k, int l)
    {
        view.layout(i, j, i + k, j + l);
    }

    protected boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
    {
        return layoutparams instanceof LayoutParams;
    }

    void drawDividersHorizontal(Canvas canvas)
    {
        int i = getVirtualChildCount();
        boolean flag = ViewUtils.isLayoutRtl(this);
        int j = 0;
        while (j < i) 
        {
            View view1 = getVirtualChildAt(j);
            if (view1 != null && view1.getVisibility() != 8 && hasDividerBeforeChildAt(j))
            {
                LayoutParams layoutparams1 = (LayoutParams)view1.getLayoutParams();
                int l;
                if (flag)
                {
                    l = view1.getRight() + layoutparams1.rightMargin;
                } else
                {
                    l = view1.getLeft() - layoutparams1.leftMargin - mDividerWidth;
                }
                drawVerticalDivider(canvas, l);
            }
            j++;
        }
        if (hasDividerBeforeChildAt(i))
        {
            View view = getVirtualChildAt(i - 1);
            int k;
            if (view == null)
            {
                if (flag)
                {
                    k = getPaddingLeft();
                } else
                {
                    k = getWidth() - getPaddingRight() - mDividerWidth;
                }
            } else
            {
                LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
                if (flag)
                {
                    k = view.getLeft() - layoutparams.leftMargin - mDividerWidth;
                } else
                {
                    k = view.getRight() + layoutparams.rightMargin;
                }
            }
            drawVerticalDivider(canvas, k);
        }
    }

    void drawDividersVertical(Canvas canvas)
    {
        int i = getVirtualChildCount();
        for (int j = 0; j < i; j++)
        {
            View view1 = getVirtualChildAt(j);
            if (view1 != null && view1.getVisibility() != 8 && hasDividerBeforeChildAt(j))
            {
                LayoutParams layoutparams1 = (LayoutParams)view1.getLayoutParams();
                drawHorizontalDivider(canvas, view1.getTop() - layoutparams1.topMargin - mDividerHeight);
            }
        }

        if (hasDividerBeforeChildAt(i))
        {
            View view = getVirtualChildAt(i - 1);
            int k;
            if (view == null)
            {
                k = getHeight() - getPaddingBottom() - mDividerHeight;
            } else
            {
                LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
                k = view.getBottom() + layoutparams.bottomMargin;
            }
            drawHorizontalDivider(canvas, k);
        }
    }

    void drawHorizontalDivider(Canvas canvas, int i)
    {
        mDivider.setBounds(getPaddingLeft() + mDividerPadding, i, getWidth() - getPaddingRight() - mDividerPadding, i + mDividerHeight);
        mDivider.draw(canvas);
    }

    void drawVerticalDivider(Canvas canvas, int i)
    {
        mDivider.setBounds(i, getPaddingTop() + mDividerPadding, i + mDividerWidth, getHeight() - getPaddingBottom() - mDividerPadding);
        mDivider.draw(canvas);
    }

    protected LayoutParams generateDefaultLayoutParams()
    {
        if (mOrientation == 0)
        {
            return new LayoutParams(-2, -2);
        }
        if (mOrientation == 1)
        {
            return new LayoutParams(-1, -2);
        } else
        {
            return null;
        }
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
        return new LayoutParams(layoutparams);
    }

    public volatile android.view.ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeset)
    {
        return generateLayoutParams(attributeset);
    }

    protected volatile android.view.ViewGroup.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
    {
        return generateLayoutParams(layoutparams);
    }

    public int getBaseline()
    {
        int i = -1;
        if (mBaselineAlignedChildIndex >= 0) goto _L2; else goto _L1
_L1:
        i = super.getBaseline();
_L4:
        return i;
_L2:
        View view;
        int j;
        if (getChildCount() <= mBaselineAlignedChildIndex)
        {
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
        }
        view = getChildAt(mBaselineAlignedChildIndex);
        j = view.getBaseline();
        if (j != i)
        {
            break; /* Loop/switch isn't completed */
        }
        if (mBaselineAlignedChildIndex != 0)
        {
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
        }
        if (true) goto _L4; else goto _L3
_L3:
        int k = mBaselineChildTop;
        if (mOrientation != 1) goto _L6; else goto _L5
_L5:
        int l = 0x70 & mGravity;
        if (l == 48) goto _L6; else goto _L7
_L7:
        l;
        JVM INSTR lookupswitch 2: default 132
    //                   16: 172
    //                   80: 148;
           goto _L6 _L8 _L9
_L6:
        return j + (k + ((LayoutParams)view.getLayoutParams()).topMargin);
_L9:
        k = getBottom() - getTop() - getPaddingBottom() - mTotalLength;
        continue; /* Loop/switch isn't completed */
_L8:
        k += (getBottom() - getTop() - getPaddingTop() - getPaddingBottom() - mTotalLength) / 2;
        if (true) goto _L6; else goto _L10
_L10:
    }

    public int getBaselineAlignedChildIndex()
    {
        return mBaselineAlignedChildIndex;
    }

    int getChildrenSkipCount(View view, int i)
    {
        return 0;
    }

    public Drawable getDividerDrawable()
    {
        return mDivider;
    }

    public int getDividerPadding()
    {
        return mDividerPadding;
    }

    public int getDividerWidth()
    {
        return mDividerWidth;
    }

    int getLocationOffset(View view)
    {
        return 0;
    }

    int getNextLocationOffset(View view)
    {
        return 0;
    }

    public int getOrientation()
    {
        return mOrientation;
    }

    public int getShowDividers()
    {
        return mShowDividers;
    }

    View getVirtualChildAt(int i)
    {
        return getChildAt(i);
    }

    int getVirtualChildCount()
    {
        return getChildCount();
    }

    public float getWeightSum()
    {
        return mWeightSum;
    }

    protected boolean hasDividerBeforeChildAt(int i)
    {
        if (i != 0) goto _L2; else goto _L1
_L1:
        if ((1 & mShowDividers) == 0) goto _L4; else goto _L3
_L3:
        return true;
_L4:
        return false;
_L2:
        if (i != getChildCount())
        {
            break; /* Loop/switch isn't completed */
        }
        if ((4 & mShowDividers) == 0)
        {
            return false;
        }
        if (true) goto _L3; else goto _L5
_L5:
        if ((2 & mShowDividers) != 0)
        {
            int j = i - 1;
            do
            {
label0:
                {
                    boolean flag = false;
                    if (j >= 0)
                    {
                        if (getChildAt(j).getVisibility() == 8)
                        {
                            break label0;
                        }
                        flag = true;
                    }
                    return flag;
                }
                j--;
            } while (true);
        } else
        {
            return false;
        }
    }

    public boolean isBaselineAligned()
    {
        return mBaselineAligned;
    }

    public boolean isMeasureWithLargestChildEnabled()
    {
        return mUseLargestChild;
    }

    void layoutHorizontal(int i, int j, int k, int l)
    {
        boolean flag;
        int i1;
        int k1;
        int l1;
        int i2;
        int j2;
        int k2;
        boolean flag1;
        int ai[];
        int ai1[];
        flag = ViewUtils.isLayoutRtl(this);
        i1 = getPaddingTop();
        int j1 = l - j;
        k1 = j1 - getPaddingBottom();
        l1 = j1 - i1 - getPaddingBottom();
        i2 = getVirtualChildCount();
        j2 = 0x800007 & mGravity;
        k2 = 0x70 & mGravity;
        flag1 = mBaselineAligned;
        ai = mMaxAscent;
        ai1 = mMaxDescent;
        GravityCompat.getAbsoluteGravity(j2, ViewCompat.getLayoutDirection(this));
        JVM INSTR lookupswitch 2: default 116
    //                   1: 210
    //                   5: 192;
           goto _L1 _L2 _L3
_L1:
        int l2 = getPaddingLeft();
_L16:
        byte byte0;
        int i3;
        int j3;
        byte0 = 1;
        i3 = 0;
        if (flag)
        {
            i3 = i2 - 1;
            byte0 = -1;
        }
        j3 = 0;
_L7:
        int k3;
        View view;
        if (j3 >= i2)
        {
            break; /* Loop/switch isn't completed */
        }
        k3 = i3 + byte0 * j3;
        view = getVirtualChildAt(k3);
        if (view != null) goto _L5; else goto _L4
_L4:
        l2 += measureNullChild(k3);
_L9:
        j3++;
        if (true) goto _L7; else goto _L6
_L3:
        l2 = (k + getPaddingLeft()) - i - mTotalLength;
        continue; /* Loop/switch isn't completed */
_L2:
        l2 = getPaddingLeft() + (k - i - mTotalLength) / 2;
        continue; /* Loop/switch isn't completed */
_L5:
        if (view.getVisibility() == 8) goto _L9; else goto _L8
_L8:
        int l3;
        int i4;
        int j4;
        LayoutParams layoutparams;
        int k4;
        l3 = view.getMeasuredWidth();
        i4 = view.getMeasuredHeight();
        j4 = -1;
        layoutparams = (LayoutParams)view.getLayoutParams();
        if (flag1 && layoutparams.height != -1)
        {
            j4 = view.getBaseline();
        }
        k4 = layoutparams.gravity;
        if (k4 < 0)
        {
            k4 = k2;
        }
        k4 & 0x70;
        JVM INSTR lookupswitch 3: default 344
    //                   16: 464
    //                   48: 433
    //                   80: 491;
           goto _L10 _L11 _L12 _L13
_L13:
        break MISSING_BLOCK_LABEL_491;
_L10:
        int l4 = i1;
_L14:
        if (hasDividerBeforeChildAt(k3))
        {
            l2 += mDividerWidth;
        }
        int j5 = l2 + layoutparams.leftMargin;
        setChildFrame(view, j5 + getLocationOffset(view), l4, l3, i4);
        l2 = j5 + (l3 + layoutparams.rightMargin + getNextLocationOffset(view));
        j3 += getChildrenSkipCount(view, k3);
          goto _L9
_L12:
        l4 = i1 + layoutparams.topMargin;
        if (j4 != -1)
        {
            l4 += ai[1] - j4;
        }
          goto _L14
_L11:
        l4 = (i1 + (l1 - i4) / 2 + layoutparams.topMargin) - layoutparams.bottomMargin;
          goto _L14
        l4 = k1 - i4 - layoutparams.bottomMargin;
        if (j4 != -1)
        {
            int i5 = view.getMeasuredHeight() - j4;
            l4 -= ai1[2] - i5;
        }
          goto _L14
_L6:
        return;
        if (true) goto _L16; else goto _L15
_L15:
    }

    void layoutVertical(int i, int j, int k, int l)
    {
        int i1;
        int k1;
        int l1;
        int i2;
        int j2;
        int k2;
        i1 = getPaddingLeft();
        int j1 = k - i;
        k1 = j1 - getPaddingRight();
        l1 = j1 - i1 - getPaddingRight();
        i2 = getVirtualChildCount();
        j2 = 0x70 & mGravity;
        k2 = 0x800007 & mGravity;
        j2;
        JVM INSTR lookupswitch 2: default 84
    //                   16: 149
    //                   80: 130;
           goto _L1 _L2 _L3
_L1:
        int l2 = getPaddingTop();
_L15:
        int i3 = 0;
_L7:
        View view;
        if (i3 >= i2)
        {
            break; /* Loop/switch isn't completed */
        }
        view = getVirtualChildAt(i3);
        if (view != null) goto _L5; else goto _L4
_L4:
        l2 += measureNullChild(i3);
_L9:
        i3++;
        if (true) goto _L7; else goto _L6
_L3:
        l2 = (l + getPaddingTop()) - j - mTotalLength;
        continue; /* Loop/switch isn't completed */
_L2:
        l2 = getPaddingTop() + (l - j - mTotalLength) / 2;
        continue; /* Loop/switch isn't completed */
_L5:
        if (view.getVisibility() == 8) goto _L9; else goto _L8
_L8:
        int j3;
        int k3;
        LayoutParams layoutparams;
        int l3;
        j3 = view.getMeasuredWidth();
        k3 = view.getMeasuredHeight();
        layoutparams = (LayoutParams)view.getLayoutParams();
        l3 = layoutparams.gravity;
        if (l3 < 0)
        {
            l3 = k2;
        }
        7 & GravityCompat.getAbsoluteGravity(l3, ViewCompat.getLayoutDirection(this));
        JVM INSTR lookupswitch 2: default 260
    //                   1: 355
    //                   5: 382;
           goto _L10 _L11 _L12
_L12:
        break MISSING_BLOCK_LABEL_382;
_L10:
        int i4 = i1 + layoutparams.leftMargin;
_L13:
        if (hasDividerBeforeChildAt(i3))
        {
            l2 += mDividerHeight;
        }
        int j4 = l2 + layoutparams.topMargin;
        setChildFrame(view, i4, j4 + getLocationOffset(view), j3, k3);
        l2 = j4 + (k3 + layoutparams.bottomMargin + getNextLocationOffset(view));
        i3 += getChildrenSkipCount(view, i3);
          goto _L9
_L11:
        i4 = (i1 + (l1 - j3) / 2 + layoutparams.leftMargin) - layoutparams.rightMargin;
          goto _L13
        i4 = k1 - j3 - layoutparams.rightMargin;
          goto _L13
_L6:
        return;
        if (true) goto _L15; else goto _L14
_L14:
    }

    void measureChildBeforeLayout(View view, int i, int j, int k, int l, int i1)
    {
        measureChildWithMargins(view, j, k, l, i1);
    }


// JavaClassFileOutputException: Prev chain is broken

    int measureNullChild(int i)
    {
        return 0;
    }


// JavaClassFileOutputException: Prev chain is broken

    protected void onDraw(Canvas canvas)
    {
        if (mDivider == null)
        {
            return;
        }
        if (mOrientation == 1)
        {
            drawDividersVertical(canvas);
            return;
        } else
        {
            drawDividersHorizontal(canvas);
            return;
        }
    }

    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityevent)
    {
        if (android.os.Build.VERSION.SDK_INT >= 14)
        {
            super.onInitializeAccessibilityEvent(accessibilityevent);
            accessibilityevent.setClassName(android/support/v7/widget/LinearLayoutCompat.getName());
        }
    }

    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilitynodeinfo)
    {
        if (android.os.Build.VERSION.SDK_INT >= 14)
        {
            super.onInitializeAccessibilityNodeInfo(accessibilitynodeinfo);
            accessibilitynodeinfo.setClassName(android/support/v7/widget/LinearLayoutCompat.getName());
        }
    }

    protected void onLayout(boolean flag, int i, int j, int k, int l)
    {
        if (mOrientation == 1)
        {
            layoutVertical(i, j, k, l);
            return;
        } else
        {
            layoutHorizontal(i, j, k, l);
            return;
        }
    }

    protected void onMeasure(int i, int j)
    {
        if (mOrientation == 1)
        {
            measureVertical(i, j);
            return;
        } else
        {
            measureHorizontal(i, j);
            return;
        }
    }

    public void setBaselineAligned(boolean flag)
    {
        mBaselineAligned = flag;
    }

    public void setBaselineAlignedChildIndex(int i)
    {
        if (i < 0 || i >= getChildCount())
        {
            throw new IllegalArgumentException((new StringBuilder()).append("base aligned child index out of range (0, ").append(getChildCount()).append(")").toString());
        } else
        {
            mBaselineAlignedChildIndex = i;
            return;
        }
    }

    public void setDividerDrawable(Drawable drawable)
    {
        if (drawable == mDivider)
        {
            return;
        }
        mDivider = drawable;
        boolean flag;
        if (drawable != null)
        {
            mDividerWidth = drawable.getIntrinsicWidth();
            mDividerHeight = drawable.getIntrinsicHeight();
        } else
        {
            mDividerWidth = 0;
            mDividerHeight = 0;
        }
        flag = false;
        if (drawable == null)
        {
            flag = true;
        }
        setWillNotDraw(flag);
        requestLayout();
    }

    public void setDividerPadding(int i)
    {
        mDividerPadding = i;
    }

    public void setGravity(int i)
    {
        if (mGravity != i)
        {
            if ((0x800007 & i) == 0)
            {
                i |= 0x800003;
            }
            if ((i & 0x70) == 0)
            {
                i |= 0x30;
            }
            mGravity = i;
            requestLayout();
        }
    }

    public void setHorizontalGravity(int i)
    {
        int j = i & 0x800007;
        if ((0x800007 & mGravity) != j)
        {
            mGravity = j | 0xff7ffff8 & mGravity;
            requestLayout();
        }
    }

    public void setMeasureWithLargestChildEnabled(boolean flag)
    {
        mUseLargestChild = flag;
    }

    public void setOrientation(int i)
    {
        if (mOrientation != i)
        {
            mOrientation = i;
            requestLayout();
        }
    }

    public void setShowDividers(int i)
    {
        if (i != mShowDividers)
        {
            requestLayout();
        }
        mShowDividers = i;
    }

    public void setVerticalGravity(int i)
    {
        int j = i & 0x70;
        if ((0x70 & mGravity) != j)
        {
            mGravity = j | 0xffffff8f & mGravity;
            requestLayout();
        }
    }

    public void setWeightSum(float f)
    {
        mWeightSum = Math.max(0.0F, f);
    }

    public boolean shouldDelayChildPressedState()
    {
        return false;
    }
}
