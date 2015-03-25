// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.adt.spatial.quadtree;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import org.andengine.util.IMatcher;
import org.andengine.util.adt.bounds.BoundsSplit;
import org.andengine.util.adt.bounds.IBounds;
import org.andengine.util.adt.spatial.ISpatialItem;
import org.andengine.util.call.ParameterCallable;

// Referenced classes of package org.andengine.util.adt.spatial.quadtree:
//            QuadTree

public abstract class mLevel
    implements IBounds
{

    protected toString mBottomLeftChild;
    protected toString mBottomRightChild;
    protected List mItems;
    protected final int mLevel;
    protected toString mTopLeftChild;
    protected toString mTopRightChild;
    final QuadTree this$0;

    private void addItemSafe(ISpatialItem ispatialitem)
    {
        if (mItems == null)
        {
            mItems = new ArrayList(1);
        }
        mItems.add(ispatialitem);
    }

    private boolean containsAnyChild(IBounds ibounds, IMatcher imatcher, mItems mitems)
    {
        while (mitems == null || !mitems.intersects(ibounds) || !mitems.containsAny(ibounds, imatcher)) 
        {
            return false;
        }
        return true;
    }

    private boolean containsAnyChild(IBounds ibounds, containsAny containsany)
    {
        while (containsany == null || !containsany.intersects(ibounds) || !containsany.containsAny(ibounds)) 
        {
            return false;
        }
        return true;
    }

    private boolean queryChild(IBounds ibounds, List list, containsAny containsany)
    {
        if (containsany != null)
        {
            if (containsany.contains(ibounds))
            {
                containsany.query(ibounds, list);
                return true;
            }
            if (containsany.containedBy(ibounds))
            {
                containsany.getItemsAndItemsBelow(list);
                return false;
            }
            if (containsany.intersects(ibounds))
            {
                containsany.query(ibounds, list);
                return false;
            }
        }
        return false;
    }

    private boolean queryChild(IBounds ibounds, IMatcher imatcher, List list, query query1)
    {
        if (query1 != null)
        {
            if (query1.contains(ibounds))
            {
                query1.query(ibounds, imatcher, list);
                return true;
            }
            if (query1.containedBy(ibounds))
            {
                query1.getItemsAndItemsBelow(imatcher, list);
                return false;
            }
            if (query1.intersects(ibounds))
            {
                query1.query(ibounds, imatcher, list);
                return false;
            }
        }
        return false;
    }

    private boolean queryChildForSubclass(IBounds ibounds, IMatcher imatcher, List list, query query1)
        throws ClassCastException
    {
        if (query1 != null)
        {
            if (query1.contains(ibounds))
            {
                query1.queryForSubclass(ibounds, imatcher, list);
                return true;
            }
            if (query1.containedBy(ibounds))
            {
                query1.getItemsAndItemsBelowForSubclass(imatcher, list);
                return false;
            }
            if (query1.intersects(ibounds))
            {
                query1.queryForSubclass(ibounds, imatcher, list);
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
            catch (org.andengine.util.adt.bounds.tException texception3)
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
            catch (org.andengine.util.adt.bounds.tException texception2)
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
            catch (org.andengine.util.adt.bounds.tException texception1)
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
            catch (org.andengine.util.adt.bounds.tException texception)
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

    protected abstract mItems split(BoundsSplit boundssplit);

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


    protected (int i)
    {
        this$0 = QuadTree.this;
        super();
        mLevel = i;
    }
}
