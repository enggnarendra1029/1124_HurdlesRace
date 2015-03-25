// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.exception;

import android.opengl.GLU;

public class GLException extends RuntimeException
{

    private static final long serialVersionUID = 0x97fcaef6184e5aceL;
    private final int mError;

    public GLException(int i)
    {
        this(i, getErrorString(i));
    }

    public GLException(int i, String s)
    {
        super(s);
        mError = i;
    }

    private static String getErrorString(int i)
    {
        String s = GLU.gluErrorString(i);
        if (s == null)
        {
            s = (new StringBuilder("Unknown error '0x")).append(Integer.toHexString(i)).append("'.").toString();
        }
        return s;
    }

    public int getError()
    {
        return mError;
    }
}
