// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.adt.trie;


public interface ITrie
{

    public abstract void add(CharSequence charsequence);

    public abstract void add(CharSequence charsequence, int i, int j);

    public abstract boolean contains(CharSequence charsequence);

    public abstract boolean contains(CharSequence charsequence, int i, int j);
}
