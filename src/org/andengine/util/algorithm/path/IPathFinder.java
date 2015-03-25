// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.algorithm.path;

import org.andengine.util.algorithm.path.astar.IAStarHeuristic;

// Referenced classes of package org.andengine.util.algorithm.path:
//            IPathFinderMap, ICostFunction, Path

public interface IPathFinder
{
    public static interface IPathFinderListener
    {

        public abstract void onVisited(Object obj, int i, int j);
    }


    public abstract Path findPath(IPathFinderMap ipathfindermap, int i, int j, int k, int l, Object obj, int i1, 
            int j1, int k1, int l1, boolean flag, IAStarHeuristic iastarheuristic, ICostFunction icostfunction);

    public abstract Path findPath(IPathFinderMap ipathfindermap, int i, int j, int k, int l, Object obj, int i1, 
            int j1, int k1, int l1, boolean flag, IAStarHeuristic iastarheuristic, ICostFunction icostfunction, float f);

    public abstract Path findPath(IPathFinderMap ipathfindermap, int i, int j, int k, int l, Object obj, int i1, 
            int j1, int k1, int l1, boolean flag, IAStarHeuristic iastarheuristic, ICostFunction icostfunction, float f, 
            IPathFinderListener ipathfinderlistener);
}
