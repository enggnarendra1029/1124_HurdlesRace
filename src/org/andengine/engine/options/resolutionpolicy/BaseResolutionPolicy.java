// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.engine.options.resolutionpolicy;


// Referenced classes of package org.andengine.engine.options.resolutionpolicy:
//            IResolutionPolicy

public abstract class BaseResolutionPolicy
    implements IResolutionPolicy
{

    public BaseResolutionPolicy()
    {
    }

    protected static void throwOnNotMeasureSpecEXACTLY(int i, int j)
    {
        int k = android.view.View.MeasureSpec.getMode(i);
        int l = android.view.View.MeasureSpec.getMode(j);
        if (k != 0x40000000 || l != 0x40000000)
        {
            throw new IllegalStateException("This IResolutionPolicy requires MeasureSpec.EXACTLY ! That means ");
        } else
        {
            return;
        }
    }
}
