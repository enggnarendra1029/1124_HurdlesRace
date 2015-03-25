// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity;


// Referenced classes of package org.andengine.entity:
//            IEntityMatcher, IEntity

public class TagEntityMatcher
    implements IEntityMatcher
{

    private int mTag;

    public TagEntityMatcher(int i)
    {
        mTag = i;
    }

    public int getTag()
    {
        return mTag;
    }

    public volatile boolean matches(Object obj)
    {
        return matches((IEntity)obj);
    }

    public boolean matches(IEntity ientity)
    {
        return mTag == ientity.getTag();
    }

    public void setTag(int i)
    {
        mTag = i;
    }
}
