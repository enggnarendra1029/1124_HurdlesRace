// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.algorithm.path.astar;

import org.andengine.util.adt.list.ShiftList;
import org.andengine.util.adt.map.LongSparseArray;
import org.andengine.util.adt.queue.IQueue;
import org.andengine.util.adt.queue.SortedQueue;
import org.andengine.util.adt.spatial.bounds.util.IntBoundsUtils;
import org.andengine.util.algorithm.path.ICostFunction;
import org.andengine.util.algorithm.path.IPathFinder;
import org.andengine.util.algorithm.path.IPathFinderMap;
import org.andengine.util.algorithm.path.Path;

// Referenced classes of package org.andengine.util.algorithm.path.astar:
//            IAStarHeuristic

public class AStarPathFinder
    implements IPathFinder
{
    private static final class Node
        implements Comparable
    {

        float mCost;
        final float mExpectedRestCost;
        final long mID;
        Node mParent;
        float mTotalCost;
        final int mX;
        final int mY;

        public static long calculateID(int i, int j)
        {
            return (long)i << 32 | (long)j;
        }

        public volatile int compareTo(Object obj)
        {
            return compareTo((Node)obj);
        }

        public int compareTo(Node node)
        {
            float f = mTotalCost - node.mTotalCost;
            if (f > 0.0F)
            {
                return 1;
            }
            return f >= 0.0F ? 0 : -1;
        }

        public boolean equals(Object obj)
        {
            boolean flag;
            if (this == obj)
            {
                flag = true;
            } else
            {
                flag = false;
                if (obj != null)
                {
                    Class class1 = getClass();
                    Class class2 = obj.getClass();
                    flag = false;
                    if (class1 == class2)
                    {
                        return equals((Node)obj);
                    }
                }
            }
            return flag;
        }

        public boolean equals(Node node)
        {
            return mID == node.mID;
        }

        public void setParent(Node node, float f)
        {
            mParent = node;
            mCost = f;
            mTotalCost = f + mExpectedRestCost;
        }

        public String toString()
        {
            return (new StringBuilder(String.valueOf(getClass().getSimpleName()))).append(" [x=").append(mX).append(", y=").append(mY).append("]").toString();
        }

        public Node(int i, int j, float f)
        {
            mX = i;
            mY = j;
            mExpectedRestCost = f;
            mID = calculateID(i, j);
        }
    }


    public AStarPathFinder()
    {
    }

    public Path findPath(IPathFinderMap ipathfindermap, int i, int j, int k, int l, Object obj, int i1, 
            int j1, int k1, int l1, boolean flag, IAStarHeuristic iastarheuristic, ICostFunction icostfunction)
    {
        return findPath(ipathfindermap, i, j, k, l, obj, i1, j1, k1, l1, flag, iastarheuristic, icostfunction, 3.402823E+38F);
    }

    public Path findPath(IPathFinderMap ipathfindermap, int i, int j, int k, int l, Object obj, int i1, 
            int j1, int k1, int l1, boolean flag, IAStarHeuristic iastarheuristic, ICostFunction icostfunction, float f)
    {
        return findPath(ipathfindermap, i, j, k, l, obj, i1, j1, k1, l1, flag, iastarheuristic, icostfunction, f, null);
    }

    public Path findPath(IPathFinderMap ipathfindermap, int i, int j, int k, int l, Object obj, int i1, 
            int j1, int k1, int l1, boolean flag, IAStarHeuristic iastarheuristic, ICostFunction icostfunction, float f, 
            org.andengine.util.algorithm.path.IPathFinder.IPathFinderListener ipathfinderlistener)
    {
        long l2;
        long l3;
        LongSparseArray longsparsearray;
        LongSparseArray longsparsearray1;
        SortedQueue sortedqueue;
        Node node1;
        if (i1 == k1 && j1 == l1 || ipathfindermap.isBlocked(i1, j1, obj) || ipathfindermap.isBlocked(k1, l1, obj))
        {
            return null;
        }
        Node node = new Node(i1, j1, iastarheuristic.getExpectedRestCost(ipathfindermap, obj, i1, j1, k1, l1));
        l2 = node.mID;
        l3 = Node.calculateID(k1, l1);
        longsparsearray = new LongSparseArray();
        longsparsearray1 = new LongSparseArray();
        sortedqueue = new SortedQueue(new ShiftList());
        longsparsearray1.put(l2, node);
        sortedqueue.enter(node);
        node1 = null;
_L5:
        if (longsparsearray1.size() > 0) goto _L2; else goto _L1
_L1:
        longsparsearray.clear();
        longsparsearray1.clear();
        sortedqueue.clear();
        if (node1.mID != l3)
        {
            return null;
        }
        break MISSING_BLOCK_LABEL_529;
_L2:
        long l4;
        node1 = (Node)sortedqueue.poll();
        l4 = node1.mID;
        if (l4 == l3) goto _L1; else goto _L3
_L3:
        int i2;
        longsparsearray.put(l4, node1);
        i2 = -1;
_L8:
        if (i2 > 1) goto _L5; else goto _L4
_L4:
        int j2 = -1;
_L9:
        if (j2 <= 1) goto _L7; else goto _L6
_L6:
        i2++;
          goto _L8
_L7:
        if ((i2 != 0 || j2 != 0) && (flag || i2 == 0 || j2 == 0))
        {
            int k2 = i2 + node1.mX;
            int i3 = j2 + node1.mY;
            long l5 = Node.calculateID(k2, i3);
            if (IntBoundsUtils.contains(i, j, k, l, k2, i3) && !ipathfindermap.isBlocked(k2, i3, obj) && longsparsearray.indexOfKey(l5) < 0)
            {
                Node node2 = (Node)longsparsearray1.get(l5);
                boolean flag1;
                float f1;
                if (node2 == null)
                {
                    flag1 = true;
                    float f2 = iastarheuristic.getExpectedRestCost(ipathfindermap, obj, k2, i3, k1, l1);
                    node2 = new Node(k2, i3, f2);
                } else
                {
                    flag1 = false;
                }
                f1 = icostfunction.getCost(ipathfindermap, node1.mX, node1.mY, k2, i3, obj);
                if (f1 + node1.mCost > f)
                {
                    if (!flag1)
                    {
                        longsparsearray1.remove(l5);
                    }
                } else
                {
                    node2.setParent(node1, f1);
                    if (flag1)
                    {
                        longsparsearray1.put(l5, node2);
                    } else
                    {
                        sortedqueue.remove(node2);
                    }
                    sortedqueue.enter(node2);
                    if (ipathfinderlistener != null)
                    {
                        ipathfinderlistener.onVisited(obj, k2, i3);
                    }
                }
            }
        }
        j2++;
          goto _L9
        int j3;
        Node node3;
        j3 = 1;
        node3 = node1;
_L12:
        if (node3.mID != l2) goto _L11; else goto _L10
_L10:
        Path path;
        int k3;
        Node node4;
        path = new Path(j3);
        k3 = j3 - 1;
        node4 = node1;
_L13:
        if (node4.mID == l2)
        {
            path.set(0, i1, j1);
            return path;
        }
        break MISSING_BLOCK_LABEL_605;
_L11:
        node3 = node3.mParent;
        j3++;
          goto _L12
        int i4 = node4.mX;
        int j4 = node4.mY;
        path.set(k3, i4, j4);
        node4 = node4.mParent;
        k3--;
          goto _L13
    }
}
