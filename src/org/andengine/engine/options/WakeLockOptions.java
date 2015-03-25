// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.engine.options;


public final class WakeLockOptions extends Enum
{

    public static final WakeLockOptions BRIGHT;
    private static final WakeLockOptions ENUM$VALUES[];
    public static final WakeLockOptions SCREEN_BRIGHT;
    public static final WakeLockOptions SCREEN_DIM;
    public static final WakeLockOptions SCREEN_ON;
    private final int mFlag;

    private WakeLockOptions(String s, int i, int j)
    {
        super(s, i);
        mFlag = j;
    }

    public static WakeLockOptions valueOf(String s)
    {
        return (WakeLockOptions)Enum.valueOf(org/andengine/engine/options/WakeLockOptions, s);
    }

    public static WakeLockOptions[] values()
    {
        WakeLockOptions awakelockoptions[] = ENUM$VALUES;
        int i = awakelockoptions.length;
        WakeLockOptions awakelockoptions1[] = new WakeLockOptions[i];
        System.arraycopy(awakelockoptions, 0, awakelockoptions1, 0, i);
        return awakelockoptions1;
    }

    public int getFlag()
    {
        return mFlag;
    }

    static 
    {
        BRIGHT = new WakeLockOptions("BRIGHT", 0, 26);
        SCREEN_BRIGHT = new WakeLockOptions("SCREEN_BRIGHT", 1, 10);
        SCREEN_DIM = new WakeLockOptions("SCREEN_DIM", 2, 6);
        SCREEN_ON = new WakeLockOptions("SCREEN_ON", 3, -1);
        WakeLockOptions awakelockoptions[] = new WakeLockOptions[4];
        awakelockoptions[0] = BRIGHT;
        awakelockoptions[1] = SCREEN_BRIGHT;
        awakelockoptions[2] = SCREEN_DIM;
        awakelockoptions[3] = SCREEN_ON;
        ENUM$VALUES = awakelockoptions;
    }
}
