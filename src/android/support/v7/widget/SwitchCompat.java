// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ViewCompat;
import android.support.v7.internal.text.AllCapsTransformationMethod;
import android.support.v7.internal.widget.TintManager;
import android.support.v7.internal.widget.TintTypedArray;
import android.support.v7.internal.widget.ViewUtils;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import android.widget.CompoundButton;
import java.util.List;

public class SwitchCompat extends CompoundButton
{

    private static final int CHECKED_STATE_SET[] = {
        0x10100a0
    };
    private static final int MONOSPACE = 3;
    private static final int SANS = 1;
    private static final int SERIF = 2;
    private static final int TEXT_APPEARANCE_ATTRS[];
    private static final int THUMB_ANIMATION_DURATION = 250;
    private static final int TOUCH_MODE_DOWN = 1;
    private static final int TOUCH_MODE_DRAGGING = 2;
    private static final int TOUCH_MODE_IDLE;
    private int mMinFlingVelocity;
    private Layout mOffLayout;
    private Layout mOnLayout;
    private Animation mPositionAnimator;
    private boolean mShowText;
    private boolean mSplitTrack;
    private int mSwitchBottom;
    private int mSwitchHeight;
    private int mSwitchLeft;
    private int mSwitchMinWidth;
    private int mSwitchPadding;
    private int mSwitchRight;
    private int mSwitchTop;
    private TransformationMethod mSwitchTransformationMethod;
    private int mSwitchWidth;
    private final Rect mTempRect;
    private ColorStateList mTextColors;
    private CharSequence mTextOff;
    private CharSequence mTextOn;
    private TextPaint mTextPaint;
    private Drawable mThumbDrawable;
    private float mThumbPosition;
    private int mThumbTextPadding;
    private int mThumbWidth;
    private final TintManager mTintManager;
    private int mTouchMode;
    private int mTouchSlop;
    private float mTouchX;
    private float mTouchY;
    private Drawable mTrackDrawable;
    private VelocityTracker mVelocityTracker;

    public SwitchCompat(Context context)
    {
        this(context, null);
    }

