// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.font;

import org.andengine.opengl.font.exception.LetterNotFoundException;
import org.andengine.opengl.texture.ITexture;

// Referenced classes of package org.andengine.opengl.font:
//            Letter

public interface IFont
{

    public abstract Letter getLetter(char c)
        throws LetterNotFoundException;

    public abstract float getLineHeight();

    public abstract ITexture getTexture();

    public abstract void load();

    public abstract void unload();
}
