// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.exception;


// Referenced classes of package org.andengine.util.exception:
//            DeviceNotSupportedException

public static final class  extends Enum
{

    public static final ENUM.VALUES CODEPATH_INCOMPLETE;
    public static final ENUM.VALUES EGLCONFIG_NOT_FOUND;
    private static final ENUM.VALUES ENUM$VALUES[];

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(org/andengine/util/exception/DeviceNotSupportedException$DeviceNotSupportedCause, s);
    }

    public static [] values()
    {
         a[] = ENUM$VALUES;
        int i = a.length;
         a1[] = new ENUM.VALUES[i];
        System.arraycopy(a, 0, a1, 0, i);
        return a1;
    }

    static 
    {
        CODEPATH_INCOMPLETE = new <init>("CODEPATH_INCOMPLETE", 0);
        EGLCONFIG_NOT_FOUND = new <init>("EGLCONFIG_NOT_FOUND", 1);
        ENUM.VALUES avalues[] = new <init>[2];
        avalues[0] = CODEPATH_INCOMPLETE;
        avalues[1] = EGLCONFIG_NOT_FOUND;
        ENUM$VALUES = avalues;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
