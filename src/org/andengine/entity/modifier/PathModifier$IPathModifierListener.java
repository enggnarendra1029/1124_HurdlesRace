// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.modifier;

import org.andengine.entity.IEntity;

// Referenced classes of package org.andengine.entity.modifier:
//            PathModifier

public static interface 
{

    public abstract void onPathFinished(PathModifier pathmodifier, IEntity ientity);

    public abstract void onPathStarted(PathModifier pathmodifier, IEntity ientity);

    public abstract void onPathWaypointFinished(PathModifier pathmodifier, IEntity ientity, int i);

    public abstract void onPathWaypointStarted(PathModifier pathmodifier, IEntity ientity, int i);
}
