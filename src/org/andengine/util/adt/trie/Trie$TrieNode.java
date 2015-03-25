// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.adt.trie;

import android.util.SparseArray;

// Referenced classes of package org.andengine.util.adt.trie:
//            ITrie, Trie

public static class mWordEndFlag
    implements ITrie
{

    private SparseArray mChildren;
    private boolean mWordEndFlag;

    public void add(CharSequence charsequence)
    {
        int i = charsequence.length();
        if (i == 0)
        {
            return;
        } else
        {
            add(charsequence, 0, i);
            return;
        }
    }

    public void add(CharSequence charsequence, int i, int j)
    {
        if (mChildren == null)
        {
            mChildren = new SparseArray(26);
        }
        char c = charsequence.charAt(i);
        add add1 = (mChildren)mChildren.get(c);
        if (add1 == null)
        {
            add1 = new <init>();
            mChildren.put(c, add1);
        }
        if (i < j - 1)
        {
            add1.add(charsequence, i + 1, j);
            return;
        } else
        {
            add1.mWordEndFlag = true;
            return;
        }
    }

    public boolean contains(CharSequence charsequence)
    {
        int i = charsequence.length();
        if (i == 0)
        {
            throw new IllegalArgumentException();
        } else
        {
            return contains(charsequence, 0, i);
        }
    }

    public boolean contains(CharSequence charsequence, int i, int j)
    {
        if (mChildren != null)
        {
            char c = charsequence.charAt(i);
            contains contains1 = (mChildren)mChildren.get(c);
            if (contains1 != null)
            {
                if (i < j - 1)
                {
                    return contains1.contains(charsequence, i + 1, j);
                } else
                {
                    return contains1.mWordEndFlag;
                }
            }
        }
        return false;
    }

    public ()
    {
        this(false);
    }

    public <init>(boolean flag)
    {
        mWordEndFlag = flag;
    }
}
