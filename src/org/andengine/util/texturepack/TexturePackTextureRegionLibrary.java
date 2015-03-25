// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.texturepack;

import android.util.SparseArray;
import java.util.HashMap;

// Referenced classes of package org.andengine.util.texturepack:
//            TexturePackTextureRegion

public class TexturePackTextureRegionLibrary
{

    private final SparseArray mIDMapping;
    private final HashMap mSourceMapping;

    public TexturePackTextureRegionLibrary(int i)
    {
        mIDMapping = new SparseArray(i);
        mSourceMapping = new HashMap(i);
    }

    private void throwOnCollision(TexturePackTextureRegion texturepacktextureregion)
        throws IllegalArgumentException
    {
        if (mIDMapping.get(texturepacktextureregion.getID()) != null)
        {
            throw new IllegalArgumentException((new StringBuilder("Collision with ID: '")).append(texturepacktextureregion.getID()).append("'.").toString());
        }
        if (mSourceMapping.get(texturepacktextureregion.getSource()) != null)
        {
            throw new IllegalArgumentException((new StringBuilder("Collision with Source: '")).append(texturepacktextureregion.getSource()).append("'.").toString());
        } else
        {
            return;
        }
    }

    public TexturePackTextureRegion get(int i)
    {
        return (TexturePackTextureRegion)mIDMapping.get(i);
    }

    public TexturePackTextureRegion get(String s)
    {
        return (TexturePackTextureRegion)mSourceMapping.get(s);
    }

    public TexturePackTextureRegion get(String s, boolean flag)
    {
        if (flag)
        {
            int i = s.lastIndexOf('.');
            if (i == -1)
            {
                return get(s);
            } else
            {
                String s1 = s.substring(0, i);
                return (TexturePackTextureRegion)mSourceMapping.get(s1);
            }
        } else
        {
            return get(s);
        }
    }

    public SparseArray getIDMapping()
    {
        return mIDMapping;
    }

    public HashMap getSourceMapping()
    {
        return mSourceMapping;
    }

    public void put(TexturePackTextureRegion texturepacktextureregion)
    {
        throwOnCollision(texturepacktextureregion);
        mIDMapping.put(texturepacktextureregion.getID(), texturepacktextureregion);
        mSourceMapping.put(texturepacktextureregion.getSource(), texturepacktextureregion);
    }

    public void remove(int i)
    {
        mIDMapping.remove(i);
    }
}
