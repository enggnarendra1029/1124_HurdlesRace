// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.debug;

import android.util.Log;

public class Debug
{
    public static final class DebugLevel extends Enum
    {

        public static DebugLevel ALL;
        public static final DebugLevel DEBUG;
        private static final DebugLevel ENUM$VALUES[];
        public static final DebugLevel ERROR;
        public static final DebugLevel INFO;
        public static final DebugLevel NONE;
        public static final DebugLevel VERBOSE;
        public static final DebugLevel WARNING;

        public static DebugLevel valueOf(String s)
        {
            return (DebugLevel)Enum.valueOf(org/andengine/util/debug/Debug$DebugLevel, s);
        }

        public static DebugLevel[] values()
        {
            DebugLevel adebuglevel[] = ENUM$VALUES;
            int j = adebuglevel.length;
            DebugLevel adebuglevel1[] = new DebugLevel[j];
            System.arraycopy(adebuglevel, 0, adebuglevel1, 0, j);
            return adebuglevel1;
        }

        public boolean isSameOrLessThan(DebugLevel debuglevel)
        {
            return compareTo(debuglevel) >= 0;
        }

        static 
        {
            NONE = new DebugLevel("NONE", 0);
            ERROR = new DebugLevel("ERROR", 1);
            WARNING = new DebugLevel("WARNING", 2);
            INFO = new DebugLevel("INFO", 3);
            DEBUG = new DebugLevel("DEBUG", 4);
            VERBOSE = new DebugLevel("VERBOSE", 5);
            DebugLevel adebuglevel[] = new DebugLevel[6];
            adebuglevel[0] = NONE;
            adebuglevel[1] = ERROR;
            adebuglevel[2] = WARNING;
            adebuglevel[3] = INFO;
            adebuglevel[4] = DEBUG;
            adebuglevel[5] = VERBOSE;
            ENUM$VALUES = adebuglevel;
            ALL = VERBOSE;
        }

        private DebugLevel(String s, int j)
        {
            super(s, j);
        }
    }


    private static int $SWITCH_TABLE$org$andengine$util$debug$Debug$DebugLevel[];
    private static DebugLevel sDebugLevel;
    private static String sDebugUser = "";
    private static String sTag = "AndEngine";

