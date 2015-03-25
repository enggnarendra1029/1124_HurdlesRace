// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.input.sensor;


public final class SensorDelay extends Enum
{

    private static final SensorDelay ENUM$VALUES[];
    public static final SensorDelay FASTEST;
    public static final SensorDelay GAME;
    public static final SensorDelay NORMAL;
    public static final SensorDelay UI;
    private final int mDelay;

    private SensorDelay(String s, int i, int j)
    {
        super(s, i);
        mDelay = j;
    }

    public static SensorDelay valueOf(String s)
    {
        return (SensorDelay)Enum.valueOf(org/andengine/input/sensor/SensorDelay, s);
    }

    public static SensorDelay[] values()
    {
        SensorDelay asensordelay[] = ENUM$VALUES;
        int i = asensordelay.length;
        SensorDelay asensordelay1[] = new SensorDelay[i];
        System.arraycopy(asensordelay, 0, asensordelay1, 0, i);
        return asensordelay1;
    }

    public int getDelay()
    {
        return mDelay;
    }

    static 
    {
        NORMAL = new SensorDelay("NORMAL", 0, 3);
        UI = new SensorDelay("UI", 1, 2);
        GAME = new SensorDelay("GAME", 2, 1);
        FASTEST = new SensorDelay("FASTEST", 3, 0);
        SensorDelay asensordelay[] = new SensorDelay[4];
        asensordelay[0] = NORMAL;
        asensordelay[1] = UI;
        asensordelay[2] = GAME;
        asensordelay[3] = FASTEST;
        ENUM$VALUES = asensordelay;
    }
}
