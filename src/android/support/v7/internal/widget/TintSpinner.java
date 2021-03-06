// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.internal.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ListPopupWindow;
import android.widget.Spinner;
import java.lang.reflect.Field;

// Referenced classes of package android.support.v7.internal.widget:
//            TintTypedArray

public class TintSpinner extends Spinner
{

    private static final int TINT_ATTRS[] = {
        0x10100d4, 0x1010176
    };

    public TintSpinner(Context context)
    {
        this(context, null);
    }

    public TintSpinner(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0x1010081);
    }

    public TintSpinner(Context context, AttributeSet attributeset, int i)
    {
        TintTypedArray tinttypedarray;
        super(context, attributeset, i);
        tinttypedarray = TintTypedArray.obtainStyledAttributes(context, attributeset, TINT_ATTRS, i, 0);
        setBackgroundDrawable(tinttypedarray.getDrawable(0));
        if (!tinttypedarray.hasValue(1)) goto _L2; else goto _L1
_L1:
        Drawable drawable = tinttypedarray.getDrawable(1);
        if (android.os.Build.VERSION.SDK_INT < 16) goto _L4; else goto _L3
_L3:
        setPopupBackgroundDrawable(drawable);
_L2:
        tinttypedarray.recycle();
        return;
_L4:
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            setPopupBackgroundDrawableV11(this, drawable);
        }
        if (true) goto _L2; else goto _L5
_L5:
    }

    private static void setPopupBackgroundDrawableV11(Spinner spinner, Drawable drawable)
    {
        try
        {
            Field field = android/widget/Spinner.getDeclaredField("mPopup");
            field.setAccessible(true);
            Object obj = field.get(spinner);
            if (obj instanceof ListPopupWindow)
            {
                ((ListPopupWindow)obj).setBackgroundDrawable(drawable);
            }
            return;
        }
        catch (NoSuchFieldException nosuchfieldexception)
        {
            nosuchfieldexception.printStackTrace();
            return;
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            illegalaccessexception.printStackTrace();
        }
    }

}
