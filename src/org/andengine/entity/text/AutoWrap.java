// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.text;


public final class AutoWrap extends Enum
{

    public static final AutoWrap CJK;
    private static final AutoWrap ENUM$VALUES[];
    public static final AutoWrap LETTERS;
    public static final AutoWrap NONE;
    public static final AutoWrap WORDS;

    private AutoWrap(String s, int i)
    {
        super(s, i);
    }

    public static AutoWrap valueOf(String s)
    {
        return (AutoWrap)Enum.valueOf(org/andengine/entity/text/AutoWrap, s);
    }

    public static AutoWrap[] values()
    {
        AutoWrap aautowrap[] = ENUM$VALUES;
        int i = aautowrap.length;
        AutoWrap aautowrap1[] = new AutoWrap[i];
        System.arraycopy(aautowrap, 0, aautowrap1, 0, i);
        return aautowrap1;
    }

    static 
    {
        NONE = new AutoWrap("NONE", 0);
        WORDS = new AutoWrap("WORDS", 1);
        LETTERS = new AutoWrap("LETTERS", 2);
        CJK = new AutoWrap("CJK", 3);
        AutoWrap aautowrap[] = new AutoWrap[4];
        aautowrap[0] = NONE;
        aautowrap[1] = WORDS;
        aautowrap[2] = LETTERS;
        aautowrap[3] = CJK;
        ENUM$VALUES = aautowrap;
    }
}
