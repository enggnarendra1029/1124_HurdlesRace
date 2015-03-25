// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.font;

import java.util.List;
import org.andengine.entity.text.AutoWrap;
import org.andengine.util.TextUtils;
import org.andengine.util.exception.MethodNotYetImplementedException;

// Referenced classes of package org.andengine.opengl.font:
//            IFont, Letter

public class FontUtils
{
    public static final class MeasureDirection extends Enum
    {

        public static final MeasureDirection BACKWARDS;
        private static final MeasureDirection ENUM$VALUES[];
        public static final MeasureDirection FORWARDS;

        public static MeasureDirection valueOf(String s)
        {
            return (MeasureDirection)Enum.valueOf(org/andengine/opengl/font/FontUtils$MeasureDirection, s);
        }

        public static MeasureDirection[] values()
        {
            MeasureDirection ameasuredirection[] = ENUM$VALUES;
            int i = ameasuredirection.length;
            MeasureDirection ameasuredirection1[] = new MeasureDirection[i];
            System.arraycopy(ameasuredirection, 0, ameasuredirection1, 0, i);
            return ameasuredirection1;
        }

        static 
        {
            FORWARDS = new MeasureDirection("FORWARDS", 0);
            BACKWARDS = new MeasureDirection("BACKWARDS", 1);
            MeasureDirection ameasuredirection[] = new MeasureDirection[2];
            ameasuredirection[0] = FORWARDS;
            ameasuredirection[1] = BACKWARDS;
            ENUM$VALUES = ameasuredirection;
        }

        private MeasureDirection(String s, int i)
        {
            super(s, i);
        }
    }


    private static int $SWITCH_TABLE$org$andengine$entity$text$AutoWrap[];
    private static final int UNSPECIFIED = -1;

