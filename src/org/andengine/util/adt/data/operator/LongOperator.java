// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.adt.data.operator;


public abstract class LongOperator extends Enum
{

    private static final LongOperator ENUM$VALUES[];
    public static final LongOperator EQUALS;
    public static final LongOperator LESS_OR_EQUAL_THAN;
    public static final LongOperator LESS_THAN;
    public static final LongOperator MORE_OR_EQUAL_THAN;
    public static final LongOperator MORE_THAN;
    public static final LongOperator NOT_EQUALS;

    private LongOperator(String s, int i)
    {
        super(s, i);
    }

    LongOperator(String s, int i, LongOperator longoperator)
    {
        this(s, i);
    }

    public static LongOperator valueOf(String s)
    {
        return (LongOperator)Enum.valueOf(org/andengine/util/adt/data/operator/LongOperator, s);
    }

    public static LongOperator[] values()
    {
        LongOperator alongoperator[] = ENUM$VALUES;
        int i = alongoperator.length;
        LongOperator alongoperator1[] = new LongOperator[i];
        System.arraycopy(alongoperator, 0, alongoperator1, 0, i);
        return alongoperator1;
    }

    public abstract boolean check(long l, long l1);

    static 
    {
        EQUALS = new LongOperator("EQUALS", 0) {

            public boolean check(long l, long l1)
            {
                return l == l1;
            }

        };
        NOT_EQUALS = new LongOperator("NOT_EQUALS", 1) {

            public boolean check(long l, long l1)
            {
                return l != l1;
            }

        };
        LESS_THAN = new LongOperator("LESS_THAN", 2) {

            public boolean check(long l, long l1)
            {
                return l < l1;
            }

        };
        LESS_OR_EQUAL_THAN = new LongOperator("LESS_OR_EQUAL_THAN", 3) {

            public boolean check(long l, long l1)
            {
                return l <= l1;
            }

        };
        MORE_THAN = new LongOperator("MORE_THAN", 4) {

            public boolean check(long l, long l1)
            {
                return l > l1;
            }

        };
        MORE_OR_EQUAL_THAN = new LongOperator("MORE_OR_EQUAL_THAN", 5) {

            public boolean check(long l, long l1)
            {
                return l >= l1;
            }

        };
        LongOperator alongoperator[] = new LongOperator[6];
        alongoperator[0] = EQUALS;
        alongoperator[1] = NOT_EQUALS;
        alongoperator[2] = LESS_THAN;
        alongoperator[3] = LESS_OR_EQUAL_THAN;
        alongoperator[4] = MORE_THAN;
        alongoperator[5] = MORE_OR_EQUAL_THAN;
        ENUM$VALUES = alongoperator;
    }
}
