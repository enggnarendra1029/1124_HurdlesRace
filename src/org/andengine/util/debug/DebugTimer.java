// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.debug;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Stack;

// Referenced classes of package org.andengine.util.debug:
//            Debug

public class DebugTimer
{
    public class DebugTime
    {

        private ArrayList mChildren;
        private long mEndTime;
        private final String mLabel;
        private DebugTime mLastSplit;
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

        public void begin(DebugTime debugtime)
        {
            ensureChildrenAllocated();
            mChildren.add(debugtime);
        }

        public void dump(int i)
        {
            dump(i, "");
        }

        public void dump(int i, String s)
        {
            if (mSplit)
            {
                char ac1[] = new char[(i - 1) * DebugTimer.INDENT_SPACES];
                Arrays.fill(ac1, ' ');
                Debug.log(mDebugLevel, (new StringBuilder(String.valueOf(new String(ac1)))).append("  Split: ").append("'").append(mLabel).append("'").append(" @( ").append(mEndTime - mStartTime).append("ms )").append(s).toString());
                return;
            }
            char ac[] = new char[i * DebugTimer.INDENT_SPACES];
            Arrays.fill(ac, ' ');
            if (mChildren == null)
            {
                Debug.log(mDebugLevel, (new StringBuilder(String.valueOf(new String(ac)))).append("'").append(mLabel).append("' @( ").append(mEndTime - mStartTime).append("ms )").append(s).toString());
                return;
            }
            ArrayList arraylist = mChildren;
            int j = arraylist.size();
            Debug.log(mDebugLevel, (new StringBuilder(String.valueOf(new String(ac)))).append("'").append(mLabel).append("' {").toString());
            int k = 0;
            do
            {
                if (k >= j - 1)
                {
                    ((DebugTime)arraylist.get(j - 1)).dump(i + 1);
                    Debug.log(mDebugLevel, (new StringBuilder(String.valueOf(new String(ac)))).append("}@( ").append(mEndTime - mStartTime).append("ms )").append(s).toString());
                    return;
                }
                ((DebugTime)arraylist.get(k)).dump(i + 1, ",");
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
            DebugTime debugtime;
            if (mLastSplit == null)
            {
                debugtime = new DebugTime(mStartTime, s, true);
            } else
            {
                debugtime = new DebugTime(mLastSplit.mEndTime, s, true);
            }
            debugtime.end(l);
            ensureChildrenAllocated();
            mChildren.add(debugtime);
            mLastSplit = debugtime;
        }


        public DebugTime(long l, String s)
        {
            this(l, s, false);
        }

        protected DebugTime(long l, String s, boolean flag)
        {
            this$0 = DebugTimer.this;
            super();
            mStartTime = l;
            mLabel = s;
            mSplit = flag;
        }
    }


    private static final int INDENT_SPACES = 0;
    private static final String SPLIT_STRING = "  Split: ";
    private final Debug.DebugLevel mDebugLevel;
    private final Stack mDebugTimes;

    public DebugTimer(String s)
    {
        this(Debug.DebugLevel.DEBUG, s);
    }

    public DebugTimer(Debug.DebugLevel debuglevel, String s)
    {
        mDebugTimes = new Stack();
        mDebugLevel = debuglevel;
        init(s);
    }

    private void init(String s)
    {
        DebugTime debugtime = new DebugTime(System.currentTimeMillis(), s);
        mDebugTimes.add(debugtime);
    }

    public void begin(String s)
    {
        DebugTime debugtime = new DebugTime(System.currentTimeMillis(), s);
        ((DebugTime)mDebugTimes.peek()).begin(debugtime);
        mDebugTimes.add(debugtime);
    }

    public void clear()
    {
        DebugTime debugtime = (DebugTime)mDebugTimes.firstElement();
        mDebugTimes.clear();
        init(debugtime.mLabel);
    }

    public void dump()
    {
        dump(false);
    }

    public void dump(boolean flag)
    {
        long l = System.currentTimeMillis();
        if (mDebugTimes.size() > 1)
        {
            Debug.w((new StringBuilder(String.valueOf(getClass().getSimpleName()))).append(" not all ended!").toString());
        }
        DebugTime debugtime = (DebugTime)mDebugTimes.firstElement();
        debugtime.end(l);
        debugtime.dump(0);
        if (flag)
        {
            clear();
        }
    }

    public void end()
    {
        long l = System.currentTimeMillis();
        if (mDebugTimes.size() == 1)
        {
            throw new IllegalStateException((new StringBuilder("Cannot end the root of this ")).append(getClass().getSimpleName()).toString());
        } else
        {
            ((DebugTime)mDebugTimes.pop()).end(l);
            return;
        }
    }

    public void split(String s)
    {
        ((DebugTime)mDebugTimes.peek()).split(s);
    }

    static 
    {
        INDENT_SPACES = "  Split: ".length();
    }


}
