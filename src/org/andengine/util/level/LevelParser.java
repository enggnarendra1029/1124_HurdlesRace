// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.level;

import java.util.HashMap;
import org.andengine.entity.IEntity;
import org.andengine.util.adt.list.SmartList;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

// Referenced classes of package org.andengine.util.level:
//            IEntityLoader

public class LevelParser extends DefaultHandler
{

    private final IEntityLoader mDefaultEntityLoader;
    private final HashMap mEntityLoaders;
    private SmartList mParentEntityStack;

    public LevelParser(IEntityLoader ientityloader, HashMap hashmap)
    {
        mParentEntityStack = new SmartList();
        mDefaultEntityLoader = ientityloader;
        mEntityLoaders = hashmap;
    }

    public void endElement(String s, String s1, String s2)
        throws SAXException
    {
        mParentEntityStack.removeLast();
    }

    public void startElement(String s, String s1, String s2, Attributes attributes)
        throws SAXException
    {
        IEntity ientity;
        IEntityLoader ientityloader;
        IEntity ientity1;
        if (mParentEntityStack.isEmpty())
        {
            ientity = null;
        } else
        {
            ientity = (IEntity)mParentEntityStack.getLast();
        }
        ientityloader = (IEntityLoader)mEntityLoaders.get(s1);
        if (ientityloader != null)
        {
            ientity1 = ientityloader.onLoadEntity(s1, attributes);
        } else
        if (mDefaultEntityLoader != null)
        {
            ientity1 = mDefaultEntityLoader.onLoadEntity(s1, attributes);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder("Unexpected tag: '")).append(s1).append("'.").toString());
        }
        if (ientity != null && ientity1 != null)
        {
            ientity.attachChild(ientity1);
        }
        mParentEntityStack.addLast(ientity1);
    }
}
