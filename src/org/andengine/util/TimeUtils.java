// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util;

import org.andengine.util.time.TimeConstants;

public final class TimeUtils
    implements TimeConstants
{

    public TimeUtils()
    {
    }

    public static final String formatSeconds(int i)
    {
        return formatSeconds(i, new StringBuilder());
    }

    public static final String formatSeconds(int i, StringBuilder stringbuilder)
    {
        int j = i / 60;
        int k = i % 60;
        stringbuilder.append(j);
        stringbuilder.append(':');
        if (k < 10)
        {
            stringbuilder.append('0');
        }
        stringbuilder.append(k);
        return stringbuilder.toString();
    }
}
