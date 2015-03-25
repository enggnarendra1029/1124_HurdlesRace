// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture.atlas.buildable.builder;

import java.util.Comparator;
import org.andengine.opengl.texture.atlas.source.ITextureAtlasSource;

// Referenced classes of package org.andengine.opengl.texture.atlas.buildable.builder:
//            BlackPawnTextureAtlasBuilder

class eWithWithLocationCallback
    implements Comparator
{

    public volatile int compare(Object obj, Object obj1)
    {
        return compare((org.andengine.opengl.texture.atlas.buildable.lasSourceWithWithLocationCallback)obj, (org.andengine.opengl.texture.atlas.buildable.lasSourceWithWithLocationCallback)obj1);
    }

    public int compare(org.andengine.opengl.texture.atlas.buildable.lasSourceWithWithLocationCallback lassourcewithwithlocationcallback, org.andengine.opengl.texture.atlas.buildable.lasSourceWithWithLocationCallback lassourcewithwithlocationcallback1)
    {
        int i = ((ITextureAtlasSource)lassourcewithwithlocationcallback1.getTextureAtlasSource()).getTextureWidth() - ((ITextureAtlasSource)lassourcewithwithlocationcallback.getTextureAtlasSource()).getTextureWidth();
        if (i != 0)
        {
            return i;
        } else
        {
            return ((ITextureAtlasSource)lassourcewithwithlocationcallback1.getTextureAtlasSource()).getTextureHeight() - ((ITextureAtlasSource)lassourcewithwithlocationcallback.getTextureAtlasSource()).getTextureHeight();
        }
    }

    eWithWithLocationCallback()
    {
    }
}