    static int[] $SWITCH_TABLE$org$andengine$util$debug$Debug$DebugLevel()
    {
        int ai[] = $SWITCH_TABLE$org$andengine$util$debug$Debug$DebugLevel;
        if (ai != null)
        {
            return ai;
        }
        int ai1[] = new int[DebugLevel.values().length];
        try
        {
            ai1[DebugLevel.DEBUG.ordinal()] = 5;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            ai1[DebugLevel.ERROR.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            ai1[DebugLevel.INFO.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            ai1[DebugLevel.NONE.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        try
        {
            ai1[DebugLevel.VERBOSE.ordinal()] = 6;
        }
        catch (NoSuchFieldError nosuchfielderror4) { }
        try
        {
            ai1[DebugLevel.WARNING.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror5) { }
        $SWITCH_TABLE$org$andengine$util$debug$Debug$DebugLevel = ai1;
        return ai1;
    }

    public Debug()
    {
    }

    public static void d(String s)
    {
        d(sTag, s, null);
    }

    public static void d(String s, String s1)
    {
        d(s, s1, null);
    }

    public static void d(String s, String s1, Throwable throwable)
    {
label0:
        {
            if (sDebugLevel.isSameOrLessThan(DebugLevel.DEBUG))
            {
                if (throwable != null)
                {
                    break label0;
                }
                Log.d(s, s1);
            }
            return;
        }
        Log.d(s, s1, throwable);
    }

    public static void d(String s, Throwable throwable)
    {
        d(sTag, s, throwable);
    }

    public static void dUser(String s, String s1)
    {
        if (sDebugUser.equals(s1))
        {
            d(s);
        }
    }

    public static void dUser(String s, String s1, String s2)
    {
        if (sDebugUser.equals(s2))
        {
            d(s, s1);
        }
    }

    public static void dUser(String s, String s1, Throwable throwable, String s2)
    {
        if (sDebugUser.equals(s2))
        {
            d(s, s1, throwable);
        }
    }

    public static void dUser(String s, Throwable throwable, String s1)
    {
        if (sDebugUser.equals(s1))
        {
            d(s, throwable);
        }
    }

    public static void e(String s)
    {
        e(sTag, s, null);
    }

    public static void e(String s, String s1)
    {
        e(s, s1, null);
    }

    public static void e(String s, String s1, Throwable throwable)
    {
label0:
        {
            if (sDebugLevel.isSameOrLessThan(DebugLevel.ERROR))
            {
                if (throwable != null)
                {
                    break label0;
                }
                Log.e(s, s1);
            }
            return;
        }
        Log.e(s, s1, throwable);
    }

    public static void e(String s, Throwable throwable)
    {
        e(sTag, s, throwable);
    }

    public static void e(Throwable throwable)
    {
        e(sTag, throwable);
    }

    public static void eUser(String s, String s1)
    {
        if (sDebugUser.equals(s1))
        {
            e(s);
        }
    }

    public static void eUser(String s, String s1, String s2)
    {
        if (sDebugUser.equals(s2))
        {
            e(s, s1);
        }
    }

    public static void eUser(String s, String s1, Throwable throwable, String s2)
    {
        if (sDebugUser.equals(s2))
        {
            e(s, s1, throwable);
        }
    }

    public static void eUser(String s, Throwable throwable, String s1)
    {
        if (sDebugUser.equals(s1))
        {
            e(s, throwable);
        }
    }

    public static void eUser(Throwable throwable, String s)
    {
        if (sDebugUser.equals(s))
        {
            e(throwable);
        }
    }

    public static DebugLevel getDebugLevel()
    {
        return sDebugLevel;
    }

    public static String getTag()
    {
        return sTag;
    }

    public static void i(String s)
    {
        i(sTag, s, null);
    }

    public static void i(String s, String s1)
    {
        i(s, s1, null);
    }

    public static void i(String s, String s1, Throwable throwable)
    {
label0:
        {
            if (sDebugLevel.isSameOrLessThan(DebugLevel.INFO))
            {
                if (throwable != null)
                {
                    break label0;
                }
                Log.i(s, s1);
            }
            return;
        }
        Log.i(s, s1, throwable);
    }

    public static void i(String s, Throwable throwable)
    {
        i(sTag, s, throwable);
    }

    public static void iUser(String s, String s1)
    {
        if (sDebugUser.equals(s1))
        {
            i(s);
        }
    }

    public static void iUser(String s, String s1, String s2)
    {
        if (sDebugUser.equals(s2))
        {
            i(s, s1);
        }
    }

    public static void iUser(String s, String s1, Throwable throwable, String s2)
    {
        if (sDebugUser.equals(s2))
        {
            i(s, s1, throwable);
        }
    }

    public static void iUser(String s, Throwable throwable, String s1)
    {
        if (sDebugUser.equals(s1))
        {
            i(s, throwable);
        }
    }

    public static void log(DebugLevel debuglevel, String s)
    {
        switch ($SWITCH_TABLE$org$andengine$util$debug$Debug$DebugLevel()[debuglevel.ordinal()])
        {
        case 1: // '\001'
        default:
            return;

        case 6: // '\006'
            v(s);
            return;

        case 4: // '\004'
            i(s);
            return;

        case 5: // '\005'
            d(s);
            return;

        case 3: // '\003'
            w(s);
            return;

        case 2: // '\002'
            e(s);
            return;
        }
    }

    public static void log(DebugLevel debuglevel, String s, String s1)
    {
        switch ($SWITCH_TABLE$org$andengine$util$debug$Debug$DebugLevel()[debuglevel.ordinal()])
        {
        case 1: // '\001'
        default:
            return;

        case 6: // '\006'
            v(s, s1);
            return;

        case 4: // '\004'
            i(s, s1);
            return;

        case 5: // '\005'
            d(s, s1);
            return;

        case 3: // '\003'
            w(s, s1);
            return;

        case 2: // '\002'
            e(s, s1);
            return;
        }
    }

    public static void log(DebugLevel debuglevel, String s, String s1, Throwable throwable)
    {
        switch ($SWITCH_TABLE$org$andengine$util$debug$Debug$DebugLevel()[debuglevel.ordinal()])
        {
        case 1: // '\001'
        default:
            return;

        case 6: // '\006'
            v(s, s1, throwable);
            return;

        case 4: // '\004'
            i(s, s1, throwable);
            return;

        case 5: // '\005'
            d(s, s1, throwable);
            return;

        case 3: // '\003'
            w(s, s1, throwable);
            return;

        case 2: // '\002'
            e(s, s1, throwable);
            return;
        }
    }

    public static void log(DebugLevel debuglevel, String s, Throwable throwable)
    {
        switch ($SWITCH_TABLE$org$andengine$util$debug$Debug$DebugLevel()[debuglevel.ordinal()])
        {
        case 1: // '\001'
        default:
            return;

        case 6: // '\006'
            v(s, throwable);
            return;

        case 4: // '\004'
            i(s, throwable);
            return;

        case 5: // '\005'
            d(s, throwable);
            return;

        case 3: // '\003'
            w(s, throwable);
            return;

        case 2: // '\002'
            e(s, throwable);
            return;
        }
    }

    public static void setDebugLevel(DebugLevel debuglevel)
    {
        if (debuglevel == null)
        {
            throw new IllegalArgumentException("pDebugLevel must not be null!");
        } else
        {
            sDebugLevel = debuglevel;
            return;
        }
    }

    public static void setDebugUser(String s)
    {
        if (s == null)
        {
            throw new IllegalArgumentException("pDebugUser must not be null!");
        } else
        {
            sDebugUser = s;
            return;
        }
    }

    public static void setTag(String s)
    {
        sTag = s;
    }

    public static void v(String s)
    {
        v(sTag, s, null);
    }

    public static void v(String s, String s1)
    {
        v(s, s1, null);
    }

    public static void v(String s, String s1, Throwable throwable)
    {
label0:
        {
            if (sDebugLevel.isSameOrLessThan(DebugLevel.VERBOSE))
            {
                if (throwable != null)
                {
                    break label0;
                }
                Log.v(s, s1);
            }
            return;
        }
        Log.v(s, s1, throwable);
    }

    public static void v(String s, Throwable throwable)
    {
        v(sTag, s, throwable);
    }

    public static void vUser(String s, String s1)
    {
        if (sDebugUser.equals(s1))
        {
            v(s);
        }
    }

    public static void vUser(String s, String s1, String s2)
    {
        if (sDebugUser.equals(s2))
        {
            v(s, s1);
        }
    }

    public static void vUser(String s, String s1, Throwable throwable, String s2)
    {
        if (sDebugUser.equals(s2))
        {
            v(s, s1, throwable);
        }
    }

    public static void vUser(String s, Throwable throwable, String s1)
    {
        if (sDebugUser.equals(s1))
        {
            v(s, throwable);
        }
    }

    public static void w(String s)
    {
        w(sTag, s, null);
    }

    public static void w(String s, String s1)
    {
        w(s, s1, null);
    }

    public static void w(String s, String s1, Throwable throwable)
    {
label0:
        {
            if (sDebugLevel.isSameOrLessThan(DebugLevel.WARNING))
            {
                if (throwable != null)
                {
                    break label0;
                }
                Log.w(s, s1);
            }
            return;
        }
        Log.w(s, s1, throwable);
    }

    public static void w(String s, Throwable throwable)
    {
        w(sTag, s, throwable);
    }

    public static void w(Throwable throwable)
    {
        w("", throwable);
    }

    public static void wUser(String s, String s1)
    {
        if (sDebugUser.equals(s1))
        {
            w(s);
        }
    }

    public static void wUser(String s, String s1, String s2)
    {
        if (sDebugUser.equals(s2))
        {
            w(s, s1);
        }
    }

    public static void wUser(String s, String s1, Throwable throwable, String s2)
    {
        if (sDebugUser.equals(s2))
        {
            w(s, s1, throwable);
        }
    }

    public static void wUser(String s, Throwable throwable, String s1)
    {
        if (sDebugUser.equals(s1))
        {
            w(s, throwable);
        }
    }

    public static void wUser(Throwable throwable, String s)
    {
        if (sDebugUser.equals(s))
        {
            w(throwable);
        }
    }

    static 
    {
        sDebugLevel = DebugLevel.VERBOSE;
    }
}
