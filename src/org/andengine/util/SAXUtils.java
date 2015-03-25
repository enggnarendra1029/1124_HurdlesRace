// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util;

import org.xml.sax.Attributes;

public final class SAXUtils
{

    public SAXUtils()
    {
    }

    public static final void appendAttribute(StringBuilder stringbuilder, String s, byte byte0)
    {
        appendAttribute(stringbuilder, s, String.valueOf(byte0));
    }

    public static final void appendAttribute(StringBuilder stringbuilder, String s, double d)
    {
        appendAttribute(stringbuilder, s, String.valueOf(d));
    }

    public static final void appendAttribute(StringBuilder stringbuilder, String s, float f)
    {
        appendAttribute(stringbuilder, s, String.valueOf(f));
    }

    public static final void appendAttribute(StringBuilder stringbuilder, String s, int i)
    {
        appendAttribute(stringbuilder, s, String.valueOf(i));
    }

    public static final void appendAttribute(StringBuilder stringbuilder, String s, long l)
    {
        appendAttribute(stringbuilder, s, String.valueOf(l));
    }

    public static final void appendAttribute(StringBuilder stringbuilder, String s, String s1)
    {
        stringbuilder.append(' ').append(s).append('=').append('"').append(s1).append('"');
    }

    public static final void appendAttribute(StringBuilder stringbuilder, String s, short word0)
    {
        appendAttribute(stringbuilder, s, String.valueOf(word0));
    }

    public static final void appendAttribute(StringBuilder stringbuilder, String s, boolean flag)
    {
        appendAttribute(stringbuilder, s, String.valueOf(flag));
    }

    public static final String getAttribute(Attributes attributes, String s, String s1)
    {
        String s2 = attributes.getValue("", s);
        if (s2 != null)
        {
            return s2;
        } else
        {
            return s1;
        }
    }

    public static final String getAttributeOrThrow(Attributes attributes, String s)
    {
        String s1 = attributes.getValue("", s);
        if (s1 != null)
        {
            return s1;
        } else
        {
            throw new IllegalArgumentException((new StringBuilder("No value found for attribute: '")).append(s).append("'").toString());
        }
    }

    public static final boolean getBooleanAttribute(Attributes attributes, String s, boolean flag)
    {
        String s1 = attributes.getValue("", s);
        if (s1 != null)
        {
            flag = Boolean.parseBoolean(s1);
        }
        return flag;
    }

    public static final boolean getBooleanAttributeOrThrow(Attributes attributes, String s)
    {
        return Boolean.parseBoolean(getAttributeOrThrow(attributes, s));
    }

    public static final byte getByteAttribute(Attributes attributes, String s, byte byte0)
    {
        String s1 = attributes.getValue("", s);
        if (s1 != null)
        {
            byte0 = Byte.parseByte(s1);
        }
        return byte0;
    }

    public static final byte getByteAttributeOrThrow(Attributes attributes, String s)
    {
        return Byte.parseByte(getAttributeOrThrow(attributes, s));
    }

    public static final double getDoubleAttribute(Attributes attributes, String s, double d)
    {
        String s1 = attributes.getValue("", s);
        if (s1 != null)
        {
            d = Double.parseDouble(s1);
        }
        return d;
    }

    public static final double getDoubleAttributeOrThrow(Attributes attributes, String s)
    {
        return Double.parseDouble(getAttributeOrThrow(attributes, s));
    }

    public static final float getFloatAttribute(Attributes attributes, String s, float f)
    {
        String s1 = attributes.getValue("", s);
        if (s1 != null)
        {
            f = Float.parseFloat(s1);
        }
        return f;
    }

    public static final float getFloatAttributeOrThrow(Attributes attributes, String s)
    {
        return Float.parseFloat(getAttributeOrThrow(attributes, s));
    }

    public static final int getIntAttribute(Attributes attributes, String s, int i)
    {
        String s1 = attributes.getValue("", s);
        if (s1 != null)
        {
            i = Integer.parseInt(s1);
        }
        return i;
    }

    public static final int getIntAttributeOrThrow(Attributes attributes, String s)
    {
        return Integer.parseInt(getAttributeOrThrow(attributes, s));
    }

    public static final long getLongAttribute(Attributes attributes, String s, long l)
    {
        String s1 = attributes.getValue("", s);
        if (s1 != null)
        {
            l = Long.parseLong(s1);
        }
        return l;
    }

    public static final long getLongAttributeOrThrow(Attributes attributes, String s)
    {
        return Long.parseLong(getAttributeOrThrow(attributes, s));
    }

    public static final short getShortAttribute(Attributes attributes, String s, short word0)
    {
        String s1 = attributes.getValue("", s);
        if (s1 != null)
        {
            word0 = Short.parseShort(s1);
        }
        return word0;
    }

    public static final short getShortAttributeOrThrow(Attributes attributes, String s)
    {
        return Short.parseShort(getAttributeOrThrow(attributes, s));
    }
}
