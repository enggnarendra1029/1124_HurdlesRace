// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.modifier;

import java.util.Comparator;

// Referenced classes of package org.andengine.util.modifier:
//            IModifier

class 
    implements Comparator
{

    public volatile int compare(Object obj, Object obj1)
    {
        return compare((IModifier)obj, (IModifier)obj1);
    }

    public int compare(IModifier imodifier, IModifier imodifier1)
    {
        float f = imodifier.getDuration();
        float f1 = imodifier1.getDuration();
        if (f < f1)
        {
            return 1;
        }
        return f <= f1 ? 0 : -1;
    }

    ()
    {
    }
}
