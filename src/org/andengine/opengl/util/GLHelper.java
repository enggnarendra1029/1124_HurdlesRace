// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.util;

import android.graphics.Bitmap;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.IntBuffer;
import java.nio.ShortBuffer;
import org.andengine.opengl.texture.PixelFormat;

public class GLHelper
{

    private static int $SWITCH_TABLE$org$andengine$opengl$texture$PixelFormat[];

    static int[] $SWITCH_TABLE$org$andengine$opengl$texture$PixelFormat()
    {
        int ai[] = $SWITCH_TABLE$org$andengine$opengl$texture$PixelFormat;
        if (ai != null)
        {
            return ai;
        }
        int ai1[] = new int[PixelFormat.values().length];
        try
        {
            ai1[PixelFormat.AI_88.ordinal()] = 8;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            ai1[PixelFormat.A_8.ordinal()] = 6;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            ai1[PixelFormat.I_8.ordinal()] = 7;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            ai1[PixelFormat.RGBA_4444.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        try
        {
            ai1[PixelFormat.RGBA_5551.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror4) { }
        try
        {
            ai1[PixelFormat.RGBA_8888.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror5) { }
        try
        {
            ai1[PixelFormat.RGB_565.ordinal()] = 5;
        }
        catch (NoSuchFieldError nosuchfielderror6) { }
        try
        {
            ai1[PixelFormat.UNDEFINED.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror7) { }
        $SWITCH_TABLE$org$andengine$opengl$texture$PixelFormat = ai1;
        return ai1;
    }

    public GLHelper()
    {
    }

    public static byte[] convertARGB_8888toA_8(int ai[])
    {
        byte abyte0[] = new byte[ai.length];
        int i = -1 + ai.length;
        do
        {
            if (i < 0)
            {
                return abyte0;
            }
            abyte0[i] = (byte)(0xff & ai[i] >> 24);
            i--;
        } while (true);
    }

    public static short[] convertARGB_8888toRGBA_4444(int ai[])
    {
        return convertARGB_8888toRGBA_4444(ai, ByteOrder.nativeOrder());
    }

    public static short[] convertARGB_8888toRGBA_4444(int ai[], ByteOrder byteorder)
    {
        short aword0[];
        int k;
        aword0 = new short[ai.length];
        if (byteorder != ByteOrder.LITTLE_ENDIAN)
        {
            break MISSING_BLOCK_LABEL_79;
        }
        k = -1 + ai.length;
_L3:
        if (k >= 0) goto _L2; else goto _L1
_L1:
        return aword0;
_L2:
        int l = ai[k];
        aword0[k] = (short)(0xf0 & l >> 16 | 0xf & l >> 12 | 0xf000 & l << 8 | 0xf00 & l >> 20);
        k--;
          goto _L3
        int i = -1 + ai.length;
        while (i >= 0) 
        {
            int j = ai[i];
            aword0[i] = (short)(0xf000 & j >> 8 | 0xf00 & j >> 4 | j & 0xf0 | 0xf & j >> 28);
            i--;
        }
          goto _L1
    }

    public static int[] convertARGB_8888toRGBA_8888(int ai[])
    {
        return convertARGB_8888toRGBA_8888(ai, ByteOrder.nativeOrder());
    }

    public static int[] convertARGB_8888toRGBA_8888(int ai[], ByteOrder byteorder)
    {
        int k;
        if (byteorder != ByteOrder.LITTLE_ENDIAN)
        {
            break MISSING_BLOCK_LABEL_60;
        }
        k = -1 + ai.length;
_L3:
        if (k >= 0) goto _L2; else goto _L1
_L1:
        return ai;
_L2:
        int l = ai[k];
        ai[k] = 0xff00ff00 & l | 0xff0000 & l << 16 | 0xff & l >> 16;
        k--;
          goto _L3
        int i = -1 + ai.length;
        while (i >= 0) 
        {
            int j = ai[i];
            ai[i] = 0xffffff00 & j << 8 | 0xff & j >> 24;
            i--;
        }
          goto _L1
    }

    public static short[] convertARGB_8888toRGB_565(int ai[])
    {
        return convertARGB_8888toRGB_565(ai, ByteOrder.nativeOrder());
    }

    public static short[] convertARGB_8888toRGB_565(int ai[], ByteOrder byteorder)
    {
        short aword0[];
        int k;
        aword0 = new short[ai.length];
        if (byteorder != ByteOrder.LITTLE_ENDIAN)
        {
            break MISSING_BLOCK_LABEL_77;
        }
        k = -1 + ai.length;
_L3:
        if (k >= 0) goto _L2; else goto _L1
_L1:
        return aword0;
_L2:
        int l = ai[k];
        aword0[k] = (short)(0xf8 & l >> 16 | 7 & l >> 13 | 0xe000 & l << 3 | 0x1f00 & l << 5);
        k--;
          goto _L3
        int i = -1 + ai.length;
        while (i >= 0) 
        {
            int j = ai[i];
            aword0[i] = (short)(0xf800 & j >> 8 | 0x7e0 & j >> 5 | 0x1f & j >> 3);
            i--;
        }
          goto _L1
    }

    public static int[] convertRGBA_8888toARGB_8888(int ai[])
    {
        return convertRGBA_8888toARGB_8888(ai, ByteOrder.nativeOrder());
    }

    public static int[] convertRGBA_8888toARGB_8888(int ai[], ByteOrder byteorder)
    {
        int k;
        if (byteorder != ByteOrder.LITTLE_ENDIAN)
        {
            break MISSING_BLOCK_LABEL_60;
        }
        k = -1 + ai.length;
_L3:
        if (k >= 0) goto _L2; else goto _L1
_L1:
        return ai;
_L2:
        int l = ai[k];
        ai[k] = 0xff00ff00 & l | 0xff0000 & l << 16 | 0xff & l >> 16;
        k--;
          goto _L3
        int i = -1 + ai.length;
        while (i >= 0) 
        {
            int j = ai[i];
            ai[i] = 0xffffff & j >> 8 | 0xff000000 & j << 24;
            i--;
        }
          goto _L1
    }

    public static int[] convertRGBA_8888toARGB_8888_FlippedVertical(int ai[], int i, int j)
    {
        return convertRGBA_8888toARGB_8888_FlippedVertical(ai, i, j, ByteOrder.nativeOrder());
    }

    public static int[] convertRGBA_8888toARGB_8888_FlippedVertical(int ai[], int i, int j, ByteOrder byteorder)
    {
        int ai1[] = new int[i * j];
        if (byteorder != ByteOrder.LITTLE_ENDIAN) goto _L2; else goto _L1
_L1:
        int j1 = 0;
_L5:
        if (j1 < j) goto _L4; else goto _L3
_L3:
        return ai1;
_L4:
        int k1 = 0;
_L6:
label0:
        {
            if (k1 < i)
            {
                break label0;
            }
            j1++;
        }
          goto _L5
        int l1 = ai[k1 + j1 * i];
        ai1[k1 + i * (-1 + (j - j1))] = 0xff00ff00 & l1 | 0xff0000 & l1 << 16 | 0xff & l1 >> 16;
        k1++;
          goto _L6
_L2:
        int k = 0;
_L8:
        if (k >= j) goto _L3; else goto _L7
_L7:
        int l = 0;
_L9:
label1:
        {
            if (l < i)
            {
                break label1;
            }
            k++;
        }
          goto _L8
          goto _L3
        int i1 = ai[l + k * i];
        ai1[l + i * (-1 + (j - k))] = 0xffffff & i1 >> 8 | 0xff000000 & i1 << 24;
        l++;
          goto _L9
    }

    public static Buffer getPixels(Bitmap bitmap, PixelFormat pixelformat)
    {
        return getPixels(bitmap, pixelformat, ByteOrder.nativeOrder());
    }

    public static Buffer getPixels(Bitmap bitmap, PixelFormat pixelformat, ByteOrder byteorder)
    {
        int ai[] = getPixelsARGB_8888(bitmap);
        switch ($SWITCH_TABLE$org$andengine$opengl$texture$PixelFormat()[pixelformat.ordinal()])
        {
        case 3: // '\003'
        default:
            throw new IllegalArgumentException((new StringBuilder("Unexpected ")).append(org/andengine/opengl/texture/PixelFormat.getSimpleName()).append(": '").append(pixelformat).append("'.").toString());

        case 5: // '\005'
            return ShortBuffer.wrap(convertARGB_8888toRGB_565(ai, byteorder));

        case 4: // '\004'
            ByteOrder byteorder1;
            if (byteorder == ByteOrder.LITTLE_ENDIAN)
            {
                byteorder1 = ByteOrder.BIG_ENDIAN;
            } else
            {
                byteorder1 = ByteOrder.LITTLE_ENDIAN;
            }
            return IntBuffer.wrap(convertARGB_8888toRGBA_8888(ai, byteorder1));

        case 2: // '\002'
            return ShortBuffer.wrap(convertARGB_8888toRGBA_4444(ai, byteorder));

        case 6: // '\006'
            return ByteBuffer.wrap(convertARGB_8888toA_8(ai));
        }
    }

    public static int[] getPixelsARGB_8888(Bitmap bitmap)
    {
        int i = bitmap.getWidth();
        int j = bitmap.getHeight();
        int ai[] = new int[i * j];
        bitmap.getPixels(ai, 0, i, 0, 0, i, j);
        return ai;
    }
}
