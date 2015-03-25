// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.texturepack;

import android.content.res.AssetManager;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.andengine.opengl.texture.TextureManager;
import org.andengine.util.StreamUtils;
import org.andengine.util.texturepack.exception.TexturePackParseException;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;

// Referenced classes of package org.andengine.util.texturepack:
//            TexturePackParser, TexturePack

public class TexturePackLoader
{

    private final AssetManager mAssetManager;
    private final TextureManager mTextureManager;

    public TexturePackLoader(AssetManager assetmanager, TextureManager texturemanager)
    {
        mAssetManager = assetmanager;
        mTextureManager = texturemanager;
    }

    public TexturePack load(InputStream inputstream, String s)
        throws TexturePackParseException
    {
        TexturePack texturepack;
        XMLReader xmlreader = SAXParserFactory.newInstance().newSAXParser().getXMLReader();
        TexturePackParser texturepackparser = new TexturePackParser(mAssetManager, s, mTextureManager);
        xmlreader.setContentHandler(texturepackparser);
        xmlreader.parse(new InputSource(new BufferedInputStream(inputstream)));
        texturepack = texturepackparser.getTexturePack();
        StreamUtils.close(inputstream);
        return texturepack;
        SAXException saxexception;
        saxexception;
        throw new TexturePackParseException(saxexception);
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
        throw new TexturePackParseException(ioexception);
    }

    public TexturePack loadFromAsset(String s, String s1)
        throws TexturePackParseException
    {
        TexturePack texturepack;
        try
        {
            texturepack = load(mAssetManager.open(s), s1);
        }
        catch (IOException ioexception)
        {
            throw new TexturePackParseException((new StringBuilder("Could not load ")).append(getClass().getSimpleName()).append(" data from asset: ").append(s).toString(), ioexception);
        }
        return texturepack;
    }
}
