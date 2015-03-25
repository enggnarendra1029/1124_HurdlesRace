// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.system;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.regex.Pattern;
import org.andengine.util.StreamUtils;
import org.andengine.util.TextUtils;
import org.andengine.util.debug.Debug;

public class CPUUsage
{

    private long mIdle;
    private long mTotal;
    private float mUsage;

    public CPUUsage()
    {
        mTotal = 0L;
        mIdle = 0L;
        mUsage = 0.0F;
    }

    public float getUsage()
    {
        return mUsage;
    }

    public void update()
    {
        Object obj = null;
        BufferedReader bufferedreader = new BufferedReader(new InputStreamReader(new FileInputStream("/proc/stat")), 8192);
        long l;
        long l1;
        long l2;
        long l3;
        String s = bufferedreader.readLine();
        String as[] = TextUtils.SPLITPATTERN_SPACE.split(s);
        l = Long.parseLong(as[2]);
        l1 = Long.parseLong(as[3]);
        l2 = Long.parseLong(as[4]);
        l3 = Long.parseLong(as[5]);
        long l4 = l2 + (l + l1);
        mUsage = (100F * (float)(l4 - mTotal)) / (float)((l3 + (l4 - mTotal)) - mIdle);
        mTotal = l4;
        mIdle = l3;
        StreamUtils.close(bufferedreader);
        return;
        IOException ioexception;
        ioexception;
_L4:
        Debug.e(ioexception);
        StreamUtils.close(((java.io.Closeable) (obj)));
        return;
        Exception exception;
        exception;
_L2:
        StreamUtils.close(((java.io.Closeable) (obj)));
        throw exception;
        exception;
        obj = bufferedreader;
        if (true) goto _L2; else goto _L1
_L1:
        ioexception;
        obj = bufferedreader;
        if (true) goto _L4; else goto _L3
_L3:
    }
}
