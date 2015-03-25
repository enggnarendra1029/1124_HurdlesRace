// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.engine.options;


public final class ScreenOrientation extends Enum
{

    private static final ScreenOrientation ENUM$VALUES[];
    public static final ScreenOrientation LANDSCAPE_FIXED;
    public static final ScreenOrientation LANDSCAPE_SENSOR;
    public static final ScreenOrientation PORTRAIT_FIXED;
    public static final ScreenOrientation PORTRAIT_SENSOR;

    private ScreenOrientation(String s, int i)
    {
        super(s, i);
    }

    public static ScreenOrientation valueOf(String s)
    {
        return (ScreenOrientation)Enum.valueOf(org/andengine/engine/options/ScreenOrientation, s);
    }

    public static ScreenOrientation[] values()
    {
        ScreenOrientation ascreenorientation[] = ENUM$VALUES;
        int i = ascreenorientation.length;
        ScreenOrientation ascreenorientation1[] = new ScreenOrientation[i];
        System.arraycopy(ascreenorientation, 0, ascreenorientation1, 0, i);
        return ascreenorientation1;
    }

    static 
    {
        LANDSCAPE_FIXED = new ScreenOrientation("LANDSCAPE_FIXED", 0);
        LANDSCAPE_SENSOR = new ScreenOrientation("LANDSCAPE_SENSOR", 1);
        PORTRAIT_FIXED = new ScreenOrientation("PORTRAIT_FIXED", 2);
        PORTRAIT_SENSOR = new ScreenOrientation("PORTRAIT_SENSOR", 3);
        ScreenOrientation ascreenorientation[] = new ScreenOrientation[4];
        ascreenorientation[0] = LANDSCAPE_FIXED;
        ascreenorientation[1] = LANDSCAPE_SENSOR;
        ascreenorientation[2] = PORTRAIT_FIXED;
        ascreenorientation[3] = PORTRAIT_SENSOR;
        ENUM$VALUES = ascreenorientation;
    }
}
