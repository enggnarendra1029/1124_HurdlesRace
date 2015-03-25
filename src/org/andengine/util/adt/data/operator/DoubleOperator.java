// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.adt.data.operator;


public abstract class DoubleOperator extends Enum
{

    private static final DoubleOperator ENUM$VALUES[];
    public static final DoubleOperator EQUALS;
    public static final DoubleOperator LESS_OR_EQUAL_THAN;
    public static final DoubleOperator LESS_THAN;
    public static final DoubleOperator MORE_OR_EQUAL_THAN;
    public static final DoubleOperator MORE_THAN;
    public static final DoubleOperator NOT_EQUALS;

    private DoubleOperator(String s, int i)
    {
        super(s, i);
    }

    DoubleOperator(String s, int i, DoubleOperator doubleoperator)
    {
        this(s, i);
    }

    public static DoubleOperator valueOf(String s)
    {
        return (DoubleOperator)Enum.valueOf(org/andengine/util/adt/data/operator/DoubleOperator, s);
    }

    public static DoubleOperator[] values()
    {
        DoubleOperator adoubleoperator[] = ENUM$VALUES;
        int i = adoubleoperator.length;
        DoubleOperator adoubleoperator1[] = new DoubleOperator[i];
        System.arraycopy(adoubleoperator, 0, adoubleoperator1, 0, i);
        return adoubleoperator1;
    }

    public abstract boolean check(double d, double d1);

    static 
    {
        EQUALS = new DoubleOperator("EQUALS", 0) {

            public boolean check(double d, double d1)
            {
                return d == d1;
            }

        };
        NOT_EQUALS = new DoubleOperator("NOT_EQUALS", 1) {

            public boolean check(double d, double d1)
            {
                return d != d1;
            }

        };
        LESS_THAN = new DoubleOperator("LESS_THAN", 2) {

            public boolean check(double d, double d1)
            {
                return d < d1;
            }

        };
        LESS_OR_EQUAL_THAN = new DoubleOperator("LESS_OR_EQUAL_THAN", 3) {

            public boolean check(double d, double d1)
            {
                return d <= d1;
            }

        };
        MORE_THAN = new DoubleOperator("MORE_THAN", 4) {

            public boolean check(double d, double d1)
            {
                return d > d1;
            }

        };
        MORE_OR_EQUAL_THAN = new DoubleOperator("MORE_OR_EQUAL_THAN", 5) {

            public boolean check(double d, double d1)
            {
                return d >= d1;
            }

        };
        DoubleOperator adoubleoperator[] = new DoubleOperator[6];
        adoubleoperator[0] = EQUALS;
        adoubleoperator[1] = NOT_EQUALS;
        adoubleoperator[2] = LESS_THAN;
        adoubleoperator[3] = LESS_OR_EQUAL_THAN;
        adoubleoperator[4] = MORE_THAN;
        adoubleoperator[5] = MORE_OR_EQUAL_THAN;
        ENUM$VALUES = adoubleoperator;
    }
}
