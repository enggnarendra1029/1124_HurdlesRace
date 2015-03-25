// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture.atlas.bitmap.source.decorator;


// Referenced classes of package org.andengine.opengl.texture.atlas.bitmap.source.decorator:
//            LinearGradientFillBitmapTextureAtlasSourceDecorator

public static final class mToY extends Enum
{

    public static final ENUM.VALUES BOTTOMLEFT_TO_TOPRIGHT;
    public static final ENUM.VALUES BOTTOMRIGHT_TO_TOPLEFT;
    public static final ENUM.VALUES BOTTOM_TO_TOP;
    private static final ENUM.VALUES ENUM$VALUES[];
    public static final ENUM.VALUES LEFT_TO_RIGHT;
    public static final ENUM.VALUES RIGHT_TO_LEFT;
    public static final ENUM.VALUES TOPLEFT_TO_BOTTOMRIGHT;
    public static final ENUM.VALUES TOPRIGHT_TO_BOTTOMLEFT;
    public static final ENUM.VALUES TOP_TO_BOTTOM;
    private final int mFromX;
    private final int mFromY;
    private final int mToX;
    private final int mToY;

    public static mToY valueOf(String s)
    {
        return (mToY)Enum.valueOf(org/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection, s);
    }

    public static mToY[] values()
    {
        mToY amtoy[] = ENUM$VALUES;
        int i = amtoy.length;
        mToY amtoy1[] = new ENUM.VALUES[i];
        System.arraycopy(amtoy, 0, amtoy1, 0, i);
        return amtoy1;
    }

    final int getFromX(int i)
    {
        return i * mFromX;
    }

    final int getFromY(int i)
    {
        return i * mFromY;
    }

    final int getToX(int i)
    {
        return i * mToX;
    }

    final int getToY(int i)
    {
        return i * mToY;
    }

    static 
    {
        LEFT_TO_RIGHT = new <init>("LEFT_TO_RIGHT", 0, 1, 0, 0, 0);
        RIGHT_TO_LEFT = new <init>("RIGHT_TO_LEFT", 1, 0, 0, 1, 0);
        BOTTOM_TO_TOP = new <init>("BOTTOM_TO_TOP", 2, 0, 1, 0, 0);
        TOP_TO_BOTTOM = new <init>("TOP_TO_BOTTOM", 3, 0, 0, 0, 1);
        TOPLEFT_TO_BOTTOMRIGHT = new <init>("TOPLEFT_TO_BOTTOMRIGHT", 4, 0, 0, 1, 1);
        BOTTOMRIGHT_TO_TOPLEFT = new <init>("BOTTOMRIGHT_TO_TOPLEFT", 5, 1, 1, 0, 0);
        TOPRIGHT_TO_BOTTOMLEFT = new <init>("TOPRIGHT_TO_BOTTOMLEFT", 6, 1, 0, 0, 1);
        BOTTOMLEFT_TO_TOPRIGHT = new <init>("BOTTOMLEFT_TO_TOPRIGHT", 7, 0, 1, 1, 0);
        mToY amtoy[] = new <init>[8];
        amtoy[0] = LEFT_TO_RIGHT;
        amtoy[1] = RIGHT_TO_LEFT;
        amtoy[2] = BOTTOM_TO_TOP;
        amtoy[3] = TOP_TO_BOTTOM;
        amtoy[4] = TOPLEFT_TO_BOTTOMRIGHT;
        amtoy[5] = BOTTOMRIGHT_TO_TOPLEFT;
        amtoy[6] = TOPRIGHT_TO_BOTTOMLEFT;
        amtoy[7] = BOTTOMLEFT_TO_TOPRIGHT;
        ENUM$VALUES = amtoy;
    }

    private (String s, int i, int j, int k, int l, int i1)
    {
        super(s, i);
        mFromX = j;
        mFromY = k;
        mToX = l;
        mToY = i1;
    }
}
