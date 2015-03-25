// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.progress;


public interface IProgressListener
{

    public static final int PROGRESS_MAX = 100;
    public static final int PROGRESS_MIN;

    public abstract void onProgressChanged(int i);
}
