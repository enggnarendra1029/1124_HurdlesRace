// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.algorithm.path.astar;

import org.andengine.util.algorithm.path.IPathFinderMap;

// Referenced classes of package org.andengine.util.algorithm.path.astar:
//            IAStarHeuristic

public class NullHeuristic
    implements IAStarHeuristic
{

    public NullHeuristic()
    {
    }

    public float getExpectedRestCost(IPathFinderMap ipathfindermap, Object obj, int i, int j, int k, int l)
    {
        return 0.0F;
    }
}
