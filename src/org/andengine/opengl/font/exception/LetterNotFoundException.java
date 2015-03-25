// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.font.exception;


// Referenced classes of package org.andengine.opengl.font.exception:
//            FontException

public class LetterNotFoundException extends FontException
{

    private static final long serialVersionUID = 0x490168e498d31919L;

    public LetterNotFoundException()
    {
    }

    public LetterNotFoundException(String s)
    {
        super(s);
    }

    public LetterNotFoundException(String s, Throwable throwable)
    {
        super(s, throwable);
    }

    public LetterNotFoundException(Throwable throwable)
    {
        super(throwable);
    }
}
