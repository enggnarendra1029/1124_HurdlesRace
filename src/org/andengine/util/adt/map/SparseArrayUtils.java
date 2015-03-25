// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.adt.map;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;

// Referenced classes of package org.andengine.util.adt.map:
//            LongSparseArray

public final class SparseArrayUtils
{

    public SparseArrayUtils()
    {
    }

    public static final String toString(SparseArray sparsearray)
    {
        StringBuilder stringbuilder = new StringBuilder();
        int i = sparsearray.size();
        stringbuilder.append("{");
        int j = 0;
        do
        {
            if (j >= i)
            {
                stringbuilder.append("}");
                return stringbuilder.toString();
            }
            stringbuilder.append(sparsearray.keyAt(j)).append("=").append(sparsearray.valueAt(j));
            if (j < i - 1)
            {
                stringbuilder.append(", ");
            }
            j++;
        } while (true);
    }

    public static final String toString(SparseBooleanArray sparsebooleanarray)
    {
        StringBuilder stringbuilder = new StringBuilder();
        int i = sparsebooleanarray.size();
        stringbuilder.append("{");
        int j = 0;
        do
        {
            if (j >= i)
            {
                stringbuilder.append("}");
                return stringbuilder.toString();
            }
            stringbuilder.append(sparsebooleanarray.keyAt(j)).append("=").append(sparsebooleanarray.valueAt(j));
            if (j < i - 1)
            {
                stringbuilder.append(", ");
            }
            j++;
        } while (true);
    }

    public static final String toString(SparseIntArray sparseintarray)
    {
        StringBuilder stringbuilder = new StringBuilder();
        int i = sparseintarray.size();
        stringbuilder.append("{");
        int j = 0;
        do
        {
            if (j >= i)
            {
                stringbuilder.append("}");
                return stringbuilder.toString();
            }
            stringbuilder.append(sparseintarray.keyAt(j)).append("=").append(sparseintarray.valueAt(j));
            if (j < i - 1)
            {
                stringbuilder.append(", ");
            }
            j++;
        } while (true);
    }

    public static final String toString(LongSparseArray longsparsearray)
    {
        StringBuilder stringbuilder = new StringBuilder();
        int i = longsparsearray.size();
        stringbuilder.append("{");
        int j = 0;
        do
        {
            if (j >= i)
            {
                stringbuilder.append("}");
                return stringbuilder.toString();
            }
            stringbuilder.append(longsparsearray.keyAt(j)).append("=").append(longsparsearray.valueAt(j));
            if (j < i - 1)
            {
                stringbuilder.append(", ");
            }
            j++;
        } while (true);
    }
}
