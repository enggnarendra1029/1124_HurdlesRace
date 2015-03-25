// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.internal.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;

// Referenced classes of package android.support.v7.internal.widget:
//            TintTypedArray, TintManager

public class TintImageView extends ImageView
{

    private static final int TINT_ATTRS[] = {
        0x10100d4, 0x1010119
    };
    private final TintManager mTintManager;

    public TintImageView(Context context)
    {
        this(context, null);
    }

    public TintImageView(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public TintImageView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        TintTypedArray tinttypedarray = TintTypedArray.obtainStyledAttributes(context, attributeset, TINT_ATTRS, i, 0);
        if (tinttypedarray.length() > 0)
        {
            if (tinttypedarray.hasValue(0))
            {
                setBackgroundDrawable(tinttypedarray.getDrawable(0));
            }
            if (tinttypedarray.hasValue(1))
            {
                setImageDrawable(tinttypedarray.getDrawable(1));
            }
        }
        tinttypedarray.recycle();
        mTintManager = tinttypedarray.getTintManager();
    }

    public void setImageResource(int i)
    {
        setImageDrawable(mTintManager.getDrawable(i));
    }

}
