// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.debug;


// Referenced classes of package org.andengine.util.debug:
//            Debug

public static final class  extends Enum
{

    public static VERBOSE ALL;
    public static final VERBOSE DEBUG;
    private static final VERBOSE ENUM$VALUES[];
    public static final VERBOSE ERROR;
    public static final VERBOSE INFO;
    public static final VERBOSE NONE;
    public static final VERBOSE VERBOSE;
    public static final VERBOSE WARNING;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(org/andengine/util/debug/Debug$DebugLevel, s);
    }

    public static [] values()
    {
         a[] = ENUM$VALUES;
        int i = a.length;
         a1[] = new ENUM.VALUES[i];
        System.arraycopy(a, 0, a1, 0, i);
        return a1;
    }

    public boolean isSameOrLessThan(ENUM.VALUES values1)
    {
        return compareTo(values1) >= 0;
    }

    static 
    {
        NONE = new <init>("NONE", 0);
        ERROR = new <init>("ERROR", 1);
        WARNING = new <init>("WARNING", 2);
        INFO = new <init>("INFO", 3);
        DEBUG = new <init>("DEBUG", 4);
        VERBOSE = new <init>("VERBOSE", 5);
        compareTo acompareto[] = new <init>[6];
        acompareto[0] = NONE;
        acompareto[1] = ERROR;
        acompareto[2] = WARNING;
        acompareto[3] = INFO;
        acompareto[4] = DEBUG;
        acompareto[5] = VERBOSE;
        ENUM$VALUES = acompareto;
        ALL = VERBOSE;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
