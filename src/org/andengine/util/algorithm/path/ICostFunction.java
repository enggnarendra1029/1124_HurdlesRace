// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.algorithm.path;


// Referenced classes of package org.andengine.util.algorithm.path:
//            IPathFinderMap

public interface ICostFunction
{

    public abstract float getCost(IPathFinderMap ipathfindermap, int i, int j, int k, int l, Object obj);
}
