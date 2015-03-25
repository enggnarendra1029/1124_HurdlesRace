// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.adt.data.operator;


public abstract class IntOperator extends Enum
{

    private static final IntOperator ENUM$VALUES[];
    public static final IntOperator EQUALS;
    public static final IntOperator LESS_OR_EQUAL_THAN;
    public static final IntOperator LESS_THAN;
    public static final IntOperator MORE_OR_EQUAL_THAN;
    public static final IntOperator MORE_THAN;
    public static final IntOperator NOT_EQUALS;

    private IntOperator(String s, int i)
    {
        super(s, i);
    }

    IntOperator(String s, int i, IntOperator intoperator)
    {
        this(s, i);
    }

    public static IntOperator valueOf(String s)
    {
        return (IntOperator)Enum.valueOf(org/andengine/util/adt/data/operator/IntOperator, s);
    }

    public static IntOperator[] values()
    {
        IntOperator aintoperator[] = ENUM$VALUES;
        int i = aintoperator.length;
        IntOperator aintoperator1[] = new IntOperator[i];
        System.arraycopy(aintoperator, 0, aintoperator1, 0, i);
        return aintoperator1;
    }

    public abstract boolean check(int i, int j);

    static 
    {
        EQUALS = new IntOperator("EQUALS", 0) {

            public boolean check(int i, int j)
            {
                return i == j;
            }

        };
        NOT_EQUALS = new IntOperator("NOT_EQUALS", 1) {

            public boolean check(int i, int j)
            {
                return i != j;
            }

        };
        LESS_THAN = new IntOperator("LESS_THAN", 2) {

            public boolean check(int i, int j)
            {
                return i < j;
            }

        };
        LESS_OR_EQUAL_THAN = new IntOperator("LESS_OR_EQUAL_THAN", 3) {

            public boolean check(int i, int j)
            {
                return i <= j;
            }

        };
        MORE_THAN = new IntOperator("MORE_THAN", 4) {

            public boolean check(int i, int j)
            {
                return i > j;
            }

        };
        MORE_OR_EQUAL_THAN = new IntOperator("MORE_OR_EQUAL_THAN", 5) {

            public boolean check(int i, int j)
            {
                return i >= j;
            }

        };
        IntOperator aintoperator[] = new IntOperator[6];
        aintoperator[0] = EQUALS;
        aintoperator[1] = NOT_EQUALS;
        aintoperator[2] = LESS_THAN;
        aintoperator[3] = LESS_OR_EQUAL_THAN;
        aintoperator[4] = MORE_THAN;
        aintoperator[5] = MORE_OR_EQUAL_THAN;
        ENUM$VALUES = aintoperator;
    }
}
