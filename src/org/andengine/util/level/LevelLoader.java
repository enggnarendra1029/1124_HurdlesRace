// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.level;

import android.content.res.AssetManager;
import android.content.res.Resources;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.andengine.util.StreamUtils;
import org.andengine.util.debug.Debug;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;

// Referenced classes of package org.andengine.util.level:
//            LevelParser, IEntityLoader

public class LevelLoader
{

    private String mAssetBasePath;
    private IEntityLoader mDefaultEntityLoader;
    private final HashMap mEntityLoaders;

    public LevelLoader()
    {
        this("");
    }

    public LevelLoader(String s)
    {
        mEntityLoaders = new HashMap();
        setAssetBasePath(s);
    }

    public String getAssetBasePath()
    {
        return mAssetBasePath;
    }

    public IEntityLoader getDefaultEntityLoader()
    {
        return mDefaultEntityLoader;
    }

    public void loadLevelFromAsset(AssetManager assetmanager, String s)
        throws IOException
    {
        loadLevelFromStream(assetmanager.open((new StringBuilder(String.valueOf(mAssetBasePath))).append(s).toString()));
    }

    public void loadLevelFromResource(Resources resources, int i)
        throws IOException
    {
        loadLevelFromStream(resources.openRawResource(i));
    }

    public void loadLevelFromStream(InputStream inputstream)
        throws IOException
    {
        XMLReader xmlreader = SAXParserFactory.newInstance().newSAXParser().getXMLReader();
        onBeforeLoadLevel();
        xmlreader.setContentHandler(new LevelParser(mDefaultEntityLoader, mEntityLoaders));
        xmlreader.parse(new InputSource(new BufferedInputStream(inputstream)));
        onAfterLoadLevel();
        StreamUtils.close(inputstream);
        return;
        SAXException saxexception;
        saxexception;
        Debug.e(saxexception);
        StreamUtils.close(inputstream);
        return;
        ParserConfigurationException parserconfigurationexception;
        parserconfigurationexception;
        Debug.e(parserconfigurationexception);
        StreamUtils.close(inputstream);
        return;
        Exception exception;
        exception;
        StreamUtils.close(inputstream);
        throw exception;
    }

    protected void onAfterLoadLevel()
    {
    }

    protected void onBeforeLoadLevel()
    {
    }

    public void registerEntityLoader(String s, IEntityLoader ientityloader)
    {
        mEntityLoaders.put(s, ientityloader);
    }

    public void registerEntityLoader(String as[], IEntityLoader ientityloader)
    {
        HashMap hashmap = mEntityLoaders;
        int i = -1 + as.length;
        do
        {
            if (i < 0)
            {
                return;
            }
            hashmap.put(as[i], ientityloader);
            i--;
        } while (true);
    }

    public void setAssetBasePath(String s)
    {
        if (s.endsWith("/") || s.length() == 0)
        {
            mAssetBasePath = s;
            return;
        } else
        {
            throw new IllegalStateException("pAssetBasePath must end with '/' or be lenght zero.");
        }
    }

    public void setDefaultEntityLoader(IEntityLoader ientityloader)
    {
        mDefaultEntityLoader = ientityloader;
    }
}
