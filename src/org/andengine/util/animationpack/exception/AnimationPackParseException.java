// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.animationpack.exception;

import org.xml.sax.SAXException;

public class AnimationPackParseException extends SAXException
{

    private static final long serialVersionUID = 0xfc3ebde00b89860L;

    public AnimationPackParseException()
    {
    }

    public AnimationPackParseException(Exception exception)
    {
        super(exception);
    }

    public AnimationPackParseException(String s)
    {
        super(s);
    }

    public AnimationPackParseException(String s, Exception exception)
    {
        super(s, exception);
    }
}
