// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.adt.data.operator;


public abstract class FloatOperator extends Enum
{

    private static final FloatOperator ENUM$VALUES[];
    public static final FloatOperator EQUALS;
    public static final FloatOperator LESS_OR_EQUAL_THAN;
    public static final FloatOperator LESS_THAN;
    public static final FloatOperator MORE_OR_EQUAL_THAN;
    public static final FloatOperator MORE_THAN;
    public static final FloatOperator NOT_EQUALS;

    private FloatOperator(String s, int i)
    {
        super(s, i);
    }

    FloatOperator(String s, int i, FloatOperator floatoperator)
    {
        this(s, i);
    }

    public static FloatOperator valueOf(String s)
    {
        return (FloatOperator)Enum.valueOf(org/andengine/util/adt/data/operator/FloatOperator, s);
    }

    public static FloatOperator[] values()
    {
        FloatOperator afloatoperator[] = ENUM$VALUES;
        int i = afloatoperator.length;
        FloatOperator afloatoperator1[] = new FloatOperator[i];
        System.arraycopy(afloatoperator, 0, afloatoperator1, 0, i);
        return afloatoperator1;
    }

    public abstract boolean check(float f, float f1);

    static 
    {
        EQUALS = new FloatOperator("EQUALS", 0) {

            public boolean check(float f, float f1)
            {
                return f == f1;
            }

        };
        NOT_EQUALS = new FloatOperator("NOT_EQUALS", 1) {

            public boolean check(float f, float f1)
            {
                return f != f1;
            }

        };
        LESS_THAN = new FloatOperator("LESS_THAN", 2) {

            public boolean check(float f, float f1)
            {
                return f < f1;
            }

        };
        LESS_OR_EQUAL_THAN = new FloatOperator("LESS_OR_EQUAL_THAN", 3) {

            public boolean check(float f, float f1)
            {
                return f <= f1;
            }

        };
        MORE_THAN = new FloatOperator("MORE_THAN", 4) {

            public boolean check(float f, float f1)
            {
                return f > f1;
            }

        };
        MORE_OR_EQUAL_THAN = new FloatOperator("MORE_OR_EQUAL_THAN", 5) {

            public boolean check(float f, float f1)
            {
                return f >= f1;
            }

        };
        FloatOperator afloatoperator[] = new FloatOperator[6];
        afloatoperator[0] = EQUALS;
        afloatoperator[1] = NOT_EQUALS;
        afloatoperator[2] = LESS_THAN;
        afloatoperator[3] = LESS_OR_EQUAL_THAN;
        afloatoperator[4] = MORE_THAN;
        afloatoperator[5] = MORE_OR_EQUAL_THAN;
        ENUM$VALUES = afloatoperator;
    }
}
