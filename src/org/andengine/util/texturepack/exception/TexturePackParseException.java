// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.texturepack.exception;

import org.xml.sax.SAXException;

public class TexturePackParseException extends SAXException
{

    private static final long serialVersionUID = 0x5020b797340c39cdL;

    public TexturePackParseException()
    {
    }

    public TexturePackParseException(Exception exception)
    {
        super(exception);
    }

    public TexturePackParseException(String s)
    {
        super(s);
    }

    public TexturePackParseException(String s, Exception exception)
    {
        super(s, exception);
    }
}
