// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util;

import org.andengine.util.debug.Debug;

public class ThreadUtils
{

    private static final int STACKTRACE_CALLER_DEPTH = 3;

    public ThreadUtils()
    {
    }

    public static void dumpCurrentThreadInfo()
    {
        dumpCurrentThreadInfo(org.andengine.util.debug.Debug.DebugLevel.DEBUG, Thread.currentThread().getStackTrace()[3]);
    }

    public static void dumpCurrentThreadInfo(org.andengine.util.debug.Debug.DebugLevel debuglevel)
    {
        dumpCurrentThreadInfo(debuglevel, Thread.currentThread().getStackTrace()[3]);
    }

    private static void dumpCurrentThreadInfo(org.andengine.util.debug.Debug.DebugLevel debuglevel, StackTraceElement stacktraceelement)
    {
        Debug.log(debuglevel, (new StringBuilder(String.valueOf(stacktraceelement.getClassName()))).append(".").append(stacktraceelement.getMethodName()).append("(").append(stacktraceelement.getFileName()).append(".java:").append(stacktraceelement.getLineNumber()).append(") @(Thread: '").append(Thread.currentThread().getName()).append("')").toString());
    }
}
