// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.adt.data.operator;


public abstract class CharOperator extends Enum
{

    private static final CharOperator ENUM$VALUES[];
    public static final CharOperator EQUALS;
    public static final CharOperator LESS_OR_EQUAL_THAN;
    public static final CharOperator LESS_THAN;
    public static final CharOperator MORE_OR_EQUAL_THAN;
    public static final CharOperator MORE_THAN;
    public static final CharOperator NOT_EQUALS;

    private CharOperator(String s, int i)
    {
        super(s, i);
    }

    CharOperator(String s, int i, CharOperator charoperator)
    {
        this(s, i);
    }

    public static CharOperator valueOf(String s)
    {
        return (CharOperator)Enum.valueOf(org/andengine/util/adt/data/operator/CharOperator, s);
    }

    public static CharOperator[] values()
    {
        CharOperator acharoperator[] = ENUM$VALUES;
        int i = acharoperator.length;
        CharOperator acharoperator1[] = new CharOperator[i];
        System.arraycopy(acharoperator, 0, acharoperator1, 0, i);
        return acharoperator1;
    }

    public abstract boolean check(char c, char c1);

    static 
    {
        EQUALS = new CharOperator("EQUALS", 0) {

            public boolean check(char c, char c1)
            {
                return c == c1;
            }

        };
        NOT_EQUALS = new CharOperator("NOT_EQUALS", 1) {

            public boolean check(char c, char c1)
            {
                return c != c1;
            }

        };
        LESS_THAN = new CharOperator("LESS_THAN", 2) {

            public boolean check(char c, char c1)
            {
                return c < c1;
            }

        };
        LESS_OR_EQUAL_THAN = new CharOperator("LESS_OR_EQUAL_THAN", 3) {

            public boolean check(char c, char c1)
            {
                return c <= c1;
            }

        };
        MORE_THAN = new CharOperator("MORE_THAN", 4) {

            public boolean check(char c, char c1)
            {
                return c > c1;
            }

        };
        MORE_OR_EQUAL_THAN = new CharOperator("MORE_OR_EQUAL_THAN", 5) {

            public boolean check(char c, char c1)
            {
                return c >= c1;
            }

        };
        CharOperator acharoperator[] = new CharOperator[6];
        acharoperator[0] = EQUALS;
        acharoperator[1] = NOT_EQUALS;
        acharoperator[2] = LESS_THAN;
        acharoperator[3] = LESS_OR_EQUAL_THAN;
        acharoperator[4] = MORE_THAN;
        acharoperator[5] = MORE_OR_EQUAL_THAN;
        ENUM$VALUES = acharoperator;
    }
}
