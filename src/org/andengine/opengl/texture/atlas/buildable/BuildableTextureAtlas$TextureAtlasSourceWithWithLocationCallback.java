// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture.atlas.buildable;

import org.andengine.opengl.texture.atlas.source.ITextureAtlasSource;
import org.andengine.util.call.Callback;

// Referenced classes of package org.andengine.opengl.texture.atlas.buildable:
//            BuildableTextureAtlas

public static class mCallback
{

    private final Callback mCallback;
    private final ITextureAtlasSource mTextureAtlasSource;

    public Callback getCallback()
    {
        return mCallback;
    }

    public ITextureAtlasSource getTextureAtlasSource()
    {
        return mTextureAtlasSource;
    }


    public (ITextureAtlasSource itextureatlassource, Callback callback)
    {
        mTextureAtlasSource = itextureatlassource;
        mCallback = callback;
    }
}
