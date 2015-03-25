// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util;

import org.andengine.util.exception.AndEngineRuntimeException;

public interface IDisposable
{
    public static class AlreadyDisposedException extends AndEngineRuntimeException
    {

        private static final long serialVersionUID = 0x5072c4d7050980b1L;

        public AlreadyDisposedException()
        {
        }

        public AlreadyDisposedException(String s)
        {
            super(s);
        }

        public AlreadyDisposedException(String s, Throwable throwable)
        {
            super(s, throwable);
        }

        public AlreadyDisposedException(Throwable throwable)
        {
            super(throwable);
        }
    }


    public abstract void dispose()
        throws AlreadyDisposedException;

    public abstract boolean isDisposed();
}
