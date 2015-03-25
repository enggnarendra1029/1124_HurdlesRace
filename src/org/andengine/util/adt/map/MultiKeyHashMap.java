// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.adt.map;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

// Referenced classes of package org.andengine.util.adt.map:
//            MultiKey

public class MultiKeyHashMap extends HashMap
{

    private static final long serialVersionUID = 0xa917510d3d892a9eL;

    public MultiKeyHashMap()
    {
    }

    private boolean isEqualKey(Object aobj[], Object aobj1[])
    {
        if (aobj.length == aobj1.length) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        int i = 0;
_L4:
        Object obj;
        Object obj1;
        if (i >= aobj.length)
        {
            return true;
        }
        obj = aobj[i];
        obj1 = aobj1[i];
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_45;
        }
        if (obj1 != null) goto _L1; else goto _L3
_L3:
        i++;
          goto _L4
        if (!obj.equals(obj1))
        {
            return false;
        }
          goto _L3
    }

    public transient Object get(Object aobj[])
    {
        int i = MultiKey.hash(aobj);
        Iterator iterator = entrySet().iterator();
        java.util.Map.Entry entry;
        MultiKey multikey;
        do
        {
            if (!iterator.hasNext())
            {
                return null;
            }
            entry = (java.util.Map.Entry)iterator.next();
            multikey = (MultiKey)entry.getKey();
        } while (multikey.hashCode() != i || !isEqualKey(multikey.getKeys(), aobj));
        return entry.getValue();
    }
}
