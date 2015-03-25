// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture.atlas.bitmap.source.decorator;


// Referenced classes of package org.andengine.opengl.texture.atlas.bitmap.source.decorator:
//            RadialGradientFillBitmapTextureAtlasSourceDecorator

public static final class  extends Enum
{

    private static final ENUM.VALUES ENUM$VALUES[];
    public static final ENUM.VALUES INSIDE_OUT;
    public static final ENUM.VALUES OUTSIDE_IN;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(org/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection, s);
    }

    public static [] values()
    {
         a[] = ENUM$VALUES;
        int i = a.length;
         a1[] = new ENUM.VALUES[i];
        System.arraycopy(a, 0, a1, 0, i);
        return a1;
    }

    static 
    {
        INSIDE_OUT = new <init>("INSIDE_OUT", 0);
        OUTSIDE_IN = new <init>("OUTSIDE_IN", 1);
        ENUM.VALUES avalues[] = new <init>[2];
        avalues[0] = INSIDE_OUT;
        avalues[1] = OUTSIDE_IN;
        ENUM$VALUES = avalues;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
