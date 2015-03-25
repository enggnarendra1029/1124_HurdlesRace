// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.adt.trie;

import android.util.SparseArray;

// Referenced classes of package org.andengine.util.adt.trie:
//            ITrie

public class Trie
    implements ITrie
{
    public static class TrieNode
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
            TrieNode trienode = (TrieNode)mChildren.get(c);
            if (trienode == null)
            {
                trienode = new TrieNode();
                mChildren.put(c, trienode);
            }
            if (i < j - 1)
            {
                trienode.add(charsequence, i + 1, j);
                return;
            } else
            {
                trienode.mWordEndFlag = true;
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
                TrieNode trienode = (TrieNode)mChildren.get(c);
                if (trienode != null)
                {
                    if (i < j - 1)
                    {
                        return trienode.contains(charsequence, i + 1, j);
                    } else
                    {
                        return trienode.mWordEndFlag;
                    }
                }
            }
            return false;
        }

        public TrieNode()
        {
            this(false);
        }

        public TrieNode(boolean flag)
        {
            mWordEndFlag = flag;
        }
    }


    private static final int CHILDREN_SIZE_DEFAULT = 26;
    private final TrieNode mRoot = new TrieNode();

    public Trie()
    {
    }

    public void add(CharSequence charsequence)
    {
        mRoot.add(charsequence);
    }

    public void add(CharSequence charsequence, int i, int j)
    {
        mRoot.add(charsequence, i, j);
    }

    public boolean contains(CharSequence charsequence)
    {
        return mRoot.contains(charsequence);
    }

    public boolean contains(CharSequence charsequence, int i, int j)
    {
        return mRoot.contains(charsequence, i, j);
    }
}
