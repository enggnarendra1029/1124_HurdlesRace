// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.adt.spatial.quadtree;

import java.util.ArrayList;
import java.util.List;
import org.andengine.util.IMatcher;
import org.andengine.util.adt.bounds.BoundsSplit;
import org.andengine.util.adt.bounds.IBounds;
import org.andengine.util.adt.bounds.IIntBounds;
import org.andengine.util.adt.bounds.IntBounds;
import org.andengine.util.adt.spatial.bounds.util.IntBoundsUtils;

// Referenced classes of package org.andengine.util.adt.spatial.quadtree:
//            QuadTree

public class IntQuadTree extends QuadTree
    implements IIntBounds
{
    public class IntQuadTreeNode extends QuadTree.QuadTreeNode
        implements IIntBounds
    {

        private static int $SWITCH_TABLE$org$andengine$util$adt$bounds$BoundsSplit[];
        private final int mXMax;
        private final int mXMin;
        private final int mYMax;
        private final int mYMin;
        final IntQuadTree this$0;

        static int[] $SWITCH_TABLE$org$andengine$util$adt$bounds$BoundsSplit()
        {
            int ai[] = $SWITCH_TABLE$org$andengine$util$adt$bounds$BoundsSplit;
            if (ai != null)
            {
                return ai;
            }
            int ai1[] = new int[BoundsSplit.values().length];
            try
            {
                ai1[BoundsSplit.BOTTOM_LEFT.ordinal()] = 3;
            }
            catch (NoSuchFieldError nosuchfielderror) { }
            try
            {
                ai1[BoundsSplit.BOTTOM_RIGHT.ordinal()] = 4;
            }
            catch (NoSuchFieldError nosuchfielderror1) { }
            try
            {
                ai1[BoundsSplit.TOP_LEFT.ordinal()] = 1;
            }
            catch (NoSuchFieldError nosuchfielderror2) { }
            try
            {
                ai1[BoundsSplit.TOP_RIGHT.ordinal()] = 2;
            }
            catch (NoSuchFieldError nosuchfielderror3) { }
            $SWITCH_TABLE$org$andengine$util$adt$bounds$BoundsSplit = ai1;
            return ai1;
        }

        private int getXMax(BoundsSplit boundssplit)
        {
            int i = getWidth();
            int j = i / 2;
            if (i <= 2)
            {
                switch ($SWITCH_TABLE$org$andengine$util$adt$bounds$BoundsSplit()[boundssplit.ordinal()])
                {
                default:
                    throw new IllegalArgumentException((new StringBuilder("Unexpected ")).append(org/andengine/util/adt/bounds/BoundsSplit.getSimpleName()).append(": '").append(boundssplit).append("'.").toString());

                case 1: // '\001'
                case 3: // '\003'
                    return mXMax;

                case 2: // '\002'
                case 4: // '\004'
                    throw new org.andengine.util.adt.bounds.BoundsSplit.BoundsSplitException();
                }
            }
            switch ($SWITCH_TABLE$org$andengine$util$adt$bounds$BoundsSplit()[boundssplit.ordinal()])
            {
            default:
                throw new IllegalArgumentException((new StringBuilder("Unexpected ")).append(org/andengine/util/adt/bounds/BoundsSplit.getSimpleName()).append(": '").append(boundssplit).append("'.").toString());

            case 1: // '\001'
                return j + mXMin;

            case 2: // '\002'
                return mXMax;

            case 3: // '\003'
                return j + mXMin;

            case 4: // '\004'
                return mXMax;
            }
        }

        private int getXMin(BoundsSplit boundssplit)
        {
            int i = getWidth();
            int j = i / 2;
            if (i <= 2)
            {
                switch ($SWITCH_TABLE$org$andengine$util$adt$bounds$BoundsSplit()[boundssplit.ordinal()])
                {
                default:
                    throw new IllegalArgumentException((new StringBuilder("Unexpected ")).append(org/andengine/util/adt/bounds/BoundsSplit.getSimpleName()).append(": '").append(boundssplit).append("'.").toString());

                case 1: // '\001'
                case 3: // '\003'
                    return mXMin;

                case 2: // '\002'
                case 4: // '\004'
                    throw new org.andengine.util.adt.bounds.BoundsSplit.BoundsSplitException();
                }
            }
            switch ($SWITCH_TABLE$org$andengine$util$adt$bounds$BoundsSplit()[boundssplit.ordinal()])
            {
            default:
                throw new IllegalArgumentException((new StringBuilder("Unexpected ")).append(org/andengine/util/adt/bounds/BoundsSplit.getSimpleName()).append(": '").append(boundssplit).append("'.").toString());

            case 1: // '\001'
                return mXMin;

            case 2: // '\002'
                return j + mXMin;

            case 3: // '\003'
                return mXMin;

            case 4: // '\004'
                return j + mXMin;
            }
        }

        private int getYMax(BoundsSplit boundssplit)
        {
            int i = getHeight();
            int j = i / 2;
            if (i <= 2)
            {
                switch ($SWITCH_TABLE$org$andengine$util$adt$bounds$BoundsSplit()[boundssplit.ordinal()])
                {
                default:
                    throw new IllegalArgumentException((new StringBuilder("Unexpected ")).append(org/andengine/util/adt/bounds/BoundsSplit.getSimpleName()).append(": '").append(boundssplit).append("'.").toString());

                case 1: // '\001'
                case 2: // '\002'
                    return mYMax;

                case 3: // '\003'
                case 4: // '\004'
                    throw new org.andengine.util.adt.bounds.BoundsSplit.BoundsSplitException();
                }
            }
            switch ($SWITCH_TABLE$org$andengine$util$adt$bounds$BoundsSplit()[boundssplit.ordinal()])
            {
            default:
                throw new IllegalArgumentException((new StringBuilder("Unexpected ")).append(org/andengine/util/adt/bounds/BoundsSplit.getSimpleName()).append(": '").append(boundssplit).append("'.").toString());

            case 1: // '\001'
                return j + mYMin;

            case 2: // '\002'
                return j + mYMin;

            case 3: // '\003'
                return mYMax;

            case 4: // '\004'
                return mYMax;
            }
        }

        private int getYMin(BoundsSplit boundssplit)
        {
            int i = getHeight();
            int j = i / 2;
            if (i <= 2)
            {
                switch ($SWITCH_TABLE$org$andengine$util$adt$bounds$BoundsSplit()[boundssplit.ordinal()])
                {
                default:
                    throw new IllegalArgumentException((new StringBuilder("Unexpected ")).append(org/andengine/util/adt/bounds/BoundsSplit.getSimpleName()).append(": '").append(boundssplit).append("'.").toString());

                case 1: // '\001'
                case 2: // '\002'
                    return mYMin;

                case 3: // '\003'
                case 4: // '\004'
                    throw new org.andengine.util.adt.bounds.BoundsSplit.BoundsSplitException();
                }
            }
            switch ($SWITCH_TABLE$org$andengine$util$adt$bounds$BoundsSplit()[boundssplit.ordinal()])
            {
            default:
                throw new IllegalArgumentException((new StringBuilder("Unexpected ")).append(org/andengine/util/adt/bounds/BoundsSplit.getSimpleName()).append(": '").append(boundssplit).append("'.").toString());

            case 1: // '\001'
                return mYMin;

            case 2: // '\002'
                return mYMin;

            case 3: // '\003'
                return j + mYMin;

            case 4: // '\004'
                return j + mYMin;
            }
        }

        protected void appendBoundsToString(StringBuilder stringbuilder)
        {
            stringbuilder.append("[XMin: ").append(mXMin).append(", YMin: ").append(mYMin).append(", XMax: ").append(mXMax).append(", YMax: ").append(mYMax).append("]");
        }

        protected volatile boolean containedBy(IBounds ibounds)
        {
            return containedBy((IIntBounds)ibounds);
        }

        protected boolean containedBy(IIntBounds iintbounds)
        {
            return IntBoundsUtils.contains(iintbounds.getXMin(), iintbounds.getYMin(), iintbounds.getXMax(), iintbounds.getYMax(), mXMin, mYMin, mXMax, mYMax);
        }

        public boolean contains(int i, int j, int k, int l)
        {
            return IntBoundsUtils.contains(mXMin, mYMin, mXMax, mYMax, i, j, k, l);
        }

        protected volatile boolean contains(BoundsSplit boundssplit, IBounds ibounds)
        {
            return contains(boundssplit, (IIntBounds)ibounds);
        }

        protected boolean contains(BoundsSplit boundssplit, IIntBounds iintbounds)
        {
            return IntBoundsUtils.contains(getXMin(boundssplit), getYMin(boundssplit), getXMax(boundssplit), getYMax(boundssplit), iintbounds.getXMin(), iintbounds.getYMin(), iintbounds.getXMax(), iintbounds.getYMax());
        }

        protected volatile boolean contains(IBounds ibounds)
        {
            return contains((IIntBounds)ibounds);
        }

        protected boolean contains(IIntBounds iintbounds)
        {
            return contains(iintbounds.getXMin(), iintbounds.getYMin(), iintbounds.getXMax(), iintbounds.getYMax());
        }

        public int getHeight()
        {
            return 1 + (mYMax - mYMin);
        }

        public int getWidth()
        {
            return 1 + (mXMax - mXMin);
        }

        public int getXMax()
        {
            return mXMax;
        }

        public int getXMin()
        {
            return mXMin;
        }

        public int getYMax()
        {
            return mYMax;
        }

        public int getYMin()
        {
            return mYMin;
        }

        public boolean intersects(int i, int j, int k, int l)
        {
            return IntBoundsUtils.intersects(mXMin, mYMin, mXMax, mYMax, i, j, k, l);
        }

        protected volatile boolean intersects(IBounds ibounds)
        {
            return intersects((IIntBounds)ibounds);
        }

        protected volatile boolean intersects(IBounds ibounds, IBounds ibounds1)
        {
            return intersects((IIntBounds)ibounds, (IIntBounds)ibounds1);
        }

        protected boolean intersects(IIntBounds iintbounds)
        {
            return IntBoundsUtils.intersects(mXMin, mYMin, mXMax, mYMax, iintbounds.getXMin(), iintbounds.getYMin(), iintbounds.getXMax(), iintbounds.getYMax());
        }

        protected boolean intersects(IIntBounds iintbounds, IIntBounds iintbounds1)
        {
            return IntBoundsUtils.intersects(iintbounds, iintbounds1);
        }

        protected IntQuadTreeNode split(BoundsSplit boundssplit)
        {
            int i = getWidth();
            int j = getHeight();
            if (i <= 2 && j <= 2)
            {
                throw new org.andengine.util.adt.bounds.BoundsSplit.BoundsSplitException();
            } else
            {
                int k = getXMin(boundssplit);
                int l = getYMin(boundssplit);
                int i1 = getXMax(boundssplit);
                int j1 = getYMax(boundssplit);
                return new IntQuadTreeNode(1 + mLevel, k, l, i1, j1);
            }
        }

        protected volatile QuadTree.QuadTreeNode split(BoundsSplit boundssplit)
        {
            return split(boundssplit);
        }

        public IntQuadTreeNode(int i, int j, int k, int l, int i1)
        {
            this$0 = IntQuadTree.this;
            super(IntQuadTree.this, i);
            mXMin = j;
            mYMin = k;
            mXMax = l;
            mYMax = i1;
            if (j > l)
            {
                throw new IllegalArgumentException("pXMin must be smaller or equal to pXMax.");
            }
            if (k > i1)
            {
                throw new IllegalArgumentException("pYMin must be smaller or equal to pYMax.");
            } else
            {
                return;
            }
        }

        public IntQuadTreeNode(int i, IIntBounds iintbounds)
        {
            this(i, iintbounds.getXMin(), iintbounds.getYMin(), iintbounds.getXMax(), iintbounds.getYMax());
        }
    }


    private final IntBounds mQueryIntBounds;

    public IntQuadTree(int i, int j, int k, int l)
    {
        super(new IntBounds(i, j, k, l));
        mQueryIntBounds = new IntBounds(0, 0, 0, 0);
    }

    public IntQuadTree(int i, int j, int k, int l, int i1)
    {
        super(new IntBounds(i, j, k, l), i1);
        mQueryIntBounds = new IntBounds(0, 0, 0, 0);
    }

    public IntQuadTree(IIntBounds iintbounds)
    {
        super(iintbounds);
        mQueryIntBounds = new IntBounds(0, 0, 0, 0);
    }

    public IntQuadTree(IIntBounds iintbounds, int i)
    {
        super(iintbounds, i);
        mQueryIntBounds = new IntBounds(0, 0, 0, 0);
    }

    public boolean containsAny(int i, int j)
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag;
        mQueryIntBounds.set(i, j);
        flag = containsAny(((IBounds) (mQueryIntBounds)));
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    public boolean containsAny(int i, int j, int k, int l)
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag;
        mQueryIntBounds.set(i, j, k, l);
        flag = containsAny(((IBounds) (mQueryIntBounds)));
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    public boolean containsAny(int i, int j, int k, int l, IMatcher imatcher)
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag;
        mQueryIntBounds.set(i, j, k, l);
        flag = containsAny(((IBounds) (mQueryIntBounds)), imatcher);
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    public boolean containsAny(int i, int j, IMatcher imatcher)
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag;
        mQueryIntBounds.set(i, j);
        flag = containsAny(((IBounds) (mQueryIntBounds)), imatcher);
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    protected IntQuadTreeNode getRoot()
    {
        return (IntQuadTreeNode)mRoot;
    }

    protected volatile QuadTree.QuadTreeNode getRoot()
    {
        return getRoot();
    }

    public int getXMax()
    {
        return getRoot().getXMax();
    }

    public int getXMin()
    {
        return getRoot().getXMin();
    }

    public int getYMax()
    {
        return getRoot().getYMax();
    }

    public int getYMin()
    {
        return getRoot().getYMin();
    }

    protected IntQuadTreeNode initRoot(IIntBounds iintbounds)
    {
        return new IntQuadTreeNode(0, iintbounds);
    }

    protected volatile QuadTree.QuadTreeNode initRoot(IBounds ibounds)
    {
        return initRoot((IIntBounds)ibounds);
    }

    public ArrayList query(int i, int j)
    {
        this;
        JVM INSTR monitorenter ;
        ArrayList arraylist;
        mQueryIntBounds.set(i, j);
        arraylist = query(((IBounds) (mQueryIntBounds)));
        this;
        JVM INSTR monitorexit ;
        return arraylist;
        Exception exception;
        exception;
        throw exception;
    }

    public ArrayList query(int i, int j, int k, int l)
    {
        this;
        JVM INSTR monitorenter ;
        ArrayList arraylist;
        mQueryIntBounds.set(i, j, k, l);
        arraylist = query(((IBounds) (mQueryIntBounds)));
        this;
        JVM INSTR monitorexit ;
        return arraylist;
        Exception exception;
        exception;
        throw exception;
    }

    public ArrayList query(int i, int j, int k, int l, IMatcher imatcher)
    {
        this;
        JVM INSTR monitorenter ;
        ArrayList arraylist;
        mQueryIntBounds.set(i, j, k, l);
        arraylist = query(((IBounds) (mQueryIntBounds)), imatcher);
        this;
        JVM INSTR monitorexit ;
        return arraylist;
        Exception exception;
        exception;
        throw exception;
    }

    public ArrayList query(int i, int j, IMatcher imatcher)
    {
        this;
        JVM INSTR monitorenter ;
        ArrayList arraylist;
        mQueryIntBounds.set(i, j);
        arraylist = query(((IBounds) (mQueryIntBounds)), imatcher);
        this;
        JVM INSTR monitorexit ;
        return arraylist;
        Exception exception;
        exception;
        throw exception;
    }

    public List query(int i, int j, int k, int l, List list)
    {
        this;
        JVM INSTR monitorenter ;
        List list1;
        mQueryIntBounds.set(i, j, k, l);
        list1 = query(((IBounds) (mQueryIntBounds)), list);
        this;
        JVM INSTR monitorexit ;
        return list1;
        Exception exception;
        exception;
        throw exception;
    }

    public List query(int i, int j, int k, int l, IMatcher imatcher, List list)
    {
        this;
        JVM INSTR monitorenter ;
        List list1;
        mQueryIntBounds.set(i, j, k, l);
        list1 = query(((IBounds) (mQueryIntBounds)), imatcher, list);
        this;
        JVM INSTR monitorexit ;
        return list1;
        Exception exception;
        exception;
        throw exception;
    }

    public List query(int i, int j, List list)
    {
        this;
        JVM INSTR monitorenter ;
        List list1;
        mQueryIntBounds.set(i, j);
        list1 = query(((IBounds) (mQueryIntBounds)), list);
        this;
        JVM INSTR monitorexit ;
        return list1;
        Exception exception;
        exception;
        throw exception;
    }

    public List query(int i, int j, IMatcher imatcher, List list)
    {
        this;
        JVM INSTR monitorenter ;
        List list1;
        mQueryIntBounds.set(i, j);
        list1 = query(((IBounds) (mQueryIntBounds)), imatcher, list);
        this;
        JVM INSTR monitorexit ;
        return list1;
        Exception exception;
        exception;
        throw exception;
    }

    public List queryForSubclass(int i, int j, int k, int l, IMatcher imatcher, List list)
        throws ClassCastException
    {
        this;
        JVM INSTR monitorenter ;
        List list1;
        mQueryIntBounds.set(i, j, k, l);
        list1 = queryForSubclass(((IBounds) (mQueryIntBounds)), imatcher, list);
        this;
        JVM INSTR monitorexit ;
        return list1;
        Exception exception;
        exception;
        throw exception;
    }

    public List queryForSubclass(int i, int j, IMatcher imatcher, List list)
        throws ClassCastException
    {
        this;
        JVM INSTR monitorenter ;
        List list1;
        mQueryIntBounds.set(i, j);
        list1 = queryForSubclass(((IBounds) (mQueryIntBounds)), imatcher, list);
        this;
        JVM INSTR monitorexit ;
        return list1;
        Exception exception;
        exception;
        throw exception;
    }
}
