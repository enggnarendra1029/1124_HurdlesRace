// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.adt.spatial.quadtree;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.andengine.util.IMatcher;
import org.andengine.util.adt.bounds.BoundsSplit;
import org.andengine.util.adt.bounds.IBounds;
import org.andengine.util.adt.spatial.ISpatialItem;
import org.andengine.util.call.ParameterCallable;
import org.andengine.util.debug.Debug;
import org.andengine.util.exception.AndEngineRuntimeException;

public abstract class QuadTree
    implements IBounds
{
    public abstract class QuadTreeNode
        implements IBounds
    {

        protected QuadTreeNode mBottomLeftChild;
        protected QuadTreeNode mBottomRightChild;
        protected List mItems;
        protected final int mLevel;
        protected QuadTreeNode mTopLeftChild;
        protected QuadTreeNode mTopRightChild;
        final QuadTree this$0;

        private void addItemSafe(ISpatialItem ispatialitem)
        {
            if (mItems == null)
            {
                mItems = new ArrayList(1);
            }
            mItems.add(ispatialitem);
        }

        private boolean containsAnyChild(IBounds ibounds, IMatcher imatcher, QuadTreeNode quadtreenode)
        {
            while (quadtreenode == null || !quadtreenode.intersects(ibounds) || !quadtreenode.containsAny(ibounds, imatcher)) 
            {
                return false;
            }
            return true;
        }

        private boolean containsAnyChild(IBounds ibounds, QuadTreeNode quadtreenode)
        {
            while (quadtreenode == null || !quadtreenode.intersects(ibounds) || !quadtreenode.containsAny(ibounds)) 
            {
                return false;
            }
            return true;
        }

        private boolean queryChild(IBounds ibounds, List list, QuadTreeNode quadtreenode)
        {
            if (quadtreenode != null)
            {
                if (quadtreenode.contains(ibounds))
                {
                    quadtreenode.query(ibounds, list);
                    return true;
                }
                if (quadtreenode.containedBy(ibounds))
                {
                    quadtreenode.getItemsAndItemsBelow(list);
                    return false;
                }
                if (quadtreenode.intersects(ibounds))
                {
                    quadtreenode.query(ibounds, list);
                    return false;
                }
            }
            return false;
        }

        private boolean queryChild(IBounds ibounds, IMatcher imatcher, List list, QuadTreeNode quadtreenode)
        {
            if (quadtreenode != null)
            {
                if (quadtreenode.contains(ibounds))
                {
                    quadtreenode.query(ibounds, imatcher, list);
                    return true;
                }
                if (quadtreenode.containedBy(ibounds))
                {
                    quadtreenode.getItemsAndItemsBelow(imatcher, list);
                    return false;
                }
                if (quadtreenode.intersects(ibounds))
                {
                    quadtreenode.query(ibounds, imatcher, list);
                    return false;
                }
            }
            return false;
        }

        private boolean queryChildForSubclass(IBounds ibounds, IMatcher imatcher, List list, QuadTreeNode quadtreenode)
            throws ClassCastException
        {
            if (quadtreenode != null)
            {
                if (quadtreenode.contains(ibounds))
                {
                    quadtreenode.queryForSubclass(ibounds, imatcher, list);
                    return true;
                }
                if (quadtreenode.containedBy(ibounds))
                {
                    quadtreenode.getItemsAndItemsBelowForSubclass(imatcher, list);
                    return false;
                }
                if (quadtreenode.intersects(ibounds))
                {
                    quadtreenode.queryForSubclass(ibounds, imatcher, list);
                    return false;
                }
            }
            return false;
        }

        public void add(ISpatialItem ispatialitem, IBounds ibounds)
            throws IllegalArgumentException
        {
            if (mLevel >= mMaxLevel)
            {
                addItemSafe(ispatialitem);
                return;
            }
            if (mTopLeftChild != null && mTopLeftChild.contains(ibounds))
            {
                mTopLeftChild.add(ispatialitem, ibounds);
                return;
            }
            if (contains(BoundsSplit.TOP_LEFT, ibounds) && mTopLeftChild == null)
            {
                try
                {
                    mTopLeftChild = split(BoundsSplit.TOP_LEFT);
                    mTopLeftChild.add(ispatialitem, ibounds);
                    return;
                }
                catch (org.andengine.util.adt.bounds.BoundsSplit.BoundsSplitException boundssplitexception3)
                {
                    addItemSafe(ispatialitem);
                }
                return;
            }
            if (mTopRightChild != null && mTopRightChild.contains(ibounds))
            {
                mTopRightChild.add(ispatialitem, ibounds);
                return;
            }
            if (contains(BoundsSplit.TOP_RIGHT, ibounds) && mTopRightChild == null)
            {
                try
                {
                    mTopRightChild = split(BoundsSplit.TOP_RIGHT);
                    mTopRightChild.add(ispatialitem, ibounds);
                    return;
                }
                catch (org.andengine.util.adt.bounds.BoundsSplit.BoundsSplitException boundssplitexception2)
                {
                    addItemSafe(ispatialitem);
                }
                return;
            }
            if (mBottomLeftChild != null && mBottomLeftChild.contains(ibounds))
            {
                mBottomLeftChild.add(ispatialitem, ibounds);
                return;
            }
            if (contains(BoundsSplit.BOTTOM_LEFT, ibounds) && mBottomLeftChild == null)
            {
                try
                {
                    mBottomLeftChild = split(BoundsSplit.BOTTOM_LEFT);
                    mBottomLeftChild.add(ispatialitem, ibounds);
                    return;
                }
                catch (org.andengine.util.adt.bounds.BoundsSplit.BoundsSplitException boundssplitexception1)
                {
                    addItemSafe(ispatialitem);
                }
                return;
            }
            if (mBottomRightChild != null && mBottomRightChild.contains(ibounds))
            {
                mBottomRightChild.add(ispatialitem, ibounds);
                return;
            }
            if (contains(BoundsSplit.BOTTOM_RIGHT, ibounds) && mBottomRightChild == null)
            {
                try
                {
                    mBottomRightChild = split(BoundsSplit.BOTTOM_RIGHT);
                    mBottomRightChild.add(ispatialitem, ibounds);
                    return;
                }
                catch (org.andengine.util.adt.bounds.BoundsSplit.BoundsSplitException boundssplitexception)
                {
                    addItemSafe(ispatialitem);
                }
                return;
            } else
            {
                addItemSafe(ispatialitem);
                return;
            }
        }

        protected abstract void appendBoundsToString(StringBuilder stringbuilder);

        public void callItems(ParameterCallable parametercallable)
        {
            if (mItems == null) goto _L2; else goto _L1
_L1:
            int i;
            int j;
            i = mItems.size();
            j = 0;
_L5:
            if (j < i) goto _L3; else goto _L2
_L2:
            if (mTopLeftChild != null)
            {
                mTopLeftChild.callItems(parametercallable);
            }
            if (mTopRightChild != null)
            {
                mTopRightChild.callItems(parametercallable);
            }
            if (mBottomLeftChild != null)
            {
                mBottomLeftChild.callItems(parametercallable);
            }
            if (mBottomRightChild != null)
            {
                mBottomRightChild.callItems(parametercallable);
            }
            return;
_L3:
            parametercallable.call((ISpatialItem)mItems.get(j));
            j++;
            if (true) goto _L5; else goto _L4
_L4:
        }

        public void callNodes(ParameterCallable parametercallable)
        {
            parametercallable.call(this);
            if (mTopLeftChild != null)
            {
                mTopLeftChild.callNodes(parametercallable);
            }
            if (mTopRightChild != null)
            {
                mTopRightChild.callNodes(parametercallable);
            }
            if (mBottomLeftChild != null)
            {
                mBottomLeftChild.callNodes(parametercallable);
            }
            if (mBottomRightChild != null)
            {
                mBottomRightChild.callNodes(parametercallable);
            }
        }

        protected void clear()
        {
            if (mBottomLeftChild != null)
            {
                mBottomLeftChild.clear();
                mBottomLeftChild = null;
            }
            if (mBottomRightChild != null)
            {
                mBottomRightChild.clear();
                mBottomRightChild = null;
            }
            if (mTopLeftChild != null)
            {
                mTopLeftChild.clear();
                mTopLeftChild = null;
            }
            if (mTopRightChild != null)
            {
                mTopRightChild.clear();
                mTopRightChild = null;
            }
            if (mItems != null)
            {
                mItems.clear();
                mItems = null;
            }
        }

        protected abstract boolean containedBy(IBounds ibounds);

        protected abstract boolean contains(BoundsSplit boundssplit, IBounds ibounds);

        protected abstract boolean contains(IBounds ibounds);

        public boolean containsAny(IBounds ibounds)
        {
            if (mItems == null) goto _L2; else goto _L1
_L1:
            int i;
            int j;
            i = mItems.size();
            j = 0;
_L8:
            if (j < i) goto _L3; else goto _L2
_L5:
            return true;
_L3:
            if (intersects(ibounds, ((ISpatialItem)mItems.get(j)).getBounds())) goto _L5; else goto _L4
_L4:
            j++;
            continue; /* Loop/switch isn't completed */
_L2:
            if (containsAnyChild(ibounds, mTopLeftChild) || containsAnyChild(ibounds, mTopRightChild) || containsAnyChild(ibounds, mBottomLeftChild) || containsAnyChild(ibounds, mBottomRightChild)) goto _L5; else goto _L6
_L6:
            return false;
            if (true) goto _L8; else goto _L7
_L7:
        }

        public boolean containsAny(IBounds ibounds, IMatcher imatcher)
        {
            if (mItems == null) goto _L2; else goto _L1
_L1:
            int i;
            int j;
            i = mItems.size();
            j = 0;
_L8:
            if (j < i) goto _L3; else goto _L2
_L5:
            ISpatialItem ispatialitem;
            return true;
_L3:
            if (intersects(ibounds, (ispatialitem = (ISpatialItem)mItems.get(j)).getBounds()) && imatcher.matches(ispatialitem)) goto _L5; else goto _L4
_L4:
            j++;
            continue; /* Loop/switch isn't completed */
_L2:
            if (containsAnyChild(ibounds, imatcher, mTopLeftChild) || containsAnyChild(ibounds, imatcher, mTopRightChild) || containsAnyChild(ibounds, imatcher, mBottomLeftChild) || containsAnyChild(ibounds, imatcher, mBottomRightChild)) goto _L5; else goto _L6
_L6:
            return false;
            if (true) goto _L8; else goto _L7
_L7:
        }

        public int getItemCount()
        {
            int i;
            if (mItems == null)
            {
                i = 0;
            } else
            {
                i = mItems.size();
            }
            if (mTopLeftChild != null)
            {
                i += mTopLeftChild.getItemCount();
            }
            if (mTopRightChild != null)
            {
                i += mTopRightChild.getItemCount();
            }
            if (mBottomLeftChild != null)
            {
                i += mBottomLeftChild.getItemCount();
            }
            if (mBottomRightChild != null)
            {
                i += mBottomRightChild.getItemCount();
            }
            return i;
        }

        public List getItems()
        {
            return mItems;
        }

        public ArrayList getItemsAndItemsBelow()
        {
            return (ArrayList)getItemsAndItemsBelow(((List) (new ArrayList())));
        }

        public ArrayList getItemsAndItemsBelow(IMatcher imatcher)
        {
            return (ArrayList)getItemsAndItemsBelow(imatcher, ((List) (new ArrayList())));
        }

        public List getItemsAndItemsBelow(List list)
        {
            if (mItems != null)
            {
                list.addAll(mItems);
            }
            if (mTopLeftChild != null)
            {
                mTopLeftChild.getItemsAndItemsBelow(list);
            }
            if (mTopRightChild != null)
            {
                mTopRightChild.getItemsAndItemsBelow(list);
            }
            if (mBottomLeftChild != null)
            {
                mBottomLeftChild.getItemsAndItemsBelow(list);
            }
            if (mBottomRightChild != null)
            {
                mBottomRightChild.getItemsAndItemsBelow(list);
            }
            return list;
        }

        public List getItemsAndItemsBelow(IMatcher imatcher, List list)
        {
            if (mItems == null) goto _L2; else goto _L1
_L1:
            Iterator iterator = mItems.iterator();
_L5:
            if (iterator.hasNext()) goto _L3; else goto _L2
_L2:
            if (mTopLeftChild != null)
            {
                mTopLeftChild.getItemsAndItemsBelow(imatcher, list);
            }
            if (mTopRightChild != null)
            {
                mTopRightChild.getItemsAndItemsBelow(imatcher, list);
            }
            if (mBottomLeftChild != null)
            {
                mBottomLeftChild.getItemsAndItemsBelow(imatcher, list);
            }
            if (mBottomRightChild != null)
            {
                mBottomRightChild.getItemsAndItemsBelow(imatcher, list);
            }
            return list;
_L3:
            ISpatialItem ispatialitem = (ISpatialItem)iterator.next();
            if (imatcher.matches(ispatialitem))
            {
                list.add(ispatialitem);
            }
            if (true) goto _L5; else goto _L4
_L4:
        }

        public List getItemsAndItemsBelowForSubclass(IMatcher imatcher, List list)
            throws ClassCastException
        {
            if (mItems == null) goto _L2; else goto _L1
_L1:
            int i;
            int j;
            i = mItems.size();
            j = 0;
_L5:
            if (j < i) goto _L3; else goto _L2
_L2:
            if (mTopLeftChild != null)
            {
                mTopLeftChild.getItemsAndItemsBelowForSubclass(imatcher, list);
            }
            if (mTopRightChild != null)
            {
                mTopRightChild.getItemsAndItemsBelowForSubclass(imatcher, list);
            }
            if (mBottomLeftChild != null)
            {
                mBottomLeftChild.getItemsAndItemsBelowForSubclass(imatcher, list);
            }
            if (mBottomRightChild != null)
            {
                mBottomRightChild.getItemsAndItemsBelowForSubclass(imatcher, list);
            }
            return list;
_L3:
            ISpatialItem ispatialitem = (ISpatialItem)mItems.get(j);
            if (imatcher.matches(ispatialitem))
            {
                list.add(ispatialitem);
            }
            j++;
            if (true) goto _L5; else goto _L4
_L4:
        }

        public boolean hasChildren()
        {
            return mTopLeftChild == null && mTopRightChild == null && mBottomLeftChild != null && mBottomRightChild != null;
        }

        protected abstract boolean intersects(IBounds ibounds);

        protected abstract boolean intersects(IBounds ibounds, IBounds ibounds1);

        public ArrayList query(IBounds ibounds)
        {
            return (ArrayList)query(ibounds, ((List) (new ArrayList())));
        }

        public List query(IBounds ibounds, List list)
        {
            if (mItems == null) goto _L2; else goto _L1
_L1:
            int i;
            int j;
            i = mItems.size();
            j = 0;
_L4:
            while (j < i) 
            {
                ISpatialItem ispatialitem = (ISpatialItem)mItems.get(j);
                if (intersects(ibounds, ispatialitem.getBounds()))
                {
                    list.add(ispatialitem);
                }
                j++;
            }
_L2:
            if (queryChild(ibounds, list, mTopLeftChild) || queryChild(ibounds, list, mTopRightChild) || queryChild(ibounds, list, mBottomLeftChild) || !queryChild(ibounds, list, mBottomRightChild))
            {
                return list;
            }
            return list;
            if (true) goto _L4; else goto _L3
_L3:
        }

        public List query(IBounds ibounds, IMatcher imatcher, List list)
        {
            if (mItems == null) goto _L2; else goto _L1
_L1:
            Iterator iterator = mItems.iterator();
_L5:
            if (iterator.hasNext()) goto _L3; else goto _L2
_L3:
            ISpatialItem ispatialitem = (ISpatialItem)iterator.next();
            if (intersects(ibounds, ispatialitem.getBounds()) && imatcher.matches(ispatialitem))
            {
                list.add(ispatialitem);
            }
            continue; /* Loop/switch isn't completed */
_L2:
            if (queryChild(ibounds, imatcher, list, mTopLeftChild) || queryChild(ibounds, imatcher, list, mTopRightChild) || queryChild(ibounds, imatcher, list, mBottomLeftChild) || !queryChild(ibounds, imatcher, list, mBottomRightChild))
            {
                return list;
            }
            return list;
            if (true) goto _L5; else goto _L4
_L4:
        }

        public List queryForSubclass(IBounds ibounds, IMatcher imatcher, List list)
            throws ClassCastException
        {
            if (mItems == null) goto _L2; else goto _L1
_L1:
            Iterator iterator = mItems.iterator();
_L5:
            if (iterator.hasNext()) goto _L3; else goto _L2
_L3:
            ISpatialItem ispatialitem = (ISpatialItem)iterator.next();
            if (intersects(ibounds, ispatialitem.getBounds()) && imatcher.matches(ispatialitem))
            {
                list.add(ispatialitem);
            }
            continue; /* Loop/switch isn't completed */
_L2:
            if (queryChildForSubclass(ibounds, imatcher, list, mTopLeftChild) || queryChildForSubclass(ibounds, imatcher, list, mTopRightChild) || queryChildForSubclass(ibounds, imatcher, list, mBottomLeftChild) || !queryChildForSubclass(ibounds, imatcher, list, mBottomRightChild))
            {
                return list;
            }
            return list;
            if (true) goto _L5; else goto _L4
_L4:
        }

        public boolean remove(ISpatialItem ispatialitem)
            throws IllegalArgumentException
        {
            return remove(ispatialitem, ispatialitem.getBounds());
        }

        public boolean remove(ISpatialItem ispatialitem, IBounds ibounds)
            throws IllegalArgumentException
        {
            if (!contains(ibounds))
            {
                throw new IllegalArgumentException((new StringBuilder("pItem (")).append(ispatialitem.toString()).append(") is out of the bounds of this ").append(getClass().getSimpleName()).append(".").toString());
            }
            if (mTopLeftChild != null && mTopLeftChild.contains(ibounds))
            {
                return mTopLeftChild.remove(ispatialitem, ibounds);
            }
            if (mTopRightChild != null && mTopRightChild.contains(ibounds))
            {
                return mTopRightChild.remove(ispatialitem, ibounds);
            }
            if (mBottomLeftChild != null && mBottomLeftChild.contains(ibounds))
            {
                return mBottomLeftChild.remove(ispatialitem, ibounds);
            }
            if (mBottomRightChild != null && mBottomRightChild.contains(ibounds))
            {
                return mBottomRightChild.remove(ispatialitem, ibounds);
            }
            if (mItems == null)
            {
                return false;
            } else
            {
                return mItems.remove(ispatialitem);
            }
        }

        protected abstract QuadTreeNode split(BoundsSplit boundssplit);

        public String toString()
        {
            return toString(0);
        }

        public String toString(int i)
        {
            char ac[] = new char[i];
            Arrays.fill(ac, '\t');
            StringBuilder stringbuilder = (new StringBuilder()).append(ac).append('[').append(" Class: ").append(getClass().getSimpleName()).append('\n').append(ac).append('\t').append("Level: ").append(mLevel).append(',').append('\n').append(ac).append('\t').append("Bounds: ");
            appendBoundsToString(stringbuilder);
            stringbuilder.append(',').append('\n').append(ac).append("\tItems: ");
            if (mItems != null)
            {
                stringbuilder.append(mItems.toString());
            } else
            {
                stringbuilder.append("[]");
            }
            stringbuilder.append('\n').append(ac).append('\t').append("Children: [");
            if (mTopLeftChild == null && mTopRightChild == null && mBottomLeftChild == null && mBottomRightChild == null)
            {
                stringbuilder.append(']');
            } else
            {
                if (mTopLeftChild != null)
                {
                    stringbuilder.append('\n');
                    stringbuilder.append(mTopLeftChild.toString(i + 2));
                    if (mTopRightChild != null || mBottomLeftChild != null || mBottomRightChild != null)
                    {
                        stringbuilder.append(',');
                    }
                }
                if (mTopRightChild != null)
                {
                    stringbuilder.append('\n');
                    stringbuilder.append(mTopRightChild.toString(i + 2));
                    if (mBottomLeftChild != null || mBottomRightChild != null)
                    {
                        stringbuilder.append(',');
                    }
                }
                if (mBottomLeftChild != null)
                {
                    stringbuilder.append('\n');
                    stringbuilder.append(mBottomLeftChild.toString(i + 2));
                    if (mBottomRightChild != null)
                    {
                        stringbuilder.append(',');
                    }
                }
                if (mBottomRightChild != null)
                {
                    stringbuilder.append('\n');
                    stringbuilder.append(mBottomRightChild.toString(i + 2));
                }
                stringbuilder.append('\n').append(ac).append('\t').append(']');
            }
            stringbuilder.append('\n').append(ac).append(']');
            return stringbuilder.toString();
        }


        protected QuadTreeNode(int i)
        {
            this$0 = QuadTree.this;
            super();
            mLevel = i;
        }
    }


    protected static final int LEVEL_MAX_DEFAULT = 8;
    protected static final int LEVEL_ROOT;
    protected final IBounds mBounds;
    protected final int mMaxLevel;
    protected final QuadTreeNode mRoot;

    public QuadTree(IBounds ibounds)
    {
        this(ibounds, 8);
    }

    protected QuadTree(IBounds ibounds, int i)
    {
        mBounds = ibounds;
        mMaxLevel = i;
        mRoot = initRoot(ibounds);
    }

    public void add(ISpatialItem ispatialitem)
    {
        this;
        JVM INSTR monitorenter ;
        add(ispatialitem, ispatialitem.getBounds());
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void add(ISpatialItem ispatialitem, IBounds ibounds)
    {
        this;
        JVM INSTR monitorenter ;
        if (mRoot.contains(ibounds)) goto _L2; else goto _L1
_L1:
        Debug.w((new StringBuilder("pBounds are out of the bounds of this ")).append(getClass().getSimpleName()).append(".").toString());
        mRoot.addItemSafe(ispatialitem);
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        mRoot.add(ispatialitem, ibounds);
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public void addAll(ArrayList arraylist)
    {
        this;
        JVM INSTR monitorenter ;
        int i = arraylist.size();
        int j = 0;
_L2:
        if (j >= i)
        {
            return;
        }
        add((ISpatialItem)arraylist.get(j));
        j++;
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        throw exception;
    }

    public void addAll(Collection collection)
    {
        this;
        JVM INSTR monitorenter ;
        Iterator iterator = collection.iterator();
_L1:
        boolean flag = iterator.hasNext();
        if (flag)
        {
            break MISSING_BLOCK_LABEL_25;
        }
        this;
        JVM INSTR monitorexit ;
        return;
        add((ISpatialItem)iterator.next());
          goto _L1
        Exception exception;
        exception;
        throw exception;
    }

    public transient void addAll(ISpatialItem aispatialitem[])
    {
        this;
        JVM INSTR monitorenter ;
        int i = aispatialitem.length;
        int j = 0;
_L2:
        if (j >= i)
        {
            return;
        }
        add(aispatialitem[j]);
        j++;
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        throw exception;
    }

    public void callItems(ParameterCallable parametercallable)
    {
        this;
        JVM INSTR monitorenter ;
        mRoot.callItems(parametercallable);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void callNodes(ParameterCallable parametercallable)
    {
        this;
        JVM INSTR monitorenter ;
        mRoot.callNodes(parametercallable);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void clear()
    {
        this;
        JVM INSTR monitorenter ;
        mRoot.clear();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public boolean containsAny(IBounds ibounds)
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = mRoot.containsAny(ibounds);
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    public boolean containsAny(IBounds ibounds, IMatcher imatcher)
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = mRoot.containsAny(ibounds, imatcher);
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    public IBounds getBounds()
    {
        return mBounds;
    }

    public int getItemCount()
    {
        this;
        JVM INSTR monitorenter ;
        int i = mRoot.getItemCount();
        this;
        JVM INSTR monitorexit ;
        return i;
        Exception exception;
        exception;
        throw exception;
    }

    public int getMaxLevel()
    {
        return mMaxLevel;
    }

    protected abstract QuadTreeNode getRoot();

    protected abstract QuadTreeNode initRoot(IBounds ibounds);

    public boolean isEmpty()
    {
        this;
        JVM INSTR monitorenter ;
        int i = getItemCount();
        boolean flag;
        if (i == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    public void move(ISpatialItem ispatialitem, IBounds ibounds)
        throws AndEngineRuntimeException
    {
        this;
        JVM INSTR monitorenter ;
        if (!remove(ispatialitem, ibounds))
        {
            throw new AndEngineRuntimeException((new StringBuilder("Failed to remove item: '")).append(ispatialitem.toString()).append(" from old bounds: '").append(ibounds.toString()).append("'.").toString());
        }
        break MISSING_BLOCK_LABEL_60;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        add(ispatialitem);
        this;
        JVM INSTR monitorexit ;
    }

    public void move(ISpatialItem ispatialitem, IBounds ibounds, IBounds ibounds1)
        throws AndEngineRuntimeException
    {
        this;
        JVM INSTR monitorenter ;
        if (!remove(ispatialitem, ibounds))
        {
            throw new AndEngineRuntimeException((new StringBuilder("Failed to remove item: '")).append(ispatialitem.toString()).append(" from old bounds: '").append(ibounds.toString()).append("'.").toString());
        }
        break MISSING_BLOCK_LABEL_62;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        add(ispatialitem, ibounds1);
        this;
        JVM INSTR monitorexit ;
    }

    public ArrayList query(IBounds ibounds)
    {
        this;
        JVM INSTR monitorenter ;
        ArrayList arraylist = (ArrayList)query(ibounds, ((List) (new ArrayList())));
        this;
        JVM INSTR monitorexit ;
        return arraylist;
        Exception exception;
        exception;
        throw exception;
    }

    public ArrayList query(IBounds ibounds, IMatcher imatcher)
    {
        this;
        JVM INSTR monitorenter ;
        ArrayList arraylist = (ArrayList)query(ibounds, imatcher, ((List) (new ArrayList())));
        this;
        JVM INSTR monitorexit ;
        return arraylist;
        Exception exception;
        exception;
        throw exception;
    }

    public List query(IBounds ibounds, List list)
    {
        this;
        JVM INSTR monitorenter ;
        List list1 = mRoot.query(ibounds, list);
        this;
        JVM INSTR monitorexit ;
        return list1;
        Exception exception;
        exception;
        throw exception;
    }

    public List query(IBounds ibounds, IMatcher imatcher, List list)
    {
        this;
        JVM INSTR monitorenter ;
        List list1 = mRoot.query(ibounds, imatcher, list);
        this;
        JVM INSTR monitorexit ;
        return list1;
        Exception exception;
        exception;
        throw exception;
    }

    public List queryForSubclass(IBounds ibounds, IMatcher imatcher, List list)
        throws ClassCastException
    {
        this;
        JVM INSTR monitorenter ;
        List list1 = mRoot.queryForSubclass(ibounds, imatcher, list);
        this;
        JVM INSTR monitorexit ;
        return list1;
        Exception exception;
        exception;
        throw exception;
    }

    public boolean remove(ISpatialItem ispatialitem)
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = remove(ispatialitem, ispatialitem.getBounds());
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    public boolean remove(ISpatialItem ispatialitem, IBounds ibounds)
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = mRoot.remove(ispatialitem, ibounds);
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    public String toString()
    {
        StringBuilder stringbuilder = (new StringBuilder()).append('[').append(" Class: ").append(getClass().getSimpleName()).append('\n').append('\t').append("MaxLevel: ").append(mMaxLevel).append(',').append('\n').append('\t').append("Bounds: ");
        mRoot.appendBoundsToString(stringbuilder);
        stringbuilder.append(',').append('\n').append('\t').append("Root:").append('\n').append(mRoot.toString(2)).append('\n').append(']');
        return stringbuilder.toString();
    }
}
