// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.algorithm.path.astar;

import android.util.FloatMath;
import org.andengine.util.algorithm.path.IPathFinderMap;

// Referenced classes of package org.andengine.util.algorithm.path.astar:
//            IAStarHeuristic

public class EuclideanHeuristic
    implements IAStarHeuristic
{

    public EuclideanHeuristic()
    {
    }

    public float getExpectedRestCost(IPathFinderMap ipathfindermap, Object obj, int i, int j, int k, int l)
    {
        float f = k - i;
        float f1 = l - j;
        return FloatMath.sqrt(f * f + f1 * f1);
    }
}
