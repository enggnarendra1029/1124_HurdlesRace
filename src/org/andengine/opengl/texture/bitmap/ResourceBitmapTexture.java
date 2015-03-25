// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture.bitmap;

import android.content.res.Resources;
import java.io.IOException;
import org.andengine.opengl.texture.ITextureStateListener;
import org.andengine.opengl.texture.TextureManager;
import org.andengine.opengl.texture.TextureOptions;
import org.andengine.util.adt.io.in.ResourceInputStreamOpener;

// Referenced classes of package org.andengine.opengl.texture.bitmap:
//            BitmapTexture, BitmapTextureFormat

public class ResourceBitmapTexture extends BitmapTexture
{

    public ResourceBitmapTexture(TextureManager texturemanager, Resources resources, int i)
        throws IOException
    {
        super(texturemanager, new ResourceInputStreamOpener(resources, i));
    }

    public ResourceBitmapTexture(TextureManager texturemanager, Resources resources, int i, TextureOptions textureoptions)
        throws IOException
    {
        super(texturemanager, new ResourceInputStreamOpener(resources, i), textureoptions);
    }

    public ResourceBitmapTexture(TextureManager texturemanager, Resources resources, int i, BitmapTextureFormat bitmaptextureformat)
        throws IOException
    {
        super(texturemanager, new ResourceInputStreamOpener(resources, i), bitmaptextureformat);
    }

    public ResourceBitmapTexture(TextureManager texturemanager, Resources resources, int i, BitmapTextureFormat bitmaptextureformat, TextureOptions textureoptions)
        throws IOException
    {
        super(texturemanager, new ResourceInputStreamOpener(resources, i), bitmaptextureformat, textureoptions);
    }

    public ResourceBitmapTexture(TextureManager texturemanager, Resources resources, int i, BitmapTextureFormat bitmaptextureformat, TextureOptions textureoptions, ITextureStateListener itexturestatelistener)
        throws IOException
    {
        super(texturemanager, new ResourceInputStreamOpener(resources, i), bitmaptextureformat, textureoptions, itexturestatelistener);
    }
}
