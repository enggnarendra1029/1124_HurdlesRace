// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.mime;


public final class MIMEType extends Enum
{

    private static final MIMEType ENUM$VALUES[];
    public static final MIMEType GIF;
    public static final MIMEType JPEG;
    public static final MIMEType PNG;
    private final String mTypeString;

    private MIMEType(String s, int i, String s1)
    {
        super(s, i);
        mTypeString = s1;
    }

    public static MIMEType valueOf(String s)
    {
        return (MIMEType)Enum.valueOf(org/andengine/util/mime/MIMEType, s);
    }

    public static MIMEType[] values()
    {
        MIMEType amimetype[] = ENUM$VALUES;
        int i = amimetype.length;
        MIMEType amimetype1[] = new MIMEType[i];
        System.arraycopy(amimetype, 0, amimetype1, 0, i);
        return amimetype1;
    }

    public String getTypeString()
    {
        return mTypeString;
    }

    static 
    {
        JPEG = new MIMEType("JPEG", 0, "image/jpeg");
        GIF = new MIMEType("GIF", 1, "image/gif");
        PNG = new MIMEType("PNG", 2, "image/png");
        MIMEType amimetype[] = new MIMEType[3];
        amimetype[0] = JPEG;
        amimetype[1] = GIF;
        amimetype[2] = PNG;
        ENUM$VALUES = amimetype;
    }
}
