// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture.atlas;

import java.util.ArrayList;
import org.andengine.opengl.texture.ITextureStateListener;
import org.andengine.opengl.texture.PixelFormat;
import org.andengine.opengl.texture.Texture;
import org.andengine.opengl.texture.TextureManager;
import org.andengine.opengl.texture.TextureOptions;
import org.andengine.opengl.texture.atlas.source.ITextureAtlasSource;

// Referenced classes of package org.andengine.opengl.texture.atlas:
//            ITextureAtlas

public abstract class TextureAtlas extends Texture
    implements ITextureAtlas
{

    protected final int mHeight;
    protected final ArrayList mTextureAtlasSources = new ArrayList();
    protected final int mWidth;

    public TextureAtlas(TextureManager texturemanager, int i, int j, PixelFormat pixelformat, TextureOptions textureoptions, ITextureAtlas.ITextureAtlasStateListener itextureatlasstatelistener)
    {
        super(texturemanager, pixelformat, textureoptions, itextureatlasstatelistener);
        mWidth = i;
        mHeight = j;
    }

    private void checkTextureAtlasSourcePosition(ITextureAtlasSource itextureatlassource, int i, int j)
        throws IllegalArgumentException
    {
        if (i < 0)
        {
            throw new IllegalArgumentException((new StringBuilder("Illegal negative pTextureX supplied: '")).append(i).append("'").toString());
        }
        if (j < 0)
        {
            throw new IllegalArgumentException((new StringBuilder("Illegal negative pTextureY supplied: '")).append(j).append("'").toString());
        }
        if (i + itextureatlassource.getTextureWidth() > getWidth() || j + itextureatlassource.getTextureHeight() > getHeight())
        {
            throw new IllegalArgumentException("Supplied pTextureAtlasSource must not exceed bounds of Texture.");
        } else
        {
            return;
        }
    }

    public void addTextureAtlasSource(ITextureAtlasSource itextureatlassource, int i, int j)
        throws IllegalArgumentException
    {
        checkTextureAtlasSourcePosition(itextureatlassource, i, j);
        itextureatlassource.setTextureX(i);
        itextureatlassource.setTextureY(j);
        mTextureAtlasSources.add(itextureatlassource);
        mUpdateOnHardwareNeeded = true;
    }

    public void addTextureAtlasSource(ITextureAtlasSource itextureatlassource, int i, int j, int k)
        throws IllegalArgumentException
    {
        addTextureAtlasSource(itextureatlassource, i, j);
        if (k > 0)
        {
            if (i >= k)
            {
                addEmptyTextureAtlasSource(i - k, j, k, itextureatlassource.getTextureHeight());
            }
            if (j >= k)
            {
                addEmptyTextureAtlasSource(i, j - k, itextureatlassource.getTextureWidth(), k);
            }
            if (k + (-1 + (i + itextureatlassource.getTextureWidth())) <= getWidth())
            {
                addEmptyTextureAtlasSource(i + itextureatlassource.getTextureWidth(), j, k, itextureatlassource.getTextureHeight());
            }
            if (k + (-1 + (j + itextureatlassource.getTextureHeight())) <= getHeight())
            {
                addEmptyTextureAtlasSource(i, j + itextureatlassource.getTextureHeight(), itextureatlassource.getTextureWidth(), k);
            }
        }
    }

    public void clearTextureAtlasSources()
    {
        mTextureAtlasSources.clear();
        mUpdateOnHardwareNeeded = true;
    }

    public int getHeight()
    {
        return mHeight;
    }

    public ITextureAtlas.ITextureAtlasStateListener getTextureAtlasStateListener()
    {
        return (ITextureAtlas.ITextureAtlasStateListener)super.getTextureStateListener();
    }

    public volatile ITextureStateListener getTextureStateListener()
    {
        return getTextureStateListener();
    }

    public ITextureAtlas.ITextureAtlasStateListener getTextureStateListener()
    {
        return getTextureAtlasStateListener();
    }

    public int getWidth()
    {
        return mWidth;
    }

    public boolean hasTextureAtlasStateListener()
    {
        return super.hasTextureStateListener();
    }

    public boolean hasTextureStateListener()
    {
        return super.hasTextureStateListener();
    }

    public void removeTextureAtlasSource(ITextureAtlasSource itextureatlassource, int i, int j)
    {
        ArrayList arraylist = mTextureAtlasSources;
        int k = -1 + arraylist.size();
        do
        {
            if (k < 0)
            {
                return;
            }
            ITextureAtlasSource itextureatlassource1 = (ITextureAtlasSource)arraylist.get(k);
            if (itextureatlassource1 == itextureatlassource && itextureatlassource1.getTextureX() == i && itextureatlassource1.getTextureY() == j)
            {
                arraylist.remove(k);
                mUpdateOnHardwareNeeded = true;
                return;
            }
            k--;
        } while (true);
    }

    public void setTextureAtlasStateListener(ITextureAtlas.ITextureAtlasStateListener itextureatlasstatelistener)
    {
        super.setTextureStateListener(itextureatlasstatelistener);
    }

    public void setTextureStateListener(ITextureStateListener itexturestatelistener)
    {
        super.setTextureStateListener(itexturestatelistener);
    }
}