    static int[] $SWITCH_TABLE$org$andengine$entity$text$AutoWrap()
    {
        int ai[] = $SWITCH_TABLE$org$andengine$entity$text$AutoWrap;
        if (ai != null)
        {
            return ai;
        }
        int ai1[] = new int[AutoWrap.values().length];
        try
        {
            ai1[AutoWrap.CJK.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            ai1[AutoWrap.LETTERS.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            ai1[AutoWrap.NONE.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            ai1[AutoWrap.WORDS.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        $SWITCH_TABLE$org$andengine$entity$text$AutoWrap = ai1;
        return ai1;
    }

    public FontUtils()
    {
    }

    public static int breakText(IFont ifont, CharSequence charsequence, MeasureDirection measuredirection, float f, float af[])
    {
        throw new MethodNotYetImplementedException();
    }

    private static float getAdvanceCorrection(IFont ifont, CharSequence charsequence, int i)
    {
        Letter letter = ifont.getLetter(charsequence.charAt(i));
        return -(letter.mOffsetX + (float)letter.mWidth) + letter.mAdvance;
    }

    public static float measureText(IFont ifont, CharSequence charsequence)
    {
        return measureText(ifont, charsequence, null);
    }

    public static float measureText(IFont ifont, CharSequence charsequence, int i, int j)
    {
        return measureText(ifont, charsequence, i, j, null);
    }

    public static float measureText(IFont ifont, CharSequence charsequence, int i, int j, float af[])
    {
        int k = j - i;
        float f;
        if (i == j)
        {
            f = 0.0F;
        } else
        {
            if (k == 1)
            {
                return (float)ifont.getLetter(charsequence.charAt(i)).mWidth;
            }
            Letter letter = null;
            f = 0.0F;
            int l = i;
            int i1 = 0;
            while (l < j) 
            {
                Letter letter1 = ifont.getLetter(charsequence.charAt(l));
                if (letter != null)
                {
                    f += letter.getKerning(letter1.mCharacter);
                }
                letter = letter1;
                if (l == j - 1)
                {
                    f += letter1.mOffsetX + (float)letter1.mWidth;
                } else
                {
                    f += letter1.mAdvance;
                }
                if (af != null)
                {
                    af[i1] = f;
                }
                l++;
                i1++;
            }
        }
        return f;
    }

    public static float measureText(IFont ifont, CharSequence charsequence, float af[])
    {
        return measureText(ifont, charsequence, 0, charsequence.length(), af);
    }

    public static List splitLines(CharSequence charsequence, List list)
    {
        return TextUtils.split(charsequence, '\n', list);
    }

    public static List splitLines(IFont ifont, CharSequence charsequence, List list, AutoWrap autowrap, float f)
    {
        switch ($SWITCH_TABLE$org$andengine$entity$text$AutoWrap()[autowrap.ordinal()])
        {
        default:
            throw new IllegalArgumentException((new StringBuilder("Unexpected ")).append(org/andengine/entity/text/AutoWrap.getSimpleName()).append(": '").append(autowrap).append("'.").toString());

        case 3: // '\003'
            return splitLinesByLetters(ifont, charsequence, list, f);

        case 2: // '\002'
            return splitLinesByWords(ifont, charsequence, list, f);

        case 4: // '\004'
            return splitLinesByCJK(ifont, charsequence, list, f);
        }
    }

    private static List splitLinesByCJK(IFont ifont, CharSequence charsequence, List list, float f)
    {
        int i;
        int j;
        int k;
        i = charsequence.length();
        j = 0;
        k = 0;
_L4:
        if (j < i && charsequence.charAt(j) == ' ') goto _L2; else goto _L1
_L1:
        int l = k;
_L5:
        int i1;
        boolean flag;
        if (l >= i)
        {
            return list;
        }
        i1 = k;
        flag = true;
          goto _L3
_L2:
        j++;
        k++;
          goto _L4
_L3:
        if (l < i)
        {
            int j1 = k;
            while (j1 < i && charsequence.charAt(j1) == ' ') 
            {
                j1++;
            }
            if (j1 == i)
            {
                if (i1 == k)
                {
                    flag = false;
                }
                l = i;
            } else
            {
label0:
                {
                    k++;
                    if (measureText(ifont, charsequence, i1, k) <= f)
                    {
                        break label0;
                    }
                    if (i1 < k - 1)
                    {
                        k--;
                    }
                    list.add(charsequence.subSequence(i1, k));
                    l = k;
                    flag = false;
                }
            }
        }
        if (flag)
        {
            list.add(charsequence.subSequence(i1, k));
        }
          goto _L5
        l = k;
          goto _L3
    }

    private static List splitLinesByLetters(IFont ifont, CharSequence charsequence, List list, float f)
    {
        int i = charsequence.length();
        int j = 0;
        int k = 0;
        int l = 0;
        boolean flag = false;
        int i1 = 0;
        do
        {
            if (i1 >= i)
            {
                return list;
            }
            if (charsequence.charAt(i1) != ' ')
            {
                if (flag)
                {
                    l = i1 + 1;
                } else
                {
                    flag = true;
                    j = i1;
                    l = j + 1;
                    k = l;
                }
            }
            if (flag)
            {
                float f1 = measureText(ifont, charsequence, j, l);
                boolean flag1;
                if (i1 == i - 1)
                {
                    flag1 = true;
                } else
                {
                    flag1 = false;
                }
                if (flag1)
                {
                    if (f1 <= f)
                    {
                        list.add(charsequence.subSequence(j, l));
                    } else
                    {
                        list.add(charsequence.subSequence(j, k));
                        if (j != i1)
                        {
                            list.add(charsequence.subSequence(i1, l));
                        }
                    }
                } else
                if (f1 <= f)
                {
                    k = l;
                } else
                {
                    list.add(charsequence.subSequence(j, k));
                    i1 = k - 1;
                    flag = false;
                }
            }
            i1++;
        } while (true);
    }

    private static List splitLinesByWords(IFont ifont, CharSequence charsequence, List list, float f)
    {
        int i = charsequence.length();
        if (i != 0) goto _L2; else goto _L1
_L1:
        return list;
_L2:
        float f1;
        int j;
        int k;
        int l;
        float f2;
        boolean flag;
        int i1;
        f1 = ifont.getLetter(' ').mAdvance;
        j = -1;
        k = -1;
        l = -1;
        f2 = f;
        flag = true;
        i1 = 0;
_L5:
        if (i1 >= i) goto _L1; else goto _L3
_L3:
        int j1 = 0;
_L4:
        int k1;
        int l1;
label0:
        {
            if (i1 < i && charsequence.charAt(i1) == ' ')
            {
                break MISSING_BLOCK_LABEL_145;
            }
            k1 = i1;
            if (k == -1)
            {
                k = k1;
            }
            for (; i1 < i && charsequence.charAt(i1) != ' '; i1++)
            {
                break MISSING_BLOCK_LABEL_154;
            }

            l1 = i1;
            if (k1 != l1)
            {
                break label0;
            }
            if (!flag)
            {
                list.add(charsequence.subSequence(k, l));
                return list;
            }
        }
          goto _L1
        i1++;
        j1++;
          goto _L4
        float f3;
label1:
        {
            f3 = measureText(ifont, charsequence, k1, l1);
            float f4;
            if (flag)
            {
                f4 = f3;
            } else
            {
                f4 = f3 + f1 * (float)j1;
            }
            if (f4 > f2)
            {
                break label1;
            }
            if (flag)
            {
                flag = false;
            } else
            {
                f2 -= getAdvanceCorrection(ifont, charsequence, j - 1);
            }
            f2 -= f4;
            j = l1;
            l = l1;
            if (l1 == i)
            {
                list.add(charsequence.subSequence(k, l));
                return list;
            }
        }
          goto _L5
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_347;
        }
        if (f3 < f) goto _L7; else goto _L6
_L6:
        list.add(charsequence.subSequence(k1, l1));
        f2 = f;
_L9:
        flag = true;
        j = -1;
        k = -1;
        l = -1;
          goto _L5
_L7:
        f2 = f - f3;
        if (l1 != i) goto _L9; else goto _L8
_L8:
        list.add(charsequence.subSequence(k1, l1));
        return list;
        list.add(charsequence.subSequence(k, l));
        if (l1 == i)
        {
            list.add(charsequence.subSequence(k1, l1));
            return list;
        }
        f2 = f - f3;
        j = l1;
        k = k1;
        l = l1;
        flag = false;
          goto _L5
    }
}