    public SwitchCompat(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, android.support.v7.appcompat.R.attr.switchStyle);
    }

    public SwitchCompat(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        mVelocityTracker = VelocityTracker.obtain();
        mTempRect = new Rect();
        mTextPaint = new TextPaint(1);
        Resources resources = getResources();
        mTextPaint.density = resources.getDisplayMetrics().density;
        TintTypedArray tinttypedarray = TintTypedArray.obtainStyledAttributes(context, attributeset, android.support.v7.appcompat.R.styleable.SwitchCompat, i, 0);
        mThumbDrawable = tinttypedarray.getDrawable(android.support.v7.appcompat.R.styleable.SwitchCompat_android_thumb);
        mTrackDrawable = tinttypedarray.getDrawable(android.support.v7.appcompat.R.styleable.SwitchCompat_track);
        mTextOn = tinttypedarray.getText(android.support.v7.appcompat.R.styleable.SwitchCompat_android_textOn);
        mTextOff = tinttypedarray.getText(android.support.v7.appcompat.R.styleable.SwitchCompat_android_textOff);
        mShowText = tinttypedarray.getBoolean(android.support.v7.appcompat.R.styleable.SwitchCompat_showText, true);
        mThumbTextPadding = tinttypedarray.getDimensionPixelSize(android.support.v7.appcompat.R.styleable.SwitchCompat_thumbTextPadding, 0);
        mSwitchMinWidth = tinttypedarray.getDimensionPixelSize(android.support.v7.appcompat.R.styleable.SwitchCompat_switchMinWidth, 0);
        mSwitchPadding = tinttypedarray.getDimensionPixelSize(android.support.v7.appcompat.R.styleable.SwitchCompat_switchPadding, 0);
        mSplitTrack = tinttypedarray.getBoolean(android.support.v7.appcompat.R.styleable.SwitchCompat_splitTrack, false);
        int j = tinttypedarray.getResourceId(android.support.v7.appcompat.R.styleable.SwitchCompat_switchTextAppearance, 0);
        if (j != 0)
        {
            setSwitchTextAppearance(context, j);
        }
        mTintManager = tinttypedarray.getTintManager();
        tinttypedarray.recycle();
        ViewConfiguration viewconfiguration = ViewConfiguration.get(context);
        mTouchSlop = viewconfiguration.getScaledTouchSlop();
        mMinFlingVelocity = viewconfiguration.getScaledMinimumFlingVelocity();
        refreshDrawableState();
        setChecked(isChecked());
    }

    private void animateThumbToCheckedState(boolean flag)
    {
        final float startPosition = mThumbPosition;
        float f;
        if (flag)
        {
            f = 1.0F;
        } else
        {
            f = 0.0F;
        }
        mPositionAnimator = new Animation() {

            final SwitchCompat this$0;
            final float val$diff;
            final float val$startPosition;

            protected void applyTransformation(float f1, Transformation transformation)
            {
                setThumbPosition(startPosition + f1 * diff);
            }

            
            {
                this$0 = SwitchCompat.this;
                startPosition = f;
                diff = f1;
                super();
            }
        };
        mPositionAnimator.setDuration(250L);
        startAnimation(mPositionAnimator);
    }

    private void cancelPositionAnimator()
    {
        if (mPositionAnimator != null)
        {
            clearAnimation();
            mPositionAnimator = null;
        }
    }

    private void cancelSuperTouch(MotionEvent motionevent)
    {
        MotionEvent motionevent1 = MotionEvent.obtain(motionevent);
        motionevent1.setAction(3);
        super.onTouchEvent(motionevent1);
        motionevent1.recycle();
    }

    private static float constrain(float f, float f1, float f2)
    {
        if (f < f1)
        {
            return f1;
        }
        if (f > f2)
        {
            return f2;
        } else
        {
            return f;
        }
    }

    private boolean getTargetCheckedState()
    {
        return mThumbPosition > 0.5F;
    }

    private int getThumbOffset()
    {
        float f;
        if (ViewUtils.isLayoutRtl(this))
        {
            f = 1.0F - mThumbPosition;
        } else
        {
            f = mThumbPosition;
        }
        return (int)(0.5F + f * (float)getThumbScrollRange());
    }

    private int getThumbScrollRange()
    {
        if (mTrackDrawable != null)
        {
            Rect rect = mTempRect;
            mTrackDrawable.getPadding(rect);
            return mSwitchWidth - mThumbWidth - rect.left - rect.right;
        } else
        {
            return 0;
        }
    }

    private boolean hitThumb(float f, float f1)
    {
        int i = getThumbOffset();
        mThumbDrawable.getPadding(mTempRect);
        int j = mSwitchTop - mTouchSlop;
        int k = (i + mSwitchLeft) - mTouchSlop;
        int l = k + mThumbWidth + mTempRect.left + mTempRect.right + mTouchSlop;
        int i1 = mSwitchBottom + mTouchSlop;
        return f > (float)k && f < (float)l && f1 > (float)j && f1 < (float)i1;
    }

    private Layout makeLayout(CharSequence charsequence)
    {
        CharSequence charsequence1;
        if (mSwitchTransformationMethod != null)
        {
            charsequence1 = mSwitchTransformationMethod.getTransformation(charsequence, this);
        } else
        {
            charsequence1 = charsequence;
        }
        return new StaticLayout(charsequence1, mTextPaint, (int)Math.ceil(Layout.getDesiredWidth(charsequence1, mTextPaint)), android.text.Layout.Alignment.ALIGN_NORMAL, 1.0F, 0.0F, true);
    }

    private void setThumbPosition(float f)
    {
        mThumbPosition = f;
        invalidate();
    }

    private void stopDrag(MotionEvent motionevent)
    {
        boolean flag;
        float f;
        flag = true;
        mTouchMode = 0;
        int i;
        if (motionevent.getAction() == flag && isEnabled())
        {
            i = ((flag) ? 1 : 0);
        } else
        {
            i = 0;
        }
        if (i == 0) goto _L2; else goto _L1
_L1:
        mVelocityTracker.computeCurrentVelocity(1000);
        f = mVelocityTracker.getXVelocity();
        if (Math.abs(f) <= (float)mMinFlingVelocity) goto _L4; else goto _L3
_L3:
        if (!ViewUtils.isLayoutRtl(this)) goto _L6; else goto _L5
_L5:
        if (f >= 0.0F)
        {
            flag = false;
        }
_L8:
        setChecked(flag);
        cancelSuperTouch(motionevent);
        return;
_L6:
        if (f <= 0.0F)
        {
            flag = false;
        }
        continue; /* Loop/switch isn't completed */
_L4:
        flag = getTargetCheckedState();
        continue; /* Loop/switch isn't completed */
_L2:
        flag = isChecked();
        if (true) goto _L8; else goto _L7
_L7:
    }

    public void draw(Canvas canvas)
    {
        Rect rect = mTempRect;
        int i = mSwitchLeft;
        int j = mSwitchTop;
        int k = mSwitchRight;
        int l = mSwitchBottom;
        int i1 = i + getThumbOffset();
        if (mTrackDrawable != null)
        {
            mTrackDrawable.getPadding(rect);
            i1 += rect.left;
            mTrackDrawable.setBounds(i, j, k, l);
        }
        if (mThumbDrawable != null)
        {
            mThumbDrawable.getPadding(rect);
            int j1 = i1 - rect.left;
            int k1 = i1 + mThumbWidth + rect.right;
            mThumbDrawable.setBounds(j1, j, k1, l);
            Drawable drawable = getBackground();
            if (drawable != null)
            {
                DrawableCompat.setHotspotBounds(drawable, j1, j, k1, l);
            }
        }
        super.draw(canvas);
    }

    public void drawableHotspotChanged(float f, float f1)
    {
        super.drawableHotspotChanged(f, f1);
        if (mThumbDrawable != null)
        {
            DrawableCompat.setHotspot(mThumbDrawable, f, f1);
        }
        if (mTrackDrawable != null)
        {
            DrawableCompat.setHotspot(mTrackDrawable, f, f1);
        }
    }

    protected void drawableStateChanged()
    {
        super.drawableStateChanged();
        int ai[] = getDrawableState();
        if (mThumbDrawable != null)
        {
            mThumbDrawable.setState(ai);
        }
        if (mTrackDrawable != null)
        {
            mTrackDrawable.setState(ai);
        }
        invalidate();
    }

    public int getCompoundPaddingLeft()
    {
        int i;
        if (!ViewUtils.isLayoutRtl(this))
        {
            i = super.getCompoundPaddingLeft();
        } else
        {
            i = super.getCompoundPaddingLeft() + mSwitchWidth;
            if (!TextUtils.isEmpty(getText()))
            {
                return i + mSwitchPadding;
            }
        }
        return i;
    }

    public int getCompoundPaddingRight()
    {
        int i;
        if (ViewUtils.isLayoutRtl(this))
        {
            i = super.getCompoundPaddingRight();
        } else
        {
            i = super.getCompoundPaddingRight() + mSwitchWidth;
            if (!TextUtils.isEmpty(getText()))
            {
                return i + mSwitchPadding;
            }
        }
        return i;
    }

    public boolean getShowText()
    {
        return mShowText;
    }

    public boolean getSplitTrack()
    {
        return mSplitTrack;
    }

    public int getSwitchMinWidth()
    {
        return mSwitchMinWidth;
    }

    public int getSwitchPadding()
    {
        return mSwitchPadding;
    }

    public CharSequence getTextOff()
    {
        return mTextOff;
    }

    public CharSequence getTextOn()
    {
        return mTextOn;
    }

    public Drawable getThumbDrawable()
    {
        return mThumbDrawable;
    }

    public int getThumbTextPadding()
    {
        return mThumbTextPadding;
    }

    public Drawable getTrackDrawable()
    {
        return mTrackDrawable;
    }

    public void jumpDrawablesToCurrentState()
    {
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            super.jumpDrawablesToCurrentState();
            if (mThumbDrawable != null)
            {
                mThumbDrawable.jumpToCurrentState();
            }
            if (mTrackDrawable != null)
            {
                mTrackDrawable.jumpToCurrentState();
            }
            if (mPositionAnimator != null && mPositionAnimator.hasStarted() && !mPositionAnimator.hasEnded())
            {
                clearAnimation();
                mPositionAnimator = null;
            }
        }
    }

    protected int[] onCreateDrawableState(int i)
    {
        int ai[] = super.onCreateDrawableState(i + 1);
        if (isChecked())
        {
            mergeDrawableStates(ai, CHECKED_STATE_SET);
        }
        return ai;
    }

    protected void onDraw(Canvas canvas)
    {
        super.onDraw(canvas);
        Rect rect = mTempRect;
        Drawable drawable = mTrackDrawable;
        int i;
        int j;
        int k;
        int l;
        Drawable drawable1;
        int i1;
        Layout layout;
        if (drawable != null)
        {
            drawable.getPadding(rect);
        } else
        {
            rect.setEmpty();
        }
        i = mSwitchTop;
        j = mSwitchBottom;
        k = i + rect.top;
        l = j - rect.bottom;
        drawable1 = mThumbDrawable;
        if (drawable != null)
        {
            drawable.draw(canvas);
        }
        i1 = canvas.save();
        if (drawable1 != null)
        {
            drawable1.draw(canvas);
        }
        if (getTargetCheckedState())
        {
            layout = mOnLayout;
        } else
        {
            layout = mOffLayout;
        }
        if (layout != null)
        {
            int ai[] = getDrawableState();
            if (mTextColors != null)
            {
                mTextPaint.setColor(mTextColors.getColorForState(ai, 0));
            }
            mTextPaint.drawableState = ai;
            int j1;
            int k1;
            int l1;
            if (drawable1 != null)
            {
                Rect rect1 = drawable1.getBounds();
                j1 = rect1.left + rect1.right;
            } else
            {
                j1 = getWidth();
            }
            k1 = j1 / 2 - layout.getWidth() / 2;
            l1 = (k + l) / 2 - layout.getHeight() / 2;
            canvas.translate(k1, l1);
            layout.draw(canvas);
        }
        canvas.restoreToCount(i1);
    }

    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityevent)
    {
        super.onInitializeAccessibilityEvent(accessibilityevent);
        accessibilityevent.setClassName(android/support/v7/widget/SwitchCompat.getName());
    }

    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilitynodeinfo)
    {
        CharSequence charsequence;
        CharSequence charsequence1;
label0:
        {
            if (android.os.Build.VERSION.SDK_INT >= 14)
            {
                super.onInitializeAccessibilityNodeInfo(accessibilitynodeinfo);
                accessibilitynodeinfo.setClassName(android/support/v7/widget/SwitchCompat.getName());
                if (isChecked())
                {
                    charsequence = mTextOn;
                } else
                {
                    charsequence = mTextOff;
                }
                if (!TextUtils.isEmpty(charsequence))
                {
                    charsequence1 = accessibilitynodeinfo.getText();
                    if (!TextUtils.isEmpty(charsequence1))
                    {
                        break label0;
                    }
                    accessibilitynodeinfo.setText(charsequence);
                }
            }
            return;
        }
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append(charsequence1).append(' ').append(charsequence);
        accessibilitynodeinfo.setText(stringbuilder);
    }

    protected void onLayout(boolean flag, int i, int j, int k, int l)
    {
        int k1;
        int l1;
        super.onLayout(flag, i, j, k, l);
        int i1;
        int j1;
        if (mThumbDrawable != null)
        {
            Rect rect = mTempRect;
            if (mTrackDrawable != null)
            {
                mTrackDrawable.getPadding(rect);
            } else
            {
                rect.setEmpty();
            }
        }
        if (ViewUtils.isLayoutRtl(this))
        {
            j1 = 0 + getPaddingLeft();
            i1 = 0 + (0 + (j1 + mSwitchWidth));
        } else
        {
            i1 = 0 + (getWidth() - getPaddingRight());
            j1 = 0 + (0 + (i1 - mSwitchWidth));
        }
        0x70 & getGravity();
        JVM INSTR lookupswitch 2: default 104
    //                   16: 181
    //                   80: 218;
           goto _L1 _L2 _L3
_L1:
        l1 = getPaddingTop();
        k1 = l1 + mSwitchHeight;
_L5:
        mSwitchLeft = j1;
        mSwitchTop = l1;
        mSwitchBottom = k1;
        mSwitchRight = i1;
        return;
_L2:
        l1 = ((getPaddingTop() + getHeight()) - getPaddingBottom()) / 2 - mSwitchHeight / 2;
        k1 = l1 + mSwitchHeight;
        continue; /* Loop/switch isn't completed */
_L3:
        k1 = getHeight() - getPaddingBottom();
        l1 = k1 - mSwitchHeight;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public void onMeasure(int i, int j)
    {
        if (mShowText)
        {
            if (mOnLayout == null)
            {
                mOnLayout = makeLayout(mTextOn);
            }
            if (mOffLayout == null)
            {
                mOffLayout = makeLayout(mTextOff);
            }
        }
        Rect rect = mTempRect;
        int k;
        int l;
        int i1;
        int j1;
        int k1;
        int l1;
        int i2;
        int j2;
        if (mThumbDrawable != null)
        {
            mThumbDrawable.getPadding(rect);
            l = mThumbDrawable.getIntrinsicWidth() - rect.left - rect.right;
            k = mThumbDrawable.getIntrinsicHeight();
        } else
        {
            k = 0;
            l = 0;
        }
        if (mShowText)
        {
            i1 = Math.max(mOnLayout.getWidth(), mOffLayout.getWidth()) + 2 * mThumbTextPadding;
        } else
        {
            i1 = 0;
        }
        mThumbWidth = Math.max(i1, l);
        if (mTrackDrawable != null)
        {
            mTrackDrawable.getPadding(rect);
            j1 = mTrackDrawable.getIntrinsicHeight();
        } else
        {
            rect.setEmpty();
            j1 = 0;
        }
        k1 = rect.left;
        l1 = rect.right;
        i2 = Math.max(mSwitchMinWidth, l1 + (k1 + 2 * mThumbWidth));
        j2 = Math.max(j1, k);
        mSwitchWidth = i2;
        mSwitchHeight = j2;
        super.onMeasure(i, j);
        if (getMeasuredHeight() < j2)
        {
            setMeasuredDimension(ViewCompat.getMeasuredWidthAndState(this), j2);
        }
    }

    public void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityevent)
    {
        super.onPopulateAccessibilityEvent(accessibilityevent);
        CharSequence charsequence;
        if (isChecked())
        {
            charsequence = mTextOn;
        } else
        {
            charsequence = mTextOff;
        }
        if (charsequence != null)
        {
            accessibilityevent.getText().add(charsequence);
        }
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        mVelocityTracker.addMovement(motionevent);
        MotionEventCompat.getActionMasked(motionevent);
        JVM INSTR tableswitch 0 3: default 44
    //                   0 50
    //                   1 316
    //                   2 100
    //                   3 316;
           goto _L1 _L2 _L3 _L4 _L3
_L1:
        return super.onTouchEvent(motionevent);
_L2:
        float f6 = motionevent.getX();
        float f7 = motionevent.getY();
        if (isEnabled() && hitThumb(f6, f7))
        {
            mTouchMode = 1;
            mTouchX = f6;
            mTouchY = f7;
        }
        continue; /* Loop/switch isn't completed */
_L4:
        switch (mTouchMode)
        {
        case 1: // '\001'
            float f4 = motionevent.getX();
            float f5 = motionevent.getY();
            if (Math.abs(f4 - mTouchX) > (float)mTouchSlop || Math.abs(f5 - mTouchY) > (float)mTouchSlop)
            {
                mTouchMode = 2;
                getParent().requestDisallowInterceptTouchEvent(true);
                mTouchX = f4;
                mTouchY = f5;
                return true;
            }
            break;

        case 2: // '\002'
            float f = motionevent.getX();
            int i = getThumbScrollRange();
            float f1 = f - mTouchX;
            float f2;
            float f3;
            if (i != 0)
            {
                f2 = f1 / (float)i;
            } else
            if (f1 > 0.0F)
            {
                f2 = 1.0F;
            } else
            {
                f2 = -1F;
            }
            if (ViewUtils.isLayoutRtl(this))
            {
                f2 = -f2;
            }
            f3 = constrain(f2 + mThumbPosition, 0.0F, 1.0F);
            if (f3 != mThumbPosition)
            {
                mTouchX = f;
                setThumbPosition(f3);
            }
            return true;
        }
        continue; /* Loop/switch isn't completed */
_L3:
        if (mTouchMode == 2)
        {
            stopDrag(motionevent);
            super.onTouchEvent(motionevent);
            return true;
        }
        mTouchMode = 0;
        mVelocityTracker.clear();
        if (true) goto _L1; else goto _L5
_L5:
    }

    public void setChecked(boolean flag)
    {
        super.setChecked(flag);
        boolean flag1 = isChecked();
        if (getWindowToken() != null)
        {
            animateThumbToCheckedState(flag1);
            return;
        }
        cancelPositionAnimator();
        float f;
        if (flag1)
        {
            f = 1.0F;
        } else
        {
            f = 0.0F;
        }
        setThumbPosition(f);
    }

    public void setShowText(boolean flag)
    {
        if (mShowText != flag)
        {
            mShowText = flag;
            requestLayout();
        }
    }

    public void setSplitTrack(boolean flag)
    {
        mSplitTrack = flag;
        invalidate();
    }

    public void setSwitchMinWidth(int i)
    {
        mSwitchMinWidth = i;
        requestLayout();
    }

    public void setSwitchPadding(int i)
    {
        mSwitchPadding = i;
        requestLayout();
    }

    public void setSwitchTextAppearance(Context context, int i)
    {
        TypedArray typedarray = context.obtainStyledAttributes(i, TEXT_APPEARANCE_ATTRS);
        ColorStateList colorstatelist = typedarray.getColorStateList(0);
        int j;
        if (colorstatelist != null)
        {
            mTextColors = colorstatelist;
        } else
        {
            mTextColors = getTextColors();
        }
        j = typedarray.getDimensionPixelSize(1, 0);
        if (j != 0 && (float)j != mTextPaint.getTextSize())
        {
            mTextPaint.setTextSize(j);
            requestLayout();
        }
        if (typedarray.getBoolean(2, false))
        {
            mSwitchTransformationMethod = new AllCapsTransformationMethod(getContext());
        } else
        {
            mSwitchTransformationMethod = null;
        }
        typedarray.recycle();
    }

    public void setSwitchTypeface(Typeface typeface)
    {
        if (mTextPaint.getTypeface() != typeface)
        {
            mTextPaint.setTypeface(typeface);
            requestLayout();
            invalidate();
        }
    }

    public void setSwitchTypeface(Typeface typeface, int i)
    {
        if (i > 0)
        {
            Typeface typeface1;
            int j;
            int k;
            TextPaint textpaint;
            int l;
            boolean flag;
            TextPaint textpaint1;
            float f;
            if (typeface == null)
            {
                typeface1 = Typeface.defaultFromStyle(i);
            } else
            {
                typeface1 = Typeface.create(typeface, i);
            }
            setSwitchTypeface(typeface1);
            if (typeface1 != null)
            {
                j = typeface1.getStyle();
            } else
            {
                j = 0;
            }
            k = i & ~j;
            textpaint = mTextPaint;
            l = k & 1;
            flag = false;
            if (l != 0)
            {
                flag = true;
            }
            textpaint.setFakeBoldText(flag);
            textpaint1 = mTextPaint;
            if ((k & 2) != 0)
            {
                f = -0.25F;
            } else
            {
                f = 0.0F;
            }
            textpaint1.setTextSkewX(f);
            return;
        } else
        {
            mTextPaint.setFakeBoldText(false);
            mTextPaint.setTextSkewX(0.0F);
            setSwitchTypeface(typeface);
            return;
        }
    }

    public void setTextOff(CharSequence charsequence)
    {
        mTextOff = charsequence;
        requestLayout();
    }

    public void setTextOn(CharSequence charsequence)
    {
        mTextOn = charsequence;
        requestLayout();
    }

    public void setThumbDrawable(Drawable drawable)
    {
        mThumbDrawable = drawable;
        requestLayout();
    }

    public void setThumbResource(int i)
    {
        setThumbDrawable(mTintManager.getDrawable(i));
    }

    public void setThumbTextPadding(int i)
    {
        mThumbTextPadding = i;
        requestLayout();
    }

    public void setTrackDrawable(Drawable drawable)
    {
        mTrackDrawable = drawable;
        requestLayout();
    }

    public void setTrackResource(int i)
    {
        setTrackDrawable(mTintManager.getDrawable(i));
    }

    public void toggle()
    {
        boolean flag;
        if (!isChecked())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        setChecked(flag);
    }

    protected boolean verifyDrawable(Drawable drawable)
    {
        return super.verifyDrawable(drawable) || drawable == mThumbDrawable || drawable == mTrackDrawable;
    }

    static 
    {
        int ai[] = new int[3];
        ai[0] = 0x1010098;
        ai[1] = 0x1010095;
        ai[2] = android.support.v7.appcompat.R.attr.textAllCaps;
        TEXT_APPEARANCE_ATTRS = ai;
    }

}
