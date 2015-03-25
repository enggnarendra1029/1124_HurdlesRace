// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.adt.data.operator;


public abstract class ByteOperator extends Enum
{

    private static final ByteOperator ENUM$VALUES[];
    public static final ByteOperator EQUALS;
    public static final ByteOperator LESS_OR_EQUAL_THAN;
    public static final ByteOperator LESS_THAN;
    public static final ByteOperator MORE_OR_EQUAL_THAN;
    public static final ByteOperator MORE_THAN;
    public static final ByteOperator NOT_EQUALS;

    private ByteOperator(String s, int i)
    {
        super(s, i);
    }

    ByteOperator(String s, int i, ByteOperator byteoperator)
    {
        this(s, i);
    }

    public static ByteOperator valueOf(String s)
    {
        return (ByteOperator)Enum.valueOf(org/andengine/util/adt/data/operator/ByteOperator, s);
    }

    public static ByteOperator[] values()
    {
        ByteOperator abyteoperator[] = ENUM$VALUES;
        int i = abyteoperator.length;
        ByteOperator abyteoperator1[] = new ByteOperator[i];
        System.arraycopy(abyteoperator, 0, abyteoperator1, 0, i);
        return abyteoperator1;
    }

    public abstract boolean check(byte byte0, byte byte1);

    static 
    {
        EQUALS = new ByteOperator("EQUALS", 0) {

            public boolean check(byte byte0, byte byte1)
            {
                return byte0 == byte1;
            }

        };
        NOT_EQUALS = new ByteOperator("NOT_EQUALS", 1) {

            public boolean check(byte byte0, byte byte1)
            {
                return byte0 != byte1;
            }

        };
        LESS_THAN = new ByteOperator("LESS_THAN", 2) {

            public boolean check(byte byte0, byte byte1)
            {
                return byte0 < byte1;
            }

        };
        LESS_OR_EQUAL_THAN = new ByteOperator("LESS_OR_EQUAL_THAN", 3) {

            public boolean check(byte byte0, byte byte1)
            {
                return byte0 <= byte1;
            }

        };
        MORE_THAN = new ByteOperator("MORE_THAN", 4) {

            public boolean check(byte byte0, byte byte1)
            {
                return byte0 > byte1;
            }

        };
        MORE_OR_EQUAL_THAN = new ByteOperator("MORE_OR_EQUAL_THAN", 5) {

            public boolean check(byte byte0, byte byte1)
            {
                return byte0 >= byte1;
            }

        };
        ByteOperator abyteoperator[] = new ByteOperator[6];
        abyteoperator[0] = EQUALS;
        abyteoperator[1] = NOT_EQUALS;
        abyteoperator[2] = LESS_THAN;
        abyteoperator[3] = LESS_OR_EQUAL_THAN;
        abyteoperator[4] = MORE_THAN;
        abyteoperator[5] = MORE_OR_EQUAL_THAN;
        ENUM$VALUES = abyteoperator;
    }
}
