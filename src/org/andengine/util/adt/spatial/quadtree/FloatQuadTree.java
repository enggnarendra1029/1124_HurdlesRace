// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.adt.spatial.quadtree;

import java.util.ArrayList;
import java.util.List;
import org.andengine.util.IMatcher;
import org.andengine.util.adt.bounds.BoundsSplit;
import org.andengine.util.adt.bounds.FloatBounds;
import org.andengine.util.adt.bounds.IBounds;
import org.andengine.util.adt.bounds.IFloatBounds;
import org.andengine.util.adt.spatial.bounds.util.FloatBoundsUtils;

// Referenced classes of package org.andengine.util.adt.spatial.quadtree:
//            QuadTree

public class FloatQuadTree extends QuadTree
    implements IFloatBounds
{
    public class FloatQuadTreeNode extends QuadTree.QuadTreeNode
        implements IFloatBounds
    {

        private static int $SWITCH_TABLE$org$andengine$util$adt$bounds$BoundsSplit[];
        private final float mXMax;
        private final float mXMin;
        private final float mYMax;
        private final float mYMin;
        final FloatQuadTree this$0;

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

        private float getXMax(BoundsSplit boundssplit)
        {
            float f = getWidth() / 2.0F;
            switch ($SWITCH_TABLE$org$andengine$util$adt$bounds$BoundsSplit()[boundssplit.ordinal()])
            {
            default:
                throw new IllegalArgumentException((new StringBuilder("Unexpected ")).append(org/andengine/util/adt/bounds/BoundsSplit.getSimpleName()).append(": '").append(boundssplit).append("'.").toString());

            case 1: // '\001'
                return f + mXMin;

            case 2: // '\002'
                return mXMax;

            case 3: // '\003'
                return f + mXMin;

            case 4: // '\004'
                return mXMax;
            }
        }

        private float getXMin(BoundsSplit boundssplit)
        {
            float f = getWidth() / 2.0F;
            switch ($SWITCH_TABLE$org$andengine$util$adt$bounds$BoundsSplit()[boundssplit.ordinal()])
            {
            default:
                throw new IllegalArgumentException((new StringBuilder("Unexpected ")).append(org/andengine/util/adt/bounds/BoundsSplit.getSimpleName()).append(": '").append(boundssplit).append("'.").toString());

            case 1: // '\001'
                return mXMin;

            case 2: // '\002'
                return f + mXMin;

            case 3: // '\003'
                return mXMin;

            case 4: // '\004'
                return f + mXMin;
            }
        }

        private float getYMax(BoundsSplit boundssplit)
        {
            float f = getHeight() / 2.0F;
            switch ($SWITCH_TABLE$org$andengine$util$adt$bounds$BoundsSplit()[boundssplit.ordinal()])
            {
            default:
                throw new IllegalArgumentException((new StringBuilder("Unexpected ")).append(org/andengine/util/adt/bounds/BoundsSplit.getSimpleName()).append(": '").append(boundssplit).append("'.").toString());

            case 1: // '\001'
                return f + mYMin;

            case 2: // '\002'
                return f + mYMin;

            case 3: // '\003'
                return mYMax;

            case 4: // '\004'
                return mYMax;
            }
        }

        private float getYMin(BoundsSplit boundssplit)
        {
            float f = getHeight() / 2.0F;
            switch ($SWITCH_TABLE$org$andengine$util$adt$bounds$BoundsSplit()[boundssplit.ordinal()])
            {
            default:
                throw new IllegalArgumentException((new StringBuilder("Unexpected ")).append(org/andengine/util/adt/bounds/BoundsSplit.getSimpleName()).append(": '").append(boundssplit).append("'.").toString());

            case 1: // '\001'
                return mYMin;

            case 2: // '\002'
                return mYMin;

            case 3: // '\003'
                return f + mYMin;

            case 4: // '\004'
                return f + mYMin;
            }
        }

        protected void appendBoundsToString(StringBuilder stringbuilder)
        {
            stringbuilder.append("[XMin: ").append(mXMin).append(", YMin: ").append(mYMin).append(", XMax: ").append(mXMax).append(", YMax: ").append(mYMax).append("]");
        }

        protected volatile boolean containedBy(IBounds ibounds)
        {
            return containedBy((IFloatBounds)ibounds);
        }

        protected boolean containedBy(IFloatBounds ifloatbounds)
        {
            return FloatBoundsUtils.contains(ifloatbounds.getXMin(), ifloatbounds.getYMin(), ifloatbounds.getXMax(), ifloatbounds.getYMax(), mXMin, mYMin, mXMax, mYMax);
        }

        public boolean contains(float f, float f1, float f2, float f3)
        {
            return FloatBoundsUtils.contains(mXMin, mYMin, mXMax, mYMax, f, f1, f2, f3);
        }

        protected volatile boolean contains(BoundsSplit boundssplit, IBounds ibounds)
        {
            return contains(boundssplit, (IFloatBounds)ibounds);
        }

        protected boolean contains(BoundsSplit boundssplit, IFloatBounds ifloatbounds)
        {
            return FloatBoundsUtils.contains(getXMin(boundssplit), getYMin(boundssplit), getXMax(boundssplit), getYMax(boundssplit), ifloatbounds.getXMin(), ifloatbounds.getYMin(), ifloatbounds.getXMax(), ifloatbounds.getYMax());
        }

        protected volatile boolean contains(IBounds ibounds)
        {
            return contains((IFloatBounds)ibounds);
        }

        protected boolean contains(IFloatBounds ifloatbounds)
        {
            return contains(ifloatbounds.getXMin(), ifloatbounds.getYMin(), ifloatbounds.getXMax(), ifloatbounds.getYMax());
        }

        public float getHeight()
        {
            return mYMax - mYMin;
        }

        public float getWidth()
        {
            return mXMax - mXMin;
        }

        public float getXMax()
        {
            return mXMax;
        }

        public float getXMin()
        {
            return mXMin;
        }

        public float getYMax()
        {
            return mYMax;
        }

        public float getYMin()
        {
            return mYMin;
        }

        public boolean intersects(float f, float f1, float f2, float f3)
        {
            return FloatBoundsUtils.intersects(mXMin, mYMin, mXMax, mYMax, f, f1, f2, f3);
        }

        protected volatile boolean intersects(IBounds ibounds)
        {
            return intersects((IFloatBounds)ibounds);
        }

        protected volatile boolean intersects(IBounds ibounds, IBounds ibounds1)
        {
            return intersects((IFloatBounds)ibounds, (IFloatBounds)ibounds1);
        }

        protected boolean intersects(IFloatBounds ifloatbounds)
        {
            return FloatBoundsUtils.intersects(mXMin, mYMin, mXMax, mYMax, ifloatbounds.getXMin(), ifloatbounds.getYMin(), ifloatbounds.getXMax(), ifloatbounds.getYMax());
        }

        protected boolean intersects(IFloatBounds ifloatbounds, IFloatBounds ifloatbounds1)
        {
            return FloatBoundsUtils.intersects(ifloatbounds, ifloatbounds1);
        }

        protected FloatQuadTreeNode split(BoundsSplit boundssplit)
        {
            float f = getXMin(boundssplit);
            float f1 = getYMin(boundssplit);
            float f2 = getXMax(boundssplit);
            float f3 = getYMax(boundssplit);
            return new FloatQuadTreeNode(1 + mLevel, f, f1, f2, f3);
        }

        protected volatile QuadTree.QuadTreeNode split(BoundsSplit boundssplit)
        {
            return split(boundssplit);
        }

        public FloatQuadTreeNode(int i, float f, float f1, float f2, float f3)
        {
            this$0 = FloatQuadTree.this;
            super(FloatQuadTree.this, i);
            mXMin = f;
            mYMin = f1;
            mXMax = f2;
            mYMax = f3;
            if (f > f2)
            {
                throw new IllegalArgumentException("pXMin must be smaller or equal to pXMax.");
            }
            if (f1 > f3)
            {
                throw new IllegalArgumentException("pYMin must be smaller or equal to pYMax.");
            } else
            {
                return;
            }
        }

        public FloatQuadTreeNode(int i, IFloatBounds ifloatbounds)
        {
            this(i, ifloatbounds.getXMin(), ifloatbounds.getYMin(), ifloatbounds.getXMax(), ifloatbounds.getYMax());
        }
    }


    private final FloatBounds mQueryFloatBounds;

    public FloatQuadTree(float f, float f1, float f2, float f3)
    {
        super(new FloatBounds(f, f1, f2, f3));
        mQueryFloatBounds = new FloatBounds(0.0F, 0.0F, 0.0F, 0.0F);
    }

    public FloatQuadTree(float f, float f1, float f2, float f3, int i)
    {
        super(new FloatBounds(f, f1, f2, f3), i);
        mQueryFloatBounds = new FloatBounds(0.0F, 0.0F, 0.0F, 0.0F);
    }

    public FloatQuadTree(IFloatBounds ifloatbounds)
    {
        super(ifloatbounds);
        mQueryFloatBounds = new FloatBounds(0.0F, 0.0F, 0.0F, 0.0F);
    }

    public FloatQuadTree(IFloatBounds ifloatbounds, int i)
    {
        super(ifloatbounds, i);
        mQueryFloatBounds = new FloatBounds(0.0F, 0.0F, 0.0F, 0.0F);
    }

    public boolean containsAny(float f, float f1)
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag;
        mQueryFloatBounds.set(f, f1);
        flag = containsAny(((IBounds) (mQueryFloatBounds)));
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    public boolean containsAny(float f, float f1, float f2, float f3)
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag;
        mQueryFloatBounds.set(f, f1, f2, f3);
        flag = containsAny(((IBounds) (mQueryFloatBounds)));
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    public boolean containsAny(float f, float f1, float f2, float f3, IMatcher imatcher)
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag;
        mQueryFloatBounds.set(f, f1, f2, f3);
        flag = containsAny(((IBounds) (mQueryFloatBounds)), imatcher);
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    public boolean containsAny(float f, float f1, IMatcher imatcher)
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag;
        mQueryFloatBounds.set(f, f1);
        flag = containsAny(((IBounds) (mQueryFloatBounds)), imatcher);
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    protected FloatQuadTreeNode getRoot()
    {
        return (FloatQuadTreeNode)mRoot;
    }

    protected volatile QuadTree.QuadTreeNode getRoot()
    {
        return getRoot();
    }

    public float getXMax()
    {
        return getRoot().getXMax();
    }

    public float getXMin()
    {
        return getRoot().getXMin();
    }

    public float getYMax()
    {
        return getRoot().getYMax();
    }

    public float getYMin()
    {
        return getRoot().getYMin();
    }

    protected FloatQuadTreeNode initRoot(IFloatBounds ifloatbounds)
    {
        return new FloatQuadTreeNode(0, ifloatbounds);
    }

    protected volatile QuadTree.QuadTreeNode initRoot(IBounds ibounds)
    {
        return initRoot((IFloatBounds)ibounds);
    }

    public ArrayList query(float f, float f1)
    {
        this;
        JVM INSTR monitorenter ;
        ArrayList arraylist;
        mQueryFloatBounds.set(f, f1);
        arraylist = query(((IBounds) (mQueryFloatBounds)));
        this;
        JVM INSTR monitorexit ;
        return arraylist;
        Exception exception;
        exception;
        throw exception;
    }

    public ArrayList query(float f, float f1, float f2, float f3)
    {
        this;
        JVM INSTR monitorenter ;
        ArrayList arraylist;
        mQueryFloatBounds.set(f, f1, f2, f3);
        arraylist = query(((IBounds) (mQueryFloatBounds)));
        this;
        JVM INSTR monitorexit ;
        return arraylist;
        Exception exception;
        exception;
        throw exception;
    }

    public ArrayList query(float f, float f1, float f2, float f3, IMatcher imatcher)
    {
        this;
        JVM INSTR monitorenter ;
        ArrayList arraylist;
        mQueryFloatBounds.set(f, f1, f2, f3);
        arraylist = query(((IBounds) (mQueryFloatBounds)), imatcher);
        this;
        JVM INSTR monitorexit ;
        return arraylist;
        Exception exception;
        exception;
        throw exception;
    }

    public ArrayList query(float f, float f1, IMatcher imatcher)
    {
        this;
        JVM INSTR monitorenter ;
        ArrayList arraylist;
        mQueryFloatBounds.set(f, f1);
        arraylist = query(((IBounds) (mQueryFloatBounds)), imatcher);
        this;
        JVM INSTR monitorexit ;
        return arraylist;
        Exception exception;
        exception;
        throw exception;
    }

    public List query(float f, float f1, float f2, float f3, List list)
    {
        this;
        JVM INSTR monitorenter ;
        List list1;
        mQueryFloatBounds.set(f, f1, f2, f3);
        list1 = query(((IBounds) (mQueryFloatBounds)), list);
        this;
        JVM INSTR monitorexit ;
        return list1;
        Exception exception;
        exception;
        throw exception;
    }

    public List query(float f, float f1, float f2, float f3, IMatcher imatcher, List list)
    {
        this;
        JVM INSTR monitorenter ;
        List list1;
        mQueryFloatBounds.set(f, f1, f2, f3);
        list1 = query(((IBounds) (mQueryFloatBounds)), imatcher, list);
        this;
        JVM INSTR monitorexit ;
        return list1;
        Exception exception;
        exception;
        throw exception;
    }

    public List query(float f, float f1, List list)
    {
        this;
        JVM INSTR monitorenter ;
        List list1;
        mQueryFloatBounds.set(f, f1);
        list1 = query(((IBounds) (mQueryFloatBounds)), list);
        this;
        JVM INSTR monitorexit ;
        return list1;
        Exception exception;
        exception;
        throw exception;
    }

    public List query(float f, float f1, IMatcher imatcher, List list)
    {
        this;
        JVM INSTR monitorenter ;
        List list1;
        mQueryFloatBounds.set(f, f1);
        list1 = query(((IBounds) (mQueryFloatBounds)), imatcher, list);
        this;
        JVM INSTR monitorexit ;
        return list1;
        Exception exception;
        exception;
        throw exception;
    }

    public List queryForSubclass(float f, float f1, float f2, float f3, IMatcher imatcher, List list)
        throws ClassCastException
    {
        this;
        JVM INSTR monitorenter ;
        List list1;
        mQueryFloatBounds.set(f, f1, f2, f3);
        list1 = queryForSubclass(((IBounds) (mQueryFloatBounds)), imatcher, list);
        this;
        JVM INSTR monitorexit ;
        return list1;
        Exception exception;
        exception;
        throw exception;
    }

    public List queryForSubclass(float f, float f1, IMatcher imatcher, List list)
        throws ClassCastException
    {
        this;
        JVM INSTR monitorenter ;
        List list1;
        mQueryFloatBounds.set(f, f1);
        list1 = queryForSubclass(((IBounds) (mQueryFloatBounds)), imatcher, list);
        this;
        JVM INSTR monitorexit ;
        return list1;
        Exception exception;
        exception;
        throw exception;
    }
}
