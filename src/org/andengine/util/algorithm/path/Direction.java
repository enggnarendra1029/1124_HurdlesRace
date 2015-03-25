// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.algorithm.path;


public final class Direction extends Enum
{

    private static int $SWITCH_TABLE$org$andengine$util$algorithm$path$Direction[];
    public static final Direction DOWN;
    public static final Direction DOWN_LEFT;
    public static final Direction DOWN_RIGHT;
    private static final Direction ENUM$VALUES[];
    public static final Direction LEFT;
    public static final Direction RIGHT;
    public static final Direction UP;
    public static final Direction UP_LEFT;
    public static final Direction UP_RIGHT;
    private final int mDeltaX;
    private final int mDeltaY;

    static int[] $SWITCH_TABLE$org$andengine$util$algorithm$path$Direction()
    {
        int ai[] = $SWITCH_TABLE$org$andengine$util$algorithm$path$Direction;
        if (ai != null)
        {
            return ai;
        }
        int ai1[] = new int[values().length];
        try
        {
            ai1[DOWN.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            ai1[DOWN_LEFT.ordinal()] = 7;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            ai1[DOWN_RIGHT.ordinal()] = 8;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            ai1[LEFT.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        try
        {
            ai1[RIGHT.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror4) { }
        try
        {
            ai1[UP.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror5) { }
        try
        {
            ai1[UP_LEFT.ordinal()] = 5;
        }
        catch (NoSuchFieldError nosuchfielderror6) { }
        try
        {
            ai1[UP_RIGHT.ordinal()] = 6;
        }
        catch (NoSuchFieldError nosuchfielderror7) { }
        $SWITCH_TABLE$org$andengine$util$algorithm$path$Direction = ai1;
        return ai1;
    }

    private Direction(String s, int i, int j, int k)
    {
        super(s, i);
        mDeltaX = j;
        mDeltaY = k;
    }

    public static Direction fromDelta(int i, int j)
    {
        i;
        JVM INSTR tableswitch -1 1: default 28
    //                   -1 66
    //                   0 107
    //                   1 147;
           goto _L1 _L2 _L3 _L4
_L1:
        throw new IllegalArgumentException((new StringBuilder("Unexpected deltaX: '")).append(i).append("' deltaY: '").append(j).append("'.").toString());
_L2:
        switch (j)
        {
        case -1: 
            return UP_LEFT;

        case 0: // '\0'
            return LEFT;

        case 1: // '\001'
            return DOWN_LEFT;
        }
        continue; /* Loop/switch isn't completed */
_L3:
        switch (j)
        {
        case -1: 
            return UP;

        case 1: // '\001'
            return DOWN;
        }
        if (true) goto _L1; else goto _L4
_L4:
        switch (j)
        {
        case -1: 
            return UP_RIGHT;

        case 0: // '\0'
            return RIGHT;

        case 1: // '\001'
            return DOWN_RIGHT;
        }
        if (true) goto _L1; else goto _L5
_L5:
    }

    public static Direction valueOf(String s)
    {
        return (Direction)Enum.valueOf(org/andengine/util/algorithm/path/Direction, s);
    }

    public static Direction[] values()
    {
        Direction adirection[] = ENUM$VALUES;
        int i = adirection.length;
        Direction adirection1[] = new Direction[i];
        System.arraycopy(adirection, 0, adirection1, 0, i);
        return adirection1;
    }

    public int getDeltaX()
    {
        return mDeltaX;
    }

    public int getDeltaY()
    {
        return mDeltaY;
    }

    public boolean isHorizontal()
    {
        return mDeltaY == 0;
    }

    public boolean isVertical()
    {
        return mDeltaX == 0;
    }

    public Direction opposite()
    {
        switch ($SWITCH_TABLE$org$andengine$util$algorithm$path$Direction()[ordinal()])
        {
        default:
            throw new IllegalArgumentException();

        case 1: // '\001'
            return DOWN;

        case 6: // '\006'
            return DOWN_LEFT;

        case 4: // '\004'
            return LEFT;

        case 8: // '\b'
            return UP_LEFT;

        case 2: // '\002'
            return UP;

        case 7: // '\007'
            return UP_RIGHT;

        case 3: // '\003'
            return RIGHT;

        case 5: // '\005'
            return DOWN_RIGHT;
        }
    }

    public Direction rotateLeft()
    {
        switch ($SWITCH_TABLE$org$andengine$util$algorithm$path$Direction()[ordinal()])
        {
        default:
            throw new IllegalArgumentException();

        case 1: // '\001'
            return LEFT;

        case 6: // '\006'
            return UP_LEFT;

        case 4: // '\004'
            return UP;

        case 8: // '\b'
            return UP_RIGHT;

        case 2: // '\002'
            return UP;

        case 7: // '\007'
            return DOWN_RIGHT;

        case 3: // '\003'
            return DOWN;

        case 5: // '\005'
            return DOWN_LEFT;
        }
    }

    public Direction rotateRight()
    {
        switch ($SWITCH_TABLE$org$andengine$util$algorithm$path$Direction()[ordinal()])
        {
        default:
            throw new IllegalArgumentException();

        case 1: // '\001'
            return RIGHT;

        case 6: // '\006'
            return DOWN_RIGHT;

        case 4: // '\004'
            return DOWN;

        case 8: // '\b'
            return DOWN_LEFT;

        case 2: // '\002'
            return LEFT;

        case 7: // '\007'
            return UP_LEFT;

        case 3: // '\003'
            return UP;

        case 5: // '\005'
            return UP_RIGHT;
        }
    }

    static 
    {
        UP = new Direction("UP", 0, 0, -1);
        DOWN = new Direction("DOWN", 1, 0, 1);
        LEFT = new Direction("LEFT", 2, -1, 0);
        RIGHT = new Direction("RIGHT", 3, 1, 0);
        UP_LEFT = new Direction("UP_LEFT", 4, -1, -1);
        UP_RIGHT = new Direction("UP_RIGHT", 5, 1, -1);
        DOWN_LEFT = new Direction("DOWN_LEFT", 6, -1, 1);
        DOWN_RIGHT = new Direction("DOWN_RIGHT", 7, 1, 1);
        Direction adirection[] = new Direction[8];
        adirection[0] = UP;
        adirection[1] = DOWN;
        adirection[2] = LEFT;
        adirection[3] = RIGHT;
        adirection[4] = UP_LEFT;
        adirection[5] = UP_RIGHT;
        adirection[6] = DOWN_LEFT;
        adirection[7] = DOWN_RIGHT;
        ENUM$VALUES = adirection;
    }
}
