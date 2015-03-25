// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.text.exception;


// Referenced classes of package org.andengine.entity.text.exception:
//            TextException

public class OutOfCharactersException extends TextException
{

    private static final long serialVersionUID = 0x2ab3114a37c24b09L;

    public OutOfCharactersException()
    {
    }

    public OutOfCharactersException(String s)
    {
        super(s);
    }

    public OutOfCharactersException(String s, Throwable throwable)
    {
        super(s, throwable);
    }

    public OutOfCharactersException(Throwable throwable)
    {
        super(throwable);
    }
}
