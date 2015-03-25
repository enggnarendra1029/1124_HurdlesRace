// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.modifier;

import org.andengine.entity.IEntity;
import org.andengine.util.modifier.IModifier;

// Referenced classes of package org.andengine.entity.modifier:
//            PathModifier

class this._cls0
    implements org.andengine.util.modifier.r.ISubSequenceModifierListener
{

    final PathModifier this$0;

    public volatile void onSubSequenceFinished(IModifier imodifier, Object obj, int i)
    {
        onSubSequenceFinished((IModifier)imodifier, (IEntity)obj, i);
    }

    public void onSubSequenceFinished(IModifier imodifier, IEntity ientity, int i)
    {
        if (PathModifier.access$3(PathModifier.this) != null)
        {
            PathModifier.access$3(PathModifier.this).onPathWaypointFinished(PathModifier.this, ientity, i);
        }
    }

    public volatile void onSubSequenceStarted(IModifier imodifier, Object obj, int i)
    {
        onSubSequenceStarted((IModifier)imodifier, (IEntity)obj, i);
    }

    public void onSubSequenceStarted(IModifier imodifier, IEntity ientity, int i)
    {
        if (PathModifier.access$3(PathModifier.this) != null)
        {
            PathModifier.access$3(PathModifier.this).onPathWaypointStarted(PathModifier.this, ientity, i);
        }
    }

    athModifierListener()
    {
        this$0 = PathModifier.this;
        super();
    }
}
