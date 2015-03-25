// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.adt.bounds;

import org.andengine.util.exception.AndEngineRuntimeException;

public final class BoundsSplit extends Enum
{
    public static class BoundsSplitException extends AndEngineRuntimeException
    {

        private static final long serialVersionUID = 0x6e9e37579b2c5477L;

        public BoundsSplitException()
        {
        }
    }


    public static final BoundsSplit BOTTOM_LEFT;
    public static final BoundsSplit BOTTOM_RIGHT;
    private static final BoundsSplit ENUM$VALUES[];
    public static final BoundsSplit TOP_LEFT;
    public static final BoundsSplit TOP_RIGHT;

    private BoundsSplit(String s, int i)
    {
        super(s, i);
    }

    public static BoundsSplit valueOf(String s)
    {
        return (BoundsSplit)Enum.valueOf(org/andengine/util/adt/bounds/BoundsSplit, s);
    }

    public static BoundsSplit[] values()
    {
        BoundsSplit aboundssplit[] = ENUM$VALUES;
        int i = aboundssplit.length;
        BoundsSplit aboundssplit1[] = new BoundsSplit[i];
        System.arraycopy(aboundssplit, 0, aboundssplit1, 0, i);
        return aboundssplit1;
    }

    static 
    {
        TOP_LEFT = new BoundsSplit("TOP_LEFT", 0);
        TOP_RIGHT = new BoundsSplit("TOP_RIGHT", 1);
        BOTTOM_LEFT = new BoundsSplit("BOTTOM_LEFT", 2);
        BOTTOM_RIGHT = new BoundsSplit("BOTTOM_RIGHT", 3);
        BoundsSplit aboundssplit[] = new BoundsSplit[4];
        aboundssplit[0] = TOP_LEFT;
        aboundssplit[1] = TOP_RIGHT;
        aboundssplit[2] = BOTTOM_LEFT;
        aboundssplit[3] = BOTTOM_RIGHT;
        ENUM$VALUES = aboundssplit;
    }
}
