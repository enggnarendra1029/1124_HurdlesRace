// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture.atlas.buildable;

import org.andengine.opengl.texture.atlas.ITextureAtlas;
import org.andengine.opengl.texture.atlas.buildable.builder.ITextureAtlasBuilder;
import org.andengine.opengl.texture.atlas.source.ITextureAtlasSource;
import org.andengine.util.call.Callback;

public interface IBuildableTextureAtlas
    extends ITextureAtlas
{

    public abstract void addTextureAtlasSource(ITextureAtlasSource itextureatlassource, int i, int j);

    public abstract void addTextureAtlasSource(ITextureAtlasSource itextureatlassource, int i, int j, int k);

    public abstract void addTextureAtlasSource(ITextureAtlasSource itextureatlassource, Callback callback);

    public abstract IBuildableTextureAtlas build(ITextureAtlasBuilder itextureatlasbuilder)
        throws org.andengine.opengl.texture.atlas.buildable.builder.ITextureAtlasBuilder.TextureAtlasBuilderException;

    public abstract void removeTextureAtlasSource(ITextureAtlasSource itextureatlassource);
}
