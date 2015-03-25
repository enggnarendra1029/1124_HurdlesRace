// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.animationpack;

import android.content.res.AssetManager;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.andengine.opengl.texture.TextureManager;
import org.andengine.util.StreamUtils;
import org.andengine.util.animationpack.exception.AnimationPackParseException;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;

// Referenced classes of package org.andengine.util.animationpack:
//            AnimationPackParser, AnimationPack

public class AnimationPackLoader
{

    private final AssetManager mAssetManager;
    private final TextureManager mTextureManager;

    public AnimationPackLoader(AssetManager assetmanager, TextureManager texturemanager)
    {
        mAssetManager = assetmanager;
        mTextureManager = texturemanager;
    }

    public AnimationPack load(InputStream inputstream, String s)
        throws AnimationPackParseException
    {
        AnimationPack animationpack;
        XMLReader xmlreader = SAXParserFactory.newInstance().newSAXParser().getXMLReader();
        AnimationPackParser animationpackparser = new AnimationPackParser(mAssetManager, s, mTextureManager);
        xmlreader.setContentHandler(animationpackparser);
        xmlreader.parse(new InputSource(new BufferedInputStream(inputstream)));
        animationpack = animationpackparser.getAnimationPack();
        StreamUtils.close(inputstream);
        return animationpack;
        SAXException saxexception;
        saxexception;
        throw new AnimationPackParseException(saxexception);
        Exception exception;
        exception;
        StreamUtils.close(inputstream);
        throw exception;
        ParserConfigurationException parserconfigurationexception;
        parserconfigurationexception;
        StreamUtils.close(inputstream);
        return null;
        IOException ioexception;
        ioexception;
        throw new AnimationPackParseException(ioexception);
    }

    public AnimationPack loadFromAsset(String s, String s1)
        throws AnimationPackParseException
    {
        AnimationPack animationpack;
        try
        {
            animationpack = load(mAssetManager.open(s), s1);
        }
        catch (IOException ioexception)
        {
            throw new AnimationPackParseException((new StringBuilder("Could not load ")).append(getClass().getSimpleName()).append(" data from asset: ").append(s).toString(), ioexception);
        }
        return animationpack;
    }
}
