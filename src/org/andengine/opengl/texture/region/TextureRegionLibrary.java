// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture.region;

import android.util.SparseArray;
import org.andengine.util.adt.map.Library;

// Referenced classes of package org.andengine.opengl.texture.region:
//            TextureRegion, TiledTextureRegion

public class TextureRegionLibrary extends Library
{

    public TextureRegionLibrary(int i)
    {
        super(i);
    }

    public volatile Object get(int i)
    {
        return get(i);
    }

    public TextureRegion get(int i)
    {
        return (TextureRegion)super.get(i);
    }

    public TiledTextureRegion getTiled(int i)
    {
        return (TiledTextureRegion)mItems.get(i);
    }
}
