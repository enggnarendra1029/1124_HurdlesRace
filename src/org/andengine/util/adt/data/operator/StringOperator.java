// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.adt.data.operator;


public abstract class StringOperator extends Enum
{

    public static final StringOperator CONTAINS;
    public static final StringOperator ENDS_WITH;
    private static final StringOperator ENUM$VALUES[];
    public static final StringOperator EQUALS;
    public static final StringOperator EQUALS_IGNORE_CASE;
    public static final StringOperator NOT_CONTAINS;
    public static final StringOperator NOT_ENDS_WITH;
    public static final StringOperator NOT_EQUALS;
    public static final StringOperator NOT_EQUALS_IGNORE_CASE;
    public static final StringOperator NOT_STARTS_WITH;
    public static final StringOperator STARTS_WITH;

    private StringOperator(String s, int i)
    {
        super(s, i);
    }

    StringOperator(String s, int i, StringOperator stringoperator)
    {
        this(s, i);
    }

    public static StringOperator valueOf(String s)
    {
        return (StringOperator)Enum.valueOf(org/andengine/util/adt/data/operator/StringOperator, s);
    }

    public static StringOperator[] values()
    {
        StringOperator astringoperator[] = ENUM$VALUES;
        int i = astringoperator.length;
        StringOperator astringoperator1[] = new StringOperator[i];
        System.arraycopy(astringoperator, 0, astringoperator1, 0, i);
        return astringoperator1;
    }

    public abstract boolean check(String s, String s1);

    static 
    {
        EQUALS = new StringOperator("EQUALS", 0) {

            public boolean check(String s, String s1)
            {
                return s.equals(s1);
            }

        };
        EQUALS_IGNORE_CASE = new StringOperator("EQUALS_IGNORE_CASE", 1) {

            public boolean check(String s, String s1)
            {
                return s.equalsIgnoreCase(s1);
            }

        };
        NOT_EQUALS = new StringOperator("NOT_EQUALS", 2) {

            public boolean check(String s, String s1)
            {
                return !s.equals(s1);
            }

        };
        NOT_EQUALS_IGNORE_CASE = new StringOperator("NOT_EQUALS_IGNORE_CASE", 3) {

            public boolean check(String s, String s1)
            {
                return !s.equalsIgnoreCase(s1);
            }

        };
        CONTAINS = new StringOperator("CONTAINS", 4) {

            public boolean check(String s, String s1)
            {
                return s.contains(s1);
            }

        };
        NOT_CONTAINS = new StringOperator("NOT_CONTAINS", 5) {

            public boolean check(String s, String s1)
            {
                return !s.contains(s1);
            }

        };
        STARTS_WITH = new StringOperator("STARTS_WITH", 6) {

            public boolean check(String s, String s1)
            {
                return s.startsWith(s1);
            }

        };
        NOT_STARTS_WITH = new StringOperator("NOT_STARTS_WITH", 7) {

            public boolean check(String s, String s1)
            {
                return !s.startsWith(s1);
            }

        };
        ENDS_WITH = new StringOperator("ENDS_WITH", 8) {

            public boolean check(String s, String s1)
            {
                return s.endsWith(s1);
            }

        };
        NOT_ENDS_WITH = new StringOperator("NOT_ENDS_WITH", 9) {

            public boolean check(String s, String s1)
            {
                return !s.endsWith(s1);
            }

        };
        StringOperator astringoperator[] = new StringOperator[10];
        astringoperator[0] = EQUALS;
        astringoperator[1] = EQUALS_IGNORE_CASE;
        astringoperator[2] = NOT_EQUALS;
        astringoperator[3] = NOT_EQUALS_IGNORE_CASE;
        astringoperator[4] = CONTAINS;
        astringoperator[5] = NOT_CONTAINS;
        astringoperator[6] = STARTS_WITH;
        astringoperator[7] = NOT_STARTS_WITH;
        astringoperator[8] = ENDS_WITH;
        astringoperator[9] = NOT_ENDS_WITH;
        ENUM$VALUES = astringoperator;
    }
}
