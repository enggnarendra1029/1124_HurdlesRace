// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util;

import java.util.ArrayList;
import org.andengine.util.adt.array.ArrayUtils;
import org.andengine.util.math.MathUtils;

public class ProbabilityGenerator
{
    private static class Entry
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

        public transient Entry(float f, Object aobj[])
        {
            mFactor = f;
            mData = aobj;
        }
    }


    private final ArrayList mEntries = new ArrayList();
    private float mProbabilitySum;

    public ProbabilityGenerator()
    {
    }

    public transient void add(float f, Object aobj[])
    {
        mProbabilitySum = f + mProbabilitySum;
        mEntries.add(new Entry(f, aobj));
    }

    public void clear()
    {
        mProbabilitySum = 0.0F;
        mEntries.clear();
    }

    public Object next()
    {
        float f = MathUtils.random(0.0F, mProbabilitySum);
        ArrayList arraylist = mEntries;
        int i = -1 + arraylist.size();
        do
        {
            if (i < 0)
            {
                return ((Entry)arraylist.get(-1 + arraylist.size())).getReturnValue();
            }
            Entry entry = (Entry)arraylist.get(i);
            f -= entry.mFactor;
            if (f <= 0.0F)
            {
                return entry.getReturnValue();
            }
            i--;
        } while (true);
    }
}
