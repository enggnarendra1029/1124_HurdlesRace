// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.font;

import android.util.SparseArray;
import org.andengine.util.adt.map.Library;

// Referenced classes of package org.andengine.opengl.font:
//            Font, FontManager

public class FontLibrary extends Library
{

    public FontLibrary()
    {
    }

    public FontLibrary(int i)
    {
        super(i);
    }

    public void loadFonts(FontManager fontmanager)
    {
        SparseArray sparsearray = mItems;
        int i = -1 + sparsearray.size();
        do
        {
            if (i < 0)
            {
                return;
            }
            Font font = (Font)sparsearray.valueAt(i);
            if (font != null)
            {
                fontmanager.loadFont(font);
            }
            i--;
        } while (true);
    }
}
