// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.adt.data.operator;


public abstract class ShortOperator extends Enum
{

    private static final ShortOperator ENUM$VALUES[];
    public static final ShortOperator EQUALS;
    public static final ShortOperator LESS_OR_EQUAL_THAN;
    public static final ShortOperator LESS_THAN;
    public static final ShortOperator MORE_OR_EQUAL_THAN;
    public static final ShortOperator MORE_THAN;
    public static final ShortOperator NOT_EQUALS;

    private ShortOperator(String s, int i)
    {
        super(s, i);
    }

    ShortOperator(String s, int i, ShortOperator shortoperator)
    {
        this(s, i);
    }

    public static ShortOperator valueOf(String s)
    {
        return (ShortOperator)Enum.valueOf(org/andengine/util/adt/data/operator/ShortOperator, s);
    }

    public static ShortOperator[] values()
    {
        ShortOperator ashortoperator[] = ENUM$VALUES;
        int i = ashortoperator.length;
        ShortOperator ashortoperator1[] = new ShortOperator[i];
        System.arraycopy(ashortoperator, 0, ashortoperator1, 0, i);
        return ashortoperator1;
    }

    public abstract boolean check(short word0, short word1);

    static 
    {
        EQUALS = new ShortOperator("EQUALS", 0) {

            public boolean check(short word0, short word1)
            {
                return word0 == word1;
            }

        };
        NOT_EQUALS = new ShortOperator("NOT_EQUALS", 1) {

            public boolean check(short word0, short word1)
            {
                return word0 != word1;
            }

        };
        LESS_THAN = new ShortOperator("LESS_THAN", 2) {

            public boolean check(short word0, short word1)
            {
                return word0 < word1;
            }

        };
        LESS_OR_EQUAL_THAN = new ShortOperator("LESS_OR_EQUAL_THAN", 3) {

            public boolean check(short word0, short word1)
            {
                return word0 <= word1;
            }

        };
        MORE_THAN = new ShortOperator("MORE_THAN", 4) {

            public boolean check(short word0, short word1)
            {
                return word0 > word1;
            }

        };
        MORE_OR_EQUAL_THAN = new ShortOperator("MORE_OR_EQUAL_THAN", 5) {

            public boolean check(short word0, short word1)
            {
                return word0 >= word1;
            }

        };
        ShortOperator ashortoperator[] = new ShortOperator[6];
        ashortoperator[0] = EQUALS;
        ashortoperator[1] = NOT_EQUALS;
        ashortoperator[2] = LESS_THAN;
        ashortoperator[3] = LESS_OR_EQUAL_THAN;
        ashortoperator[4] = MORE_THAN;
        ashortoperator[5] = MORE_OR_EQUAL_THAN;
        ENUM$VALUES = ashortoperator;
    }
}
