// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.font;

import java.util.ArrayList;
import org.andengine.opengl.util.GLState;

// Referenced classes of package org.andengine.opengl.font:
//            Font

public class FontManager
{

    private final ArrayList mFontsManaged = new ArrayList();

    public FontManager()
    {
    }

    public void loadFont(Font font)
    {
        this;
        JVM INSTR monitorenter ;
        if (font != null)
        {
            break MISSING_BLOCK_LABEL_21;
        }
        throw new IllegalArgumentException("pFont must not be null!");
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        mFontsManaged.add(font);
        this;
        JVM INSTR monitorexit ;
    }

    public transient void loadFonts(Font afont[])
    {
        this;
        JVM INSTR monitorenter ;
        int i = 0;
_L2:
        int j = afont.length;
        if (i < j)
        {
            break MISSING_BLOCK_LABEL_17;
        }
        this;
        JVM INSTR monitorexit ;
        return;
        loadFont(afont[i]);
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        throw exception;
    }

    public void onCreate()
    {
    }

    public void onDestroy()
    {
        this;
        JVM INSTR monitorenter ;
        ArrayList arraylist;
        int i;
        arraylist = mFontsManaged;
        i = -1 + arraylist.size();
_L2:
        if (i >= 0)
        {
            break MISSING_BLOCK_LABEL_28;
        }
        mFontsManaged.clear();
        this;
        JVM INSTR monitorexit ;
        return;
        ((Font)arraylist.get(i)).invalidateLetters();
        i--;
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        throw exception;
    }

    public void onReload()
    {
        this;
        JVM INSTR monitorenter ;
        ArrayList arraylist;
        int i;
        arraylist = mFontsManaged;
        i = arraylist.size();
        int j = i - 1;
_L2:
        if (j < 0)
        {
            return;
        }
        ((Font)arraylist.get(j)).invalidateLetters();
        j--;
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        throw exception;
    }

    public void unloadFont(Font font)
    {
        this;
        JVM INSTR monitorenter ;
        if (font != null)
        {
            break MISSING_BLOCK_LABEL_21;
        }
        throw new IllegalArgumentException("pFont must not be null!");
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        mFontsManaged.remove(font);
        this;
        JVM INSTR monitorexit ;
    }

    public transient void unloadFonts(Font afont[])
    {
        this;
        JVM INSTR monitorenter ;
        int i = 0;
_L2:
        int j = afont.length;
        if (i < j)
        {
            break MISSING_BLOCK_LABEL_17;
        }
        this;
        JVM INSTR monitorexit ;
        return;
        unloadFont(afont[i]);
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        throw exception;
    }

    public void updateFonts(GLState glstate)
    {
        this;
        JVM INSTR monitorenter ;
        ArrayList arraylist;
        int i;
        arraylist = mFontsManaged;
        i = arraylist.size();
        if (i <= 0) goto _L2; else goto _L1
_L1:
        int j = i - 1;
_L5:
        if (j >= 0) goto _L3; else goto _L2
_L2:
        this;
        JVM INSTR monitorexit ;
        return;
_L3:
        ((Font)arraylist.get(j)).update(glstate);
        j--;
        if (true) goto _L5; else goto _L4
_L4:
        Exception exception;
        exception;
        throw exception;
    }
}
