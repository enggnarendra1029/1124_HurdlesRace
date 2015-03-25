// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.text.vbo;

import java.util.ArrayList;
import org.andengine.entity.text.Text;
import org.andengine.opengl.font.IFont;
import org.andengine.opengl.font.Letter;
import org.andengine.opengl.vbo.DrawType;
import org.andengine.opengl.vbo.HighPerformanceVertexBufferObject;
import org.andengine.opengl.vbo.VertexBufferObjectManager;
import org.andengine.opengl.vbo.attribute.VertexBufferObjectAttributes;
import org.andengine.util.HorizontalAlign;
import org.andengine.util.adt.list.IFloatList;
import org.andengine.util.color.Color;

// Referenced classes of package org.andengine.entity.text.vbo:
//            ITextVertexBufferObject

public class HighPerformanceTextVertexBufferObject extends HighPerformanceVertexBufferObject
    implements ITextVertexBufferObject
{

    private static int $SWITCH_TABLE$org$andengine$util$HorizontalAlign[];

    static int[] $SWITCH_TABLE$org$andengine$util$HorizontalAlign()
    {
        int ai[] = $SWITCH_TABLE$org$andengine$util$HorizontalAlign;
        if (ai != null)
        {
            return ai;
        }
        int ai1[] = new int[HorizontalAlign.values().length];
        try
        {
            ai1[HorizontalAlign.CENTER.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            ai1[HorizontalAlign.LEFT.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            ai1[HorizontalAlign.RIGHT.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        $SWITCH_TABLE$org$andengine$util$HorizontalAlign = ai1;
        return ai1;
    }

    public HighPerformanceTextVertexBufferObject(VertexBufferObjectManager vertexbufferobjectmanager, int i, DrawType drawtype, boolean flag, VertexBufferObjectAttributes vertexbufferobjectattributes)
    {
        super(vertexbufferobjectmanager, i, drawtype, flag, vertexbufferobjectattributes);
    }

    public void onUpdateColor(Text text)
    {
        float af[] = mBufferData;
        float f = text.getColor().getABGRPackedFloat();
        int i = 0;
        int j = text.getCharactersMaximum();
        int k = 0;
        do
        {
            if (k >= j)
            {
                setDirtyOnHardware();
                return;
            }
            af[2 + (i + 0)] = f;
            af[2 + (i + 5)] = f;
            af[2 + (i + 10)] = f;
            af[2 + (i + 15)] = f;
            af[2 + (i + 20)] = f;
            af[2 + (i + 25)] = f;
            i += 30;
            k++;
        } while (true);
    }

    public void onUpdateVertices(Text text)
    {
        float af[];
        IFont ifont;
        ArrayList arraylist;
        float f;
        IFloatList ifloatlist;
        float f1;
        int i;
        int j;
        int k;
        int l;
        af = mBufferData;
        ifont = text.getFont();
        arraylist = text.getLines();
        f = ifont.getLineHeight();
        ifloatlist = text.getLineWidths();
        f1 = text.getLineAlignmentWidth();
        i = 0;
        j = 0;
        k = arraylist.size();
        l = 0;
_L4:
        CharSequence charsequence;
        if (l >= k)
        {
            text.setCharactersToDraw(i);
            setDirtyOnHardware();
            return;
        }
        charsequence = (CharSequence)arraylist.get(l);
        $SWITCH_TABLE$org$andengine$util$HorizontalAlign()[text.getHorizontalAlign().ordinal()];
        JVM INSTR tableswitch 2 3: default 116
    //                   2 177
    //                   3 160;
           goto _L1 _L2 _L3
_L1:
        float f2 = 0.0F;
_L5:
        float f3;
        int i1;
        Letter letter;
        int j1;
        f3 = (float)l * (f + text.getLeading());
        i1 = charsequence.length();
        letter = null;
        j1 = 0;
_L6:
        if (j1 < i1)
        {
            break MISSING_BLOCK_LABEL_197;
        }
        l++;
          goto _L4
_L3:
        f2 = f1 - ifloatlist.get(l);
          goto _L5
_L2:
        f2 = 0.5F * (f1 - ifloatlist.get(l));
          goto _L5
        Letter letter1 = ifont.getLetter(charsequence.charAt(j1));
        if (letter != null)
        {
            f2 += letter.getKerning(letter1.mCharacter);
        }
        if (!letter1.isWhitespace())
        {
            float f4 = f2 + letter1.mOffsetX;
            float f5 = f3 + letter1.mOffsetY;
            float f6 = f5 + (float)letter1.mHeight;
            float f7 = f4 + (float)letter1.mWidth;
            float f8 = letter1.mU;
            float f9 = letter1.mV;
            float f10 = letter1.mU2;
            float f11 = letter1.mV2;
            af[0 + (j + 0)] = f4;
            af[1 + (j + 0)] = f5;
            af[3 + (j + 0)] = f8;
            af[4 + (j + 0)] = f9;
            af[0 + (j + 5)] = f4;
            af[1 + (j + 5)] = f6;
            af[3 + (j + 5)] = f8;
            af[4 + (j + 5)] = f11;
            af[0 + (j + 10)] = f7;
            af[1 + (j + 10)] = f6;
            af[3 + (j + 10)] = f10;
            af[4 + (j + 10)] = f11;
            af[0 + (j + 15)] = f7;
            af[1 + (j + 15)] = f6;
            af[3 + (j + 15)] = f10;
            af[4 + (j + 15)] = f11;
            af[0 + (j + 20)] = f7;
            af[1 + (j + 20)] = f5;
            af[3 + (j + 20)] = f10;
            af[4 + (j + 20)] = f9;
            af[0 + (j + 25)] = f4;
            af[1 + (j + 25)] = f5;
            af[3 + (j + 25)] = f8;
            af[4 + (j + 25)] = f9;
            j += 30;
            i++;
        }
        f2 += letter1.mAdvance;
        letter = letter1;
        j1++;
          goto _L6
    }
}
