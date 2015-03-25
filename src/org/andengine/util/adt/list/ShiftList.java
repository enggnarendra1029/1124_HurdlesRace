// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.adt.list;

import java.util.Arrays;
import org.andengine.util.adt.queue.IQueue;

public class ShiftList
    implements IQueue
{

    private static final int CAPACITY_INITIAL_DEFAULT = 1;
    private static final int INDEX_INVALID = -1;
    protected int mHead;
    protected Object mItems[];
    protected int mTail;

    public ShiftList()
    {
        this(1);
    }

    public ShiftList(int i)
    {
        mItems = new Object[i];
    }

    private void ensureShiftableLeft()
    {
        int j;
label0:
        {
            int i;
label1:
            {
                if (mHead == 0)
                {
                    i = mTail - mHead;
                    j = mItems.length;
                    if (i >= j)
                    {
                        break label0;
                    }
                    if (i != 0)
                    {
                        break label1;
                    }
                    mHead = 1;
                    mTail = 1;
                }
                return;
            }
            System.arraycopy(((Object) (mItems)), mHead, ((Object) (mItems)), 1 + mHead, i);
            mItems[mHead] = null;
            mHead = 1 + mHead;
            mTail = 1 + mTail;
            return;
        }
        Object aobj[] = new Object[1 + (j * 3 >> 1)];
        System.arraycopy(((Object) (mItems)), 0, ((Object) (aobj)), 1, j);
        mItems = aobj;
        mHead = 1 + mHead;
        mTail = 1 + mTail;
    }

    private void ensureShiftableRight()
    {
        int i;
label0:
        {
            i = mItems.length;
            if (mTail == i)
            {
                if (mTail - mHead == i)
                {
                    break label0;
                }
                shift();
            }
            return;
        }
        Object aobj[] = new Object[1 + (i * 3 >> 1)];
        System.arraycopy(((Object) (mItems)), 0, ((Object) (aobj)), 0, i);
        mItems = aobj;
    }

    private void enterShiftingLeft(int i, Object obj)
    {
        ensureShiftableLeft();
        mHead = -1 + mHead;
        if (i == 0)
        {
            mItems[mHead] = obj;
            return;
        } else
        {
            System.arraycopy(((Object) (mItems)), 1 + mHead, ((Object) (mItems)), mHead, i);
            int j = i + mHead;
            mItems[j] = obj;
            return;
        }
    }

    private void enterShiftingRight(int i, Object obj, int j)
    {
        ensureShiftableRight();
        int k = j - i;
        if (k == 0)
        {
            mItems[mTail] = obj;
        } else
        {
            int l = i + mHead;
            System.arraycopy(((Object) (mItems)), l, ((Object) (mItems)), l + 1, k);
            mItems[l] = obj;
        }
        mTail = 1 + mTail;
    }

    public void add(int i, Object obj)
        throws ArrayIndexOutOfBoundsException
    {
        enter(i, obj);
    }

    public void add(Object obj)
    {
        enter(obj);
    }

    public void clear()
    {
        Arrays.fill(mItems, mHead, mTail, null);
        mHead = 0;
        mTail = 0;
    }

    public void enter(int i, Object obj)
        throws ArrayIndexOutOfBoundsException
    {
        int j = mTail - mHead;
        if (i < j >> 1)
        {
            enterShiftingLeft(i, obj);
            return;
        } else
        {
            enterShiftingRight(i, obj, j);
            return;
        }
    }

    public void enter(Object obj)
    {
        ensureShiftableRight();
        mItems[mTail] = obj;
        mTail = 1 + mTail;
    }

    public Object get(int i)
        throws ArrayIndexOutOfBoundsException
    {
        return mItems[i + mHead];
    }

    public int indexOf(Object obj)
    {
        int j;
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_41;
        }
        j = mHead;
_L3:
        if (j < mTail) goto _L2; else goto _L1
_L1:
        return -1;
_L2:
        if (mItems[j] == null)
        {
            return j - mHead;
        }
        j++;
          goto _L3
        int i = mHead;
        while (i < mTail) 
        {
            if (obj.equals(mItems[i]))
            {
                return i - mHead;
            }
            i++;
        }
          goto _L1
    }

    public boolean isEmpty()
    {
        return mHead == mTail;
    }

    public Object peek()
    {
        if (mHead == mTail)
        {
            return null;
        } else
        {
            return mItems[mHead];
        }
    }

    public Object poll()
    {
        Object obj;
        if (mHead == mTail)
        {
            obj = null;
        } else
        {
            obj = mItems[mHead];
            mItems[mHead] = null;
            mHead = 1 + mHead;
            if (mHead == mTail)
            {
                mHead = 0;
                mTail = 0;
                return obj;
            }
        }
        return obj;
    }

    public Object remove(int i)
        throws ArrayIndexOutOfBoundsException
    {
        int j = i + mHead;
        Object obj = mItems[j];
        int k = mTail - mHead;
        if (i < k >> 1)
        {
            if (j > mHead)
            {
                System.arraycopy(((Object) (mItems)), mHead, ((Object) (mItems)), 1 + mHead, i);
            }
            mItems[mHead] = null;
            mHead = 1 + mHead;
            return obj;
        }
        int l = -1 + (k - i);
        if (l > 0)
        {
            System.arraycopy(((Object) (mItems)), j + 1, ((Object) (mItems)), j, l);
        }
        mTail = -1 + mTail;
        mItems[mTail] = null;
        return obj;
    }

    public boolean remove(Object obj)
    {
        int i = indexOf(obj);
        if (i >= 0)
        {
            remove(i);
            return true;
        } else
        {
            return false;
        }
    }

    public Object removeFirst()
    {
        return remove(0);
    }

    public Object removeLast()
    {
        return remove(-1 + size());
    }

    public void set(int i, Object obj)
        throws IndexOutOfBoundsException
    {
        mItems[i + mHead] = obj;
    }

    public void shift()
    {
        int i = mTail - mHead;
        if (i == 0)
        {
            mHead = 0;
            mTail = 0;
            return;
        }
        System.arraycopy(((Object) (mItems)), mHead, ((Object) (mItems)), 0, i);
        int j = Math.max(i, mHead);
        int k = Math.max(j, mTail);
        if (j < k)
        {
            Arrays.fill(mItems, j, k, null);
        }
        mHead = 0;
        mTail = i;
    }

    public int size()
    {
        return mTail - mHead;
    }
}
