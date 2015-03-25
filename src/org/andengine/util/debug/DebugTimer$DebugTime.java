// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.debug;

import java.util.ArrayList;
import java.util.Arrays;

// Referenced classes of package org.andengine.util.debug:
//            DebugTimer, Debug

public class mSplit
{

    private ArrayList mChildren;
    private long mEndTime;
    private final String mLabel;
    private mLastSplit mLastSplit;
    private final boolean mSplit;
    private final long mStartTime;
    final DebugTimer this$0;

    private void ensureChildrenAllocated()
    {
        if (mChildren == null)
        {
            mChildren = new ArrayList();
        }
    }

    public void begin(mChildren mchildren)
    {
        ensureChildrenAllocated();
        mChildren.add(mchildren);
    }

    public void dump(int i)
    {
        dump(i, "");
    }

    public void dump(int i, String s)
    {
        if (mSplit)
        {
            char ac1[] = new char[(i - 1) * DebugTimer.access$0()];
            Arrays.fill(ac1, ' ');
            Debug.log(DebugTimer.access$1(DebugTimer.this), (new StringBuilder(String.valueOf(new String(ac1)))).append("  Split: ").append("'").append(mLabel).append("'").append(" @( ").append(mEndTime - mStartTime).append("ms )").append(s).toString());
            return;
        }
        char ac[] = new char[i * DebugTimer.access$0()];
        Arrays.fill(ac, ' ');
        if (mChildren == null)
        {
            Debug.log(DebugTimer.access$1(DebugTimer.this), (new StringBuilder(String.valueOf(new String(ac)))).append("'").append(mLabel).append("' @( ").append(mEndTime - mStartTime).append("ms )").append(s).toString());
            return;
        }
        ArrayList arraylist = mChildren;
        int j = arraylist.size();
        Debug.log(DebugTimer.access$1(DebugTimer.this), (new StringBuilder(String.valueOf(new String(ac)))).append("'").append(mLabel).append("' {").toString());
        int k = 0;
        do
        {
            if (k >= j - 1)
            {
                ((mLabel)arraylist.get(j - 1)).dump(i + 1);
                Debug.log(DebugTimer.access$1(DebugTimer.this), (new StringBuilder(String.valueOf(new String(ac)))).append("}@( ").append(mEndTime - mStartTime).append("ms )").append(s).toString());
                return;
            }
            ((mStartTime)arraylist.get(k)).dump(i + 1, ",");
            k++;
        } while (true);
    }

    public void end(long l)
    {
        mEndTime = l;
    }

    public void split(String s)
    {
        long l = System.currentTimeMillis();
        mEndTime mendtime;
        if (mLastSplit == null)
        {
            mendtime = new <init>(mStartTime, s, true);
        } else
        {
            mendtime = new <init>(mLastSplit.mEndTime, s, true);
        }
        mendtime.end(l);
        ensureChildrenAllocated();
        mChildren.add(mendtime);
        mLastSplit = mendtime;
    }


    public (long l, String s)
    {
        this(l, s, false);
    }

    protected <init>(long l, String s, boolean flag)
    {
        this$0 = DebugTimer.this;
        super();
        mStartTime = l;
        mLabel = s;
        mSplit = flag;
    }
}
