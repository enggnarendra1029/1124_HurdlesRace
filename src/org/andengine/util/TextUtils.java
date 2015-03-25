// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

public final class TextUtils
{

    public static final Pattern SPLITPATTERN_COMMA = Pattern.compile(",");
    public static final Pattern SPLITPATTERN_SPACE = Pattern.compile(" ");
    public static final Pattern SPLITPATTERN_SPACES = Pattern.compile(" +");

    public TextUtils()
    {
    }

    public static int countCharacters(List list)
    {
        return countCharacters(list, false);
    }

    public static int countCharacters(List list, boolean flag)
    {
        int i;
        int k;
        i = 0;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_82;
        }
        k = -1 + list.size();
_L3:
        if (k >= 0) goto _L2; else goto _L1
_L1:
        return i;
_L2:
        CharSequence charsequence;
        int l;
        charsequence = (CharSequence)list.get(k);
        l = -1 + charsequence.length();
_L4:
label0:
        {
            if (l >= 0)
            {
                break label0;
            }
            k--;
        }
          goto _L3
        if (!Character.isWhitespace(charsequence.charAt(l)))
        {
            i++;
        }
        l--;
          goto _L4
        int j = -1 + list.size();
        while (j >= 0) 
        {
            i += ((CharSequence)list.get(j)).length();
            j--;
        }
          goto _L1
    }

    public static final int countOccurrences(CharSequence charsequence, char c)
    {
        int i = 0;
        int j = android.text.TextUtils.indexOf(charsequence, c, 0);
        do
        {
            if (j == -1)
            {
                return i;
            }
            i++;
            j = android.text.TextUtils.indexOf(charsequence, c, j + 1);
        } while (true);
    }

    public static final String formatStackTrace(StackTraceElement stacktraceelement)
    {
        return (new StringBuilder()).append(stacktraceelement.getClassName()).append('.').append(stacktraceelement.getMethodName()).append('(').append(stacktraceelement.getFileName()).append(':').append(stacktraceelement.getLineNumber()).append(')').toString();
    }

    public static final String formatStackTrace(StackTraceElement astacktraceelement[])
    {
        StringBuilder stringbuilder = new StringBuilder();
        int i = astacktraceelement.length;
        int j = 0;
        do
        {
            if (j >= i)
            {
                return stringbuilder.toString();
            }
            stringbuilder.append(astacktraceelement[j]);
            if (j < i - 1)
            {
                stringbuilder.append('\n');
            }
            j++;
        } while (true);
    }

    public static final CharSequence padFront(CharSequence charsequence, char c, int i)
    {
        int j = i - charsequence.length();
        if (j <= 0)
        {
            return charsequence;
        }
        StringBuilder stringbuilder = new StringBuilder();
        int k = j - 1;
        do
        {
            if (k < 0)
            {
                stringbuilder.append(charsequence);
                return stringbuilder.toString();
            }
            stringbuilder.append(c);
            k--;
        } while (true);
    }

    public static final ArrayList split(CharSequence charsequence, char c)
    {
        return (ArrayList)split(charsequence, c, ((List) (new ArrayList())));
    }

    public static final List split(CharSequence charsequence, char c, List list)
    {
        int i = 1 + countOccurrences(charsequence, c);
        if (i == 0)
        {
            list.add(charsequence);
            return list;
        }
        int j = 0;
        int k = 0;
        do
        {
            if (k >= i - 1)
            {
                list.add(charsequence.subSequence(j, charsequence.length()));
                return list;
            }
            int l = android.text.TextUtils.indexOf(charsequence, c, j);
            list.add(charsequence.subSequence(j, l));
            j = l + 1;
            k++;
        } while (true);
    }

}
