// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util;

import org.andengine.util.adt.array.ArrayUtils;

// Referenced classes of package org.andengine.util:
//            ProbabilityGenerator

private static class mData
{

    public final Object mData[];
    public final float mFactor;

    public Object getReturnValue()
    {
        if (mData.length == 1)
        {
            return mData[0];
        } else
        {
            return ArrayUtils.random(mData);
        }
    }

    public transient (float f, Object aobj[])
    {
        mFactor = f;
        mData = aobj;
    }
}
