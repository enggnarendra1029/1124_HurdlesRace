// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture.atlas.buildable.builder;

import java.util.ArrayList;
import org.andengine.opengl.texture.atlas.ITextureAtlas;

public interface ITextureAtlasBuilder
{
    public static class TextureAtlasBuilderException extends Exception
    {

        private static final long serialVersionUID = 0x413c5d0da2bf813fL;

        public TextureAtlasBuilderException(String s)
        {
            super(s);
        }
    }


    public abstract void build(ITextureAtlas itextureatlas, ArrayList arraylist)
        throws TextureAtlasBuilderException;
}
